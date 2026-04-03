; ModuleID = 'src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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

@.str = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Echo the STRING(s) to standard output.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"  -n     do not output the trailing newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"  -e     enable interpretation of backslash escapes\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -E     disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1
@.str.12 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.13 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.14 = private unnamed_addr constant [107 x i8] c"\0AConsider using the printf(1) command instead,\0Aas it avoids problems when outputting option-like strings.\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.25 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), align 8, !dbg !38
@file_name = internal global i8* null, align 8, !dbg !43
@ignore_EPIPE = internal global i8 0, align 1, !dbg !48
@.str.63 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !51
@stderr = external global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !80
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !57
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !76
@.str.1.73 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.74 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.75 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !78
@.str.4.68 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.69 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.70 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !85
@.str.84 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.85 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !91
@.str.88 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.89 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.90 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.91 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.92 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.93 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.94 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.95 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.96 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.97 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.91, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.97, i32 0, i32 0), i8* null], align 8, !dbg !102
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !131
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !149
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !164
@nslots = internal global i32 1, align 4, !dbg !171
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !151
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !173
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !137
@.str.10.98 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.99 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.100 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !156
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !179
@exit_failure = dso_local global i32 1, align 4, !dbg !187
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.144 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.145 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !193
@.str.178 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.179 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !287 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !290, metadata !DIExpression()), !dbg !291
  %3 = load i32, i32* %2, align 4, !dbg !292
  %4 = icmp eq i32 %3, 0, !dbg !292
  br i1 %4, label %5, label %6, !dbg !295

5:                                                ; preds = %1
  br label %7, !dbg !295

6:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.usage, i64 0, i64 0)) #18, !dbg !292
  unreachable, !dbg !292

7:                                                ; preds = %5
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !296
  %9 = load i8*, i8** @program_name, align 8, !dbg !297
  %10 = load i8*, i8** @program_name, align 8, !dbg !298
  %11 = call i32 (i8*, ...) @printf(i8* noundef %8, i8* noundef %9, i8* noundef %10), !dbg !299
  %12 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #19, !dbg !300
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !300
  %14 = call i32 @fputs_unlocked(i8* noundef %12, %struct._IO_FILE* noundef %13), !dbg !300
  %15 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !301
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %15), !dbg !301
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !302
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %16), !dbg !302
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !303
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %17), !dbg !303
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !304
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %18), !dbg !304
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !305
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19), !dbg !305
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !306
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !306
  %22 = call i32 @fputs_unlocked(i8* noundef %20, %struct._IO_FILE* noundef %21), !dbg !306
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([229 x i8], [229 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !307
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !307
  %25 = call i32 @fputs_unlocked(i8* noundef %23, %struct._IO_FILE* noundef %24), !dbg !307
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !308
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !308
  %28 = call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !308
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !309
  %30 = call i32 (i8*, ...) @printf(i8* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !310
  %31 = call i8* @gettext(i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !311
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !311
  %33 = call i32 @fputs_unlocked(i8* noundef %31, %struct._IO_FILE* noundef %32), !dbg !311
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !312
  %34 = load i32, i32* %2, align 4, !dbg !313
  call void @exit(i32 noundef %34) #18, !dbg !314
  unreachable, !dbg !314
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #3

declare i32 @printf(i8* noundef, ...) #4

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #5 !dbg !2 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !315, metadata !DIExpression()), !dbg !316
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !317, metadata !DIExpression()), !dbg !318
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !319
  %15 = icmp eq i32 %14, -1, !dbg !321
  br i1 %15, label %16, label %30, !dbg !322

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !323, metadata !DIExpression()), !dbg !325
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #19, !dbg !326
  store i8* %17, i8** %5, align 8, !dbg !325
  %18 = load i8*, i8** %5, align 8, !dbg !327
  %19 = icmp ne i8* %18, null, !dbg !327
  br i1 %19, label %20, label %27, !dbg !328

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !329
  %22 = load i8, i8* %21, align 1, !dbg !330
  %23 = icmp ne i8 %22, 0, !dbg !330
  br i1 %23, label %24, label %27, !dbg !331

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !332
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)), !dbg !333
  br label %27, !dbg !331

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !331
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !334
  br label %30, !dbg !335

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !336
  %32 = icmp ne i32 %31, 0, !dbg !336
  br i1 %32, label %33, label %37, !dbg !338

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !339
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !339
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !339
  br label %274, !dbg !341

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !342, metadata !DIExpression()), !dbg !343
  store i8 1, i8* %6, align 1, !dbg !343
  call void @llvm.dbg.declare(metadata i8** %7, metadata !344, metadata !DIExpression()), !dbg !345
  %38 = load i8*, i8** %4, align 8, !dbg !346
  %39 = load i8*, i8** %4, align 8, !dbg !347
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #20, !dbg !348
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !349
  store i8* %41, i8** %7, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata i8** %8, metadata !350, metadata !DIExpression()), !dbg !351
  %42 = load i8*, i8** %4, align 8, !dbg !352
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !353
  store i8* %43, i8** %8, align 8, !dbg !351
  %44 = load i8*, i8** %8, align 8, !dbg !354
  %45 = icmp ne i8* %44, null, !dbg !354
  br i1 %45, label %48, label %46, !dbg !356

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !357
  store i8* %47, i8** %8, align 8, !dbg !359
  store i8 0, i8* %6, align 1, !dbg !360
  br label %89, !dbg !361

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !362
  %50 = load i8*, i8** %7, align 8, !dbg !364
  %51 = icmp ne i8* %49, %50, !dbg !365
  br i1 %51, label %52, label %88, !dbg !366

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !367, metadata !DIExpression()), !dbg !369
  %53 = load i8*, i8** %7, align 8, !dbg !370
  store i8* %53, i8** %9, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata i64* %10, metadata !371, metadata !DIExpression()), !dbg !372
  store i64 0, i64* %10, align 8, !dbg !372
  br label %54, !dbg !373

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !374
  %56 = load i8*, i8** %8, align 8, !dbg !375
  %57 = icmp ult i8* %55, %56, !dbg !376
  br i1 %57, label %58, label %61, !dbg !377

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !378
  %60 = icmp ult i64 %59, 2, !dbg !379
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !380
  br i1 %62, label %63, label %82, !dbg !373

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !381
  %65 = load i16*, i16** %64, align 8, !dbg !381
  %66 = load i8*, i8** %9, align 8, !dbg !381
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !381
  store i8* %67, i8** %9, align 8, !dbg !381
  %68 = load i8, i8* %66, align 1, !dbg !381
  %69 = zext i8 %68 to i32, !dbg !381
  %70 = sext i32 %69 to i64, !dbg !381
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !381
  %72 = load i16, i16* %71, align 2, !dbg !381
  %73 = zext i16 %72 to i32, !dbg !381
  %74 = and i32 %73, 8192, !dbg !381
  %75 = icmp ne i32 %74, 0, !dbg !382
  %76 = xor i1 %75, true, !dbg !382
  %77 = xor i1 %76, true, !dbg !383
  %78 = zext i1 %77 to i32, !dbg !383
  %79 = sext i32 %78 to i64, !dbg !383
  %80 = load i64, i64* %10, align 8, !dbg !384
  %81 = add i64 %80, %79, !dbg !384
  store i64 %81, i64* %10, align 8, !dbg !384
  br label %54, !dbg !373, !llvm.loop !385

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !387
  %84 = icmp eq i64 %83, 2, !dbg !389
  br i1 %84, label %85, label %87, !dbg !390

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !391
  store i8* %86, i8** %8, align 8, !dbg !393
  store i8 0, i8* %6, align 1, !dbg !394
  br label %87, !dbg !395

87:                                               ; preds = %85, %82
  br label %88, !dbg !396

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !397, metadata !DIExpression()), !dbg !398
  %90 = load i8*, i8** %8, align 8, !dbg !399
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #20, !dbg !400
  store i64 %91, i64* %11, align 8, !dbg !398
  call void @llvm.dbg.declare(metadata i8** %12, metadata !401, metadata !DIExpression()), !dbg !402
  %92 = load i8*, i8** %8, align 8, !dbg !403
  %93 = load i64, i64* %11, align 8, !dbg !404
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !405
  store i8* %94, i8** %12, align 8, !dbg !402
  br label %95, !dbg !406

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !407
  %97 = load i8, i8* %96, align 1, !dbg !408
  %98 = zext i8 %97 to i32, !dbg !408
  %99 = icmp ne i32 %98, 0, !dbg !408
  br i1 %99, label %100, label %105, !dbg !409

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !410
  %102 = load i8, i8* %101, align 1, !dbg !411
  %103 = zext i8 %102 to i32, !dbg !411
  %104 = icmp ne i32 %103, 10, !dbg !412
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !413
  br i1 %106, label %107, label %164, !dbg !406

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !414
  %109 = load i8, i8* %108, align 1, !dbg !417
  %110 = zext i8 %109 to i32, !dbg !417
  %111 = icmp eq i32 %110, 45, !dbg !418
  br i1 %111, label %112, label %119, !dbg !419

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !420
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !421
  %115 = load i8, i8* %114, align 1, !dbg !422
  %116 = zext i8 %115 to i32, !dbg !422
  %117 = icmp eq i32 %116, 45, !dbg !423
  br i1 %117, label %118, label %119, !dbg !424

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !425
  br label %119, !dbg !426

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !427
  %121 = load i16*, i16** %120, align 8, !dbg !427
  %122 = load i8*, i8** %12, align 8, !dbg !427
  %123 = load i8, i8* %122, align 1, !dbg !427
  %124 = zext i8 %123 to i32, !dbg !427
  %125 = sext i32 %124 to i64, !dbg !427
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !427
  %127 = load i16, i16* %126, align 2, !dbg !427
  %128 = zext i16 %127 to i32, !dbg !427
  %129 = and i32 %128, 8192, !dbg !427
  %130 = icmp ne i32 %129, 0, !dbg !427
  br i1 %130, label %131, label %161, !dbg !429

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !430
  %133 = load i8, i8* %132, align 1, !dbg !433
  %134 = zext i8 %133 to i32, !dbg !433
  %135 = icmp eq i32 %134, 9, !dbg !434
  br i1 %135, label %149, label %136, !dbg !435

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !436
  %138 = load i16*, i16** %137, align 8, !dbg !436
  %139 = load i8*, i8** %12, align 8, !dbg !436
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !436
  %141 = load i8, i8* %140, align 1, !dbg !436
  %142 = zext i8 %141 to i32, !dbg !436
  %143 = sext i32 %142 to i64, !dbg !436
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !436
  %145 = load i16, i16* %144, align 2, !dbg !436
  %146 = zext i16 %145 to i32, !dbg !436
  %147 = and i32 %146, 8192, !dbg !436
  %148 = icmp ne i32 %147, 0, !dbg !436
  br i1 %148, label %149, label %150, !dbg !437

149:                                              ; preds = %136, %131
  br label %164, !dbg !438

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !439
  %152 = trunc i8 %151 to i1, !dbg !439
  br i1 %152, label %160, label %153, !dbg !441

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !442
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !443
  %156 = load i8, i8* %155, align 1, !dbg !444
  %157 = zext i8 %156 to i32, !dbg !444
  %158 = icmp ne i32 %157, 45, !dbg !445
  br i1 %158, label %159, label %160, !dbg !446

159:                                              ; preds = %153
  br label %164, !dbg !447

160:                                              ; preds = %153, %150
  br label %161, !dbg !448

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !449
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !449
  store i8* %163, i8** %12, align 8, !dbg !449
  br label %95, !dbg !406, !llvm.loop !450

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !452
  %166 = load i8*, i8** %7, align 8, !dbg !452
  %167 = load i8*, i8** %4, align 8, !dbg !452
  %168 = ptrtoint i8* %166 to i64, !dbg !452
  %169 = ptrtoint i8* %167 to i64, !dbg !452
  %170 = sub i64 %168, %169, !dbg !452
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !452
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !452
  call void @llvm.dbg.declare(metadata i8** %13, metadata !453, metadata !DIExpression()), !dbg !454
  %173 = load i8*, i8** %3, align 8, !dbg !455
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)), !dbg !456
  br i1 %174, label %175, label %176, !dbg !456

175:                                              ; preds = %164
  br label %232, !dbg !456

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !457
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)), !dbg !458
  br i1 %178, label %179, label %180, !dbg !458

179:                                              ; preds = %176
  br label %230, !dbg !458

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !459
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)), !dbg !460
  br i1 %182, label %183, label %184, !dbg !460

183:                                              ; preds = %180
  br label %228, !dbg !460

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !461
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)), !dbg !462
  br i1 %186, label %187, label %188, !dbg !462

187:                                              ; preds = %184
  br label %226, !dbg !462

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !463
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)), !dbg !464
  br i1 %190, label %191, label %192, !dbg !464

191:                                              ; preds = %188
  br label %224, !dbg !464

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !465
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)), !dbg !466
  br i1 %194, label %195, label %196, !dbg !466

195:                                              ; preds = %192
  br label %222, !dbg !466

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !467
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)), !dbg !468
  br i1 %198, label %199, label %200, !dbg !468

199:                                              ; preds = %196
  br label %220, !dbg !468

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !469
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)), !dbg !470
  br i1 %202, label %203, label %204, !dbg !470

203:                                              ; preds = %200
  br label %218, !dbg !470

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !471
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)), !dbg !472
  br i1 %206, label %207, label %208, !dbg !472

207:                                              ; preds = %204
  br label %216, !dbg !472

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !473
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)), !dbg !474
  br i1 %210, label %211, label %212, !dbg !474

211:                                              ; preds = %208
  br label %214, !dbg !474

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !475
  br label %214, !dbg !474

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !474
  br label %216, !dbg !472

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !472
  br label %218, !dbg !470

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !470
  br label %220, !dbg !468

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !468
  br label %222, !dbg !466

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !466
  br label %224, !dbg !464

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !464
  br label %226, !dbg !462

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !462
  br label %228, !dbg !460

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !460
  br label %230, !dbg !458

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !458
  br label %232, !dbg !456

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !456
  store i8* %233, i8** %13, align 8, !dbg !454
  %234 = load i8*, i8** %8, align 8, !dbg !476
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 noundef 6) #20, !dbg !476
  %236 = icmp eq i32 %235, 0, !dbg !476
  br i1 %236, label %241, label %237, !dbg !478

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !479
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 noundef 9) #20, !dbg !479
  %240 = icmp eq i32 %239, 0, !dbg !479
  br i1 %240, label %241, label %248, !dbg !480

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !481
  %243 = load i8*, i8** %13, align 8, !dbg !483
  %244 = load i64, i64* %11, align 8, !dbg !484
  %245 = trunc i64 %244 to i32, !dbg !485
  %246 = load i8*, i8** %8, align 8, !dbg !486
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !487
  br label %254, !dbg !488

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !489
  %250 = load i64, i64* %11, align 8, !dbg !491
  %251 = trunc i64 %250 to i32, !dbg !492
  %252 = load i8*, i8** %8, align 8, !dbg !493
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !494
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !495
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !495
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !496
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !496
  %259 = load i8*, i8** %7, align 8, !dbg !497
  %260 = load i8*, i8** %12, align 8, !dbg !497
  %261 = load i8*, i8** %7, align 8, !dbg !497
  %262 = ptrtoint i8* %260 to i64, !dbg !497
  %263 = ptrtoint i8* %261 to i64, !dbg !497
  %264 = sub i64 %262, %263, !dbg !497
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !497
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !497
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !498
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !498
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !499
  %271 = load i8*, i8** %12, align 8, !dbg !500
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !500
  br label %274, !dbg !501

274:                                              ; preds = %254, %33
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #5 !dbg !502 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !507, metadata !DIExpression()), !dbg !516
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !516
  call void @llvm.dbg.declare(metadata i8** %4, metadata !517, metadata !DIExpression()), !dbg !518
  %9 = load i8*, i8** %2, align 8, !dbg !519
  store i8* %9, i8** %4, align 8, !dbg !518
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !520, metadata !DIExpression()), !dbg !522
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !523
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !522
  br label %11, !dbg !524

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !525
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !526
  %14 = load i8*, i8** %13, align 8, !dbg !526
  %15 = icmp ne i8* %14, null, !dbg !525
  br i1 %15, label %16, label %23, !dbg !527

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !528
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !529
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !530
  %20 = load i8*, i8** %19, align 8, !dbg !530
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !531
  %22 = xor i1 %21, true, !dbg !532
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !533
  br i1 %24, label %25, label %28, !dbg !524

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !534
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !534
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !534
  br label %11, !dbg !524, !llvm.loop !535

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !536
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !538
  %31 = load i8*, i8** %30, align 8, !dbg !538
  %32 = icmp ne i8* %31, null, !dbg !536
  br i1 %32, label %33, label %37, !dbg !539

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !540
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !541
  %36 = load i8*, i8** %35, align 8, !dbg !541
  store i8* %36, i8** %4, align 8, !dbg !542
  br label %37, !dbg !543

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !544
  call void @llvm.dbg.declare(metadata i8** %6, metadata !545, metadata !DIExpression()), !dbg !546
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !547
  store i8* %38, i8** %6, align 8, !dbg !546
  %39 = load i8*, i8** %6, align 8, !dbg !548
  %40 = icmp ne i8* %39, null, !dbg !548
  br i1 %40, label %41, label %49, !dbg !550

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !551
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #20, !dbg !551
  %44 = icmp ne i32 %43, 0, !dbg !551
  br i1 %44, label %45, label %49, !dbg !552

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0)) #19, !dbg !553
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !553
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !553
  br label %49, !dbg !555

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !556, metadata !DIExpression()), !dbg !557
  %50 = load i8*, i8** %2, align 8, !dbg !558
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)), !dbg !559
  br i1 %51, label %52, label %53, !dbg !559

52:                                               ; preds = %49
  br label %55, !dbg !559

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !560
  br label %55, !dbg !559

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !559
  store i8* %56, i8** %7, align 8, !dbg !557
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #19, !dbg !561
  %58 = load i8*, i8** %7, align 8, !dbg !562
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef %58), !dbg !563
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0)) #19, !dbg !564
  %61 = load i8*, i8** %4, align 8, !dbg !565
  %62 = load i8*, i8** %4, align 8, !dbg !566
  %63 = load i8*, i8** %2, align 8, !dbg !567
  %64 = icmp eq i8* %62, %63, !dbg !568
  %65 = zext i1 %64 to i64, !dbg !566
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !566
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strspn(i8* noundef, i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #7

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind readonly willreturn
declare i64 @strcspn(i8* noundef, i8* noundef) #7

declare i64 @fwrite_unlocked(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #5 !dbg !571 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !575, metadata !DIExpression()), !dbg !576
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i8* %6, metadata !579, metadata !DIExpression()), !dbg !580
  store i8 1, i8* %6, align 1, !dbg !580
  call void @llvm.dbg.declare(metadata i8* %7, metadata !581, metadata !DIExpression()), !dbg !582
  %15 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !583
  %16 = icmp ne i8* %15, null, !dbg !584
  %17 = xor i1 %16, true, !dbg !584
  %18 = xor i1 %17, true, !dbg !585
  %19 = zext i1 %18 to i8, !dbg !582
  store i8 %19, i8* %7, align 1, !dbg !582
  call void @llvm.dbg.declare(metadata i8* %8, metadata !586, metadata !DIExpression()), !dbg !587
  %20 = load i8, i8* %7, align 1, !dbg !588
  %21 = trunc i8 %20 to i1, !dbg !588
  br i1 %21, label %22, label %32, !dbg !589

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4, !dbg !590
  %24 = icmp slt i32 1, %23, !dbg !591
  br i1 %24, label %25, label %30, !dbg !592

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8, !dbg !593
  %27 = getelementptr inbounds i8*, i8** %26, i64 1, !dbg !593
  %28 = load i8*, i8** %27, align 8, !dbg !593
  %29 = call i1 @streq(i8* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !594
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ], !dbg !595
  br label %32, !dbg !589

32:                                               ; preds = %30, %2
  %33 = phi i1 [ true, %2 ], [ %31, %30 ]
  %34 = zext i1 %33 to i8, !dbg !587
  store i8 %34, i8* %8, align 1, !dbg !587
  call void @llvm.dbg.declare(metadata i8* %9, metadata !596, metadata !DIExpression()), !dbg !597
  store i8 0, i8* %9, align 1, !dbg !597
  %35 = load i8**, i8*** %5, align 8, !dbg !598
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !598
  %37 = load i8*, i8** %36, align 8, !dbg !598
  call void @set_program_name(i8* noundef %37), !dbg !599
  %38 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #19, !dbg !600
  %39 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #19, !dbg !601
  %40 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #19, !dbg !602
  %41 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !603
  %42 = load i8, i8* %8, align 1, !dbg !604
  %43 = trunc i8 %42 to i1, !dbg !604
  br i1 %43, label %44, label %64, !dbg !606

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4, !dbg !607
  %46 = icmp eq i32 %45, 2, !dbg !608
  br i1 %46, label %47, label %64, !dbg !609

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8, !dbg !610
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !610
  %50 = load i8*, i8** %49, align 8, !dbg !610
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)), !dbg !613
  br i1 %51, label %52, label %53, !dbg !614

52:                                               ; preds = %47
  call void @usage(i32 noundef 0) #22, !dbg !615
  unreachable, !dbg !615

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8, !dbg !616
  %55 = getelementptr inbounds i8*, i8** %54, i64 1, !dbg !616
  %56 = load i8*, i8** %55, align 8, !dbg !616
  %57 = call i1 @streq(i8* noundef %56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)), !dbg !618
  br i1 %57, label %58, label %63, !dbg !619

58:                                               ; preds = %53
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620
  %60 = load i8*, i8** @Version, align 8, !dbg !622
  %61 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0)), !dbg !623
  %62 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)), !dbg !623
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* noundef %60, i8* noundef %61, i8* noundef %62, i8* noundef null), !dbg !624
  store i32 0, i32* %3, align 4, !dbg !625
  br label %311, !dbg !625

63:                                               ; preds = %53
  br label %64, !dbg !626

64:                                               ; preds = %63, %44, %32
  %65 = load i32, i32* %4, align 4, !dbg !627
  %66 = add nsw i32 %65, -1, !dbg !627
  store i32 %66, i32* %4, align 4, !dbg !627
  %67 = load i8**, i8*** %5, align 8, !dbg !628
  %68 = getelementptr inbounds i8*, i8** %67, i32 1, !dbg !628
  store i8** %68, i8*** %5, align 8, !dbg !628
  %69 = load i8, i8* %8, align 1, !dbg !629
  %70 = trunc i8 %69 to i1, !dbg !629
  br i1 %70, label %71, label %131, !dbg !631

71:                                               ; preds = %64
  br label %72, !dbg !632

72:                                               ; preds = %125, %71
  %73 = load i32, i32* %4, align 4, !dbg !633
  %74 = icmp sgt i32 %73, 0, !dbg !634
  br i1 %74, label %75, label %82, !dbg !635

75:                                               ; preds = %72
  %76 = load i8**, i8*** %5, align 8, !dbg !636
  %77 = getelementptr inbounds i8*, i8** %76, i64 0, !dbg !636
  %78 = load i8*, i8** %77, align 8, !dbg !636
  %79 = load i8, i8* %78, align 1, !dbg !637
  %80 = zext i8 %79 to i32, !dbg !637
  %81 = icmp eq i32 %80, 45, !dbg !638
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i1 [ false, %72 ], [ %81, %75 ], !dbg !639
  br i1 %83, label %84, label %130, !dbg !632

84:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata i8** %10, metadata !640, metadata !DIExpression()), !dbg !642
  %85 = load i8**, i8*** %5, align 8, !dbg !643
  %86 = getelementptr inbounds i8*, i8** %85, i64 0, !dbg !643
  %87 = load i8*, i8** %86, align 8, !dbg !643
  %88 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !644
  store i8* %88, i8** %10, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata i64* %11, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 0, i64* %11, align 8, !dbg !647
  br label %89, !dbg !649

89:                                               ; preds = %104, %84
  %90 = load i8*, i8** %10, align 8, !dbg !650
  %91 = load i64, i64* %11, align 8, !dbg !652
  %92 = getelementptr inbounds i8, i8* %90, i64 %91, !dbg !650
  %93 = load i8, i8* %92, align 1, !dbg !650
  %94 = icmp ne i8 %93, 0, !dbg !653
  br i1 %94, label %95, label %107, !dbg !653

95:                                               ; preds = %89
  %96 = load i8*, i8** %10, align 8, !dbg !654
  %97 = load i64, i64* %11, align 8, !dbg !655
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !654
  %99 = load i8, i8* %98, align 1, !dbg !654
  %100 = zext i8 %99 to i32, !dbg !654
  switch i32 %100, label %102 [
    i32 101, label %101
    i32 69, label %101
    i32 110, label %101
  ], !dbg !656

101:                                              ; preds = %95, %95, %95
  br label %103, !dbg !657

102:                                              ; preds = %95
  br label %132, !dbg !659

103:                                              ; preds = %101
  br label %104, !dbg !660

104:                                              ; preds = %103
  %105 = load i64, i64* %11, align 8, !dbg !661
  %106 = add i64 %105, 1, !dbg !661
  store i64 %106, i64* %11, align 8, !dbg !661
  br label %89, !dbg !662, !llvm.loop !663

107:                                              ; preds = %89
  %108 = load i64, i64* %11, align 8, !dbg !665
  %109 = icmp eq i64 %108, 0, !dbg !667
  br i1 %109, label %110, label %111, !dbg !668

110:                                              ; preds = %107
  br label %132, !dbg !669

111:                                              ; preds = %107
  br label %112, !dbg !670

112:                                              ; preds = %124, %111
  %113 = load i8*, i8** %10, align 8, !dbg !671
  %114 = load i8, i8* %113, align 1, !dbg !672
  %115 = icmp ne i8 %114, 0, !dbg !670
  br i1 %115, label %116, label %125, !dbg !670

116:                                              ; preds = %112
  %117 = load i8*, i8** %10, align 8, !dbg !673
  %118 = getelementptr inbounds i8, i8* %117, i32 1, !dbg !673
  store i8* %118, i8** %10, align 8, !dbg !673
  %119 = load i8, i8* %117, align 1, !dbg !674
  %120 = zext i8 %119 to i32, !dbg !674
  switch i32 %120, label %124 [
    i32 101, label %121
    i32 69, label %122
    i32 110, label %123
  ], !dbg !675

121:                                              ; preds = %116
  store i8 1, i8* %9, align 1, !dbg !676
  br label %124, !dbg !678

122:                                              ; preds = %116
  store i8 0, i8* %9, align 1, !dbg !679
  br label %124, !dbg !680

123:                                              ; preds = %116
  store i8 0, i8* %6, align 1, !dbg !681
  br label %124, !dbg !682

124:                                              ; preds = %116, %123, %122, %121
  br label %112, !dbg !670, !llvm.loop !683

125:                                              ; preds = %112
  %126 = load i32, i32* %4, align 4, !dbg !685
  %127 = add nsw i32 %126, -1, !dbg !685
  store i32 %127, i32* %4, align 4, !dbg !685
  %128 = load i8**, i8*** %5, align 8, !dbg !686
  %129 = getelementptr inbounds i8*, i8** %128, i32 1, !dbg !686
  store i8** %129, i8*** %5, align 8, !dbg !686
  br label %72, !dbg !632, !llvm.loop !687

130:                                              ; preds = %82
  br label %131, !dbg !632

131:                                              ; preds = %130, %64
  br label %132, !dbg !629

132:                                              ; preds = %131, %110, %102
  call void @llvm.dbg.label(metadata !689), !dbg !690
  %133 = load i8, i8* %9, align 1, !dbg !691
  %134 = trunc i8 %133 to i1, !dbg !691
  br i1 %134, label %138, label %135, !dbg !693

135:                                              ; preds = %132
  %136 = load i8, i8* %7, align 1, !dbg !694
  %137 = trunc i8 %136 to i1, !dbg !694
  br i1 %137, label %138, label %285, !dbg !695

138:                                              ; preds = %135, %132
  br label %139, !dbg !696

139:                                              ; preds = %283, %138
  %140 = load i32, i32* %4, align 4, !dbg !698
  %141 = icmp sgt i32 %140, 0, !dbg !699
  br i1 %141, label %142, label %284, !dbg !696

142:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata i8** %12, metadata !700, metadata !DIExpression()), !dbg !702
  %143 = load i8**, i8*** %5, align 8, !dbg !703
  %144 = getelementptr inbounds i8*, i8** %143, i64 0, !dbg !703
  %145 = load i8*, i8** %144, align 8, !dbg !703
  store i8* %145, i8** %12, align 8, !dbg !702
  call void @llvm.dbg.declare(metadata i8* %13, metadata !704, metadata !DIExpression()), !dbg !705
  br label %146, !dbg !706

146:                                              ; preds = %270, %142
  %147 = load i8*, i8** %12, align 8, !dbg !707
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !707
  store i8* %148, i8** %12, align 8, !dbg !707
  %149 = load i8, i8* %147, align 1, !dbg !708
  store i8 %149, i8* %13, align 1, !dbg !709
  %150 = icmp ne i8 %149, 0, !dbg !706
  br i1 %150, label %151, label %274, !dbg !706

151:                                              ; preds = %146
  %152 = load i8, i8* %13, align 1, !dbg !710
  %153 = zext i8 %152 to i32, !dbg !710
  %154 = icmp eq i32 %153, 92, !dbg !713
  br i1 %154, label %155, label %270, !dbg !714

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8, !dbg !715
  %157 = load i8, i8* %156, align 1, !dbg !716
  %158 = zext i8 %157 to i32, !dbg !716
  %159 = icmp ne i32 %158, 0, !dbg !716
  br i1 %159, label %160, label %270, !dbg !717

160:                                              ; preds = %155
  %161 = load i8*, i8** %12, align 8, !dbg !718
  %162 = getelementptr inbounds i8, i8* %161, i32 1, !dbg !718
  store i8* %162, i8** %12, align 8, !dbg !718
  %163 = load i8, i8* %161, align 1, !dbg !720
  store i8 %163, i8* %13, align 1, !dbg !721
  %164 = zext i8 %163 to i32, !dbg !722
  switch i32 %164, label %267 [
    i32 97, label %165
    i32 98, label %166
    i32 99, label %167
    i32 101, label %168
    i32 102, label %169
    i32 110, label %170
    i32 114, label %171
    i32 116, label %172
    i32 118, label %173
    i32 120, label %174
    i32 48, label %203
    i32 49, label %218
    i32 50, label %218
    i32 51, label %218
    i32 52, label %218
    i32 53, label %218
    i32 54, label %218
    i32 55, label %218
    i32 92, label %265
  ], !dbg !723

165:                                              ; preds = %160
  store i8 7, i8* %13, align 1, !dbg !724
  br label %269, !dbg !726

166:                                              ; preds = %160
  store i8 8, i8* %13, align 1, !dbg !727
  br label %269, !dbg !728

167:                                              ; preds = %160
  store i32 0, i32* %3, align 4, !dbg !729
  br label %311, !dbg !729

168:                                              ; preds = %160
  store i8 27, i8* %13, align 1, !dbg !730
  br label %269, !dbg !731

169:                                              ; preds = %160
  store i8 12, i8* %13, align 1, !dbg !732
  br label %269, !dbg !733

170:                                              ; preds = %160
  store i8 10, i8* %13, align 1, !dbg !734
  br label %269, !dbg !735

171:                                              ; preds = %160
  store i8 13, i8* %13, align 1, !dbg !736
  br label %269, !dbg !737

172:                                              ; preds = %160
  store i8 9, i8* %13, align 1, !dbg !738
  br label %269, !dbg !739

173:                                              ; preds = %160
  store i8 11, i8* %13, align 1, !dbg !740
  br label %269, !dbg !741

174:                                              ; preds = %160
  call void @llvm.dbg.declare(metadata i8* %14, metadata !742, metadata !DIExpression()), !dbg !744
  %175 = load i8*, i8** %12, align 8, !dbg !745
  %176 = load i8, i8* %175, align 1, !dbg !746
  store i8 %176, i8* %14, align 1, !dbg !744
  %177 = load i8, i8* %14, align 1, !dbg !747
  %178 = zext i8 %177 to i32, !dbg !747
  %179 = call i1 @c_isxdigit(i32 noundef %178), !dbg !749
  br i1 %179, label %181, label %180, !dbg !750

180:                                              ; preds = %174
  br label %266, !dbg !751

181:                                              ; preds = %174
  %182 = load i8*, i8** %12, align 8, !dbg !752
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !752
  store i8* %183, i8** %12, align 8, !dbg !752
  %184 = load i8, i8* %14, align 1, !dbg !753
  %185 = call i32 @hextobin(i8 noundef %184), !dbg !754
  %186 = trunc i32 %185 to i8, !dbg !754
  store i8 %186, i8* %13, align 1, !dbg !755
  %187 = load i8*, i8** %12, align 8, !dbg !756
  %188 = load i8, i8* %187, align 1, !dbg !757
  store i8 %188, i8* %14, align 1, !dbg !758
  %189 = load i8, i8* %14, align 1, !dbg !759
  %190 = zext i8 %189 to i32, !dbg !759
  %191 = call i1 @c_isxdigit(i32 noundef %190), !dbg !761
  br i1 %191, label %192, label %202, !dbg !762

192:                                              ; preds = %181
  %193 = load i8*, i8** %12, align 8, !dbg !763
  %194 = getelementptr inbounds i8, i8* %193, i32 1, !dbg !763
  store i8* %194, i8** %12, align 8, !dbg !763
  %195 = load i8, i8* %13, align 1, !dbg !765
  %196 = zext i8 %195 to i32, !dbg !765
  %197 = mul nsw i32 %196, 16, !dbg !766
  %198 = load i8, i8* %14, align 1, !dbg !767
  %199 = call i32 @hextobin(i8 noundef %198), !dbg !768
  %200 = add nsw i32 %197, %199, !dbg !769
  %201 = trunc i32 %200 to i8, !dbg !765
  store i8 %201, i8* %13, align 1, !dbg !770
  br label %202, !dbg !771

202:                                              ; preds = %192, %181
  br label %269, !dbg !772

203:                                              ; preds = %160
  store i8 0, i8* %13, align 1, !dbg !773
  %204 = load i8*, i8** %12, align 8, !dbg !774
  %205 = load i8, i8* %204, align 1, !dbg !776
  %206 = zext i8 %205 to i32, !dbg !776
  %207 = icmp sle i32 48, %206, !dbg !777
  br i1 %207, label %208, label %213, !dbg !778

208:                                              ; preds = %203
  %209 = load i8*, i8** %12, align 8, !dbg !779
  %210 = load i8, i8* %209, align 1, !dbg !780
  %211 = zext i8 %210 to i32, !dbg !780
  %212 = icmp sle i32 %211, 55, !dbg !781
  br i1 %212, label %214, label %213, !dbg !782

213:                                              ; preds = %208, %203
  br label %269, !dbg !783

214:                                              ; preds = %208
  %215 = load i8*, i8** %12, align 8, !dbg !784
  %216 = getelementptr inbounds i8, i8* %215, i32 1, !dbg !784
  store i8* %216, i8** %12, align 8, !dbg !784
  %217 = load i8, i8* %215, align 1, !dbg !785
  store i8 %217, i8* %13, align 1, !dbg !786
  br label %218, !dbg !787

218:                                              ; preds = %160, %160, %160, %160, %160, %160, %160, %214
  %219 = load i8, i8* %13, align 1, !dbg !788
  %220 = zext i8 %219 to i32, !dbg !788
  %221 = sub nsw i32 %220, 48, !dbg !788
  %222 = trunc i32 %221 to i8, !dbg !788
  store i8 %222, i8* %13, align 1, !dbg !788
  %223 = load i8*, i8** %12, align 8, !dbg !789
  %224 = load i8, i8* %223, align 1, !dbg !791
  %225 = zext i8 %224 to i32, !dbg !791
  %226 = icmp sle i32 48, %225, !dbg !792
  br i1 %226, label %227, label %243, !dbg !793

227:                                              ; preds = %218
  %228 = load i8*, i8** %12, align 8, !dbg !794
  %229 = load i8, i8* %228, align 1, !dbg !795
  %230 = zext i8 %229 to i32, !dbg !795
  %231 = icmp sle i32 %230, 55, !dbg !796
  br i1 %231, label %232, label %243, !dbg !797

232:                                              ; preds = %227
  %233 = load i8, i8* %13, align 1, !dbg !798
  %234 = zext i8 %233 to i32, !dbg !798
  %235 = mul nsw i32 %234, 8, !dbg !799
  %236 = load i8*, i8** %12, align 8, !dbg !800
  %237 = getelementptr inbounds i8, i8* %236, i32 1, !dbg !800
  store i8* %237, i8** %12, align 8, !dbg !800
  %238 = load i8, i8* %236, align 1, !dbg !801
  %239 = zext i8 %238 to i32, !dbg !801
  %240 = sub nsw i32 %239, 48, !dbg !802
  %241 = add nsw i32 %235, %240, !dbg !803
  %242 = trunc i32 %241 to i8, !dbg !798
  store i8 %242, i8* %13, align 1, !dbg !804
  br label %243, !dbg !805

243:                                              ; preds = %232, %227, %218
  %244 = load i8*, i8** %12, align 8, !dbg !806
  %245 = load i8, i8* %244, align 1, !dbg !808
  %246 = zext i8 %245 to i32, !dbg !808
  %247 = icmp sle i32 48, %246, !dbg !809
  br i1 %247, label %248, label %264, !dbg !810

248:                                              ; preds = %243
  %249 = load i8*, i8** %12, align 8, !dbg !811
  %250 = load i8, i8* %249, align 1, !dbg !812
  %251 = zext i8 %250 to i32, !dbg !812
  %252 = icmp sle i32 %251, 55, !dbg !813
  br i1 %252, label %253, label %264, !dbg !814

253:                                              ; preds = %248
  %254 = load i8, i8* %13, align 1, !dbg !815
  %255 = zext i8 %254 to i32, !dbg !815
  %256 = mul nsw i32 %255, 8, !dbg !816
  %257 = load i8*, i8** %12, align 8, !dbg !817
  %258 = getelementptr inbounds i8, i8* %257, i32 1, !dbg !817
  store i8* %258, i8** %12, align 8, !dbg !817
  %259 = load i8, i8* %257, align 1, !dbg !818
  %260 = zext i8 %259 to i32, !dbg !818
  %261 = sub nsw i32 %260, 48, !dbg !819
  %262 = add nsw i32 %256, %261, !dbg !820
  %263 = trunc i32 %262 to i8, !dbg !815
  store i8 %263, i8* %13, align 1, !dbg !821
  br label %264, !dbg !822

264:                                              ; preds = %253, %248, %243
  br label %269, !dbg !823

265:                                              ; preds = %160
  br label %269, !dbg !824

266:                                              ; preds = %180
  call void @llvm.dbg.label(metadata !825), !dbg !826
  br label %267, !dbg !824

267:                                              ; preds = %160, %266
  %268 = call i32 @putchar_unlocked(i32 noundef 92), !dbg !827
  br label %269, !dbg !828

269:                                              ; preds = %267, %265, %264, %213, %202, %173, %172, %171, %170, %169, %168, %166, %165
  br label %270, !dbg !829

270:                                              ; preds = %269, %155, %151
  %271 = load i8, i8* %13, align 1, !dbg !830
  %272 = zext i8 %271 to i32, !dbg !830
  %273 = call i32 @putchar_unlocked(i32 noundef %272), !dbg !830
  br label %146, !dbg !706, !llvm.loop !831

274:                                              ; preds = %146
  %275 = load i32, i32* %4, align 4, !dbg !833
  %276 = add nsw i32 %275, -1, !dbg !833
  store i32 %276, i32* %4, align 4, !dbg !833
  %277 = load i8**, i8*** %5, align 8, !dbg !834
  %278 = getelementptr inbounds i8*, i8** %277, i32 1, !dbg !834
  store i8** %278, i8*** %5, align 8, !dbg !834
  %279 = load i32, i32* %4, align 4, !dbg !835
  %280 = icmp sgt i32 %279, 0, !dbg !837
  br i1 %280, label %281, label %283, !dbg !838

281:                                              ; preds = %274
  %282 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !839
  br label %283, !dbg !839

283:                                              ; preds = %281, %274
  br label %139, !dbg !696, !llvm.loop !840

284:                                              ; preds = %139
  br label %305, !dbg !842

285:                                              ; preds = %135
  br label %286, !dbg !843

286:                                              ; preds = %303, %285
  %287 = load i32, i32* %4, align 4, !dbg !845
  %288 = icmp sgt i32 %287, 0, !dbg !846
  br i1 %288, label %289, label %304, !dbg !843

289:                                              ; preds = %286
  %290 = load i8**, i8*** %5, align 8, !dbg !847
  %291 = getelementptr inbounds i8*, i8** %290, i64 0, !dbg !847
  %292 = load i8*, i8** %291, align 8, !dbg !847
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !847
  %294 = call i32 @fputs_unlocked(i8* noundef %292, %struct._IO_FILE* noundef %293), !dbg !847
  %295 = load i32, i32* %4, align 4, !dbg !849
  %296 = add nsw i32 %295, -1, !dbg !849
  store i32 %296, i32* %4, align 4, !dbg !849
  %297 = load i8**, i8*** %5, align 8, !dbg !850
  %298 = getelementptr inbounds i8*, i8** %297, i32 1, !dbg !850
  store i8** %298, i8*** %5, align 8, !dbg !850
  %299 = load i32, i32* %4, align 4, !dbg !851
  %300 = icmp sgt i32 %299, 0, !dbg !853
  br i1 %300, label %301, label %303, !dbg !854

301:                                              ; preds = %289
  %302 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !855
  br label %303, !dbg !855

303:                                              ; preds = %301, %289
  br label %286, !dbg !843, !llvm.loop !856

304:                                              ; preds = %286
  br label %305

305:                                              ; preds = %304, %284
  %306 = load i8, i8* %6, align 1, !dbg !858
  %307 = trunc i8 %306 to i1, !dbg !858
  br i1 %307, label %308, label %310, !dbg !860

308:                                              ; preds = %305
  %309 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !861
  br label %310, !dbg !861

310:                                              ; preds = %308, %305
  store i32 0, i32* %3, align 4, !dbg !862
  br label %311, !dbg !862

311:                                              ; preds = %310, %167, %58
  %312 = load i32, i32* %3, align 4, !dbg !863
  ret i32 %312, !dbg !863
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #3

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hextobin(i8 noundef %0) #5 !dbg !864 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !867, metadata !DIExpression()), !dbg !868
  %4 = load i8, i8* %3, align 1, !dbg !869
  %5 = zext i8 %4 to i32, !dbg !869
  switch i32 %5, label %6 [
    i32 97, label %10
    i32 65, label %10
    i32 98, label %11
    i32 66, label %11
    i32 99, label %12
    i32 67, label %12
    i32 100, label %13
    i32 68, label %13
    i32 101, label %14
    i32 69, label %14
    i32 102, label %15
    i32 70, label %15
  ], !dbg !870

6:                                                ; preds = %1
  %7 = load i8, i8* %3, align 1, !dbg !871
  %8 = zext i8 %7 to i32, !dbg !871
  %9 = sub nsw i32 %8, 48, !dbg !873
  store i32 %9, i32* %2, align 4, !dbg !874
  br label %16, !dbg !874

10:                                               ; preds = %1, %1
  store i32 10, i32* %2, align 4, !dbg !875
  br label %16, !dbg !875

11:                                               ; preds = %1, %1
  store i32 11, i32* %2, align 4, !dbg !876
  br label %16, !dbg !876

12:                                               ; preds = %1, %1
  store i32 12, i32* %2, align 4, !dbg !877
  br label %16, !dbg !877

13:                                               ; preds = %1, %1
  store i32 13, i32* %2, align 4, !dbg !878
  br label %16, !dbg !878

14:                                               ; preds = %1, %1
  store i32 14, i32* %2, align 4, !dbg !879
  br label %16, !dbg !879

15:                                               ; preds = %1, %1
  store i32 15, i32* %2, align 4, !dbg !880
  br label %16, !dbg !880

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %6
  %17 = load i32, i32* %2, align 4, !dbg !881
  ret i32 %17, !dbg !881
}

declare i32 @putchar_unlocked(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #5 !dbg !882 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !886, metadata !DIExpression()), !dbg !887
  %4 = load i32, i32* %3, align 4, !dbg !888
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !889

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !890
  br label %7, !dbg !890

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !892
  br label %7, !dbg !892

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !893
  ret i1 %8, !dbg !893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #5 !dbg !894 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !895, metadata !DIExpression()), !dbg !896
  %4 = load i32, i32* %3, align 4, !dbg !897
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !898

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !899
  br label %7, !dbg !899

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !901
  br label %7, !dbg !901

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !902
  ret i1 %8, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #5 !dbg !903 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !904, metadata !DIExpression()), !dbg !905
  %4 = load i32, i32* %3, align 4, !dbg !906
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !907

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !908
  br label %7, !dbg !908

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !910
  br label %7, !dbg !910

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !911
  ret i1 %8, !dbg !911
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #5 !dbg !912 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !913, metadata !DIExpression()), !dbg !914
  %3 = load i32, i32* %2, align 4, !dbg !915
  %4 = icmp eq i32 %3, 32, !dbg !916
  br i1 %4, label %8, label %5, !dbg !917

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !918
  %7 = icmp eq i32 %6, 9, !dbg !919
  br label %8, !dbg !917

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !920
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #5 !dbg !921 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !922, metadata !DIExpression()), !dbg !923
  %4 = load i32, i32* %3, align 4, !dbg !924
  switch i32 %4, label %6 [
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
  ], !dbg !925

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !926
  br label %7, !dbg !926

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !928
  br label %7, !dbg !928

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !929
  ret i1 %8, !dbg !929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #5 !dbg !930 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !931, metadata !DIExpression()), !dbg !932
  %4 = load i32, i32* %3, align 4, !dbg !933
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
  ], !dbg !934

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !935
  br label %7, !dbg !935

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !937
  br label %7, !dbg !937

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !938
  ret i1 %8, !dbg !938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #5 !dbg !939 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !940, metadata !DIExpression()), !dbg !941
  %4 = load i32, i32* %3, align 4, !dbg !942
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !943

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !944
  br label %7, !dbg !944

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !946
  br label %7, !dbg !946

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !947
  ret i1 %8, !dbg !947
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #5 !dbg !948 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !949, metadata !DIExpression()), !dbg !950
  %4 = load i32, i32* %3, align 4, !dbg !951
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !952

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !953
  br label %7, !dbg !953

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !955
  br label %7, !dbg !955

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !956
  ret i1 %8, !dbg !956
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #5 !dbg !957 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !958, metadata !DIExpression()), !dbg !959
  %4 = load i32, i32* %3, align 4, !dbg !960
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !961

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !962
  br label %7, !dbg !962

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !964
  br label %7, !dbg !964

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !965
  ret i1 %8, !dbg !965
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #5 !dbg !966 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !967, metadata !DIExpression()), !dbg !968
  %4 = load i32, i32* %3, align 4, !dbg !969
  switch i32 %4, label %6 [
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
  ], !dbg !970

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !971
  br label %7, !dbg !971

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !973
  br label %7, !dbg !973

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !974
  ret i1 %8, !dbg !974
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #5 !dbg !975 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !976, metadata !DIExpression()), !dbg !977
  %4 = load i32, i32* %3, align 4, !dbg !978
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !979

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !980
  br label %7, !dbg !980

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !982
  br label %7, !dbg !982

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !983
  ret i1 %8, !dbg !983
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #5 !dbg !984 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !985, metadata !DIExpression()), !dbg !986
  %4 = load i32, i32* %3, align 4, !dbg !987
  switch i32 %4, label %6 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !988

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !989
  br label %7, !dbg !989

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !991
  br label %7, !dbg !991

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !992
  ret i1 %8, !dbg !992
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #5 !dbg !993 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !994, metadata !DIExpression()), !dbg !995
  %4 = load i32, i32* %3, align 4, !dbg !996
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
  ], !dbg !997

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !998
  br label %7, !dbg !998

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1000
  br label %7, !dbg !1000

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1001
  ret i1 %8, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #5 !dbg !1002 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1005, metadata !DIExpression()), !dbg !1006
  %4 = load i32, i32* %3, align 4, !dbg !1007
  switch i32 %4, label %9 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1008

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1009
  %7 = sub nsw i32 %6, 65, !dbg !1011
  %8 = add nsw i32 %7, 97, !dbg !1012
  store i32 %8, i32* %2, align 4, !dbg !1013
  br label %11, !dbg !1013

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1014
  store i32 %10, i32* %2, align 4, !dbg !1015
  br label %11, !dbg !1015

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1016
  ret i32 %12, !dbg !1016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #5 !dbg !1017 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1018, metadata !DIExpression()), !dbg !1019
  %4 = load i32, i32* %3, align 4, !dbg !1020
  switch i32 %4, label %9 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !1021

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1022
  %7 = sub nsw i32 %6, 97, !dbg !1024
  %8 = add nsw i32 %7, 65, !dbg !1025
  store i32 %8, i32* %2, align 4, !dbg !1026
  br label %11, !dbg !1026

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1027
  store i32 %10, i32* %2, align 4, !dbg !1028
  br label %11, !dbg !1028

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1029
  ret i32 %12, !dbg !1029
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #5 !dbg !1030 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1031, metadata !DIExpression()), !dbg !1032
  %3 = load i8*, i8** %2, align 8, !dbg !1033
  store i8* %3, i8** @file_name, align 8, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #5 !dbg !1036 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1039, metadata !DIExpression()), !dbg !1040
  %4 = load i8, i8* %2, align 1, !dbg !1041
  %5 = trunc i8 %4 to i1, !dbg !1041
  %6 = zext i1 %5 to i8, !dbg !1042
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1042
  ret void, !dbg !1043
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #5 !dbg !1044 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1045
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1047
  %4 = icmp ne i32 %3, 0, !dbg !1048
  br i1 %4, label %5, label %28, !dbg !1049

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1050
  %7 = trunc i8 %6 to i1, !dbg !1050
  br i1 %7, label %8, label %12, !dbg !1051

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1052
  %10 = load i32, i32* %9, align 4, !dbg !1052
  %11 = icmp eq i32 %10, 32, !dbg !1053
  br i1 %11, label %28, label %12, !dbg !1054

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1055, metadata !DIExpression()), !dbg !1057
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.64, i64 0, i64 0)) #19, !dbg !1058
  store i8* %13, i8** %1, align 8, !dbg !1057
  %14 = load i8*, i8** @file_name, align 8, !dbg !1059
  %15 = icmp ne i8* %14, null, !dbg !1059
  br i1 %15, label %16, label %22, !dbg !1061

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1062
  %18 = load i32, i32* %17, align 4, !dbg !1062
  %19 = load i8*, i8** @file_name, align 8, !dbg !1062
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1062
  %21 = load i8*, i8** %1, align 8, !dbg !1062
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.65, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1062
  br label %26, !dbg !1062

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1063
  %24 = load i32, i32* %23, align 4, !dbg !1063
  %25 = load i8*, i8** %1, align 8, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.66, i64 0, i64 0), i8* noundef %25), !dbg !1063
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1064
  call void @_exit(i32 noundef %27) #22, !dbg !1065
  unreachable, !dbg !1065

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1066
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1068
  %31 = icmp ne i32 %30, 0, !dbg !1069
  br i1 %31, label %32, label %34, !dbg !1070

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1071
  call void @_exit(i32 noundef %33) #22, !dbg !1072
  unreachable, !dbg !1072

34:                                               ; preds = %28
  ret void, !dbg !1073
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1074 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1079, metadata !DIExpression()), !dbg !1078
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1080, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1081, metadata !DIExpression()), !dbg !1078
  call void @flush_stdout(), !dbg !1082
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1083
  %10 = icmp ne void ()* %9, null, !dbg !1083
  br i1 %10, label %11, label %13, !dbg !1085

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1086
  call void %12(), !dbg !1087
  br label %17, !dbg !1087

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1088
  %15 = call i8* @getprogname() #20, !dbg !1090
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8* noundef %15), !dbg !1091
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1092
  %19 = load i32, i32* %6, align 4, !dbg !1092
  %20 = load i8*, i8** %7, align 8, !dbg !1092
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1092
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1092
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1092
  ret void, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #5 !dbg !1094 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i32 1, i32* %1, align 4, !dbg !1097
  %2 = load i32, i32* %1, align 4, !dbg !1098
  %3 = icmp sle i32 0, %2, !dbg !1100
  br i1 %3, label %4, label %11, !dbg !1101

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1102
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1103
  %7 = icmp ne i32 %6, 0, !dbg !1103
  br i1 %7, label %8, label %11, !dbg !1104

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1105
  br label %11, !dbg !1105

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1106
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #5 !dbg !1107 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1110, metadata !DIExpression()), !dbg !1109
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1111, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1112, metadata !DIExpression()), !dbg !1109
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1113
  %10 = load i8*, i8** %7, align 8, !dbg !1114
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1115
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1115
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1115
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1116
  %15 = add i32 %14, 1, !dbg !1116
  store i32 %15, i32* @error_message_count, align 4, !dbg !1116
  %16 = load i32, i32* %6, align 4, !dbg !1117
  %17 = icmp ne i32 %16, 0, !dbg !1117
  br i1 %17, label %18, label %20, !dbg !1119

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1120
  call void @print_errno_message(i32 noundef %19), !dbg !1121
  br label %20, !dbg !1121

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1122
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1122
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1123
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1123
  %25 = load i32, i32* %5, align 4, !dbg !1124
  %26 = icmp ne i32 %25, 0, !dbg !1124
  br i1 %26, label %27, label %29, !dbg !1126

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1127
  call void @exit(i32 noundef %28) #18, !dbg !1128
  unreachable, !dbg !1128

29:                                               ; preds = %20
  ret void, !dbg !1129
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #5 !dbg !1130 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1135, metadata !DIExpression()), !dbg !1139
  %5 = load i32, i32* %2, align 4, !dbg !1140
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1141
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1142
  store i8* %7, i8** %3, align 8, !dbg !1143
  %8 = load i8*, i8** %3, align 8, !dbg !1144
  %9 = icmp ne i8* %8, null, !dbg !1144
  br i1 %9, label %12, label %10, !dbg !1146

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.69, i64 0, i64 0)) #19, !dbg !1147
  store i8* %11, i8** %3, align 8, !dbg !1148
  br label %12, !dbg !1149

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1150
  %14 = load i8*, i8** %3, align 8, !dbg !1151
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.70, i64 0, i64 0), i8* noundef %14), !dbg !1152
  ret void, !dbg !1153
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #4

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #5 !dbg !1154 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1155, metadata !DIExpression()), !dbg !1156
  %3 = load i32, i32* %2, align 4, !dbg !1157
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1158
  %5 = icmp sle i32 0, %4, !dbg !1159
  %6 = zext i1 %5 to i32, !dbg !1159
  ret i32 %6, !dbg !1160
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #5 !dbg !1161 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1170, metadata !DIExpression()), !dbg !1171
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1172
  call void @llvm.va_start(i8* %9), !dbg !1172
  %10 = load i32, i32* %4, align 4, !dbg !1173
  %11 = load i32, i32* %5, align 4, !dbg !1173
  %12 = load i8*, i8** %6, align 8, !dbg !1173
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1173
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1173
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1173
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1174
  call void @llvm.va_end(i8* %15), !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !59 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1178, metadata !DIExpression()), !dbg !1177
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1179, metadata !DIExpression()), !dbg !1177
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1180, metadata !DIExpression()), !dbg !1177
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1181, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1182, metadata !DIExpression()), !dbg !1177
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1183
  %14 = icmp ne i32 %13, 0, !dbg !1183
  br i1 %14, label %15, label %38, !dbg !1185

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1186
  %17 = load i32, i32* %10, align 4, !dbg !1189
  %18 = icmp eq i32 %16, %17, !dbg !1190
  br i1 %18, label %19, label %35, !dbg !1191

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1192
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1193
  %22 = icmp eq i8* %20, %21, !dbg !1194
  br i1 %22, label %34, label %23, !dbg !1195

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1196
  %25 = icmp ne i8* %24, null, !dbg !1197
  br i1 %25, label %26, label %35, !dbg !1198

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1199
  %28 = icmp ne i8* %27, null, !dbg !1200
  br i1 %28, label %29, label %35, !dbg !1201

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1202
  %31 = load i8*, i8** %9, align 8, !dbg !1203
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1204
  %33 = icmp eq i32 %32, 0, !dbg !1205
  br i1 %33, label %34, label %35, !dbg !1206

34:                                               ; preds = %29, %19
  br label %61, !dbg !1207

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1208
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1209
  %37 = load i32, i32* %10, align 4, !dbg !1210
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1211
  br label %38, !dbg !1212

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1213
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1214
  %40 = icmp ne void ()* %39, null, !dbg !1214
  br i1 %40, label %41, label %43, !dbg !1216

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1217
  call void %42(), !dbg !1218
  br label %47, !dbg !1218

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1219
  %45 = call i8* @getprogname() #20, !dbg !1221
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.73, i64 0, i64 0), i8* noundef %45), !dbg !1222
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1223
  %49 = load i8*, i8** %9, align 8, !dbg !1224
  %50 = icmp ne i8* %49, null, !dbg !1225
  %51 = zext i1 %50 to i64, !dbg !1224
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), !dbg !1224
  %53 = load i8*, i8** %9, align 8, !dbg !1226
  %54 = load i32, i32* %10, align 4, !dbg !1227
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1228
  %56 = load i32, i32* %7, align 4, !dbg !1229
  %57 = load i32, i32* %8, align 4, !dbg !1229
  %58 = load i8*, i8** %11, align 8, !dbg !1229
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1229
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1229
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1229
  br label %61, !dbg !1230

61:                                               ; preds = %47, %34
  ret void, !dbg !1230
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #5 !dbg !1231 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1234, metadata !DIExpression()), !dbg !1235
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1242, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1244, metadata !DIExpression()), !dbg !1245
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1246
  call void @llvm.va_start(i8* %13), !dbg !1246
  %14 = load i32, i32* %6, align 4, !dbg !1247
  %15 = load i32, i32* %7, align 4, !dbg !1247
  %16 = load i8*, i8** %8, align 8, !dbg !1247
  %17 = load i32, i32* %9, align 4, !dbg !1247
  %18 = load i8*, i8** %10, align 8, !dbg !1247
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1247
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1247
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1247
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1248
  call void @llvm.va_end(i8* %21), !dbg !1248
  ret void, !dbg !1249
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1250 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1253
  ret i8* %1, !dbg !1254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #5 !dbg !1255 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1256, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1258, metadata !DIExpression()), !dbg !1259
  %5 = load i8*, i8** %2, align 8, !dbg !1260
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1261
  store i8* %6, i8** %3, align 8, !dbg !1259
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1262, metadata !DIExpression()), !dbg !1263
  %7 = load i8*, i8** %3, align 8, !dbg !1264
  %8 = icmp ne i8* %7, null, !dbg !1264
  br i1 %8, label %9, label %12, !dbg !1264

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1265
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1266
  br label %14, !dbg !1264

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1267
  br label %14, !dbg !1264

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1264
  store i8* %15, i8** %4, align 8, !dbg !1263
  %16 = load i8*, i8** %4, align 8, !dbg !1268
  %17 = load i8*, i8** %2, align 8, !dbg !1270
  %18 = ptrtoint i8* %16 to i64, !dbg !1271
  %19 = ptrtoint i8* %17 to i64, !dbg !1271
  %20 = sub i64 %18, %19, !dbg !1271
  %21 = icmp sle i64 7, %20, !dbg !1272
  br i1 %21, label %22, label %36, !dbg !1273

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1274
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1275
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i64 noundef 7), !dbg !1276
  br i1 %25, label %26, label %36, !dbg !1277

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1278
  store i8* %27, i8** %2, align 8, !dbg !1280
  %28 = load i8*, i8** %4, align 8, !dbg !1281
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.85, i64 0, i64 0), i64 noundef 3) #20, !dbg !1283
  %30 = icmp eq i32 %29, 0, !dbg !1284
  br i1 %30, label %31, label %35, !dbg !1285

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1286
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1286
  store i8* %33, i8** %4, align 8, !dbg !1286
  %34 = load i8*, i8** %4, align 8, !dbg !1288
  store i8* %34, i8** %2, align 8, !dbg !1289
  br label %35, !dbg !1290

35:                                               ; preds = %31, %26
  br label %36, !dbg !1291

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1292
  store i8* %37, i8** @program_name, align 8, !dbg !1293
  %38 = load i8*, i8** %2, align 8, !dbg !1294
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1295
  %39 = load i8*, i8** %4, align 8, !dbg !1296
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #5 !dbg !93 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1301, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1303, metadata !DIExpression()), !dbg !1304
  %9 = load i8*, i8** %4, align 8, !dbg !1305
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1306
  store i8* %10, i8** %6, align 8, !dbg !1304
  %11 = load i8*, i8** %6, align 8, !dbg !1307
  %12 = load i8*, i8** %4, align 8, !dbg !1309
  %13 = icmp ne i8* %11, %12, !dbg !1310
  br i1 %13, label %14, label %16, !dbg !1311

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1312
  store i8* %15, i8** %3, align 8, !dbg !1313
  br label %26, !dbg !1313

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1321, metadata !DIExpression()), !dbg !1332
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1333
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1334
  %18 = icmp eq i64 %17, 2, !dbg !1336
  br i1 %18, label %19, label %24, !dbg !1337

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1338
  %21 = icmp eq i32 %20, 2047, !dbg !1339
  br i1 %21, label %22, label %24, !dbg !1340

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1341
  store i8* %23, i8** %3, align 8, !dbg !1342
  br label %26, !dbg !1342

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1343
  store i8* %25, i8** %3, align 8, !dbg !1344
  br label %26, !dbg !1344

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1345
  ret i8* %27, !dbg !1345
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #5 !dbg !1346 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1350, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1352, metadata !DIExpression()), !dbg !1353
  %5 = call i32* @__errno_location() #21, !dbg !1354
  %6 = load i32, i32* %5, align 4, !dbg !1354
  store i32 %6, i32* %3, align 4, !dbg !1353
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1355, metadata !DIExpression()), !dbg !1356
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1357
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1357
  br i1 %8, label %9, label %11, !dbg !1357

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1358
  br label %12, !dbg !1357

11:                                               ; preds = %1
  br label %12, !dbg !1357

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1357
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1357
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1359
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1359
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1356
  %17 = load i32, i32* %3, align 4, !dbg !1360
  %18 = call i32* @__errno_location() #21, !dbg !1361
  store i32 %17, i32* %18, align 4, !dbg !1362
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1363
  ret %struct.quoting_options* %19, !dbg !1364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #5 !dbg !1365 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1370, metadata !DIExpression()), !dbg !1371
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1372
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1372
  br i1 %4, label %5, label %7, !dbg !1372

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1373
  br label %8, !dbg !1372

7:                                                ; preds = %1
  br label %8, !dbg !1372

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1372
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1374
  %11 = load i32, i32* %10, align 8, !dbg !1374
  ret i32 %11, !dbg !1375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #5 !dbg !1376 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1381, metadata !DIExpression()), !dbg !1382
  %5 = load i32, i32* %4, align 4, !dbg !1383
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1384
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1384
  br i1 %7, label %8, label %10, !dbg !1384

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1385
  br label %11, !dbg !1384

10:                                               ; preds = %2
  br label %11, !dbg !1384

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1384
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1386
  store i32 %5, i32* %13, align 8, !dbg !1387
  ret void, !dbg !1388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #5 !dbg !1389 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1394, metadata !DIExpression()), !dbg !1395
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1396, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1398, metadata !DIExpression()), !dbg !1399
  %11 = load i8, i8* %5, align 1, !dbg !1400
  store i8 %11, i8* %7, align 1, !dbg !1399
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1401, metadata !DIExpression()), !dbg !1403
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1404
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1404
  br i1 %13, label %14, label %16, !dbg !1404

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1405
  br label %17, !dbg !1404

16:                                               ; preds = %3
  br label %17, !dbg !1404

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1404
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1406
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1407
  %21 = load i8, i8* %7, align 1, !dbg !1408
  %22 = zext i8 %21 to i64, !dbg !1408
  %23 = udiv i64 %22, 32, !dbg !1409
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1410
  store i32* %24, i32** %8, align 8, !dbg !1403
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1411, metadata !DIExpression()), !dbg !1412
  %25 = load i8, i8* %7, align 1, !dbg !1413
  %26 = zext i8 %25 to i64, !dbg !1413
  %27 = urem i64 %26, 32, !dbg !1414
  %28 = trunc i64 %27 to i32, !dbg !1413
  store i32 %28, i32* %9, align 4, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1415, metadata !DIExpression()), !dbg !1416
  %29 = load i32*, i32** %8, align 8, !dbg !1417
  %30 = load i32, i32* %29, align 4, !dbg !1418
  %31 = load i32, i32* %9, align 4, !dbg !1419
  %32 = lshr i32 %30, %31, !dbg !1420
  %33 = and i32 %32, 1, !dbg !1421
  store i32 %33, i32* %10, align 4, !dbg !1416
  %34 = load i32, i32* %6, align 4, !dbg !1422
  %35 = and i32 %34, 1, !dbg !1423
  %36 = load i32, i32* %10, align 4, !dbg !1424
  %37 = xor i32 %35, %36, !dbg !1425
  %38 = load i32, i32* %9, align 4, !dbg !1426
  %39 = shl i32 %37, %38, !dbg !1427
  %40 = load i32*, i32** %8, align 8, !dbg !1428
  %41 = load i32, i32* %40, align 4, !dbg !1429
  %42 = xor i32 %41, %39, !dbg !1429
  store i32 %42, i32* %40, align 4, !dbg !1429
  %43 = load i32, i32* %10, align 4, !dbg !1430
  ret i32 %43, !dbg !1431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #5 !dbg !1432 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1437, metadata !DIExpression()), !dbg !1438
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1439
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1439
  br i1 %7, label %9, label %8, !dbg !1441

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1442
  br label %9, !dbg !1443

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1444, metadata !DIExpression()), !dbg !1445
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1446
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1447
  %12 = load i32, i32* %11, align 4, !dbg !1447
  store i32 %12, i32* %5, align 4, !dbg !1445
  %13 = load i32, i32* %4, align 4, !dbg !1448
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1449
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1450
  store i32 %13, i32* %15, align 4, !dbg !1451
  %16 = load i32, i32* %5, align 4, !dbg !1452
  ret i32 %16, !dbg !1453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #5 !dbg !1454 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1461, metadata !DIExpression()), !dbg !1462
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1463
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1463
  br i1 %8, label %10, label %9, !dbg !1465

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1466
  br label %10, !dbg !1467

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1468
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1469
  store i32 10, i32* %12, align 8, !dbg !1470
  %13 = load i8*, i8** %5, align 8, !dbg !1471
  %14 = icmp ne i8* %13, null, !dbg !1471
  br i1 %14, label %15, label %18, !dbg !1473

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1474
  %17 = icmp ne i8* %16, null, !dbg !1474
  br i1 %17, label %19, label %18, !dbg !1475

18:                                               ; preds = %15, %10
  call void @abort() #18, !dbg !1476
  unreachable, !dbg !1476

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1477
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1478
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1479
  store i8* %20, i8** %22, align 8, !dbg !1480
  %23 = load i8*, i8** %6, align 8, !dbg !1481
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1482
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1483
  store i8* %23, i8** %25, align 8, !dbg !1484
  ret void, !dbg !1485
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #5 !dbg !1486 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1495, metadata !DIExpression()), !dbg !1496
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1497, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1499, metadata !DIExpression()), !dbg !1500
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1501
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1501
  br i1 %15, label %16, label %18, !dbg !1501

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1502
  br label %19, !dbg !1501

18:                                               ; preds = %5
  br label %19, !dbg !1501

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1501
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1503, metadata !DIExpression()), !dbg !1504
  %21 = call i32* @__errno_location() #21, !dbg !1505
  %22 = load i32, i32* %21, align 4, !dbg !1505
  store i32 %22, i32* %12, align 4, !dbg !1504
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1506, metadata !DIExpression()), !dbg !1507
  %23 = load i8*, i8** %6, align 8, !dbg !1508
  %24 = load i64, i64* %7, align 8, !dbg !1509
  %25 = load i8*, i8** %8, align 8, !dbg !1510
  %26 = load i64, i64* %9, align 8, !dbg !1511
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1512
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1513
  %29 = load i32, i32* %28, align 8, !dbg !1513
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1514
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1515
  %32 = load i32, i32* %31, align 4, !dbg !1515
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1516
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1517
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1516
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1518
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1519
  %38 = load i8*, i8** %37, align 8, !dbg !1519
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1520
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1521
  %41 = load i8*, i8** %40, align 8, !dbg !1521
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1522
  store i64 %42, i64* %13, align 8, !dbg !1507
  %43 = load i32, i32* %12, align 4, !dbg !1523
  %44 = call i32* @__errno_location() #21, !dbg !1524
  store i32 %43, i32* %44, align 4, !dbg !1525
  %45 = load i64, i64* %13, align 8, !dbg !1526
  ret i64 %45, !dbg !1527
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #5 !dbg !1528 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1535, metadata !DIExpression()), !dbg !1536
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1537, metadata !DIExpression()), !dbg !1538
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1549, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1551, metadata !DIExpression()), !dbg !1552
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !1553
  %45 = icmp eq i64 %44, 1, !dbg !1554
  %46 = zext i1 %45 to i8, !dbg !1552
  store i8 %46, i8* %20, align 1, !dbg !1552
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1555, metadata !DIExpression()), !dbg !1556
  store i64 0, i64* %21, align 8, !dbg !1556
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1557, metadata !DIExpression()), !dbg !1558
  store i64 0, i64* %22, align 8, !dbg !1558
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i8* null, i8** %23, align 8, !dbg !1560
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i64 0, i64* %24, align 8, !dbg !1562
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i8 0, i8* %25, align 1, !dbg !1564
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1565, metadata !DIExpression()), !dbg !1566
  %47 = load i32, i32* %16, align 4, !dbg !1567
  %48 = and i32 %47, 2, !dbg !1568
  %49 = icmp ne i32 %48, 0, !dbg !1569
  %50 = zext i1 %49 to i8, !dbg !1566
  store i8 %50, i8* %26, align 1, !dbg !1566
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i8 0, i8* %27, align 1, !dbg !1571
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i8 1, i8* %28, align 1, !dbg !1573
  br label %51, !dbg !1574

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1575), !dbg !1576
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i8 0, i8* %29, align 1, !dbg !1578
  %52 = load i32, i32* %15, align 4, !dbg !1579
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
  ], !dbg !1580

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1581
  store i8 1, i8* %26, align 1, !dbg !1583
  br label %54, !dbg !1584

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1585
  %56 = trunc i8 %55 to i1, !dbg !1585
  br i1 %56, label %70, label %57, !dbg !1587

57:                                               ; preds = %54
  br label %58, !dbg !1588

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1589
  %60 = load i64, i64* %12, align 8, !dbg !1589
  %61 = icmp ult i64 %59, %60, !dbg !1589
  br i1 %61, label %62, label %66, !dbg !1592

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1589
  %64 = load i64, i64* %21, align 8, !dbg !1589
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1589
  store i8 34, i8* %65, align 1, !dbg !1589
  br label %66, !dbg !1589

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1592
  %68 = add i64 %67, 1, !dbg !1592
  store i64 %68, i64* %21, align 8, !dbg !1592
  br label %69, !dbg !1592

69:                                               ; preds = %66
  br label %70, !dbg !1592

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1593
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), i8** %23, align 8, !dbg !1594
  store i64 1, i64* %24, align 8, !dbg !1595
  br label %138, !dbg !1596

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1597
  store i8 0, i8* %26, align 1, !dbg !1598
  br label %138, !dbg !1599

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1600
  %74 = icmp ne i32 %73, 10, !dbg !1603
  br i1 %74, label %75, label %80, !dbg !1604

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1605
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.99, i64 0, i64 0), i32 noundef %76), !dbg !1607
  store i8* %77, i8** %18, align 8, !dbg !1608
  %78 = load i32, i32* %15, align 4, !dbg !1609
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), i32 noundef %78), !dbg !1610
  store i8* %79, i8** %19, align 8, !dbg !1611
  br label %80, !dbg !1612

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1613
  %82 = trunc i8 %81 to i1, !dbg !1613
  br i1 %82, label %108, label %83, !dbg !1615

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1616, metadata !DIExpression()), !dbg !1618
  %84 = load i8*, i8** %18, align 8, !dbg !1619
  store i8* %84, i8** %30, align 8, !dbg !1618
  br label %85, !dbg !1620

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1621
  %87 = load i8, i8* %86, align 1, !dbg !1623
  %88 = icmp ne i8 %87, 0, !dbg !1624
  br i1 %88, label %89, label %107, !dbg !1624

89:                                               ; preds = %85
  br label %90, !dbg !1625

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1626
  %92 = load i64, i64* %12, align 8, !dbg !1626
  %93 = icmp ult i64 %91, %92, !dbg !1626
  br i1 %93, label %94, label %100, !dbg !1629

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1626
  %96 = load i8, i8* %95, align 1, !dbg !1626
  %97 = load i8*, i8** %11, align 8, !dbg !1626
  %98 = load i64, i64* %21, align 8, !dbg !1626
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1626
  store i8 %96, i8* %99, align 1, !dbg !1626
  br label %100, !dbg !1626

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1629
  %102 = add i64 %101, 1, !dbg !1629
  store i64 %102, i64* %21, align 8, !dbg !1629
  br label %103, !dbg !1629

103:                                              ; preds = %100
  br label %104, !dbg !1629

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1630
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1630
  store i8* %106, i8** %30, align 8, !dbg !1630
  br label %85, !dbg !1631, !llvm.loop !1632

107:                                              ; preds = %85
  br label %108, !dbg !1633

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1634
  %109 = load i8*, i8** %19, align 8, !dbg !1635
  store i8* %109, i8** %23, align 8, !dbg !1636
  %110 = load i8*, i8** %23, align 8, !dbg !1637
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1638
  store i64 %111, i64* %24, align 8, !dbg !1639
  br label %138, !dbg !1640

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1641
  br label %113, !dbg !1642

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1643
  br label %114, !dbg !1644

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1645
  %116 = trunc i8 %115 to i1, !dbg !1645
  br i1 %116, label %118, label %117, !dbg !1647

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1648
  br label %118, !dbg !1649

118:                                              ; preds = %117, %114
  br label %119, !dbg !1645

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1650
  %120 = load i8, i8* %26, align 1, !dbg !1651
  %121 = trunc i8 %120 to i1, !dbg !1651
  br i1 %121, label %135, label %122, !dbg !1653

122:                                              ; preds = %119
  br label %123, !dbg !1654

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1655
  %125 = load i64, i64* %12, align 8, !dbg !1655
  %126 = icmp ult i64 %124, %125, !dbg !1655
  br i1 %126, label %127, label %131, !dbg !1658

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1655
  %129 = load i64, i64* %21, align 8, !dbg !1655
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1655
  store i8 39, i8* %130, align 1, !dbg !1655
  br label %131, !dbg !1655

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1658
  %133 = add i64 %132, 1, !dbg !1658
  store i64 %133, i64* %21, align 8, !dbg !1658
  br label %134, !dbg !1658

134:                                              ; preds = %131
  br label %135, !dbg !1658

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), i8** %23, align 8, !dbg !1659
  store i64 1, i64* %24, align 8, !dbg !1660
  br label %138, !dbg !1661

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1662
  br label %138, !dbg !1663

137:                                              ; preds = %51
  call void @abort() #18, !dbg !1664
  unreachable, !dbg !1664

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1665, metadata !DIExpression()), !dbg !1667
  store i64 0, i64* %31, align 8, !dbg !1667
  br label %139, !dbg !1668

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1669
  %141 = icmp eq i64 %140, -1, !dbg !1671
  br i1 %141, label %142, label %150, !dbg !1669

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1672
  %144 = load i64, i64* %31, align 8, !dbg !1673
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1672
  %146 = load i8, i8* %145, align 1, !dbg !1672
  %147 = zext i8 %146 to i32, !dbg !1672
  %148 = icmp eq i32 %147, 0, !dbg !1674
  %149 = zext i1 %148 to i32, !dbg !1674
  br label %155, !dbg !1669

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1675
  %152 = load i64, i64* %14, align 8, !dbg !1676
  %153 = icmp eq i64 %151, %152, !dbg !1677
  %154 = zext i1 %153 to i32, !dbg !1677
  br label %155, !dbg !1669

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1669
  %157 = icmp ne i32 %156, 0, !dbg !1678
  %158 = xor i1 %157, true, !dbg !1678
  br i1 %158, label %159, label %996, !dbg !1679

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1680, metadata !DIExpression()), !dbg !1682
  store i8 0, i8* %32, align 1, !dbg !1682
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i8 0, i8* %33, align 1, !dbg !1684
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1685, metadata !DIExpression()), !dbg !1686
  store i8 0, i8* %34, align 1, !dbg !1686
  %160 = load i8, i8* %25, align 1, !dbg !1687
  %161 = trunc i8 %160 to i1, !dbg !1687
  br i1 %161, label %162, label %197, !dbg !1689

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1690
  %164 = icmp ne i32 %163, 2, !dbg !1691
  br i1 %164, label %165, label %197, !dbg !1692

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1693
  %167 = icmp ne i64 %166, 0, !dbg !1693
  br i1 %167, label %168, label %197, !dbg !1694

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1695
  %170 = load i64, i64* %24, align 8, !dbg !1696
  %171 = add i64 %169, %170, !dbg !1697
  %172 = load i64, i64* %14, align 8, !dbg !1698
  %173 = icmp eq i64 %172, -1, !dbg !1699
  br i1 %173, label %174, label %180, !dbg !1700

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1701
  %176 = icmp ult i64 1, %175, !dbg !1702
  br i1 %176, label %177, label %180, !dbg !1698

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1703
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1704
  store i64 %179, i64* %14, align 8, !dbg !1705
  br label %182, !dbg !1698

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1706
  br label %182, !dbg !1698

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1698
  %184 = icmp ule i64 %171, %183, !dbg !1707
  br i1 %184, label %185, label %197, !dbg !1708

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1709
  %187 = load i64, i64* %31, align 8, !dbg !1710
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1711
  %189 = load i8*, i8** %23, align 8, !dbg !1712
  %190 = load i64, i64* %24, align 8, !dbg !1713
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1714
  br i1 %191, label %192, label %197, !dbg !1715

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1716
  %194 = trunc i8 %193 to i1, !dbg !1716
  br i1 %194, label %195, label %196, !dbg !1719

195:                                              ; preds = %192
  br label %1078, !dbg !1720

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1721
  br label %197, !dbg !1722

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1723, metadata !DIExpression()), !dbg !1724
  %198 = load i8*, i8** %13, align 8, !dbg !1725
  %199 = load i64, i64* %31, align 8, !dbg !1726
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1725
  %201 = load i8, i8* %200, align 1, !dbg !1725
  store i8 %201, i8* %35, align 1, !dbg !1724
  %202 = load i8, i8* %35, align 1, !dbg !1727
  %203 = zext i8 %202 to i32, !dbg !1727
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
  ], !dbg !1728

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1729
  %206 = trunc i8 %205 to i1, !dbg !1729
  br i1 %206, label %207, label %318, !dbg !1732

207:                                              ; preds = %204
  br label %208, !dbg !1733

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1735
  %210 = trunc i8 %209 to i1, !dbg !1735
  br i1 %210, label %211, label %212, !dbg !1738

211:                                              ; preds = %208
  br label %1078, !dbg !1735

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1738
  %213 = load i32, i32* %15, align 4, !dbg !1739
  %214 = icmp eq i32 %213, 2, !dbg !1739
  br i1 %214, label %215, label %255, !dbg !1739

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1739
  %217 = trunc i8 %216 to i1, !dbg !1739
  br i1 %217, label %255, label %218, !dbg !1738

218:                                              ; preds = %215
  br label %219, !dbg !1741

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1743
  %221 = load i64, i64* %12, align 8, !dbg !1743
  %222 = icmp ult i64 %220, %221, !dbg !1743
  br i1 %222, label %223, label %227, !dbg !1746

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1743
  %225 = load i64, i64* %21, align 8, !dbg !1743
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1743
  store i8 39, i8* %226, align 1, !dbg !1743
  br label %227, !dbg !1743

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1746
  %229 = add i64 %228, 1, !dbg !1746
  store i64 %229, i64* %21, align 8, !dbg !1746
  br label %230, !dbg !1746

230:                                              ; preds = %227
  br label %231, !dbg !1741

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1747
  %233 = load i64, i64* %12, align 8, !dbg !1747
  %234 = icmp ult i64 %232, %233, !dbg !1747
  br i1 %234, label %235, label %239, !dbg !1750

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1747
  %237 = load i64, i64* %21, align 8, !dbg !1747
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1747
  store i8 36, i8* %238, align 1, !dbg !1747
  br label %239, !dbg !1747

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1750
  %241 = add i64 %240, 1, !dbg !1750
  store i64 %241, i64* %21, align 8, !dbg !1750
  br label %242, !dbg !1750

242:                                              ; preds = %239
  br label %243, !dbg !1741

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1751
  %245 = load i64, i64* %12, align 8, !dbg !1751
  %246 = icmp ult i64 %244, %245, !dbg !1751
  br i1 %246, label %247, label %251, !dbg !1754

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1751
  %249 = load i64, i64* %21, align 8, !dbg !1751
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1751
  store i8 39, i8* %250, align 1, !dbg !1751
  br label %251, !dbg !1751

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1754
  %253 = add i64 %252, 1, !dbg !1754
  store i64 %253, i64* %21, align 8, !dbg !1754
  br label %254, !dbg !1754

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1741
  br label %255, !dbg !1741

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1738

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1755
  %258 = load i64, i64* %12, align 8, !dbg !1755
  %259 = icmp ult i64 %257, %258, !dbg !1755
  br i1 %259, label %260, label %264, !dbg !1758

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1755
  %262 = load i64, i64* %21, align 8, !dbg !1755
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1755
  store i8 92, i8* %263, align 1, !dbg !1755
  br label %264, !dbg !1755

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1758
  %266 = add i64 %265, 1, !dbg !1758
  store i64 %266, i64* %21, align 8, !dbg !1758
  br label %267, !dbg !1758

267:                                              ; preds = %264
  br label %268, !dbg !1738

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1759
  %270 = icmp ne i32 %269, 2, !dbg !1761
  br i1 %270, label %271, label %317, !dbg !1762

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1763
  %273 = add i64 %272, 1, !dbg !1764
  %274 = load i64, i64* %14, align 8, !dbg !1765
  %275 = icmp ult i64 %273, %274, !dbg !1766
  br i1 %275, label %276, label %317, !dbg !1767

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1768
  %278 = load i64, i64* %31, align 8, !dbg !1769
  %279 = add i64 %278, 1, !dbg !1770
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1768
  %281 = load i8, i8* %280, align 1, !dbg !1768
  %282 = zext i8 %281 to i32, !dbg !1768
  %283 = icmp sle i32 48, %282, !dbg !1771
  br i1 %283, label %284, label %317, !dbg !1772

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1773
  %286 = load i64, i64* %31, align 8, !dbg !1774
  %287 = add i64 %286, 1, !dbg !1775
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1773
  %289 = load i8, i8* %288, align 1, !dbg !1773
  %290 = zext i8 %289 to i32, !dbg !1773
  %291 = icmp sle i32 %290, 57, !dbg !1776
  br i1 %291, label %292, label %317, !dbg !1777

292:                                              ; preds = %284
  br label %293, !dbg !1778

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1780
  %295 = load i64, i64* %12, align 8, !dbg !1780
  %296 = icmp ult i64 %294, %295, !dbg !1780
  br i1 %296, label %297, label %301, !dbg !1783

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1780
  %299 = load i64, i64* %21, align 8, !dbg !1780
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1780
  store i8 48, i8* %300, align 1, !dbg !1780
  br label %301, !dbg !1780

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1783
  %303 = add i64 %302, 1, !dbg !1783
  store i64 %303, i64* %21, align 8, !dbg !1783
  br label %304, !dbg !1783

304:                                              ; preds = %301
  br label %305, !dbg !1784

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1785
  %307 = load i64, i64* %12, align 8, !dbg !1785
  %308 = icmp ult i64 %306, %307, !dbg !1785
  br i1 %308, label %309, label %313, !dbg !1788

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1785
  %311 = load i64, i64* %21, align 8, !dbg !1785
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1785
  store i8 48, i8* %312, align 1, !dbg !1785
  br label %313, !dbg !1785

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1788
  %315 = add i64 %314, 1, !dbg !1788
  store i64 %315, i64* %21, align 8, !dbg !1788
  br label %316, !dbg !1788

316:                                              ; preds = %313
  br label %317, !dbg !1789

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1790
  br label %324, !dbg !1791

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1792
  %320 = and i32 %319, 1, !dbg !1794
  %321 = icmp ne i32 %320, 0, !dbg !1794
  br i1 %321, label %322, label %323, !dbg !1795

322:                                              ; preds = %318
  br label %993, !dbg !1796

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1797

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1798
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1799

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1800
  %329 = trunc i8 %328 to i1, !dbg !1800
  br i1 %329, label %330, label %331, !dbg !1803

330:                                              ; preds = %327
  br label %1078, !dbg !1804

331:                                              ; preds = %327
  br label %418, !dbg !1805

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1806
  %334 = and i32 %333, 4, !dbg !1808
  %335 = icmp ne i32 %334, 0, !dbg !1808
  br i1 %335, label %336, label %417, !dbg !1809

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1810
  %338 = add i64 %337, 2, !dbg !1811
  %339 = load i64, i64* %14, align 8, !dbg !1812
  %340 = icmp ult i64 %338, %339, !dbg !1813
  br i1 %340, label %341, label %417, !dbg !1814

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1815
  %343 = load i64, i64* %31, align 8, !dbg !1816
  %344 = add i64 %343, 1, !dbg !1817
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1815
  %346 = load i8, i8* %345, align 1, !dbg !1815
  %347 = zext i8 %346 to i32, !dbg !1815
  %348 = icmp eq i32 %347, 63, !dbg !1818
  br i1 %348, label %349, label %417, !dbg !1819

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1820
  %351 = load i64, i64* %31, align 8, !dbg !1821
  %352 = add i64 %351, 2, !dbg !1822
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1820
  %354 = load i8, i8* %353, align 1, !dbg !1820
  %355 = zext i8 %354 to i32, !dbg !1820
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
  ], !dbg !1823

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1824
  %358 = trunc i8 %357 to i1, !dbg !1824
  br i1 %358, label %359, label %360, !dbg !1827

359:                                              ; preds = %356
  br label %1078, !dbg !1828

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1829
  %362 = load i64, i64* %31, align 8, !dbg !1830
  %363 = add i64 %362, 2, !dbg !1831
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1829
  %365 = load i8, i8* %364, align 1, !dbg !1829
  store i8 %365, i8* %35, align 1, !dbg !1832
  %366 = load i64, i64* %31, align 8, !dbg !1833
  %367 = add i64 %366, 2, !dbg !1833
  store i64 %367, i64* %31, align 8, !dbg !1833
  br label %368, !dbg !1834

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1835
  %370 = load i64, i64* %12, align 8, !dbg !1835
  %371 = icmp ult i64 %369, %370, !dbg !1835
  br i1 %371, label %372, label %376, !dbg !1838

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1835
  %374 = load i64, i64* %21, align 8, !dbg !1835
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1835
  store i8 63, i8* %375, align 1, !dbg !1835
  br label %376, !dbg !1835

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1838
  %378 = add i64 %377, 1, !dbg !1838
  store i64 %378, i64* %21, align 8, !dbg !1838
  br label %379, !dbg !1838

379:                                              ; preds = %376
  br label %380, !dbg !1839

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1840
  %382 = load i64, i64* %12, align 8, !dbg !1840
  %383 = icmp ult i64 %381, %382, !dbg !1840
  br i1 %383, label %384, label %388, !dbg !1843

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1840
  %386 = load i64, i64* %21, align 8, !dbg !1840
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1840
  store i8 34, i8* %387, align 1, !dbg !1840
  br label %388, !dbg !1840

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1843
  %390 = add i64 %389, 1, !dbg !1843
  store i64 %390, i64* %21, align 8, !dbg !1843
  br label %391, !dbg !1843

391:                                              ; preds = %388
  br label %392, !dbg !1844

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1845
  %394 = load i64, i64* %12, align 8, !dbg !1845
  %395 = icmp ult i64 %393, %394, !dbg !1845
  br i1 %395, label %396, label %400, !dbg !1848

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1845
  %398 = load i64, i64* %21, align 8, !dbg !1845
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1845
  store i8 34, i8* %399, align 1, !dbg !1845
  br label %400, !dbg !1845

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1848
  %402 = add i64 %401, 1, !dbg !1848
  store i64 %402, i64* %21, align 8, !dbg !1848
  br label %403, !dbg !1848

403:                                              ; preds = %400
  br label %404, !dbg !1849

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1850
  %406 = load i64, i64* %12, align 8, !dbg !1850
  %407 = icmp ult i64 %405, %406, !dbg !1850
  br i1 %407, label %408, label %412, !dbg !1853

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1850
  %410 = load i64, i64* %21, align 8, !dbg !1850
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1850
  store i8 63, i8* %411, align 1, !dbg !1850
  br label %412, !dbg !1850

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1853
  %414 = add i64 %413, 1, !dbg !1853
  store i64 %414, i64* %21, align 8, !dbg !1853
  br label %415, !dbg !1853

415:                                              ; preds = %412
  br label %416, !dbg !1854

416:                                              ; preds = %349, %415
  br label %417, !dbg !1855

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1856

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1857

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1858
  br label %454, !dbg !1860

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1861
  br label %454, !dbg !1862

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1863
  br label %454, !dbg !1864

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1865
  br label %446, !dbg !1866

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1867
  br label %446, !dbg !1868

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1869
  br label %446, !dbg !1870

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1871
  br label %454, !dbg !1872

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1873
  store i8 %427, i8* %36, align 1, !dbg !1874
  %428 = load i32, i32* %15, align 4, !dbg !1875
  %429 = icmp eq i32 %428, 2, !dbg !1877
  br i1 %429, label %430, label %435, !dbg !1878

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1879
  %432 = trunc i8 %431 to i1, !dbg !1879
  br i1 %432, label %433, label %434, !dbg !1882

433:                                              ; preds = %430
  br label %1078, !dbg !1883

434:                                              ; preds = %430
  br label %942, !dbg !1884

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1885
  %437 = trunc i8 %436 to i1, !dbg !1885
  br i1 %437, label %438, label %445, !dbg !1887

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1888
  %440 = trunc i8 %439 to i1, !dbg !1888
  br i1 %440, label %441, label %445, !dbg !1889

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1890
  %443 = icmp ne i64 %442, 0, !dbg !1890
  br i1 %443, label %444, label %445, !dbg !1891

444:                                              ; preds = %441
  br label %942, !dbg !1892

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1890

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1893), !dbg !1894
  %447 = load i32, i32* %15, align 4, !dbg !1895
  %448 = icmp eq i32 %447, 2, !dbg !1897
  br i1 %448, label %449, label %453, !dbg !1898

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1899
  %451 = trunc i8 %450 to i1, !dbg !1899
  br i1 %451, label %452, label %453, !dbg !1900

452:                                              ; preds = %449
  br label %1078, !dbg !1901

453:                                              ; preds = %449, %446
  br label %454, !dbg !1899

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1902), !dbg !1903
  %455 = load i8, i8* %25, align 1, !dbg !1904
  %456 = trunc i8 %455 to i1, !dbg !1904
  br i1 %456, label %457, label %459, !dbg !1906

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1907
  store i8 %458, i8* %35, align 1, !dbg !1909
  br label %880, !dbg !1910

459:                                              ; preds = %454
  br label %849, !dbg !1911

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1912
  %462 = icmp eq i64 %461, -1, !dbg !1914
  br i1 %462, label %463, label %469, !dbg !1915

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1916
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1916
  %466 = load i8, i8* %465, align 1, !dbg !1916
  %467 = zext i8 %466 to i32, !dbg !1916
  %468 = icmp eq i32 %467, 0, !dbg !1917
  br i1 %468, label %473, label %472, !dbg !1912

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1918
  %471 = icmp eq i64 %470, 1, !dbg !1919
  br i1 %471, label %473, label %472, !dbg !1915

472:                                              ; preds = %469, %463
  br label %849, !dbg !1920

473:                                              ; preds = %469, %463
  br label %474, !dbg !1921

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1922
  %476 = icmp ne i64 %475, 0, !dbg !1924
  br i1 %476, label %477, label %478, !dbg !1925

477:                                              ; preds = %474
  br label %849, !dbg !1926

478:                                              ; preds = %474
  br label %479, !dbg !1927

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1928
  br label %480, !dbg !1929

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1930
  %482 = icmp eq i32 %481, 2, !dbg !1932
  br i1 %482, label %483, label %487, !dbg !1933

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1934
  %485 = trunc i8 %484 to i1, !dbg !1934
  br i1 %485, label %486, label %487, !dbg !1935

486:                                              ; preds = %483
  br label %1078, !dbg !1936

487:                                              ; preds = %483, %480
  br label %849, !dbg !1937

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1938
  store i8 1, i8* %34, align 1, !dbg !1939
  %489 = load i32, i32* %15, align 4, !dbg !1940
  %490 = icmp eq i32 %489, 2, !dbg !1942
  br i1 %490, label %491, label %540, !dbg !1943

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1944
  %493 = trunc i8 %492 to i1, !dbg !1944
  br i1 %493, label %494, label %495, !dbg !1947

494:                                              ; preds = %491
  br label %1078, !dbg !1948

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1949
  %497 = icmp ne i64 %496, 0, !dbg !1949
  br i1 %497, label %498, label %503, !dbg !1951

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1952
  %500 = icmp ne i64 %499, 0, !dbg !1952
  br i1 %500, label %503, label %501, !dbg !1953

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1954
  store i64 %502, i64* %22, align 8, !dbg !1956
  store i64 0, i64* %12, align 8, !dbg !1957
  br label %503, !dbg !1958

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1959

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1960
  %506 = load i64, i64* %12, align 8, !dbg !1960
  %507 = icmp ult i64 %505, %506, !dbg !1960
  br i1 %507, label %508, label %512, !dbg !1963

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1960
  %510 = load i64, i64* %21, align 8, !dbg !1960
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1960
  store i8 39, i8* %511, align 1, !dbg !1960
  br label %512, !dbg !1960

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1963
  %514 = add i64 %513, 1, !dbg !1963
  store i64 %514, i64* %21, align 8, !dbg !1963
  br label %515, !dbg !1963

515:                                              ; preds = %512
  br label %516, !dbg !1964

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1965
  %518 = load i64, i64* %12, align 8, !dbg !1965
  %519 = icmp ult i64 %517, %518, !dbg !1965
  br i1 %519, label %520, label %524, !dbg !1968

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1965
  %522 = load i64, i64* %21, align 8, !dbg !1965
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1965
  store i8 92, i8* %523, align 1, !dbg !1965
  br label %524, !dbg !1965

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1968
  %526 = add i64 %525, 1, !dbg !1968
  store i64 %526, i64* %21, align 8, !dbg !1968
  br label %527, !dbg !1968

527:                                              ; preds = %524
  br label %528, !dbg !1969

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1970
  %530 = load i64, i64* %12, align 8, !dbg !1970
  %531 = icmp ult i64 %529, %530, !dbg !1970
  br i1 %531, label %532, label %536, !dbg !1973

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1970
  %534 = load i64, i64* %21, align 8, !dbg !1970
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1970
  store i8 39, i8* %535, align 1, !dbg !1970
  br label %536, !dbg !1970

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1973
  %538 = add i64 %537, 1, !dbg !1973
  store i64 %538, i64* %21, align 8, !dbg !1973
  br label %539, !dbg !1973

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1974
  br label %540, !dbg !1975

540:                                              ; preds = %539, %488
  br label %849, !dbg !1976

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1977
  br label %849, !dbg !1978

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1979, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1982, metadata !DIExpression()), !dbg !1983
  %543 = load i8, i8* %20, align 1, !dbg !1984
  %544 = trunc i8 %543 to i1, !dbg !1984
  br i1 %544, label %545, label %557, !dbg !1986

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1987
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1989
  %547 = load i16*, i16** %546, align 8, !dbg !1989
  %548 = load i8, i8* %35, align 1, !dbg !1989
  %549 = zext i8 %548 to i32, !dbg !1989
  %550 = sext i32 %549 to i64, !dbg !1989
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1989
  %552 = load i16, i16* %551, align 2, !dbg !1989
  %553 = zext i16 %552 to i32, !dbg !1989
  %554 = and i32 %553, 16384, !dbg !1989
  %555 = icmp ne i32 %554, 0, !dbg !1990
  %556 = zext i1 %555 to i8, !dbg !1991
  store i8 %556, i8* %38, align 1, !dbg !1991
  br label %648, !dbg !1992

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1993, metadata !DIExpression()), !dbg !2005
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2006
  store i64 0, i64* %37, align 8, !dbg !2007
  store i8 1, i8* %38, align 1, !dbg !2008
  %558 = load i64, i64* %14, align 8, !dbg !2009
  %559 = icmp eq i64 %558, -1, !dbg !2011
  br i1 %559, label %560, label %563, !dbg !2012

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2013
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2014
  store i64 %562, i64* %14, align 8, !dbg !2015
  br label %563, !dbg !2016

563:                                              ; preds = %560, %557
  br label %564, !dbg !2017

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2023, metadata !DIExpression()), !dbg !2024
  %565 = load i8*, i8** %13, align 8, !dbg !2025
  %566 = load i64, i64* %31, align 8, !dbg !2026
  %567 = load i64, i64* %37, align 8, !dbg !2027
  %568 = add i64 %566, %567, !dbg !2028
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2025
  %570 = load i64, i64* %14, align 8, !dbg !2029
  %571 = load i64, i64* %31, align 8, !dbg !2030
  %572 = load i64, i64* %37, align 8, !dbg !2031
  %573 = add i64 %571, %572, !dbg !2032
  %574 = sub i64 %570, %573, !dbg !2033
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2034
  store i64 %575, i64* %41, align 8, !dbg !2024
  %576 = load i64, i64* %41, align 8, !dbg !2035
  %577 = icmp eq i64 %576, 0, !dbg !2037
  br i1 %577, label %578, label %579, !dbg !2038

578:                                              ; preds = %564
  br label %647, !dbg !2039

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2040
  %581 = icmp eq i64 %580, -1, !dbg !2042
  br i1 %581, label %582, label %583, !dbg !2043

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2044
  br label %647, !dbg !2046

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2047
  %585 = icmp eq i64 %584, -2, !dbg !2049
  br i1 %585, label %586, label %608, !dbg !2050

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2051
  br label %587, !dbg !2053

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2054
  %589 = load i64, i64* %37, align 8, !dbg !2055
  %590 = add i64 %588, %589, !dbg !2056
  %591 = load i64, i64* %14, align 8, !dbg !2057
  %592 = icmp ult i64 %590, %591, !dbg !2058
  br i1 %592, label %593, label %602, !dbg !2059

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2060
  %595 = load i64, i64* %31, align 8, !dbg !2061
  %596 = load i64, i64* %37, align 8, !dbg !2062
  %597 = add i64 %595, %596, !dbg !2063
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2060
  %599 = load i8, i8* %598, align 1, !dbg !2060
  %600 = zext i8 %599 to i32, !dbg !2060
  %601 = icmp ne i32 %600, 0, !dbg !2059
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2064
  br i1 %603, label %604, label %607, !dbg !2053

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2065
  %606 = add i64 %605, 1, !dbg !2065
  store i64 %606, i64* %37, align 8, !dbg !2065
  br label %587, !dbg !2053, !llvm.loop !2066

607:                                              ; preds = %602
  br label %647, !dbg !2067

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2068
  %610 = trunc i8 %609 to i1, !dbg !2068
  br i1 %610, label %611, label %635, !dbg !2071

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2072
  %613 = icmp eq i32 %612, 2, !dbg !2073
  br i1 %613, label %614, label %635, !dbg !2074

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2075, metadata !DIExpression()), !dbg !2078
  store i64 1, i64* %42, align 8, !dbg !2078
  br label %615, !dbg !2079

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2080
  %617 = load i64, i64* %41, align 8, !dbg !2082
  %618 = icmp ult i64 %616, %617, !dbg !2083
  br i1 %618, label %619, label %634, !dbg !2084

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2085
  %621 = load i64, i64* %31, align 8, !dbg !2086
  %622 = load i64, i64* %37, align 8, !dbg !2087
  %623 = add i64 %621, %622, !dbg !2088
  %624 = load i64, i64* %42, align 8, !dbg !2089
  %625 = add i64 %623, %624, !dbg !2090
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2085
  %627 = load i8, i8* %626, align 1, !dbg !2085
  %628 = zext i8 %627 to i32, !dbg !2085
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2091

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2092

630:                                              ; preds = %619
  br label %631, !dbg !2094

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2095
  %633 = add i64 %632, 1, !dbg !2095
  store i64 %633, i64* %42, align 8, !dbg !2095
  br label %615, !dbg !2096, !llvm.loop !2097

634:                                              ; preds = %615
  br label %635, !dbg !2099

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2100
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2102
  %638 = icmp ne i32 %637, 0, !dbg !2102
  br i1 %638, label %640, label %639, !dbg !2103

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2104
  br label %640, !dbg !2105

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2106
  %642 = load i64, i64* %37, align 8, !dbg !2107
  %643 = add i64 %642, %641, !dbg !2107
  store i64 %643, i64* %37, align 8, !dbg !2107
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2108

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2109
  %650 = trunc i8 %649 to i1, !dbg !2109
  %651 = zext i1 %650 to i8, !dbg !2110
  store i8 %651, i8* %34, align 1, !dbg !2110
  %652 = load i64, i64* %37, align 8, !dbg !2111
  %653 = icmp ult i64 1, %652, !dbg !2113
  br i1 %653, label %660, label %654, !dbg !2114

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2115
  %656 = trunc i8 %655 to i1, !dbg !2115
  br i1 %656, label %657, label %848, !dbg !2116

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2117
  %659 = trunc i8 %658 to i1, !dbg !2117
  br i1 %659, label %848, label %660, !dbg !2118

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2119, metadata !DIExpression()), !dbg !2121
  %661 = load i64, i64* %31, align 8, !dbg !2122
  %662 = load i64, i64* %37, align 8, !dbg !2123
  %663 = add i64 %661, %662, !dbg !2124
  store i64 %663, i64* %43, align 8, !dbg !2121
  br label %664, !dbg !2125

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2126
  %666 = trunc i8 %665 to i1, !dbg !2126
  br i1 %666, label %667, label %772, !dbg !2131

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2132
  %669 = trunc i8 %668 to i1, !dbg !2132
  br i1 %669, label %772, label %670, !dbg !2133

670:                                              ; preds = %667
  br label %671, !dbg !2134

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2136
  %673 = trunc i8 %672 to i1, !dbg !2136
  br i1 %673, label %674, label %675, !dbg !2139

674:                                              ; preds = %671
  br label %1078, !dbg !2136

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2139
  %676 = load i32, i32* %15, align 4, !dbg !2140
  %677 = icmp eq i32 %676, 2, !dbg !2140
  br i1 %677, label %678, label %718, !dbg !2140

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2140
  %680 = trunc i8 %679 to i1, !dbg !2140
  br i1 %680, label %718, label %681, !dbg !2139

681:                                              ; preds = %678
  br label %682, !dbg !2142

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2144
  %684 = load i64, i64* %12, align 8, !dbg !2144
  %685 = icmp ult i64 %683, %684, !dbg !2144
  br i1 %685, label %686, label %690, !dbg !2147

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2144
  %688 = load i64, i64* %21, align 8, !dbg !2144
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2144
  store i8 39, i8* %689, align 1, !dbg !2144
  br label %690, !dbg !2144

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2147
  %692 = add i64 %691, 1, !dbg !2147
  store i64 %692, i64* %21, align 8, !dbg !2147
  br label %693, !dbg !2147

693:                                              ; preds = %690
  br label %694, !dbg !2142

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2148
  %696 = load i64, i64* %12, align 8, !dbg !2148
  %697 = icmp ult i64 %695, %696, !dbg !2148
  br i1 %697, label %698, label %702, !dbg !2151

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2148
  %700 = load i64, i64* %21, align 8, !dbg !2148
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2148
  store i8 36, i8* %701, align 1, !dbg !2148
  br label %702, !dbg !2148

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2151
  %704 = add i64 %703, 1, !dbg !2151
  store i64 %704, i64* %21, align 8, !dbg !2151
  br label %705, !dbg !2151

705:                                              ; preds = %702
  br label %706, !dbg !2142

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2152
  %708 = load i64, i64* %12, align 8, !dbg !2152
  %709 = icmp ult i64 %707, %708, !dbg !2152
  br i1 %709, label %710, label %714, !dbg !2155

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2152
  %712 = load i64, i64* %21, align 8, !dbg !2152
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2152
  store i8 39, i8* %713, align 1, !dbg !2152
  br label %714, !dbg !2152

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2155
  %716 = add i64 %715, 1, !dbg !2155
  store i64 %716, i64* %21, align 8, !dbg !2155
  br label %717, !dbg !2155

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2142
  br label %718, !dbg !2142

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2139

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2156
  %721 = load i64, i64* %12, align 8, !dbg !2156
  %722 = icmp ult i64 %720, %721, !dbg !2156
  br i1 %722, label %723, label %727, !dbg !2159

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2156
  %725 = load i64, i64* %21, align 8, !dbg !2156
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2156
  store i8 92, i8* %726, align 1, !dbg !2156
  br label %727, !dbg !2156

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2159
  %729 = add i64 %728, 1, !dbg !2159
  store i64 %729, i64* %21, align 8, !dbg !2159
  br label %730, !dbg !2159

730:                                              ; preds = %727
  br label %731, !dbg !2139

731:                                              ; preds = %730
  br label %732, !dbg !2160

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2161
  %734 = load i64, i64* %12, align 8, !dbg !2161
  %735 = icmp ult i64 %733, %734, !dbg !2161
  br i1 %735, label %736, label %745, !dbg !2164

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2161
  %738 = zext i8 %737 to i32, !dbg !2161
  %739 = ashr i32 %738, 6, !dbg !2161
  %740 = add nsw i32 48, %739, !dbg !2161
  %741 = trunc i32 %740 to i8, !dbg !2161
  %742 = load i8*, i8** %11, align 8, !dbg !2161
  %743 = load i64, i64* %21, align 8, !dbg !2161
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2161
  store i8 %741, i8* %744, align 1, !dbg !2161
  br label %745, !dbg !2161

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2164
  %747 = add i64 %746, 1, !dbg !2164
  store i64 %747, i64* %21, align 8, !dbg !2164
  br label %748, !dbg !2164

748:                                              ; preds = %745
  br label %749, !dbg !2165

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2166
  %751 = load i64, i64* %12, align 8, !dbg !2166
  %752 = icmp ult i64 %750, %751, !dbg !2166
  br i1 %752, label %753, label %763, !dbg !2169

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2166
  %755 = zext i8 %754 to i32, !dbg !2166
  %756 = ashr i32 %755, 3, !dbg !2166
  %757 = and i32 %756, 7, !dbg !2166
  %758 = add nsw i32 48, %757, !dbg !2166
  %759 = trunc i32 %758 to i8, !dbg !2166
  %760 = load i8*, i8** %11, align 8, !dbg !2166
  %761 = load i64, i64* %21, align 8, !dbg !2166
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2166
  store i8 %759, i8* %762, align 1, !dbg !2166
  br label %763, !dbg !2166

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2169
  %765 = add i64 %764, 1, !dbg !2169
  store i64 %765, i64* %21, align 8, !dbg !2169
  br label %766, !dbg !2169

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2170
  %768 = zext i8 %767 to i32, !dbg !2170
  %769 = and i32 %768, 7, !dbg !2171
  %770 = add nsw i32 48, %769, !dbg !2172
  %771 = trunc i32 %770 to i8, !dbg !2173
  store i8 %771, i8* %35, align 1, !dbg !2174
  br label %789, !dbg !2175

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2176
  %774 = trunc i8 %773 to i1, !dbg !2176
  br i1 %774, label %775, label %788, !dbg !2178

775:                                              ; preds = %772
  br label %776, !dbg !2179

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2181
  %778 = load i64, i64* %12, align 8, !dbg !2181
  %779 = icmp ult i64 %777, %778, !dbg !2181
  br i1 %779, label %780, label %784, !dbg !2184

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2181
  %782 = load i64, i64* %21, align 8, !dbg !2181
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2181
  store i8 92, i8* %783, align 1, !dbg !2181
  br label %784, !dbg !2181

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2184
  %786 = add i64 %785, 1, !dbg !2184
  store i64 %786, i64* %21, align 8, !dbg !2184
  br label %787, !dbg !2184

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2185
  br label %788, !dbg !2186

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2187
  %791 = load i64, i64* %31, align 8, !dbg !2189
  %792 = add i64 %791, 1, !dbg !2190
  %793 = icmp ule i64 %790, %792, !dbg !2191
  br i1 %793, label %794, label %795, !dbg !2192

794:                                              ; preds = %789
  br label %847, !dbg !2193

795:                                              ; preds = %789
  br label %796, !dbg !2194

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2195
  %798 = trunc i8 %797 to i1, !dbg !2195
  br i1 %798, label %799, label %827, !dbg !2195

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2195
  %801 = trunc i8 %800 to i1, !dbg !2195
  br i1 %801, label %827, label %802, !dbg !2198

802:                                              ; preds = %799
  br label %803, !dbg !2199

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2201
  %805 = load i64, i64* %12, align 8, !dbg !2201
  %806 = icmp ult i64 %804, %805, !dbg !2201
  br i1 %806, label %807, label %811, !dbg !2204

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2201
  %809 = load i64, i64* %21, align 8, !dbg !2201
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2201
  store i8 39, i8* %810, align 1, !dbg !2201
  br label %811, !dbg !2201

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2204
  %813 = add i64 %812, 1, !dbg !2204
  store i64 %813, i64* %21, align 8, !dbg !2204
  br label %814, !dbg !2204

814:                                              ; preds = %811
  br label %815, !dbg !2199

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2205
  %817 = load i64, i64* %12, align 8, !dbg !2205
  %818 = icmp ult i64 %816, %817, !dbg !2205
  br i1 %818, label %819, label %823, !dbg !2208

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2205
  %821 = load i64, i64* %21, align 8, !dbg !2205
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2205
  store i8 39, i8* %822, align 1, !dbg !2205
  br label %823, !dbg !2205

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2208
  %825 = add i64 %824, 1, !dbg !2208
  store i64 %825, i64* %21, align 8, !dbg !2208
  br label %826, !dbg !2208

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2199
  br label %827, !dbg !2199

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2198

828:                                              ; preds = %827
  br label %829, !dbg !2209

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2210
  %831 = load i64, i64* %12, align 8, !dbg !2210
  %832 = icmp ult i64 %830, %831, !dbg !2210
  br i1 %832, label %833, label %838, !dbg !2213

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2210
  %835 = load i8*, i8** %11, align 8, !dbg !2210
  %836 = load i64, i64* %21, align 8, !dbg !2210
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2210
  store i8 %834, i8* %837, align 1, !dbg !2210
  br label %838, !dbg !2210

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2213
  %840 = add i64 %839, 1, !dbg !2213
  store i64 %840, i64* %21, align 8, !dbg !2213
  br label %841, !dbg !2213

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2214
  %843 = load i64, i64* %31, align 8, !dbg !2215
  %844 = add i64 %843, 1, !dbg !2215
  store i64 %844, i64* %31, align 8, !dbg !2215
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2214
  %846 = load i8, i8* %845, align 1, !dbg !2214
  store i8 %846, i8* %35, align 1, !dbg !2216
  br label %664, !dbg !2217, !llvm.loop !2218

847:                                              ; preds = %794
  br label %942, !dbg !2221

848:                                              ; preds = %657, %654
  br label %849, !dbg !2222

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2223
  %851 = trunc i8 %850 to i1, !dbg !2223
  br i1 %851, label %852, label %855, !dbg !2225

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2226
  %854 = icmp ne i32 %853, 2, !dbg !2227
  br i1 %854, label %858, label %855, !dbg !2228

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2229
  %857 = trunc i8 %856 to i1, !dbg !2229
  br i1 %857, label %858, label %875, !dbg !2230

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2231
  %860 = icmp ne i32* %859, null, !dbg !2231
  br i1 %860, label %861, label %875, !dbg !2232

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2233
  %863 = load i8, i8* %35, align 1, !dbg !2234
  %864 = zext i8 %863 to i64, !dbg !2234
  %865 = udiv i64 %864, 32, !dbg !2235
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2233
  %867 = load i32, i32* %866, align 4, !dbg !2233
  %868 = load i8, i8* %35, align 1, !dbg !2236
  %869 = zext i8 %868 to i64, !dbg !2236
  %870 = urem i64 %869, 32, !dbg !2237
  %871 = trunc i64 %870 to i32, !dbg !2238
  %872 = lshr i32 %867, %871, !dbg !2238
  %873 = and i32 %872, 1, !dbg !2239
  %874 = icmp ne i32 %873, 0, !dbg !2239
  br i1 %874, label %879, label %875, !dbg !2240

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2241
  %877 = trunc i8 %876 to i1, !dbg !2241
  br i1 %877, label %879, label %878, !dbg !2242

878:                                              ; preds = %875
  br label %942, !dbg !2243

879:                                              ; preds = %875, %861
  br label %880, !dbg !2241

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2244), !dbg !2245
  br label %881, !dbg !2246

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2247
  %883 = trunc i8 %882 to i1, !dbg !2247
  br i1 %883, label %884, label %885, !dbg !2250

884:                                              ; preds = %881
  br label %1078, !dbg !2247

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2250
  %886 = load i32, i32* %15, align 4, !dbg !2251
  %887 = icmp eq i32 %886, 2, !dbg !2251
  br i1 %887, label %888, label %928, !dbg !2251

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2251
  %890 = trunc i8 %889 to i1, !dbg !2251
  br i1 %890, label %928, label %891, !dbg !2250

891:                                              ; preds = %888
  br label %892, !dbg !2253

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2255
  %894 = load i64, i64* %12, align 8, !dbg !2255
  %895 = icmp ult i64 %893, %894, !dbg !2255
  br i1 %895, label %896, label %900, !dbg !2258

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2255
  %898 = load i64, i64* %21, align 8, !dbg !2255
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2255
  store i8 39, i8* %899, align 1, !dbg !2255
  br label %900, !dbg !2255

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2258
  %902 = add i64 %901, 1, !dbg !2258
  store i64 %902, i64* %21, align 8, !dbg !2258
  br label %903, !dbg !2258

903:                                              ; preds = %900
  br label %904, !dbg !2253

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2259
  %906 = load i64, i64* %12, align 8, !dbg !2259
  %907 = icmp ult i64 %905, %906, !dbg !2259
  br i1 %907, label %908, label %912, !dbg !2262

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2259
  %910 = load i64, i64* %21, align 8, !dbg !2259
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2259
  store i8 36, i8* %911, align 1, !dbg !2259
  br label %912, !dbg !2259

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2262
  %914 = add i64 %913, 1, !dbg !2262
  store i64 %914, i64* %21, align 8, !dbg !2262
  br label %915, !dbg !2262

915:                                              ; preds = %912
  br label %916, !dbg !2253

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2263
  %918 = load i64, i64* %12, align 8, !dbg !2263
  %919 = icmp ult i64 %917, %918, !dbg !2263
  br i1 %919, label %920, label %924, !dbg !2266

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2263
  %922 = load i64, i64* %21, align 8, !dbg !2263
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2263
  store i8 39, i8* %923, align 1, !dbg !2263
  br label %924, !dbg !2263

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2266
  %926 = add i64 %925, 1, !dbg !2266
  store i64 %926, i64* %21, align 8, !dbg !2266
  br label %927, !dbg !2266

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2253
  br label %928, !dbg !2253

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2250

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2267
  %931 = load i64, i64* %12, align 8, !dbg !2267
  %932 = icmp ult i64 %930, %931, !dbg !2267
  br i1 %932, label %933, label %937, !dbg !2270

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2267
  %935 = load i64, i64* %21, align 8, !dbg !2267
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2267
  store i8 92, i8* %936, align 1, !dbg !2267
  br label %937, !dbg !2267

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2270
  %939 = add i64 %938, 1, !dbg !2270
  store i64 %939, i64* %21, align 8, !dbg !2270
  br label %940, !dbg !2270

940:                                              ; preds = %937
  br label %941, !dbg !2250

941:                                              ; preds = %940
  br label %942, !dbg !2250

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2271), !dbg !2272
  br label %943, !dbg !2273

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2274
  %945 = trunc i8 %944 to i1, !dbg !2274
  br i1 %945, label %946, label %974, !dbg !2274

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2274
  %948 = trunc i8 %947 to i1, !dbg !2274
  br i1 %948, label %974, label %949, !dbg !2277

949:                                              ; preds = %946
  br label %950, !dbg !2278

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2280
  %952 = load i64, i64* %12, align 8, !dbg !2280
  %953 = icmp ult i64 %951, %952, !dbg !2280
  br i1 %953, label %954, label %958, !dbg !2283

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2280
  %956 = load i64, i64* %21, align 8, !dbg !2280
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2280
  store i8 39, i8* %957, align 1, !dbg !2280
  br label %958, !dbg !2280

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2283
  %960 = add i64 %959, 1, !dbg !2283
  store i64 %960, i64* %21, align 8, !dbg !2283
  br label %961, !dbg !2283

961:                                              ; preds = %958
  br label %962, !dbg !2278

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2284
  %964 = load i64, i64* %12, align 8, !dbg !2284
  %965 = icmp ult i64 %963, %964, !dbg !2284
  br i1 %965, label %966, label %970, !dbg !2287

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2284
  %968 = load i64, i64* %21, align 8, !dbg !2284
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2284
  store i8 39, i8* %969, align 1, !dbg !2284
  br label %970, !dbg !2284

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2287
  %972 = add i64 %971, 1, !dbg !2287
  store i64 %972, i64* %21, align 8, !dbg !2287
  br label %973, !dbg !2287

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2278
  br label %974, !dbg !2278

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2277

975:                                              ; preds = %974
  br label %976, !dbg !2288

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2289
  %978 = load i64, i64* %12, align 8, !dbg !2289
  %979 = icmp ult i64 %977, %978, !dbg !2289
  br i1 %979, label %980, label %985, !dbg !2292

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2289
  %982 = load i8*, i8** %11, align 8, !dbg !2289
  %983 = load i64, i64* %21, align 8, !dbg !2289
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2289
  store i8 %981, i8* %984, align 1, !dbg !2289
  br label %985, !dbg !2289

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2292
  %987 = add i64 %986, 1, !dbg !2292
  store i64 %987, i64* %21, align 8, !dbg !2292
  br label %988, !dbg !2292

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2293
  %990 = trunc i8 %989 to i1, !dbg !2293
  br i1 %990, label %992, label %991, !dbg !2295

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2296
  br label %992, !dbg !2297

992:                                              ; preds = %991, %988
  br label %993, !dbg !2298

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2299
  %995 = add i64 %994, 1, !dbg !2299
  store i64 %995, i64* %31, align 8, !dbg !2299
  br label %139, !dbg !2300, !llvm.loop !2301

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2303
  %998 = icmp eq i64 %997, 0, !dbg !2305
  br i1 %998, label %999, label %1006, !dbg !2306

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2307
  %1001 = icmp eq i32 %1000, 2, !dbg !2308
  br i1 %1001, label %1002, label %1006, !dbg !2309

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2310
  %1004 = trunc i8 %1003 to i1, !dbg !2310
  br i1 %1004, label %1005, label %1006, !dbg !2311

1005:                                             ; preds = %1002
  br label %1078, !dbg !2312

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2313
  %1008 = icmp eq i32 %1007, 2, !dbg !2315
  br i1 %1008, label %1009, label %1038, !dbg !2316

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2317
  %1011 = trunc i8 %1010 to i1, !dbg !2317
  br i1 %1011, label %1038, label %1012, !dbg !2318

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2319
  %1014 = trunc i8 %1013 to i1, !dbg !2319
  br i1 %1014, label %1015, label %1038, !dbg !2320

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2321
  %1017 = trunc i8 %1016 to i1, !dbg !2321
  br i1 %1017, label %1018, label %1028, !dbg !2324

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2325
  %1020 = load i64, i64* %22, align 8, !dbg !2326
  %1021 = load i8*, i8** %13, align 8, !dbg !2327
  %1022 = load i64, i64* %14, align 8, !dbg !2328
  %1023 = load i32, i32* %16, align 4, !dbg !2329
  %1024 = load i32*, i32** %17, align 8, !dbg !2330
  %1025 = load i8*, i8** %18, align 8, !dbg !2331
  %1026 = load i8*, i8** %19, align 8, !dbg !2332
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2333
  store i64 %1027, i64* %10, align 8, !dbg !2334
  br label %1096, !dbg !2334

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2335
  %1030 = icmp ne i64 %1029, 0, !dbg !2335
  br i1 %1030, label %1036, label %1031, !dbg !2337

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2338
  %1033 = icmp ne i64 %1032, 0, !dbg !2338
  br i1 %1033, label %1034, label %1036, !dbg !2339

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2340
  store i64 %1035, i64* %12, align 8, !dbg !2342
  store i64 0, i64* %21, align 8, !dbg !2343
  br label %51, !dbg !2344

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2345

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2346
  %1040 = icmp ne i8* %1039, null, !dbg !2346
  br i1 %1040, label %1041, label %1068, !dbg !2348

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2349
  %1043 = trunc i8 %1042 to i1, !dbg !2349
  br i1 %1043, label %1068, label %1044, !dbg !2350

1044:                                             ; preds = %1041
  br label %1045, !dbg !2351

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2352
  %1047 = load i8, i8* %1046, align 1, !dbg !2355
  %1048 = icmp ne i8 %1047, 0, !dbg !2356
  br i1 %1048, label %1049, label %1067, !dbg !2356

1049:                                             ; preds = %1045
  br label %1050, !dbg !2357

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2358
  %1052 = load i64, i64* %12, align 8, !dbg !2358
  %1053 = icmp ult i64 %1051, %1052, !dbg !2358
  br i1 %1053, label %1054, label %1060, !dbg !2361

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2358
  %1056 = load i8, i8* %1055, align 1, !dbg !2358
  %1057 = load i8*, i8** %11, align 8, !dbg !2358
  %1058 = load i64, i64* %21, align 8, !dbg !2358
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2358
  store i8 %1056, i8* %1059, align 1, !dbg !2358
  br label %1060, !dbg !2358

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2361
  %1062 = add i64 %1061, 1, !dbg !2361
  store i64 %1062, i64* %21, align 8, !dbg !2361
  br label %1063, !dbg !2361

1063:                                             ; preds = %1060
  br label %1064, !dbg !2361

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2362
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2362
  store i8* %1066, i8** %23, align 8, !dbg !2362
  br label %1045, !dbg !2363, !llvm.loop !2364

1067:                                             ; preds = %1045
  br label %1068, !dbg !2365

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2366
  %1070 = load i64, i64* %12, align 8, !dbg !2368
  %1071 = icmp ult i64 %1069, %1070, !dbg !2369
  br i1 %1071, label %1072, label %1076, !dbg !2370

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2371
  %1074 = load i64, i64* %21, align 8, !dbg !2372
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2371
  store i8 0, i8* %1075, align 1, !dbg !2373
  br label %1076, !dbg !2371

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2374
  store i64 %1077, i64* %10, align 8, !dbg !2375
  br label %1096, !dbg !2375

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2376), !dbg !2377
  %1079 = load i32, i32* %15, align 4, !dbg !2378
  %1080 = icmp eq i32 %1079, 2, !dbg !2380
  br i1 %1080, label %1081, label %1085, !dbg !2381

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2382
  %1083 = trunc i8 %1082 to i1, !dbg !2382
  br i1 %1083, label %1084, label %1085, !dbg !2383

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2384
  br label %1085, !dbg !2385

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2386
  %1087 = load i64, i64* %12, align 8, !dbg !2387
  %1088 = load i8*, i8** %13, align 8, !dbg !2388
  %1089 = load i64, i64* %14, align 8, !dbg !2389
  %1090 = load i32, i32* %15, align 4, !dbg !2390
  %1091 = load i32, i32* %16, align 4, !dbg !2391
  %1092 = and i32 %1091, -3, !dbg !2392
  %1093 = load i8*, i8** %18, align 8, !dbg !2393
  %1094 = load i8*, i8** %19, align 8, !dbg !2394
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2395
  store i64 %1095, i64* %10, align 8, !dbg !2396
  br label %1096, !dbg !2396

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2397
  ret i64 %1097, !dbg !2397
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #5 !dbg !158 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2398, metadata !DIExpression()), !dbg !2399
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2400, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2402, metadata !DIExpression()), !dbg !2403
  %9 = load i8*, i8** %4, align 8, !dbg !2404
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.101, i64 0, i64 0), i8* noundef %9) #19, !dbg !2404
  store i8* %10, i8** %6, align 8, !dbg !2403
  %11 = load i8*, i8** %6, align 8, !dbg !2405
  %12 = load i8*, i8** %4, align 8, !dbg !2407
  %13 = icmp ne i8* %11, %12, !dbg !2408
  br i1 %13, label %14, label %16, !dbg !2409

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2410
  store i8* %15, i8** %3, align 8, !dbg !2411
  br label %37, !dbg !2411

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2416
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2417
  %18 = icmp eq i64 %17, 3, !dbg !2419
  br i1 %18, label %19, label %32, !dbg !2420

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2421
  %21 = icmp eq i32 %20, 8216, !dbg !2422
  br i1 %21, label %22, label %32, !dbg !2423

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2424
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2424
  %25 = load i8, i8* %24, align 1, !dbg !2424
  %26 = zext i8 %25 to i32, !dbg !2424
  %27 = icmp eq i32 %26, 39, !dbg !2425
  %28 = zext i1 %27 to i32, !dbg !2425
  %29 = sext i32 %28 to i64, !dbg !2426
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2426
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2426
  store i8* %31, i8** %3, align 8, !dbg !2427
  br label %37, !dbg !2427

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2428
  %34 = icmp eq i32 %33, 9, !dbg !2429
  %35 = zext i1 %34 to i64, !dbg !2428
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), !dbg !2428
  store i8* %36, i8** %3, align 8, !dbg !2430
  br label %37, !dbg !2430

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2431
  ret i8* %38, !dbg !2431
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #5 !dbg !2432 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2437, metadata !DIExpression()), !dbg !2438
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2439, metadata !DIExpression()), !dbg !2440
  %7 = load i8*, i8** %4, align 8, !dbg !2441
  %8 = load i64, i64* %5, align 8, !dbg !2442
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2443
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2444
  ret i8* %10, !dbg !2445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #5 !dbg !2446 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2449, metadata !DIExpression()), !dbg !2450
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2453, metadata !DIExpression()), !dbg !2454
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2457, metadata !DIExpression()), !dbg !2458
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2459
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2459
  br i1 %15, label %16, label %18, !dbg !2459

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2460
  br label %19, !dbg !2459

18:                                               ; preds = %4
  br label %19, !dbg !2459

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2459
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2458
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2461, metadata !DIExpression()), !dbg !2462
  %21 = call i32* @__errno_location() #21, !dbg !2463
  %22 = load i32, i32* %21, align 4, !dbg !2463
  store i32 %22, i32* %10, align 4, !dbg !2462
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2464, metadata !DIExpression()), !dbg !2465
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2466
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2467
  %25 = load i32, i32* %24, align 4, !dbg !2467
  %26 = load i64*, i64** %7, align 8, !dbg !2468
  %27 = icmp ne i64* %26, null, !dbg !2468
  %28 = zext i1 %27 to i64, !dbg !2468
  %29 = select i1 %27, i32 0, i32 1, !dbg !2468
  %30 = or i32 %25, %29, !dbg !2469
  store i32 %30, i32* %11, align 4, !dbg !2465
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2470, metadata !DIExpression()), !dbg !2471
  %31 = load i8*, i8** %5, align 8, !dbg !2472
  %32 = load i64, i64* %6, align 8, !dbg !2473
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2474
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2475
  %35 = load i32, i32* %34, align 8, !dbg !2475
  %36 = load i32, i32* %11, align 4, !dbg !2476
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2477
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2478
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2477
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2479
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2480
  %42 = load i8*, i8** %41, align 8, !dbg !2480
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2481
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2482
  %45 = load i8*, i8** %44, align 8, !dbg !2482
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2483
  %47 = add i64 %46, 1, !dbg !2484
  store i64 %47, i64* %12, align 8, !dbg !2471
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2485, metadata !DIExpression()), !dbg !2486
  %48 = load i64, i64* %12, align 8, !dbg !2487
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2488
  store i8* %49, i8** %13, align 8, !dbg !2486
  %50 = load i8*, i8** %13, align 8, !dbg !2489
  %51 = load i64, i64* %12, align 8, !dbg !2490
  %52 = load i8*, i8** %5, align 8, !dbg !2491
  %53 = load i64, i64* %6, align 8, !dbg !2492
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2493
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2494
  %56 = load i32, i32* %55, align 8, !dbg !2494
  %57 = load i32, i32* %11, align 4, !dbg !2495
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2496
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2497
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2496
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2498
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2499
  %63 = load i8*, i8** %62, align 8, !dbg !2499
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2500
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2501
  %66 = load i8*, i8** %65, align 8, !dbg !2501
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2502
  %68 = load i32, i32* %10, align 4, !dbg !2503
  %69 = call i32* @__errno_location() #21, !dbg !2504
  store i32 %68, i32* %69, align 4, !dbg !2505
  %70 = load i64*, i64** %7, align 8, !dbg !2506
  %71 = icmp ne i64* %70, null, !dbg !2506
  br i1 %71, label %72, label %76, !dbg !2508

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2509
  %74 = sub i64 %73, 1, !dbg !2510
  %75 = load i64*, i64** %7, align 8, !dbg !2511
  store i64 %74, i64* %75, align 8, !dbg !2512
  br label %76, !dbg !2513

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2514
  ret i8* %77, !dbg !2515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #5 !dbg !2516 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2517, metadata !DIExpression()), !dbg !2518
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2519
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2518
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2520, metadata !DIExpression()), !dbg !2522
  store i32 1, i32* %2, align 4, !dbg !2522
  br label %4, !dbg !2523

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2524
  %6 = load i32, i32* @nslots, align 4, !dbg !2526
  %7 = icmp slt i32 %5, %6, !dbg !2527
  br i1 %7, label %8, label %18, !dbg !2528

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2529
  %10 = load i32, i32* %2, align 4, !dbg !2530
  %11 = sext i32 %10 to i64, !dbg !2529
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2529
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2531
  %14 = load i8*, i8** %13, align 8, !dbg !2531
  call void @free(i8* noundef %14) #19, !dbg !2532
  br label %15, !dbg !2532

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2533
  %17 = add nsw i32 %16, 1, !dbg !2533
  store i32 %17, i32* %2, align 4, !dbg !2533
  br label %4, !dbg !2534, !llvm.loop !2535

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2537
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2537
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2539
  %22 = load i8*, i8** %21, align 8, !dbg !2539
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2540
  br i1 %23, label %24, label %29, !dbg !2541

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2542
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2542
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2544
  %28 = load i8*, i8** %27, align 8, !dbg !2544
  call void @free(i8* noundef %28) #19, !dbg !2545
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2546
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2547
  br label %29, !dbg !2548

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2549
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2551
  br i1 %31, label %32, label %35, !dbg !2552

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2553
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2553
  call void @free(i8* noundef %34) #19, !dbg !2555
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2556
  br label %35, !dbg !2557

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2558
  ret void, !dbg !2559
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #5 !dbg !2560 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2565, metadata !DIExpression()), !dbg !2566
  %5 = load i32, i32* %3, align 4, !dbg !2567
  %6 = load i8*, i8** %4, align 8, !dbg !2568
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2569
  ret i8* %7, !dbg !2570
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #5 !dbg !2571 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2578, metadata !DIExpression()), !dbg !2579
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2582, metadata !DIExpression()), !dbg !2583
  %18 = call i32* @__errno_location() #21, !dbg !2584
  %19 = load i32, i32* %18, align 4, !dbg !2584
  store i32 %19, i32* %9, align 4, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2585, metadata !DIExpression()), !dbg !2586
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2587
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2588, metadata !DIExpression()), !dbg !2589
  store i32 2147483647, i32* %11, align 4, !dbg !2589
  %21 = load i32, i32* %5, align 4, !dbg !2590
  %22 = icmp sle i32 0, %21, !dbg !2592
  br i1 %22, label %23, label %27, !dbg !2593

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2594
  %25 = load i32, i32* %11, align 4, !dbg !2595
  %26 = icmp slt i32 %24, %25, !dbg !2596
  br i1 %26, label %28, label %27, !dbg !2597

27:                                               ; preds = %23, %4
  call void @abort() #18, !dbg !2598
  unreachable, !dbg !2598

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2599
  %30 = load i32, i32* %5, align 4, !dbg !2601
  %31 = icmp sle i32 %29, %30, !dbg !2602
  br i1 %31, label %32, label %73, !dbg !2603

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2604, metadata !DIExpression()), !dbg !2606
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2607
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2608
  %35 = zext i1 %34 to i8, !dbg !2606
  store i8 %35, i8* %12, align 1, !dbg !2606
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2609, metadata !DIExpression()), !dbg !2610
  %36 = load i32, i32* @nslots, align 4, !dbg !2611
  %37 = sext i32 %36 to i64, !dbg !2611
  store i64 %37, i64* %13, align 8, !dbg !2610
  %38 = load i8, i8* %12, align 1, !dbg !2612
  %39 = trunc i8 %38 to i1, !dbg !2612
  br i1 %39, label %40, label %41, !dbg !2612

40:                                               ; preds = %32
  br label %43, !dbg !2612

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2613
  br label %43, !dbg !2612

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2612
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2612
  %46 = load i32, i32* %5, align 4, !dbg !2614
  %47 = load i32, i32* @nslots, align 4, !dbg !2615
  %48 = sub nsw i32 %46, %47, !dbg !2616
  %49 = add nsw i32 %48, 1, !dbg !2617
  %50 = sext i32 %49 to i64, !dbg !2614
  %51 = load i32, i32* %11, align 4, !dbg !2618
  %52 = sext i32 %51 to i64, !dbg !2618
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2619
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2619
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2620
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2621
  %55 = load i8, i8* %12, align 1, !dbg !2622
  %56 = trunc i8 %55 to i1, !dbg !2622
  br i1 %56, label %57, label %60, !dbg !2624

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2625
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2626
  br label %60, !dbg !2627

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2628
  %62 = load i32, i32* @nslots, align 4, !dbg !2629
  %63 = sext i32 %62 to i64, !dbg !2630
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2630
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2631
  %66 = load i64, i64* %13, align 8, !dbg !2632
  %67 = load i32, i32* @nslots, align 4, !dbg !2633
  %68 = sext i32 %67 to i64, !dbg !2633
  %69 = sub nsw i64 %66, %68, !dbg !2634
  %70 = mul i64 %69, 16, !dbg !2635
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2631
  %71 = load i64, i64* %13, align 8, !dbg !2636
  %72 = trunc i64 %71 to i32, !dbg !2636
  store i32 %72, i32* @nslots, align 4, !dbg !2637
  br label %73, !dbg !2638

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2639, metadata !DIExpression()), !dbg !2641
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2642
  %75 = load i32, i32* %5, align 4, !dbg !2643
  %76 = sext i32 %75 to i64, !dbg !2642
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2642
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2644
  %79 = load i64, i64* %78, align 8, !dbg !2644
  store i64 %79, i64* %14, align 8, !dbg !2641
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2645, metadata !DIExpression()), !dbg !2646
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2647
  %81 = load i32, i32* %5, align 4, !dbg !2648
  %82 = sext i32 %81 to i64, !dbg !2647
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2647
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2649
  %85 = load i8*, i8** %84, align 8, !dbg !2649
  store i8* %85, i8** %15, align 8, !dbg !2646
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2650, metadata !DIExpression()), !dbg !2651
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2652
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2653
  %88 = load i32, i32* %87, align 4, !dbg !2653
  %89 = or i32 %88, 1, !dbg !2654
  store i32 %89, i32* %16, align 4, !dbg !2651
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2655, metadata !DIExpression()), !dbg !2656
  %90 = load i8*, i8** %15, align 8, !dbg !2657
  %91 = load i64, i64* %14, align 8, !dbg !2658
  %92 = load i8*, i8** %6, align 8, !dbg !2659
  %93 = load i64, i64* %7, align 8, !dbg !2660
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2661
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2662
  %96 = load i32, i32* %95, align 8, !dbg !2662
  %97 = load i32, i32* %16, align 4, !dbg !2663
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2664
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2665
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2664
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2666
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2667
  %103 = load i8*, i8** %102, align 8, !dbg !2667
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2668
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2669
  %106 = load i8*, i8** %105, align 8, !dbg !2669
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2670
  store i64 %107, i64* %17, align 8, !dbg !2656
  %108 = load i64, i64* %14, align 8, !dbg !2671
  %109 = load i64, i64* %17, align 8, !dbg !2673
  %110 = icmp ule i64 %108, %109, !dbg !2674
  br i1 %110, label %111, label %149, !dbg !2675

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2676
  %113 = add i64 %112, 1, !dbg !2678
  store i64 %113, i64* %14, align 8, !dbg !2679
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2680
  %115 = load i32, i32* %5, align 4, !dbg !2681
  %116 = sext i32 %115 to i64, !dbg !2680
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2680
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2682
  store i64 %113, i64* %118, align 8, !dbg !2683
  %119 = load i8*, i8** %15, align 8, !dbg !2684
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2686
  br i1 %120, label %121, label %123, !dbg !2687

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2688
  call void @free(i8* noundef %122) #19, !dbg !2689
  br label %123, !dbg !2689

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2690
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2691
  store i8* %125, i8** %15, align 8, !dbg !2692
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2693
  %127 = load i32, i32* %5, align 4, !dbg !2694
  %128 = sext i32 %127 to i64, !dbg !2693
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2693
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2695
  store i8* %125, i8** %130, align 8, !dbg !2696
  %131 = load i8*, i8** %15, align 8, !dbg !2697
  %132 = load i64, i64* %14, align 8, !dbg !2698
  %133 = load i8*, i8** %6, align 8, !dbg !2699
  %134 = load i64, i64* %7, align 8, !dbg !2700
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2701
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2702
  %137 = load i32, i32* %136, align 8, !dbg !2702
  %138 = load i32, i32* %16, align 4, !dbg !2703
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2704
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2705
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2704
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2706
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2707
  %144 = load i8*, i8** %143, align 8, !dbg !2707
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2708
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2709
  %147 = load i8*, i8** %146, align 8, !dbg !2709
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2710
  br label %149, !dbg !2711

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2712
  %151 = call i32* @__errno_location() #21, !dbg !2713
  store i32 %150, i32* %151, align 4, !dbg !2714
  %152 = load i8*, i8** %15, align 8, !dbg !2715
  ret i8* %152, !dbg !2716
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !2717 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2722, metadata !DIExpression()), !dbg !2723
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2724, metadata !DIExpression()), !dbg !2725
  %7 = load i32, i32* %4, align 4, !dbg !2726
  %8 = load i8*, i8** %5, align 8, !dbg !2727
  %9 = load i64, i64* %6, align 8, !dbg !2728
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2729
  ret i8* %10, !dbg !2730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #5 !dbg !2731 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2734, metadata !DIExpression()), !dbg !2735
  %3 = load i8*, i8** %2, align 8, !dbg !2736
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2737
  ret i8* %4, !dbg !2738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #5 !dbg !2739 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2744, metadata !DIExpression()), !dbg !2745
  %5 = load i8*, i8** %3, align 8, !dbg !2746
  %6 = load i64, i64* %4, align 8, !dbg !2747
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2748
  ret i8* %7, !dbg !2749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #5 !dbg !2750 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2759, metadata !DIExpression()), !dbg !2760
  %8 = load i32, i32* %5, align 4, !dbg !2761
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2762
  %9 = load i32, i32* %4, align 4, !dbg !2763
  %10 = load i8*, i8** %6, align 8, !dbg !2764
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2765
  ret i8* %11, !dbg !2766
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #5 !dbg !2767 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2772, metadata !DIExpression()), !dbg !2773
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2773
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2773
  %5 = load i32, i32* %3, align 4, !dbg !2774
  %6 = icmp eq i32 %5, 10, !dbg !2776
  br i1 %6, label %7, label %8, !dbg !2777

7:                                                ; preds = %2
  call void @abort() #18, !dbg !2778
  unreachable, !dbg !2778

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2779
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2780
  store i32 %9, i32* %10, align 8, !dbg !2781
  ret void, !dbg !2782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #5 !dbg !2783 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2790, metadata !DIExpression()), !dbg !2791
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2794, metadata !DIExpression()), !dbg !2795
  %10 = load i32, i32* %6, align 4, !dbg !2796
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2797
  %11 = load i32, i32* %5, align 4, !dbg !2798
  %12 = load i8*, i8** %7, align 8, !dbg !2799
  %13 = load i64, i64* %8, align 8, !dbg !2800
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2801
  ret i8* %14, !dbg !2802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #5 !dbg !2803 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2808, metadata !DIExpression()), !dbg !2809
  %5 = load i32, i32* %3, align 4, !dbg !2810
  %6 = load i8*, i8** %4, align 8, !dbg !2811
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2812
  ret i8* %7, !dbg !2813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !2814 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2817, metadata !DIExpression()), !dbg !2818
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2821, metadata !DIExpression()), !dbg !2822
  %7 = load i32, i32* %4, align 4, !dbg !2823
  %8 = load i8*, i8** %5, align 8, !dbg !2824
  %9 = load i64, i64* %6, align 8, !dbg !2825
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2826
  ret i8* %10, !dbg !2827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #5 !dbg !2828 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2837, metadata !DIExpression()), !dbg !2838
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2839
  %9 = load i8, i8* %6, align 1, !dbg !2840
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2841
  %11 = load i8*, i8** %4, align 8, !dbg !2842
  %12 = load i64, i64* %5, align 8, !dbg !2843
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2844
  ret i8* %13, !dbg !2845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #5 !dbg !2846 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2851, metadata !DIExpression()), !dbg !2852
  %5 = load i8*, i8** %3, align 8, !dbg !2853
  %6 = load i8, i8* %4, align 1, !dbg !2854
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2855
  ret i8* %7, !dbg !2856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #5 !dbg !2857 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2858, metadata !DIExpression()), !dbg !2859
  %3 = load i8*, i8** %2, align 8, !dbg !2860
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2861
  ret i8* %4, !dbg !2862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #5 !dbg !2863 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2864, metadata !DIExpression()), !dbg !2865
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2866, metadata !DIExpression()), !dbg !2867
  %5 = load i8*, i8** %3, align 8, !dbg !2868
  %6 = load i64, i64* %4, align 8, !dbg !2869
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2870
  ret i8* %7, !dbg !2871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #5 !dbg !2872 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2873, metadata !DIExpression()), !dbg !2874
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2875, metadata !DIExpression()), !dbg !2876
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2879, metadata !DIExpression()), !dbg !2880
  %9 = load i32, i32* %5, align 4, !dbg !2881
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2882
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2882
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2882
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2883
  %13 = load i32, i32* %4, align 4, !dbg !2884
  %14 = load i8*, i8** %6, align 8, !dbg !2885
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2886
  ret i8* %15, !dbg !2887
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #5 !dbg !2888 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2893, metadata !DIExpression()), !dbg !2894
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2895, metadata !DIExpression()), !dbg !2896
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2897, metadata !DIExpression()), !dbg !2898
  %9 = load i32, i32* %5, align 4, !dbg !2899
  %10 = load i8*, i8** %6, align 8, !dbg !2900
  %11 = load i8*, i8** %7, align 8, !dbg !2901
  %12 = load i8*, i8** %8, align 8, !dbg !2902
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2903
  ret i8* %13, !dbg !2904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #5 !dbg !2905 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2908, metadata !DIExpression()), !dbg !2909
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2910, metadata !DIExpression()), !dbg !2911
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2912, metadata !DIExpression()), !dbg !2913
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2914, metadata !DIExpression()), !dbg !2915
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2918, metadata !DIExpression()), !dbg !2919
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2920
  %13 = load i8*, i8** %7, align 8, !dbg !2921
  %14 = load i8*, i8** %8, align 8, !dbg !2922
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2923
  %15 = load i32, i32* %6, align 4, !dbg !2924
  %16 = load i8*, i8** %9, align 8, !dbg !2925
  %17 = load i64, i64* %10, align 8, !dbg !2926
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2927
  ret i8* %18, !dbg !2928
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #5 !dbg !2929 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2936, metadata !DIExpression()), !dbg !2937
  %7 = load i8*, i8** %4, align 8, !dbg !2938
  %8 = load i8*, i8** %5, align 8, !dbg !2939
  %9 = load i8*, i8** %6, align 8, !dbg !2940
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2941
  ret i8* %10, !dbg !2942
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #5 !dbg !2943 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2948, metadata !DIExpression()), !dbg !2949
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2950, metadata !DIExpression()), !dbg !2951
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2952, metadata !DIExpression()), !dbg !2953
  %9 = load i8*, i8** %5, align 8, !dbg !2954
  %10 = load i8*, i8** %6, align 8, !dbg !2955
  %11 = load i8*, i8** %7, align 8, !dbg !2956
  %12 = load i64, i64* %8, align 8, !dbg !2957
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2958
  ret i8* %13, !dbg !2959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !2960 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2963, metadata !DIExpression()), !dbg !2964
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2967, metadata !DIExpression()), !dbg !2968
  %7 = load i32, i32* %4, align 4, !dbg !2969
  %8 = load i8*, i8** %5, align 8, !dbg !2970
  %9 = load i64, i64* %6, align 8, !dbg !2971
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2972
  ret i8* %10, !dbg !2973
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #5 !dbg !2974 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2979, metadata !DIExpression()), !dbg !2980
  %5 = load i8*, i8** %3, align 8, !dbg !2981
  %6 = load i64, i64* %4, align 8, !dbg !2982
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2983
  ret i8* %7, !dbg !2984
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #5 !dbg !2985 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2990, metadata !DIExpression()), !dbg !2991
  %5 = load i32, i32* %3, align 4, !dbg !2992
  %6 = load i8*, i8** %4, align 8, !dbg !2993
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2994
  ret i8* %7, !dbg !2995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #5 !dbg !2996 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2999, metadata !DIExpression()), !dbg !3000
  %3 = load i8*, i8** %2, align 8, !dbg !3001
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3002
  ret i8* %4, !dbg !3003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #5 !dbg !3004 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3010, metadata !DIExpression()), !dbg !3011
  %5 = load i8*, i8** %3, align 8, !dbg !3012
  %6 = load i8*, i8** %4, align 8, !dbg !3013
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3014
  %8 = icmp ne i32 %7, 0, !dbg !3015
  %9 = xor i1 %8, true, !dbg !3015
  ret i1 %9, !dbg !3016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #5 !dbg !3017 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3076, metadata !DIExpression()), !dbg !3077
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3078, metadata !DIExpression()), !dbg !3079
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3080, metadata !DIExpression()), !dbg !3081
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3084, metadata !DIExpression()), !dbg !3085
  %13 = load i8*, i8** %8, align 8, !dbg !3086
  %14 = icmp ne i8* %13, null, !dbg !3086
  br i1 %14, label %15, label %21, !dbg !3088

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3089
  %17 = load i8*, i8** %8, align 8, !dbg !3090
  %18 = load i8*, i8** %9, align 8, !dbg !3091
  %19 = load i8*, i8** %10, align 8, !dbg !3092
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3093
  br label %26, !dbg !3093

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3094
  %23 = load i8*, i8** %9, align 8, !dbg !3095
  %24 = load i8*, i8** %10, align 8, !dbg !3096
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3097
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3098
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.109, i64 0, i64 0)) #19, !dbg !3099
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3100
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3101
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3101
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3102
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.111, i64 0, i64 0)) #19, !dbg !3103
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.112, i64 0, i64 0)), !dbg !3104
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3105
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3105
  %37 = load i64, i64* %12, align 8, !dbg !3106
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
  ], !dbg !3107

38:                                               ; preds = %26
  br label %241, !dbg !3108

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3110
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.113, i64 0, i64 0)) #19, !dbg !3111
  %42 = load i8**, i8*** %11, align 8, !dbg !3112
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3112
  %44 = load i8*, i8** %43, align 8, !dbg !3112
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3113
  br label %241, !dbg !3114

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3115
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.114, i64 0, i64 0)) #19, !dbg !3116
  %49 = load i8**, i8*** %11, align 8, !dbg !3117
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3117
  %51 = load i8*, i8** %50, align 8, !dbg !3117
  %52 = load i8**, i8*** %11, align 8, !dbg !3118
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3118
  %54 = load i8*, i8** %53, align 8, !dbg !3118
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3119
  br label %241, !dbg !3120

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3121
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.115, i64 0, i64 0)) #19, !dbg !3122
  %59 = load i8**, i8*** %11, align 8, !dbg !3123
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3123
  %61 = load i8*, i8** %60, align 8, !dbg !3123
  %62 = load i8**, i8*** %11, align 8, !dbg !3124
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3124
  %64 = load i8*, i8** %63, align 8, !dbg !3124
  %65 = load i8**, i8*** %11, align 8, !dbg !3125
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3125
  %67 = load i8*, i8** %66, align 8, !dbg !3125
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3126
  br label %241, !dbg !3127

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3128
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.116, i64 0, i64 0)) #19, !dbg !3129
  %72 = load i8**, i8*** %11, align 8, !dbg !3130
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3130
  %74 = load i8*, i8** %73, align 8, !dbg !3130
  %75 = load i8**, i8*** %11, align 8, !dbg !3131
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3131
  %77 = load i8*, i8** %76, align 8, !dbg !3131
  %78 = load i8**, i8*** %11, align 8, !dbg !3132
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3132
  %80 = load i8*, i8** %79, align 8, !dbg !3132
  %81 = load i8**, i8*** %11, align 8, !dbg !3133
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3133
  %83 = load i8*, i8** %82, align 8, !dbg !3133
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3134
  br label %241, !dbg !3135

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3136
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.117, i64 0, i64 0)) #19, !dbg !3137
  %88 = load i8**, i8*** %11, align 8, !dbg !3138
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3138
  %90 = load i8*, i8** %89, align 8, !dbg !3138
  %91 = load i8**, i8*** %11, align 8, !dbg !3139
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3139
  %93 = load i8*, i8** %92, align 8, !dbg !3139
  %94 = load i8**, i8*** %11, align 8, !dbg !3140
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3140
  %96 = load i8*, i8** %95, align 8, !dbg !3140
  %97 = load i8**, i8*** %11, align 8, !dbg !3141
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3141
  %99 = load i8*, i8** %98, align 8, !dbg !3141
  %100 = load i8**, i8*** %11, align 8, !dbg !3142
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3142
  %102 = load i8*, i8** %101, align 8, !dbg !3142
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3143
  br label %241, !dbg !3144

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3145
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.118, i64 0, i64 0)) #19, !dbg !3146
  %107 = load i8**, i8*** %11, align 8, !dbg !3147
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3147
  %109 = load i8*, i8** %108, align 8, !dbg !3147
  %110 = load i8**, i8*** %11, align 8, !dbg !3148
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3148
  %112 = load i8*, i8** %111, align 8, !dbg !3148
  %113 = load i8**, i8*** %11, align 8, !dbg !3149
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3149
  %115 = load i8*, i8** %114, align 8, !dbg !3149
  %116 = load i8**, i8*** %11, align 8, !dbg !3150
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3150
  %118 = load i8*, i8** %117, align 8, !dbg !3150
  %119 = load i8**, i8*** %11, align 8, !dbg !3151
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3151
  %121 = load i8*, i8** %120, align 8, !dbg !3151
  %122 = load i8**, i8*** %11, align 8, !dbg !3152
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3152
  %124 = load i8*, i8** %123, align 8, !dbg !3152
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3153
  br label %241, !dbg !3154

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3155
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.119, i64 0, i64 0)) #19, !dbg !3156
  %129 = load i8**, i8*** %11, align 8, !dbg !3157
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3157
  %131 = load i8*, i8** %130, align 8, !dbg !3157
  %132 = load i8**, i8*** %11, align 8, !dbg !3158
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3158
  %134 = load i8*, i8** %133, align 8, !dbg !3158
  %135 = load i8**, i8*** %11, align 8, !dbg !3159
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3159
  %137 = load i8*, i8** %136, align 8, !dbg !3159
  %138 = load i8**, i8*** %11, align 8, !dbg !3160
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3160
  %140 = load i8*, i8** %139, align 8, !dbg !3160
  %141 = load i8**, i8*** %11, align 8, !dbg !3161
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3161
  %143 = load i8*, i8** %142, align 8, !dbg !3161
  %144 = load i8**, i8*** %11, align 8, !dbg !3162
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3162
  %146 = load i8*, i8** %145, align 8, !dbg !3162
  %147 = load i8**, i8*** %11, align 8, !dbg !3163
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3163
  %149 = load i8*, i8** %148, align 8, !dbg !3163
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3164
  br label %241, !dbg !3165

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3166
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.120, i64 0, i64 0)) #19, !dbg !3167
  %154 = load i8**, i8*** %11, align 8, !dbg !3168
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3168
  %156 = load i8*, i8** %155, align 8, !dbg !3168
  %157 = load i8**, i8*** %11, align 8, !dbg !3169
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3169
  %159 = load i8*, i8** %158, align 8, !dbg !3169
  %160 = load i8**, i8*** %11, align 8, !dbg !3170
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3170
  %162 = load i8*, i8** %161, align 8, !dbg !3170
  %163 = load i8**, i8*** %11, align 8, !dbg !3171
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3171
  %165 = load i8*, i8** %164, align 8, !dbg !3171
  %166 = load i8**, i8*** %11, align 8, !dbg !3172
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3172
  %168 = load i8*, i8** %167, align 8, !dbg !3172
  %169 = load i8**, i8*** %11, align 8, !dbg !3173
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3173
  %171 = load i8*, i8** %170, align 8, !dbg !3173
  %172 = load i8**, i8*** %11, align 8, !dbg !3174
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3174
  %174 = load i8*, i8** %173, align 8, !dbg !3174
  %175 = load i8**, i8*** %11, align 8, !dbg !3175
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3175
  %177 = load i8*, i8** %176, align 8, !dbg !3175
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3176
  br label %241, !dbg !3177

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3178
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.121, i64 0, i64 0)) #19, !dbg !3179
  %182 = load i8**, i8*** %11, align 8, !dbg !3180
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3180
  %184 = load i8*, i8** %183, align 8, !dbg !3180
  %185 = load i8**, i8*** %11, align 8, !dbg !3181
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3181
  %187 = load i8*, i8** %186, align 8, !dbg !3181
  %188 = load i8**, i8*** %11, align 8, !dbg !3182
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3182
  %190 = load i8*, i8** %189, align 8, !dbg !3182
  %191 = load i8**, i8*** %11, align 8, !dbg !3183
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3183
  %193 = load i8*, i8** %192, align 8, !dbg !3183
  %194 = load i8**, i8*** %11, align 8, !dbg !3184
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3184
  %196 = load i8*, i8** %195, align 8, !dbg !3184
  %197 = load i8**, i8*** %11, align 8, !dbg !3185
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3185
  %199 = load i8*, i8** %198, align 8, !dbg !3185
  %200 = load i8**, i8*** %11, align 8, !dbg !3186
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3186
  %202 = load i8*, i8** %201, align 8, !dbg !3186
  %203 = load i8**, i8*** %11, align 8, !dbg !3187
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3187
  %205 = load i8*, i8** %204, align 8, !dbg !3187
  %206 = load i8**, i8*** %11, align 8, !dbg !3188
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3188
  %208 = load i8*, i8** %207, align 8, !dbg !3188
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3189
  br label %241, !dbg !3190

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3191
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.122, i64 0, i64 0)) #19, !dbg !3192
  %213 = load i8**, i8*** %11, align 8, !dbg !3193
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3193
  %215 = load i8*, i8** %214, align 8, !dbg !3193
  %216 = load i8**, i8*** %11, align 8, !dbg !3194
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3194
  %218 = load i8*, i8** %217, align 8, !dbg !3194
  %219 = load i8**, i8*** %11, align 8, !dbg !3195
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3195
  %221 = load i8*, i8** %220, align 8, !dbg !3195
  %222 = load i8**, i8*** %11, align 8, !dbg !3196
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3196
  %224 = load i8*, i8** %223, align 8, !dbg !3196
  %225 = load i8**, i8*** %11, align 8, !dbg !3197
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3197
  %227 = load i8*, i8** %226, align 8, !dbg !3197
  %228 = load i8**, i8*** %11, align 8, !dbg !3198
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3198
  %230 = load i8*, i8** %229, align 8, !dbg !3198
  %231 = load i8**, i8*** %11, align 8, !dbg !3199
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3199
  %233 = load i8*, i8** %232, align 8, !dbg !3199
  %234 = load i8**, i8*** %11, align 8, !dbg !3200
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3200
  %236 = load i8*, i8** %235, align 8, !dbg !3200
  %237 = load i8**, i8*** %11, align 8, !dbg !3201
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3201
  %239 = load i8*, i8** %238, align 8, !dbg !3201
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3202
  br label %241, !dbg !3203

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #5 !dbg !3205 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3208, metadata !DIExpression()), !dbg !3209
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3210, metadata !DIExpression()), !dbg !3211
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3212, metadata !DIExpression()), !dbg !3213
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3214, metadata !DIExpression()), !dbg !3215
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3218, metadata !DIExpression()), !dbg !3219
  store i64 0, i64* %11, align 8, !dbg !3220
  br label %12, !dbg !3222

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3223
  %14 = load i64, i64* %11, align 8, !dbg !3225
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3223
  %16 = load i8*, i8** %15, align 8, !dbg !3223
  %17 = icmp ne i8* %16, null, !dbg !3226
  br i1 %17, label %18, label %22, !dbg !3226

18:                                               ; preds = %12
  br label %19, !dbg !3226

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3227
  %21 = add i64 %20, 1, !dbg !3227
  store i64 %21, i64* %11, align 8, !dbg !3227
  br label %12, !dbg !3228, !llvm.loop !3229

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3231
  %24 = load i8*, i8** %7, align 8, !dbg !3232
  %25 = load i8*, i8** %8, align 8, !dbg !3233
  %26 = load i8*, i8** %9, align 8, !dbg !3234
  %27 = load i8**, i8*** %10, align 8, !dbg !3235
  %28 = load i64, i64* %11, align 8, !dbg !3236
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3237
  ret void, !dbg !3238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #5 !dbg !3239 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3265, metadata !DIExpression()), !dbg !3267
  store i64 0, i64* %10, align 8, !dbg !3268
  br label %12, !dbg !3270

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3271
  %14 = icmp ult i64 %13, 10, !dbg !3273
  br i1 %14, label %15, label %38, !dbg !3274

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3275
  %17 = load i32, i32* %16, align 8, !dbg !3275
  %18 = icmp sge i32 %17, 0, !dbg !3275
  br i1 %18, label %27, label %19, !dbg !3275

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3275
  store i32 %20, i32* %16, align 8, !dbg !3275
  %21 = icmp sle i32 %20, 0, !dbg !3275
  br i1 %21, label %22, label %27, !dbg !3275

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3275
  %24 = load i8*, i8** %23, align 8, !dbg !3275
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3275
  %26 = bitcast i8* %25 to i8**, !dbg !3275
  br label %32, !dbg !3275

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3275
  %29 = load i8*, i8** %28, align 8, !dbg !3275
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3275
  store i8* %30, i8** %28, align 8, !dbg !3275
  %31 = bitcast i8* %29 to i8**, !dbg !3275
  br label %32, !dbg !3275

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3275
  %34 = load i8*, i8** %33, align 8, !dbg !3275
  %35 = load i64, i64* %10, align 8, !dbg !3276
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3277
  store i8* %34, i8** %36, align 8, !dbg !3278
  %37 = icmp ne i8* %34, null, !dbg !3279
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3280
  br i1 %39, label %40, label %44, !dbg !3281

40:                                               ; preds = %38
  br label %41, !dbg !3281

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3282
  %43 = add i64 %42, 1, !dbg !3282
  store i64 %43, i64* %10, align 8, !dbg !3282
  br label %12, !dbg !3283, !llvm.loop !3284

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3286
  %46 = load i8*, i8** %7, align 8, !dbg !3287
  %47 = load i8*, i8** %8, align 8, !dbg !3288
  %48 = load i8*, i8** %9, align 8, !dbg !3289
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3290
  %50 = load i64, i64* %10, align 8, !dbg !3291
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3292
  ret void, !dbg !3293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #5 !dbg !3294 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3299, metadata !DIExpression()), !dbg !3300
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3301, metadata !DIExpression()), !dbg !3302
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3305, metadata !DIExpression()), !dbg !3306
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3307
  call void @llvm.va_start(i8* %11), !dbg !3307
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3308
  %13 = load i8*, i8** %6, align 8, !dbg !3309
  %14 = load i8*, i8** %7, align 8, !dbg !3310
  %15 = load i8*, i8** %8, align 8, !dbg !3311
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3312
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3312
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3312
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3313
  call void @llvm.va_end(i8* %18), !dbg !3313
  ret void, !dbg !3314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #5 !dbg !3315 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3316
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3316
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.127, i64 0, i64 0)) #19, !dbg !3317
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.128, i64 0, i64 0)), !dbg !3318
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.129, i64 0, i64 0)) #19, !dbg !3319
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.131, i64 0, i64 0)), !dbg !3320
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.132, i64 0, i64 0)) #19, !dbg !3321
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.133, i64 0, i64 0)), !dbg !3322
  ret void, !dbg !3323
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3324 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3328, metadata !DIExpression()), !dbg !3329
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3330, metadata !DIExpression()), !dbg !3331
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3332, metadata !DIExpression()), !dbg !3333
  %7 = load i8*, i8** %4, align 8, !dbg !3334
  %8 = load i64, i64* %5, align 8, !dbg !3335
  %9 = load i64, i64* %6, align 8, !dbg !3336
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3337
  ret i8* %10, !dbg !3338
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3339 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3340, metadata !DIExpression()), !dbg !3341
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3342, metadata !DIExpression()), !dbg !3343
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3344, metadata !DIExpression()), !dbg !3345
  %7 = load i8*, i8** %4, align 8, !dbg !3346
  %8 = load i64, i64* %5, align 8, !dbg !3347
  %9 = load i64, i64* %6, align 8, !dbg !3348
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3349
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3350
  ret i8* %11, !dbg !3351
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #5 !dbg !3352 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3355, metadata !DIExpression()), !dbg !3356
  %3 = load i8*, i8** %2, align 8, !dbg !3357
  %4 = icmp ne i8* %3, null, !dbg !3357
  br i1 %4, label %6, label %5, !dbg !3359

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3360
  unreachable, !dbg !3360

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3361
  ret i8* %7, !dbg !3362
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3363 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3366, metadata !DIExpression()), !dbg !3367
  %3 = load i64, i64* %2, align 8, !dbg !3368
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3369
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3370
  ret i8* %5, !dbg !3371
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3372 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3375, metadata !DIExpression()), !dbg !3376
  %3 = load i64, i64* %2, align 8, !dbg !3377
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3378
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3379
  ret i8* %5, !dbg !3380
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3381 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3384, metadata !DIExpression()), !dbg !3385
  %3 = load i64, i64* %2, align 8, !dbg !3386
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3386
  ret i8* %4, !dbg !3387
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3388 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3393, metadata !DIExpression()), !dbg !3394
  %5 = load i8*, i8** %3, align 8, !dbg !3395
  %6 = load i64, i64* %4, align 8, !dbg !3396
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3397
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3398
  ret i8* %8, !dbg !3399
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3400 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3403, metadata !DIExpression()), !dbg !3404
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3405, metadata !DIExpression()), !dbg !3406
  %5 = load i8*, i8** %3, align 8, !dbg !3407
  %6 = load i64, i64* %4, align 8, !dbg !3408
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3409
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3410
  ret i8* %8, !dbg !3411
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3412 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3415, metadata !DIExpression()), !dbg !3416
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3417, metadata !DIExpression()), !dbg !3418
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3419, metadata !DIExpression()), !dbg !3420
  %7 = load i8*, i8** %4, align 8, !dbg !3421
  %8 = load i64, i64* %5, align 8, !dbg !3422
  %9 = load i64, i64* %6, align 8, !dbg !3423
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3424
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3425
  ret i8* %11, !dbg !3426
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3427 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3430, metadata !DIExpression()), !dbg !3431
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3432, metadata !DIExpression()), !dbg !3433
  %5 = load i64, i64* %3, align 8, !dbg !3434
  %6 = load i64, i64* %4, align 8, !dbg !3435
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3436
  ret i8* %7, !dbg !3437
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3438 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3443, metadata !DIExpression()), !dbg !3444
  %5 = load i64, i64* %3, align 8, !dbg !3445
  %6 = load i64, i64* %4, align 8, !dbg !3446
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3447
  ret i8* %7, !dbg !3448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #5 !dbg !3449 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3452, metadata !DIExpression()), !dbg !3453
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3454, metadata !DIExpression()), !dbg !3455
  %5 = load i8*, i8** %3, align 8, !dbg !3456
  %6 = load i64*, i64** %4, align 8, !dbg !3457
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3458
  ret i8* %7, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #5 !dbg !230 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3460, metadata !DIExpression()), !dbg !3461
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3462, metadata !DIExpression()), !dbg !3463
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3464, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3466, metadata !DIExpression()), !dbg !3467
  %8 = load i64*, i64** %5, align 8, !dbg !3468
  %9 = load i64, i64* %8, align 8, !dbg !3469
  store i64 %9, i64* %7, align 8, !dbg !3467
  %10 = load i8*, i8** %4, align 8, !dbg !3470
  %11 = icmp ne i8* %10, null, !dbg !3470
  br i1 %11, label %26, label %12, !dbg !3472

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3473
  %14 = icmp ne i64 %13, 0, !dbg !3473
  br i1 %14, label %25, label %15, !dbg !3476

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3477
  %17 = udiv i64 128, %16, !dbg !3479
  store i64 %17, i64* %7, align 8, !dbg !3480
  %18 = load i64, i64* %7, align 8, !dbg !3481
  %19 = icmp ne i64 %18, 0, !dbg !3482
  %20 = xor i1 %19, true, !dbg !3482
  %21 = zext i1 %20 to i32, !dbg !3482
  %22 = sext i32 %21 to i64, !dbg !3482
  %23 = load i64, i64* %7, align 8, !dbg !3483
  %24 = add i64 %23, %22, !dbg !3483
  store i64 %24, i64* %7, align 8, !dbg !3483
  br label %25, !dbg !3484

25:                                               ; preds = %15, %12
  br label %36, !dbg !3485

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3486
  %28 = load i64, i64* %7, align 8, !dbg !3486
  %29 = lshr i64 %28, 1, !dbg !3486
  %30 = add i64 %29, 1, !dbg !3486
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3486
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3486
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3486
  store i64 %33, i64* %7, align 8, !dbg !3486
  br i1 %32, label %34, label %35, !dbg !3489

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3490
  unreachable, !dbg !3490

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3491
  %38 = load i64, i64* %7, align 8, !dbg !3492
  %39 = load i64, i64* %6, align 8, !dbg !3493
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3494
  store i8* %40, i8** %4, align 8, !dbg !3495
  %41 = load i64, i64* %7, align 8, !dbg !3496
  %42 = load i64*, i64** %5, align 8, !dbg !3497
  store i64 %41, i64* %42, align 8, !dbg !3498
  %43 = load i8*, i8** %4, align 8, !dbg !3499
  ret i8* %43, !dbg !3500
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #5 !dbg !237 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3501, metadata !DIExpression()), !dbg !3502
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3503, metadata !DIExpression()), !dbg !3504
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3505, metadata !DIExpression()), !dbg !3506
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3507, metadata !DIExpression()), !dbg !3508
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3511, metadata !DIExpression()), !dbg !3512
  %15 = load i64*, i64** %7, align 8, !dbg !3513
  %16 = load i64, i64* %15, align 8, !dbg !3514
  store i64 %16, i64* %11, align 8, !dbg !3512
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3515, metadata !DIExpression()), !dbg !3516
  %17 = load i64, i64* %11, align 8, !dbg !3517
  %18 = load i64, i64* %11, align 8, !dbg !3517
  %19 = ashr i64 %18, 1, !dbg !3517
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3517
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3517
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3517
  store i64 %22, i64* %12, align 8, !dbg !3517
  br i1 %21, label %23, label %24, !dbg !3519

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3520
  br label %24, !dbg !3521

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3522
  %26 = icmp sle i64 0, %25, !dbg !3524
  br i1 %26, label %27, label %33, !dbg !3525

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3526
  %29 = load i64, i64* %12, align 8, !dbg !3527
  %30 = icmp slt i64 %28, %29, !dbg !3528
  br i1 %30, label %31, label %33, !dbg !3529

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3530
  store i64 %32, i64* %12, align 8, !dbg !3531
  br label %33, !dbg !3532

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3535, metadata !DIExpression()), !dbg !3536
  %34 = load i64, i64* %10, align 8, !dbg !3537
  %35 = icmp slt i64 %34, 0, !dbg !3537
  br i1 %35, label %36, label %82, !dbg !3537

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3537
  %38 = icmp slt i64 %37, 0, !dbg !3537
  br i1 %38, label %39, label %62, !dbg !3537

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3537

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3537
  %42 = load i64, i64* %10, align 8, !dbg !3537
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3537
  %44 = icmp slt i64 %41, %43, !dbg !3537
  br i1 %44, label %111, label %115, !dbg !3537

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3537

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3537
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3537
  br i1 %48, label %52, label %53, !dbg !3537

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3537
  %51 = icmp slt i64 0, %50, !dbg !3537
  br i1 %51, label %52, label %53, !dbg !3537

52:                                               ; preds = %49, %46
  br label %57, !dbg !3537

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3537
  %55 = sub nsw i64 0, %54, !dbg !3537
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3537
  br label %57, !dbg !3537

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3537
  %59 = load i64, i64* %12, align 8, !dbg !3537
  %60 = sub nsw i64 -1, %59, !dbg !3537
  %61 = icmp sle i64 %58, %60, !dbg !3537
  br i1 %61, label %111, label %115, !dbg !3537

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3537
  %64 = icmp eq i64 %63, -1, !dbg !3537
  br i1 %64, label %65, label %77, !dbg !3537

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3537

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3537
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3537
  %69 = icmp slt i64 0, %68, !dbg !3537
  br i1 %69, label %111, label %115, !dbg !3537

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3537
  %72 = icmp slt i64 0, %71, !dbg !3537
  br i1 %72, label %73, label %115, !dbg !3537

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3537
  %75 = sub nsw i64 %74, 1, !dbg !3537
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3537
  br i1 %76, label %111, label %115, !dbg !3537

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3537
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3537
  %80 = load i64, i64* %12, align 8, !dbg !3537
  %81 = icmp slt i64 %79, %80, !dbg !3537
  br i1 %81, label %111, label %115, !dbg !3537

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3537
  %84 = icmp eq i64 %83, 0, !dbg !3537
  br i1 %84, label %85, label %86, !dbg !3537

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3537

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3537
  %88 = icmp slt i64 %87, 0, !dbg !3537
  br i1 %88, label %89, label %106, !dbg !3537

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3537
  %91 = icmp eq i64 %90, -1, !dbg !3537
  br i1 %91, label %92, label %101, !dbg !3537

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3537

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3537
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3537
  %96 = icmp slt i64 0, %95, !dbg !3537
  br i1 %96, label %111, label %115, !dbg !3537

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3537
  %99 = sub nsw i64 %98, 1, !dbg !3537
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3537
  br i1 %100, label %111, label %115, !dbg !3537

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3537
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3537
  %104 = load i64, i64* %10, align 8, !dbg !3537
  %105 = icmp slt i64 %103, %104, !dbg !3537
  br i1 %105, label %111, label %115, !dbg !3537

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3537
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3537
  %109 = load i64, i64* %12, align 8, !dbg !3537
  %110 = icmp slt i64 %108, %109, !dbg !3537
  br i1 %110, label %111, label %115, !dbg !3537

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3537
  %113 = load i64, i64* %10, align 8, !dbg !3537
  %114 = mul i64 %112, %113, !dbg !3537
  store i64 %114, i64* %13, align 8, !dbg !3537
  br label %119, !dbg !3537

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3537
  %117 = load i64, i64* %10, align 8, !dbg !3537
  %118 = mul i64 %116, %117, !dbg !3537
  store i64 %118, i64* %13, align 8, !dbg !3537
  br label %119, !dbg !3537

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3537
  %121 = icmp ne i32 %120, 0, !dbg !3537
  br i1 %121, label %122, label %123, !dbg !3537

122:                                              ; preds = %119
  br label %129, !dbg !3537

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3538
  %125 = icmp slt i64 %124, 128, !dbg !3539
  %126 = zext i1 %125 to i64, !dbg !3538
  %127 = select i1 %125, i32 128, i32 0, !dbg !3538
  %128 = sext i32 %127 to i64, !dbg !3538
  br label %129, !dbg !3537

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3537
  store i64 %130, i64* %14, align 8, !dbg !3536
  %131 = load i64, i64* %14, align 8, !dbg !3540
  %132 = icmp ne i64 %131, 0, !dbg !3540
  br i1 %132, label %133, label %142, !dbg !3542

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3543
  %135 = load i64, i64* %10, align 8, !dbg !3545
  %136 = sdiv i64 %134, %135, !dbg !3546
  store i64 %136, i64* %12, align 8, !dbg !3547
  %137 = load i64, i64* %14, align 8, !dbg !3548
  %138 = load i64, i64* %14, align 8, !dbg !3549
  %139 = load i64, i64* %10, align 8, !dbg !3550
  %140 = srem i64 %138, %139, !dbg !3551
  %141 = sub nsw i64 %137, %140, !dbg !3552
  store i64 %141, i64* %13, align 8, !dbg !3553
  br label %142, !dbg !3554

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3555
  %144 = icmp ne i8* %143, null, !dbg !3555
  br i1 %144, label %147, label %145, !dbg !3557

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3558
  store i64 0, i64* %146, align 8, !dbg !3559
  br label %147, !dbg !3560

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3561
  %149 = load i64, i64* %11, align 8, !dbg !3563
  %150 = sub nsw i64 %148, %149, !dbg !3564
  %151 = load i64, i64* %8, align 8, !dbg !3565
  %152 = icmp slt i64 %150, %151, !dbg !3566
  br i1 %152, label %153, label %256, !dbg !3567

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3568
  %155 = load i64, i64* %8, align 8, !dbg !3568
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3568
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3568
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3568
  store i64 %158, i64* %12, align 8, !dbg !3568
  br i1 %157, label %255, label %159, !dbg !3569

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3570
  %161 = icmp sle i64 0, %160, !dbg !3571
  br i1 %161, label %162, label %166, !dbg !3572

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3573
  %164 = load i64, i64* %12, align 8, !dbg !3574
  %165 = icmp slt i64 %163, %164, !dbg !3575
  br i1 %165, label %255, label %166, !dbg !3576

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3577
  %168 = icmp slt i64 %167, 0, !dbg !3577
  br i1 %168, label %169, label %215, !dbg !3577

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3577
  %171 = icmp slt i64 %170, 0, !dbg !3577
  br i1 %171, label %172, label %195, !dbg !3577

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3577

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3577
  %175 = load i64, i64* %10, align 8, !dbg !3577
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3577
  %177 = icmp slt i64 %174, %176, !dbg !3577
  br i1 %177, label %244, label %248, !dbg !3577

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3577

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3577
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3577
  br i1 %181, label %185, label %186, !dbg !3577

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3577
  %184 = icmp slt i64 0, %183, !dbg !3577
  br i1 %184, label %185, label %186, !dbg !3577

185:                                              ; preds = %182, %179
  br label %190, !dbg !3577

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3577
  %188 = sub nsw i64 0, %187, !dbg !3577
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3577
  br label %190, !dbg !3577

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3577
  %192 = load i64, i64* %12, align 8, !dbg !3577
  %193 = sub nsw i64 -1, %192, !dbg !3577
  %194 = icmp sle i64 %191, %193, !dbg !3577
  br i1 %194, label %244, label %248, !dbg !3577

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3577
  %197 = icmp eq i64 %196, -1, !dbg !3577
  br i1 %197, label %198, label %210, !dbg !3577

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3577

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3577
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3577
  %202 = icmp slt i64 0, %201, !dbg !3577
  br i1 %202, label %244, label %248, !dbg !3577

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3577
  %205 = icmp slt i64 0, %204, !dbg !3577
  br i1 %205, label %206, label %248, !dbg !3577

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3577
  %208 = sub nsw i64 %207, 1, !dbg !3577
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3577
  br i1 %209, label %244, label %248, !dbg !3577

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3577
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3577
  %213 = load i64, i64* %12, align 8, !dbg !3577
  %214 = icmp slt i64 %212, %213, !dbg !3577
  br i1 %214, label %244, label %248, !dbg !3577

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3577
  %217 = icmp eq i64 %216, 0, !dbg !3577
  br i1 %217, label %218, label %219, !dbg !3577

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3577

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3577
  %221 = icmp slt i64 %220, 0, !dbg !3577
  br i1 %221, label %222, label %239, !dbg !3577

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3577
  %224 = icmp eq i64 %223, -1, !dbg !3577
  br i1 %224, label %225, label %234, !dbg !3577

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3577

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3577
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3577
  %229 = icmp slt i64 0, %228, !dbg !3577
  br i1 %229, label %244, label %248, !dbg !3577

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3577
  %232 = sub nsw i64 %231, 1, !dbg !3577
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3577
  br i1 %233, label %244, label %248, !dbg !3577

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3577
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3577
  %237 = load i64, i64* %10, align 8, !dbg !3577
  %238 = icmp slt i64 %236, %237, !dbg !3577
  br i1 %238, label %244, label %248, !dbg !3577

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3577
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3577
  %242 = load i64, i64* %12, align 8, !dbg !3577
  %243 = icmp slt i64 %241, %242, !dbg !3577
  br i1 %243, label %244, label %248, !dbg !3577

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3577
  %246 = load i64, i64* %10, align 8, !dbg !3577
  %247 = mul i64 %245, %246, !dbg !3577
  store i64 %247, i64* %13, align 8, !dbg !3577
  br label %252, !dbg !3577

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3577
  %250 = load i64, i64* %10, align 8, !dbg !3577
  %251 = mul i64 %249, %250, !dbg !3577
  store i64 %251, i64* %13, align 8, !dbg !3577
  br label %252, !dbg !3577

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3577
  %254 = icmp ne i32 %253, 0, !dbg !3577
  br i1 %254, label %255, label %256, !dbg !3578

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3579
  unreachable, !dbg !3579

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3580
  %258 = load i64, i64* %13, align 8, !dbg !3581
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3582
  store i8* %259, i8** %6, align 8, !dbg !3583
  %260 = load i64, i64* %12, align 8, !dbg !3584
  %261 = load i64*, i64** %7, align 8, !dbg !3585
  store i64 %260, i64* %261, align 8, !dbg !3586
  %262 = load i8*, i8** %6, align 8, !dbg !3587
  ret i8* %262, !dbg !3588
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3589 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3590, metadata !DIExpression()), !dbg !3591
  %3 = load i64, i64* %2, align 8, !dbg !3592
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3593
  ret i8* %4, !dbg !3594
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3595 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3598, metadata !DIExpression()), !dbg !3599
  %5 = load i64, i64* %3, align 8, !dbg !3600
  %6 = load i64, i64* %4, align 8, !dbg !3601
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !3602
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3603
  ret i8* %8, !dbg !3604
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3605 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3606, metadata !DIExpression()), !dbg !3607
  %3 = load i64, i64* %2, align 8, !dbg !3608
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3609
  ret i8* %4, !dbg !3610
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3611 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3614, metadata !DIExpression()), !dbg !3615
  %5 = load i64, i64* %3, align 8, !dbg !3616
  %6 = load i64, i64* %4, align 8, !dbg !3617
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3618
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3619
  ret i8* %8, !dbg !3620
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3621 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3628, metadata !DIExpression()), !dbg !3629
  %5 = load i64, i64* %4, align 8, !dbg !3630
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3631
  %7 = load i8*, i8** %3, align 8, !dbg !3632
  %8 = load i64, i64* %4, align 8, !dbg !3633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3634
  ret i8* %6, !dbg !3635
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3636 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3641, metadata !DIExpression()), !dbg !3642
  %5 = load i64, i64* %4, align 8, !dbg !3643
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3644
  %7 = load i8*, i8** %3, align 8, !dbg !3645
  %8 = load i64, i64* %4, align 8, !dbg !3646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3647
  ret i8* %6, !dbg !3648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #5 !dbg !3649 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3656, metadata !DIExpression()), !dbg !3657
  %6 = load i64, i64* %4, align 8, !dbg !3658
  %7 = add nsw i64 %6, 1, !dbg !3659
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3660
  store i8* %8, i8** %5, align 8, !dbg !3657
  %9 = load i8*, i8** %5, align 8, !dbg !3661
  %10 = load i64, i64* %4, align 8, !dbg !3662
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3661
  store i8 0, i8* %11, align 1, !dbg !3663
  %12 = load i8*, i8** %5, align 8, !dbg !3664
  %13 = load i8*, i8** %3, align 8, !dbg !3665
  %14 = load i64, i64* %4, align 8, !dbg !3666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3667
  ret i8* %12, !dbg !3668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #5 !dbg !3669 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3670, metadata !DIExpression()), !dbg !3671
  %3 = load i8*, i8** %2, align 8, !dbg !3672
  %4 = load i8*, i8** %2, align 8, !dbg !3673
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3674
  %6 = add i64 %5, 1, !dbg !3675
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3676
  ret i8* %7, !dbg !3677
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3678 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3679, metadata !DIExpression()), !dbg !3682
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3682
  store i32 %2, i32* %1, align 4, !dbg !3682
  %3 = load i32, i32* %1, align 4, !dbg !3682
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.145, i64 0, i64 0)) #19, !dbg !3682
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i64 0, i64 0), i8* noundef %4), !dbg !3682
  %5 = load i32, i32* %1, align 4, !dbg !3682
  %6 = icmp ne i32 %5, 0, !dbg !3682
  br i1 %6, label %7, label %9, !dbg !3682

7:                                                ; preds = %0
  unreachable, !dbg !3682

8:                                                ; No predecessors!
  br label %10, !dbg !3682

9:                                                ; preds = %0
  br label %10, !dbg !3682

10:                                               ; preds = %9, %8
  call void @abort() #18, !dbg !3683
  unreachable, !dbg !3683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #5 !dbg !3684 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3690, metadata !DIExpression()), !dbg !3691
  %3 = load i32, i32* %2, align 4, !dbg !3692
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !3693
  ret i32 %4, !dbg !3694
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #5 !dbg !3695 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3734, metadata !DIExpression()), !dbg !3736
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3737
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !3738
  %9 = icmp ne i64 %8, 0, !dbg !3739
  %10 = zext i1 %9 to i8, !dbg !3736
  store i8 %10, i8* %4, align 1, !dbg !3736
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3740, metadata !DIExpression()), !dbg !3741
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3742
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !3742
  %13 = icmp ne i32 %12, 0, !dbg !3743
  %14 = zext i1 %13 to i8, !dbg !3741
  store i8 %14, i8* %5, align 1, !dbg !3741
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3744, metadata !DIExpression()), !dbg !3745
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3746
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3747
  %17 = icmp ne i32 %16, 0, !dbg !3748
  %18 = zext i1 %17 to i8, !dbg !3745
  store i8 %18, i8* %6, align 1, !dbg !3745
  %19 = load i8, i8* %5, align 1, !dbg !3749
  %20 = trunc i8 %19 to i1, !dbg !3749
  br i1 %20, label %31, label %21, !dbg !3751

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3752
  %23 = trunc i8 %22 to i1, !dbg !3752
  br i1 %23, label %24, label %37, !dbg !3753

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3754
  %26 = trunc i8 %25 to i1, !dbg !3754
  br i1 %26, label %31, label %27, !dbg !3755

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3756
  %29 = load i32, i32* %28, align 4, !dbg !3756
  %30 = icmp ne i32 %29, 9, !dbg !3757
  br i1 %30, label %31, label %37, !dbg !3758

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3759
  %33 = trunc i8 %32 to i1, !dbg !3759
  br i1 %33, label %36, label %34, !dbg !3762

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3763
  store i32 0, i32* %35, align 4, !dbg !3764
  br label %36, !dbg !3763

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3765
  br label %38, !dbg !3765

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3766
  br label %38, !dbg !3766

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3767
  ret i32 %39, !dbg !3767
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #5 !dbg !3768 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3805, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3807, metadata !DIExpression()), !dbg !3808
  store i32 0, i32* %4, align 4, !dbg !3808
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3809, metadata !DIExpression()), !dbg !3810
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3811
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !3812
  store i32 %8, i32* %5, align 4, !dbg !3810
  %9 = load i32, i32* %5, align 4, !dbg !3813
  %10 = icmp slt i32 %9, 0, !dbg !3815
  br i1 %10, label %11, label %14, !dbg !3816

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3817
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3818
  store i32 %13, i32* %2, align 4, !dbg !3819
  br label %40, !dbg !3819

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3820
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !3820
  %17 = icmp ne i32 %16, 0, !dbg !3820
  br i1 %17, label %18, label %23, !dbg !3822

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3823
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !3824
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !3825
  %22 = icmp ne i64 %21, -1, !dbg !3826
  br i1 %22, label %23, label %30, !dbg !3827

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3828
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3829
  %26 = icmp ne i32 %25, 0, !dbg !3829
  br i1 %26, label %27, label %30, !dbg !3830

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3831
  %29 = load i32, i32* %28, align 4, !dbg !3831
  store i32 %29, i32* %4, align 4, !dbg !3832
  br label %30, !dbg !3833

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i32 0, i32* %6, align 4, !dbg !3835
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3836
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3837
  store i32 %32, i32* %6, align 4, !dbg !3838
  %33 = load i32, i32* %4, align 4, !dbg !3839
  %34 = icmp ne i32 %33, 0, !dbg !3841
  br i1 %34, label %35, label %38, !dbg !3842

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3843
  %37 = call i32* @__errno_location() #21, !dbg !3845
  store i32 %36, i32* %37, align 4, !dbg !3846
  store i32 -1, i32* %6, align 4, !dbg !3847
  br label %38, !dbg !3848

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3849
  store i32 %39, i32* %2, align 4, !dbg !3850
  br label %40, !dbg !3850

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3851
  ret i32 %41, !dbg !3851
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #5 !dbg !3852 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3889, metadata !DIExpression()), !dbg !3890
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3891
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3893
  br i1 %5, label %10, label %6, !dbg !3894

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3895
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !3895
  %9 = icmp ne i32 %8, 0, !dbg !3895
  br i1 %9, label %13, label %10, !dbg !3896

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3897
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3898
  store i32 %12, i32* %2, align 4, !dbg !3899
  br label %17, !dbg !3899

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3900
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3901
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3902
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3903
  store i32 %16, i32* %2, align 4, !dbg !3904
  br label %17, !dbg !3904

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3905
  ret i32 %18, !dbg !3905
}

declare i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #5 !dbg !3906 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3909, metadata !DIExpression()), !dbg !3910
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3911
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3913
  %5 = load i32, i32* %4, align 8, !dbg !3913
  %6 = and i32 %5, 256, !dbg !3914
  %7 = icmp ne i32 %6, 0, !dbg !3914
  br i1 %7, label %8, label %11, !dbg !3915

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3916
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3917
  br label %11, !dbg !3917

11:                                               ; preds = %8, %1
  ret void, !dbg !3918
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #5 !dbg !3919 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3961, metadata !DIExpression()), !dbg !3962
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3963
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3965
  %11 = load i8*, i8** %10, align 8, !dbg !3965
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3966
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3967
  %14 = load i8*, i8** %13, align 8, !dbg !3967
  %15 = icmp eq i8* %11, %14, !dbg !3968
  br i1 %15, label %16, label %46, !dbg !3969

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3970
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3971
  %19 = load i8*, i8** %18, align 8, !dbg !3971
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3972
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3973
  %22 = load i8*, i8** %21, align 8, !dbg !3973
  %23 = icmp eq i8* %19, %22, !dbg !3974
  br i1 %23, label %24, label %46, !dbg !3975

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3976
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3977
  %27 = load i8*, i8** %26, align 8, !dbg !3977
  %28 = icmp eq i8* %27, null, !dbg !3978
  br i1 %28, label %29, label %46, !dbg !3979

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3980, metadata !DIExpression()), !dbg !3982
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3983
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !3984
  %32 = load i64, i64* %6, align 8, !dbg !3985
  %33 = load i32, i32* %7, align 4, !dbg !3986
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !3987
  store i64 %34, i64* %8, align 8, !dbg !3982
  %35 = load i64, i64* %8, align 8, !dbg !3988
  %36 = icmp eq i64 %35, -1, !dbg !3990
  br i1 %36, label %37, label %38, !dbg !3991

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3992
  br label %51, !dbg !3992

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3994
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3995
  %41 = load i32, i32* %40, align 8, !dbg !3996
  %42 = and i32 %41, -17, !dbg !3996
  store i32 %42, i32* %40, align 8, !dbg !3996
  %43 = load i64, i64* %8, align 8, !dbg !3997
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3998
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3999
  store i64 %43, i64* %45, align 8, !dbg !4000
  store i32 0, i32* %4, align 4, !dbg !4001
  br label %51, !dbg !4001

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4002
  %48 = load i64, i64* %6, align 8, !dbg !4003
  %49 = load i32, i32* %7, align 4, !dbg !4004
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4005
  store i32 %50, i32* %4, align 4, !dbg !4006
  br label %51, !dbg !4006

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4007
  ret i32 %52, !dbg !4007
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4008 {
  %1 = call i32* @__errno_location() #21, !dbg !4011
  store i32 12, i32* %1, align 4, !dbg !4012
  ret i8* null, !dbg !4013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #5 !dbg !4014 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4015, metadata !DIExpression()), !dbg !4016
  %3 = load i64, i64* %2, align 8, !dbg !4017
  %4 = icmp ule i64 %3, -1, !dbg !4018
  br i1 %4, label %5, label %8, !dbg !4017

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4019
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4020
  br label %10, !dbg !4017

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4021
  br label %10, !dbg !4017

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4017
  ret i8* %11, !dbg !4022
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #5 !dbg !4023 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4024, metadata !DIExpression()), !dbg !4025
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4026, metadata !DIExpression()), !dbg !4027
  %5 = load i64, i64* %4, align 8, !dbg !4028
  %6 = icmp ule i64 %5, -1, !dbg !4029
  br i1 %6, label %7, label %11, !dbg !4028

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4030
  %9 = load i64, i64* %4, align 8, !dbg !4031
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4032
  br label %13, !dbg !4028

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4033
  br label %13, !dbg !4028

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4028
  ret i8* %14, !dbg !4034
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #5 !dbg !4035 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4036, metadata !DIExpression()), !dbg !4037
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4038, metadata !DIExpression()), !dbg !4039
  %6 = load i64, i64* %4, align 8, !dbg !4040
  %7 = icmp ult i64 -1, %6, !dbg !4042
  br i1 %7, label %8, label %14, !dbg !4043

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4044
  %10 = icmp ne i64 %9, 0, !dbg !4047
  br i1 %10, label %11, label %13, !dbg !4048

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4049
  store i8* %12, i8** %3, align 8, !dbg !4050
  br label %27, !dbg !4050

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4051
  br label %14, !dbg !4052

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4053
  %16 = icmp ult i64 -1, %15, !dbg !4055
  br i1 %16, label %17, label %23, !dbg !4056

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4057
  %19 = icmp ne i64 %18, 0, !dbg !4060
  br i1 %19, label %20, label %22, !dbg !4061

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4062
  store i8* %21, i8** %3, align 8, !dbg !4063
  br label %27, !dbg !4063

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4064
  br label %23, !dbg !4065

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4066
  %25 = load i64, i64* %5, align 8, !dbg !4067
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4068
  store i8* %26, i8** %3, align 8, !dbg !4069
  br label %27, !dbg !4069

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4070
  ret i8* %28, !dbg !4070
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #5 !dbg !4071 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4074, metadata !DIExpression()), !dbg !4075
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4076, metadata !DIExpression()), !dbg !4077
  %7 = load i64, i64* %5, align 8, !dbg !4078
  %8 = icmp ule i64 %7, -1, !dbg !4079
  br i1 %8, label %9, label %17, !dbg !4080

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4081
  %11 = icmp ule i64 %10, -1, !dbg !4082
  br i1 %11, label %12, label %17, !dbg !4078

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4083
  %14 = load i64, i64* %5, align 8, !dbg !4084
  %15 = load i64, i64* %6, align 8, !dbg !4085
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4086
  br label %19, !dbg !4078

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4087
  br label %19, !dbg !4078

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4078
  ret i8* %20, !dbg !4088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #5 !dbg !4089 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4094, metadata !DIExpression()), !dbg !4095
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4096, metadata !DIExpression()), !dbg !4097
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4098, metadata !DIExpression()), !dbg !4099
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4100, metadata !DIExpression()), !dbg !4101
  %11 = load i8*, i8** %7, align 8, !dbg !4102
  %12 = icmp eq i8* %11, null, !dbg !4104
  br i1 %12, label %13, label %14, !dbg !4105

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4106
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8** %7, align 8, !dbg !4108
  store i64 1, i64* %8, align 8, !dbg !4109
  br label %14, !dbg !4110

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4111
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4113
  br i1 %16, label %17, label %18, !dbg !4114

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4115
  br label %18, !dbg !4116

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4117, metadata !DIExpression()), !dbg !4118
  %19 = load i32*, i32** %6, align 8, !dbg !4119
  %20 = load i8*, i8** %7, align 8, !dbg !4120
  %21 = load i64, i64* %8, align 8, !dbg !4121
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4122
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4123
  store i64 %23, i64* %10, align 8, !dbg !4118
  %24 = load i64, i64* %10, align 8, !dbg !4124
  %25 = icmp ult i64 %24, -3, !dbg !4126
  br i1 %25, label %26, label %32, !dbg !4127

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4128
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4129
  %29 = icmp ne i32 %28, 0, !dbg !4129
  br i1 %29, label %32, label %30, !dbg !4130

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4131
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4132
  br label %32, !dbg !4132

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4133
  %34 = icmp eq i64 %33, -3, !dbg !4135
  br i1 %34, label %35, label %36, !dbg !4136

35:                                               ; preds = %32
  call void @abort() #18, !dbg !4137
  unreachable, !dbg !4137

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4138
  %38 = icmp ule i64 -2, %37, !dbg !4140
  br i1 %38, label %39, label %53, !dbg !4141

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4142
  %41 = icmp ne i64 %40, 0, !dbg !4143
  br i1 %41, label %42, label %53, !dbg !4144

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4145
  br i1 %43, label %53, label %44, !dbg !4146

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4147
  %46 = icmp ne i32* %45, null, !dbg !4150
  br i1 %46, label %47, label %52, !dbg !4151

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4152
  %49 = load i8, i8* %48, align 1, !dbg !4153
  %50 = zext i8 %49 to i32, !dbg !4154
  %51 = load i32*, i32** %6, align 8, !dbg !4155
  store i32 %50, i32* %51, align 4, !dbg !4156
  br label %52, !dbg !4157

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4158
  br label %55, !dbg !4158

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4159
  store i64 %54, i64* %5, align 8, !dbg !4160
  br label %55, !dbg !4160

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4161
  ret i64 %56, !dbg !4161
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #5 !dbg !4162 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4177, metadata !DIExpression()), !dbg !4178
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4179
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4180
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4180
  ret void, !dbg !4181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !4182 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4187, metadata !DIExpression()), !dbg !4188
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4189, metadata !DIExpression()), !dbg !4190
  %7 = load i8*, i8** %4, align 8, !dbg !4191
  %8 = load i8*, i8** %5, align 8, !dbg !4192
  %9 = load i64, i64* %6, align 8, !dbg !4193
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4194
  %11 = icmp ne i32 %10, 0, !dbg !4195
  %12 = xor i1 %11, true, !dbg !4195
  ret i1 %12, !dbg !4196
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #5 !dbg !4197 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4199, metadata !DIExpression()), !dbg !4200
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4201, metadata !DIExpression()), !dbg !4202
  %5 = load i8*, i8** %3, align 8, !dbg !4203
  %6 = load i64, i64* %4, align 8, !dbg !4204
  %7 = icmp ne i64 %6, 0, !dbg !4204
  br i1 %7, label %8, label %10, !dbg !4204

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4205
  br label %11, !dbg !4204

10:                                               ; preds = %2
  br label %11, !dbg !4204

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4204
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4206
  ret i8* %13, !dbg !4207
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #5 !dbg !4208 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4209, metadata !DIExpression()), !dbg !4210
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4211, metadata !DIExpression()), !dbg !4212
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4215, metadata !DIExpression()), !dbg !4216
  %9 = load i64, i64* %7, align 8, !dbg !4217
  %10 = icmp ult i64 %9, 0, !dbg !4217
  br i1 %10, label %11, label %60, !dbg !4217

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4217
  %13 = icmp ult i64 %12, 0, !dbg !4217
  br i1 %13, label %14, label %37, !dbg !4217

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4217

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4217
  %17 = load i64, i64* %7, align 8, !dbg !4217
  %18 = udiv i64 -1, %17, !dbg !4217
  %19 = icmp ult i64 %16, %18, !dbg !4217
  br i1 %19, label %92, label %96, !dbg !4217

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4217

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4217
  %23 = icmp ult i64 %22, 1, !dbg !4217
  br i1 %23, label %27, label %28, !dbg !4217

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4217
  %26 = icmp ult i64 0, %25, !dbg !4217
  br i1 %26, label %27, label %28, !dbg !4217

27:                                               ; preds = %24, %21
  br label %32, !dbg !4217

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4217
  %30 = sub i64 0, %29, !dbg !4217
  %31 = udiv i64 -1, %30, !dbg !4217
  br label %32, !dbg !4217

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4217
  %34 = load i64, i64* %6, align 8, !dbg !4217
  %35 = sub i64 -1, %34, !dbg !4217
  %36 = icmp ule i64 %33, %35, !dbg !4217
  br i1 %36, label %92, label %96, !dbg !4217

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4217

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4217

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4217

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4217
  %42 = icmp eq i64 %41, -1, !dbg !4217
  br i1 %42, label %43, label %55, !dbg !4217

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4217

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4217
  %46 = add i64 %45, 0, !dbg !4217
  %47 = icmp ult i64 0, %46, !dbg !4217
  br i1 %47, label %92, label %96, !dbg !4217

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4217
  %50 = icmp ult i64 0, %49, !dbg !4217
  br i1 %50, label %51, label %96, !dbg !4217

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4217
  %53 = sub i64 %52, 1, !dbg !4217
  %54 = icmp ult i64 -1, %53, !dbg !4217
  br i1 %54, label %92, label %96, !dbg !4217

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4217
  %57 = udiv i64 0, %56, !dbg !4217
  %58 = load i64, i64* %6, align 8, !dbg !4217
  %59 = icmp ult i64 %57, %58, !dbg !4217
  br i1 %59, label %92, label %96, !dbg !4217

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4217
  %62 = icmp eq i64 %61, 0, !dbg !4217
  br i1 %62, label %63, label %64, !dbg !4217

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4217

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4217
  %66 = icmp ult i64 %65, 0, !dbg !4217
  br i1 %66, label %67, label %87, !dbg !4217

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4217

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4217

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4217

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4217
  %72 = icmp eq i64 %71, -1, !dbg !4217
  br i1 %72, label %73, label %82, !dbg !4217

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4217

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4217
  %76 = add i64 %75, 0, !dbg !4217
  %77 = icmp ult i64 0, %76, !dbg !4217
  br i1 %77, label %92, label %96, !dbg !4217

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4217
  %80 = sub i64 %79, 1, !dbg !4217
  %81 = icmp ult i64 -1, %80, !dbg !4217
  br i1 %81, label %92, label %96, !dbg !4217

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4217
  %84 = udiv i64 0, %83, !dbg !4217
  %85 = load i64, i64* %7, align 8, !dbg !4217
  %86 = icmp ult i64 %84, %85, !dbg !4217
  br i1 %86, label %92, label %96, !dbg !4217

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4217
  %89 = udiv i64 -1, %88, !dbg !4217
  %90 = load i64, i64* %6, align 8, !dbg !4217
  %91 = icmp ult i64 %89, %90, !dbg !4217
  br i1 %91, label %92, label %96, !dbg !4217

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4217
  %94 = load i64, i64* %7, align 8, !dbg !4217
  %95 = mul i64 %93, %94, !dbg !4217
  store i64 %95, i64* %8, align 8, !dbg !4217
  br label %100, !dbg !4217

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4217
  %98 = load i64, i64* %7, align 8, !dbg !4217
  %99 = mul i64 %97, %98, !dbg !4217
  store i64 %99, i64* %8, align 8, !dbg !4217
  br label %100, !dbg !4217

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4217
  %102 = icmp ne i32 %101, 0, !dbg !4217
  br i1 %102, label %103, label %105, !dbg !4219

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4220
  store i32 12, i32* %104, align 4, !dbg !4222
  store i8* null, i8** %4, align 8, !dbg !4223
  br label %109, !dbg !4223

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4224
  %107 = load i64, i64* %8, align 8, !dbg !4225
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4226
  store i8* %108, i8** %4, align 8, !dbg !4227
  br label %109, !dbg !4227

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4228
  ret i8* %110, !dbg !4228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #5 !dbg !4229 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4232, metadata !DIExpression()), !dbg !4236
  %5 = load i32, i32* %3, align 4, !dbg !4237
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4239
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4240
  %8 = icmp ne i32 %7, 0, !dbg !4240
  br i1 %8, label %9, label %10, !dbg !4241

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4242
  br label %18, !dbg !4242

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4243
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0)), !dbg !4245
  br i1 %12, label %17, label %13, !dbg !4246

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4247
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.179, i64 0, i64 0)), !dbg !4248
  br i1 %15, label %17, label %16, !dbg !4249

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4250
  br label %18, !dbg !4250

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4251
  br label %18, !dbg !4251

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4252
  ret i1 %19, !dbg !4252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #5 !dbg !4253 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4256, metadata !DIExpression()), !dbg !4257
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4258, metadata !DIExpression()), !dbg !4259
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4260, metadata !DIExpression()), !dbg !4261
  %7 = load i32, i32* %4, align 4, !dbg !4262
  %8 = load i8*, i8** %5, align 8, !dbg !4263
  %9 = load i64, i64* %6, align 8, !dbg !4264
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4265
  ret i32 %10, !dbg !4266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #5 !dbg !4267 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4270, metadata !DIExpression()), !dbg !4271
  %3 = load i32, i32* %2, align 4, !dbg !4272
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4273
  ret i8* %4, !dbg !4274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #5 !dbg !4275 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4278, metadata !DIExpression()), !dbg !4279
  %4 = load i32, i32* %2, align 4, !dbg !4280
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !4281
  store i8* %5, i8** %3, align 8, !dbg !4279
  %6 = load i8*, i8** %3, align 8, !dbg !4282
  ret i8* %6, !dbg !4283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #5 !dbg !4284 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4291, metadata !DIExpression()), !dbg !4292
  %10 = load i32, i32* %5, align 4, !dbg !4293
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4294
  store i8* %11, i8** %8, align 8, !dbg !4292
  %12 = load i8*, i8** %8, align 8, !dbg !4295
  %13 = icmp eq i8* %12, null, !dbg !4297
  br i1 %13, label %14, label %21, !dbg !4298

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4299
  %16 = icmp ugt i64 %15, 0, !dbg !4302
  br i1 %16, label %17, label %20, !dbg !4303

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4304
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4304
  store i8 0, i8* %19, align 1, !dbg !4305
  br label %20, !dbg !4304

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4306
  br label %45, !dbg !4306

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4307, metadata !DIExpression()), !dbg !4309
  %22 = load i8*, i8** %8, align 8, !dbg !4310
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4311
  store i64 %23, i64* %9, align 8, !dbg !4309
  %24 = load i64, i64* %9, align 8, !dbg !4312
  %25 = load i64, i64* %7, align 8, !dbg !4314
  %26 = icmp ult i64 %24, %25, !dbg !4315
  br i1 %26, label %27, label %32, !dbg !4316

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4317
  %29 = load i8*, i8** %8, align 8, !dbg !4319
  %30 = load i64, i64* %9, align 8, !dbg !4320
  %31 = add i64 %30, 1, !dbg !4321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4322
  store i32 0, i32* %4, align 4, !dbg !4323
  br label %45, !dbg !4323

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4324
  %34 = icmp ugt i64 %33, 0, !dbg !4327
  br i1 %34, label %35, label %44, !dbg !4328

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4329
  %37 = load i8*, i8** %8, align 8, !dbg !4331
  %38 = load i64, i64* %7, align 8, !dbg !4332
  %39 = sub i64 %38, 1, !dbg !4333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4334
  %40 = load i8*, i8** %6, align 8, !dbg !4335
  %41 = load i64, i64* %7, align 8, !dbg !4336
  %42 = sub i64 %41, 1, !dbg !4337
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4335
  store i8 0, i8* %43, align 1, !dbg !4338
  br label %44, !dbg !4339

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4340
  br label %45, !dbg !4340

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4341
  ret i32 %46, !dbg !4341
}

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { allocsize(1) }
attributes #25 = { allocsize(0) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(0,1) }

!llvm.dbg.cu = !{!9, !40, !214, !45, !53, !189, !216, !87, !97, !104, !218, !220, !181, !226, !246, !248, !250, !252, !254, !256, !258, !195, !260, !262, !264, !266, !269, !271, !273}
!llvm.ident = !{!275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275, !275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !31, globals: !36, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/echo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35cdcf3349b867ec9786bdb5dc592ba7")
!11 = !{!12, !16}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 33, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !13, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!19 = !DIEnumerator(name: "_ISupper", value: 256)
!20 = !DIEnumerator(name: "_ISlower", value: 512)
!21 = !DIEnumerator(name: "_ISalpha", value: 1024)
!22 = !DIEnumerator(name: "_ISdigit", value: 2048)
!23 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!24 = !DIEnumerator(name: "_ISspace", value: 8192)
!25 = !DIEnumerator(name: "_ISprint", value: 16384)
!26 = !DIEnumerator(name: "_ISgraph", value: 32768)
!27 = !DIEnumerator(name: "_ISblank", value: 1)
!28 = !DIEnumerator(name: "_IScntrl", value: 2)
!29 = !DIEnumerator(name: "_ISpunct", value: 4)
!30 = !DIEnumerator(name: "_ISalnum", value: 8)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
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
!55 = !{!33}
!56 = !{!57, !76, !51, !78, !80}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "old_file_name", scope: !59, file: !54, line: 304, type: !6, isLocal: true, isDefinition: true)
!59 = distinct !DISubprogram(name: "verror_at_line", scope: !54, file: !54, line: 298, type: !60, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !34, !34, !6, !13, !6, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 52, baseType: !64)
!63 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !65, line: 32, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !67, baseType: !68)
!67 = !DIFile(filename: "lib/error.c", directory: "/src")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !70)
!69 = !DINamespace(name: "std", scope: null)
!70 = !{!71, !72, !73, !74, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !68, file: !67, baseType: !33, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !68, file: !67, baseType: !33, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !68, file: !67, baseType: !33, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !68, file: !67, baseType: !34, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !68, file: !67, baseType: !34, size: 32, offset: 224)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "old_line_number", scope: !59, file: !54, line: 305, type: !13, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "error_message_count", scope: !53, file: !54, line: 69, type: !13, isLocal: false, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !53, file: !54, line: 295, type: !34, isLocal: false, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "program_name", scope: !87, file: !88, line: 31, type: !6, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !89, globals: !90, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!89 = !{!32}
!90 = !{!85}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "utf07FF", scope: !93, file: !94, line: 46, type: !99, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "proper_name_lite", scope: !94, file: !94, line: 38, type: !95, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !37)
!94 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!95 = !DISubroutineType(types: !96)
!96 = !{!6, !6, !6}
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !98, splitDebugInlining: false, nameTableKind: None)
!98 = !{!91}
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 2)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !104, file: !105, line: 76, type: !175, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !126, globals: !130, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!106 = !{!107, !121, !16}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !108, line: 42, baseType: !13, size: 32, elements: !109)
!108 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!110 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!111 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!112 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!113 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!114 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!115 = !DIEnumerator(name: "c_quoting_style", value: 5)
!116 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!117 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!118 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!119 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!120 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !108, line: 254, baseType: !13, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!124 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!125 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!126 = !{!34, !35, !127}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !{!102, !131, !137, !149, !151, !156, !164, !171, !173}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !104, file: !105, line: 92, type: !133, isLocal: false, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 320, elements: !135)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!135 = !{!136}
!136 = !DISubrange(count: 10)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !104, file: !105, line: 1040, type: !139, isLocal: false, isDefinition: true)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !105, line: 56, size: 448, elements: !140)
!140 = !{!141, !142, !143, !147, !148}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !139, file: !105, line: 59, baseType: !107, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !105, line: 62, baseType: !34, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !139, file: !105, line: 66, baseType: !144, size: 256, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !139, file: !105, line: 69, baseType: !6, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !139, file: !105, line: 72, baseType: !6, size: 64, offset: 384)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !104, file: !105, line: 107, type: !139, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "slot0", scope: !104, file: !105, line: 831, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 256)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "quote", scope: !158, file: !105, line: 228, type: !161, isLocal: true, isDefinition: true)
!158 = distinct !DISubprogram(name: "gettext_quote", scope: !105, file: !105, line: 197, type: !159, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !37)
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !6, !107}
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !162)
!162 = !{!101, !163}
!163 = !DISubrange(count: 4)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "slotvec", scope: !104, file: !105, line: 834, type: !166, isLocal: true, isDefinition: true)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !105, line: 823, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !105, line: 825, baseType: !127, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !105, line: 826, baseType: !32, size: 64, offset: 64)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "nslots", scope: !104, file: !105, line: 832, type: !34, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slotvec0", scope: !104, file: !105, line: 833, type: !167, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 704, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!177 = !{!178}
!178 = !DISubrange(count: 11)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !181, file: !182, line: 26, type: !184, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !183, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!183 = !{!179}
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 47)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "exit_failure", scope: !189, file: !190, line: 24, type: !192, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !191, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!191 = !{!187}
!192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "internal_state", scope: !195, file: !196, line: 97, type: !200, isLocal: true, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !197, globals: !199, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!197 = !{!33, !127, !198}
!198 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!199 = !{!193}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !201, line: 6, baseType: !202)
!201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !203, line: 21, baseType: !204)
!203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 13, size: 64, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !204, file: !203, line: 15, baseType: !34, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !204, file: !203, line: 20, baseType: !208, size: 32, offset: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !203, line: 16, size: 32, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !208, file: !203, line: 18, baseType: !13, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !208, file: !203, line: 19, baseType: !212, size: 32)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !213)
!213 = !{!163}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 40, baseType: !13, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !245, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!228 = !{!229, !236}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !230, file: !227, line: 188, baseType: !13, size: 32, elements: !234)
!230 = distinct !DISubprogram(name: "x2nrealloc", scope: !227, file: !227, line: 176, type: !231, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!231 = !DISubroutineType(types: !232)
!232 = !{!33, !33, !233, !127}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!234 = !{!235}
!235 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !237, file: !227, line: 228, baseType: !13, size: 32, elements: !234)
!237 = distinct !DISubprogram(name: "xpalloc", scope: !227, file: !227, line: 223, type: !238, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!238 = !DISubroutineType(types: !239)
!239 = !{!33, !33, !240, !241, !243, !241}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !242, line: 130, baseType: !243)
!242 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !128, line: 35, baseType: !244)
!244 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!245 = !{!32, !33, !50, !244, !129}
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !268, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!268 = !{!50, !129, !33}
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!275 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!276 = !{i32 7, !"Dwarf Version", i32 5}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 1, !"branch-target-enforcement", i32 0}
!280 = !{i32 1, !"sign-return-address", i32 0}
!281 = !{i32 1, !"sign-return-address-all", i32 0}
!282 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"PIC Level", i32 2}
!284 = !{i32 7, !"PIE Level", i32 2}
!285 = !{i32 7, !"uwtable", i32 1}
!286 = !{i32 7, !"frame-pointer", i32 1}
!287 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 37, type: !288, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !37)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !34}
!290 = !DILocalVariable(name: "status", arg: 1, scope: !287, file: !10, line: 37, type: !34)
!291 = !DILocation(line: 37, column: 12, scope: !287)
!292 = !DILocation(line: 41, column: 3, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !10, line: 41, column: 3)
!294 = distinct !DILexicalBlock(scope: !287, file: !10, line: 41, column: 3)
!295 = !DILocation(line: 41, column: 3, scope: !294)
!296 = !DILocation(line: 43, column: 11, scope: !287)
!297 = !DILocation(line: 46, column: 5, scope: !287)
!298 = !DILocation(line: 46, column: 19, scope: !287)
!299 = !DILocation(line: 43, column: 3, scope: !287)
!300 = !DILocation(line: 47, column: 3, scope: !287)
!301 = !DILocation(line: 51, column: 3, scope: !287)
!302 = !DILocation(line: 54, column: 3, scope: !287)
!303 = !DILocation(line: 61, column: 3, scope: !287)
!304 = !DILocation(line: 68, column: 3, scope: !287)
!305 = !DILocation(line: 69, column: 3, scope: !287)
!306 = !DILocation(line: 70, column: 3, scope: !287)
!307 = !DILocation(line: 75, column: 3, scope: !287)
!308 = !DILocation(line: 87, column: 3, scope: !287)
!309 = !DILocation(line: 91, column: 11, scope: !287)
!310 = !DILocation(line: 91, column: 3, scope: !287)
!311 = !DILocation(line: 92, column: 3, scope: !287)
!312 = !DILocation(line: 96, column: 3, scope: !287)
!313 = !DILocation(line: 97, column: 9, scope: !287)
!314 = !DILocation(line: 97, column: 3, scope: !287)
!315 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!316 = !DILocation(line: 573, column: 34, scope: !2)
!317 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!318 = !DILocation(line: 573, column: 55, scope: !2)
!319 = !DILocation(line: 581, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!321 = !DILocation(line: 581, column: 19, scope: !320)
!322 = !DILocation(line: 581, column: 7, scope: !2)
!323 = !DILocalVariable(name: "term", scope: !324, file: !3, line: 585, type: !6)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 582, column: 5)
!325 = !DILocation(line: 585, column: 19, scope: !324)
!326 = !DILocation(line: 585, column: 26, scope: !324)
!327 = !DILocation(line: 586, column: 23, scope: !324)
!328 = !DILocation(line: 586, column: 28, scope: !324)
!329 = !DILocation(line: 586, column: 33, scope: !324)
!330 = !DILocation(line: 586, column: 32, scope: !324)
!331 = !DILocation(line: 586, column: 38, scope: !324)
!332 = !DILocation(line: 586, column: 48, scope: !324)
!333 = !DILocation(line: 586, column: 41, scope: !324)
!334 = !DILocation(line: 586, column: 19, scope: !324)
!335 = !DILocation(line: 587, column: 5, scope: !324)
!336 = !DILocation(line: 588, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!338 = !DILocation(line: 588, column: 7, scope: !2)
!339 = !DILocation(line: 590, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 589, column: 5)
!341 = !DILocation(line: 591, column: 7, scope: !340)
!342 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !50)
!343 = !DILocation(line: 594, column: 8, scope: !2)
!344 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!345 = !DILocation(line: 595, column: 15, scope: !2)
!346 = !DILocation(line: 595, column: 28, scope: !2)
!347 = !DILocation(line: 595, column: 45, scope: !2)
!348 = !DILocation(line: 595, column: 37, scope: !2)
!349 = !DILocation(line: 595, column: 35, scope: !2)
!350 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!351 = !DILocation(line: 596, column: 15, scope: !2)
!352 = !DILocation(line: 596, column: 37, scope: !2)
!353 = !DILocation(line: 596, column: 29, scope: !2)
!354 = !DILocation(line: 597, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!356 = !DILocation(line: 597, column: 7, scope: !2)
!357 = !DILocation(line: 599, column: 21, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !3, line: 598, column: 5)
!359 = !DILocation(line: 599, column: 19, scope: !358)
!360 = !DILocation(line: 602, column: 20, scope: !358)
!361 = !DILocation(line: 603, column: 5, scope: !358)
!362 = !DILocation(line: 604, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !355, file: !3, line: 604, column: 12)
!364 = !DILocation(line: 604, column: 27, scope: !363)
!365 = !DILocation(line: 604, column: 24, scope: !363)
!366 = !DILocation(line: 604, column: 12, scope: !355)
!367 = !DILocalVariable(name: "s", scope: !368, file: !3, line: 608, type: !6)
!368 = distinct !DILexicalBlock(scope: !363, file: !3, line: 605, column: 5)
!369 = !DILocation(line: 608, column: 19, scope: !368)
!370 = !DILocation(line: 608, column: 23, scope: !368)
!371 = !DILocalVariable(name: "spaces", scope: !368, file: !3, line: 609, type: !127)
!372 = !DILocation(line: 609, column: 14, scope: !368)
!373 = !DILocation(line: 610, column: 7, scope: !368)
!374 = !DILocation(line: 610, column: 14, scope: !368)
!375 = !DILocation(line: 610, column: 18, scope: !368)
!376 = !DILocation(line: 610, column: 16, scope: !368)
!377 = !DILocation(line: 610, column: 30, scope: !368)
!378 = !DILocation(line: 610, column: 33, scope: !368)
!379 = !DILocation(line: 610, column: 40, scope: !368)
!380 = !DILocation(line: 0, scope: !368)
!381 = !DILocation(line: 611, column: 21, scope: !368)
!382 = !DILocation(line: 611, column: 20, scope: !368)
!383 = !DILocation(line: 611, column: 19, scope: !368)
!384 = !DILocation(line: 611, column: 16, scope: !368)
!385 = distinct !{!385, !373, !381, !386}
!386 = !{!"llvm.loop.mustprogress"}
!387 = !DILocation(line: 612, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !368, file: !3, line: 612, column: 11)
!389 = !DILocation(line: 612, column: 18, scope: !388)
!390 = !DILocation(line: 612, column: 11, scope: !368)
!391 = !DILocation(line: 615, column: 25, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 613, column: 9)
!393 = !DILocation(line: 615, column: 23, scope: !392)
!394 = !DILocation(line: 616, column: 24, scope: !392)
!395 = !DILocation(line: 617, column: 9, scope: !392)
!396 = !DILocation(line: 618, column: 5, scope: !368)
!397 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !127)
!398 = !DILocation(line: 620, column: 10, scope: !2)
!399 = !DILocation(line: 620, column: 32, scope: !2)
!400 = !DILocation(line: 620, column: 23, scope: !2)
!401 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!402 = !DILocation(line: 625, column: 15, scope: !2)
!403 = !DILocation(line: 625, column: 27, scope: !2)
!404 = !DILocation(line: 625, column: 41, scope: !2)
!405 = !DILocation(line: 625, column: 39, scope: !2)
!406 = !DILocation(line: 626, column: 3, scope: !2)
!407 = !DILocation(line: 626, column: 11, scope: !2)
!408 = !DILocation(line: 626, column: 10, scope: !2)
!409 = !DILocation(line: 626, column: 21, scope: !2)
!410 = !DILocation(line: 626, column: 25, scope: !2)
!411 = !DILocation(line: 626, column: 24, scope: !2)
!412 = !DILocation(line: 626, column: 35, scope: !2)
!413 = !DILocation(line: 0, scope: !2)
!414 = !DILocation(line: 628, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 628, column: 11)
!416 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!417 = !DILocation(line: 628, column: 11, scope: !415)
!418 = !DILocation(line: 628, column: 22, scope: !415)
!419 = !DILocation(line: 628, column: 29, scope: !415)
!420 = !DILocation(line: 628, column: 34, scope: !415)
!421 = !DILocation(line: 628, column: 44, scope: !415)
!422 = !DILocation(line: 628, column: 32, scope: !415)
!423 = !DILocation(line: 628, column: 49, scope: !415)
!424 = !DILocation(line: 628, column: 11, scope: !416)
!425 = !DILocation(line: 629, column: 22, scope: !415)
!426 = !DILocation(line: 629, column: 9, scope: !415)
!427 = !DILocation(line: 630, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !416, file: !3, line: 630, column: 11)
!429 = !DILocation(line: 630, column: 11, scope: !416)
!430 = !DILocation(line: 632, column: 16, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 632, column: 15)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 631, column: 9)
!433 = !DILocation(line: 632, column: 15, scope: !431)
!434 = !DILocation(line: 632, column: 26, scope: !431)
!435 = !DILocation(line: 632, column: 34, scope: !431)
!436 = !DILocation(line: 632, column: 37, scope: !431)
!437 = !DILocation(line: 632, column: 15, scope: !432)
!438 = !DILocation(line: 633, column: 13, scope: !431)
!439 = !DILocation(line: 636, column: 16, scope: !440)
!440 = distinct !DILexicalBlock(scope: !432, file: !3, line: 636, column: 15)
!441 = !DILocation(line: 636, column: 29, scope: !440)
!442 = !DILocation(line: 636, column: 34, scope: !440)
!443 = !DILocation(line: 636, column: 44, scope: !440)
!444 = !DILocation(line: 636, column: 32, scope: !440)
!445 = !DILocation(line: 636, column: 49, scope: !440)
!446 = !DILocation(line: 636, column: 15, scope: !432)
!447 = !DILocation(line: 637, column: 13, scope: !440)
!448 = !DILocation(line: 638, column: 9, scope: !432)
!449 = !DILocation(line: 640, column: 16, scope: !416)
!450 = distinct !{!450, !406, !451, !386}
!451 = !DILocation(line: 641, column: 5, scope: !2)
!452 = !DILocation(line: 644, column: 3, scope: !2)
!453 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!454 = !DILocation(line: 648, column: 15, scope: !2)
!455 = !DILocation(line: 648, column: 38, scope: !2)
!456 = !DILocation(line: 648, column: 31, scope: !2)
!457 = !DILocation(line: 649, column: 38, scope: !2)
!458 = !DILocation(line: 649, column: 31, scope: !2)
!459 = !DILocation(line: 650, column: 38, scope: !2)
!460 = !DILocation(line: 650, column: 31, scope: !2)
!461 = !DILocation(line: 651, column: 38, scope: !2)
!462 = !DILocation(line: 651, column: 31, scope: !2)
!463 = !DILocation(line: 652, column: 38, scope: !2)
!464 = !DILocation(line: 652, column: 31, scope: !2)
!465 = !DILocation(line: 653, column: 38, scope: !2)
!466 = !DILocation(line: 653, column: 31, scope: !2)
!467 = !DILocation(line: 654, column: 38, scope: !2)
!468 = !DILocation(line: 654, column: 31, scope: !2)
!469 = !DILocation(line: 655, column: 38, scope: !2)
!470 = !DILocation(line: 655, column: 31, scope: !2)
!471 = !DILocation(line: 656, column: 38, scope: !2)
!472 = !DILocation(line: 656, column: 31, scope: !2)
!473 = !DILocation(line: 657, column: 38, scope: !2)
!474 = !DILocation(line: 657, column: 31, scope: !2)
!475 = !DILocation(line: 658, column: 31, scope: !2)
!476 = !DILocation(line: 663, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!478 = !DILocation(line: 664, column: 7, scope: !477)
!479 = !DILocation(line: 664, column: 10, scope: !477)
!480 = !DILocation(line: 663, column: 7, scope: !2)
!481 = !DILocation(line: 670, column: 15, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 665, column: 5)
!483 = !DILocation(line: 670, column: 28, scope: !482)
!484 = !DILocation(line: 670, column: 47, scope: !482)
!485 = !DILocation(line: 670, column: 41, scope: !482)
!486 = !DILocation(line: 670, column: 59, scope: !482)
!487 = !DILocation(line: 669, column: 7, scope: !482)
!488 = !DILocation(line: 671, column: 5, scope: !482)
!489 = !DILocation(line: 676, column: 48, scope: !490)
!490 = distinct !DILexicalBlock(scope: !477, file: !3, line: 673, column: 5)
!491 = !DILocation(line: 677, column: 21, scope: !490)
!492 = !DILocation(line: 677, column: 15, scope: !490)
!493 = !DILocation(line: 677, column: 33, scope: !490)
!494 = !DILocation(line: 676, column: 7, scope: !490)
!495 = !DILocation(line: 679, column: 3, scope: !2)
!496 = !DILocation(line: 683, column: 3, scope: !2)
!497 = !DILocation(line: 686, column: 3, scope: !2)
!498 = !DILocation(line: 688, column: 3, scope: !2)
!499 = !DILocation(line: 691, column: 3, scope: !2)
!500 = !DILocation(line: 695, column: 3, scope: !2)
!501 = !DILocation(line: 696, column: 1, scope: !2)
!502 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !503, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !6}
!505 = !DILocalVariable(name: "program", arg: 1, scope: !502, file: !3, line: 836, type: !6)
!506 = !DILocation(line: 836, column: 34, scope: !502)
!507 = !DILocalVariable(name: "infomap", scope: !502, file: !3, line: 838, type: !508)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 896, elements: !514)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !502, file: !3, line: 838, size: 128, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !510, file: !3, line: 838, baseType: !6, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!514 = !{!515}
!515 = !DISubrange(count: 7)
!516 = !DILocation(line: 838, column: 67, scope: !502)
!517 = !DILocalVariable(name: "node", scope: !502, file: !3, line: 848, type: !6)
!518 = !DILocation(line: 848, column: 15, scope: !502)
!519 = !DILocation(line: 848, column: 22, scope: !502)
!520 = !DILocalVariable(name: "map_prog", scope: !502, file: !3, line: 849, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!522 = !DILocation(line: 849, column: 25, scope: !502)
!523 = !DILocation(line: 849, column: 36, scope: !502)
!524 = !DILocation(line: 851, column: 3, scope: !502)
!525 = !DILocation(line: 851, column: 10, scope: !502)
!526 = !DILocation(line: 851, column: 20, scope: !502)
!527 = !DILocation(line: 851, column: 28, scope: !502)
!528 = !DILocation(line: 851, column: 40, scope: !502)
!529 = !DILocation(line: 851, column: 49, scope: !502)
!530 = !DILocation(line: 851, column: 59, scope: !502)
!531 = !DILocation(line: 851, column: 33, scope: !502)
!532 = !DILocation(line: 851, column: 31, scope: !502)
!533 = !DILocation(line: 0, scope: !502)
!534 = !DILocation(line: 852, column: 13, scope: !502)
!535 = distinct !{!535, !524, !534, !386}
!536 = !DILocation(line: 854, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !502, file: !3, line: 854, column: 7)
!538 = !DILocation(line: 854, column: 17, scope: !537)
!539 = !DILocation(line: 854, column: 7, scope: !502)
!540 = !DILocation(line: 855, column: 12, scope: !537)
!541 = !DILocation(line: 855, column: 22, scope: !537)
!542 = !DILocation(line: 855, column: 10, scope: !537)
!543 = !DILocation(line: 855, column: 5, scope: !537)
!544 = !DILocation(line: 857, column: 3, scope: !502)
!545 = !DILocalVariable(name: "lc_messages", scope: !502, file: !3, line: 861, type: !6)
!546 = !DILocation(line: 861, column: 15, scope: !502)
!547 = !DILocation(line: 861, column: 29, scope: !502)
!548 = !DILocation(line: 862, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !502, file: !3, line: 862, column: 7)
!550 = !DILocation(line: 862, column: 19, scope: !549)
!551 = !DILocation(line: 862, column: 22, scope: !549)
!552 = !DILocation(line: 862, column: 7, scope: !502)
!553 = !DILocation(line: 868, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !3, line: 863, column: 5)
!555 = !DILocation(line: 870, column: 5, scope: !554)
!556 = !DILocalVariable(name: "url_program", scope: !502, file: !3, line: 874, type: !6)
!557 = !DILocation(line: 874, column: 15, scope: !502)
!558 = !DILocation(line: 874, column: 36, scope: !502)
!559 = !DILocation(line: 874, column: 29, scope: !502)
!560 = !DILocation(line: 874, column: 61, scope: !502)
!561 = !DILocation(line: 875, column: 11, scope: !502)
!562 = !DILocation(line: 876, column: 24, scope: !502)
!563 = !DILocation(line: 875, column: 3, scope: !502)
!564 = !DILocation(line: 877, column: 11, scope: !502)
!565 = !DILocation(line: 878, column: 11, scope: !502)
!566 = !DILocation(line: 878, column: 17, scope: !502)
!567 = !DILocation(line: 878, column: 25, scope: !502)
!568 = !DILocation(line: 878, column: 22, scope: !502)
!569 = !DILocation(line: 877, column: 3, scope: !502)
!570 = !DILocation(line: 879, column: 1, scope: !502)
!571 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 121, type: !572, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !37)
!572 = !DISubroutineType(types: !573)
!573 = !{!34, !34, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!575 = !DILocalVariable(name: "argc", arg: 1, scope: !571, file: !10, line: 121, type: !34)
!576 = !DILocation(line: 121, column: 11, scope: !571)
!577 = !DILocalVariable(name: "argv", arg: 2, scope: !571, file: !10, line: 121, type: !574)
!578 = !DILocation(line: 121, column: 24, scope: !571)
!579 = !DILocalVariable(name: "display_return", scope: !571, file: !10, line: 123, type: !50)
!580 = !DILocation(line: 123, column: 8, scope: !571)
!581 = !DILocalVariable(name: "posixly_correct", scope: !571, file: !10, line: 124, type: !50)
!582 = !DILocation(line: 124, column: 8, scope: !571)
!583 = !DILocation(line: 124, column: 28, scope: !571)
!584 = !DILocation(line: 124, column: 27, scope: !571)
!585 = !DILocation(line: 124, column: 26, scope: !571)
!586 = !DILocalVariable(name: "allow_options", scope: !571, file: !10, line: 125, type: !50)
!587 = !DILocation(line: 125, column: 8, scope: !571)
!588 = !DILocation(line: 126, column: 8, scope: !571)
!589 = !DILocation(line: 127, column: 6, scope: !571)
!590 = !DILocation(line: 127, column: 39, scope: !571)
!591 = !DILocation(line: 127, column: 37, scope: !571)
!592 = !DILocation(line: 127, column: 44, scope: !571)
!593 = !DILocation(line: 127, column: 54, scope: !571)
!594 = !DILocation(line: 127, column: 47, scope: !571)
!595 = !DILocation(line: 0, scope: !571)
!596 = !DILocalVariable(name: "do_v9", scope: !571, file: !10, line: 132, type: !50)
!597 = !DILocation(line: 132, column: 8, scope: !571)
!598 = !DILocation(line: 135, column: 21, scope: !571)
!599 = !DILocation(line: 135, column: 3, scope: !571)
!600 = !DILocation(line: 136, column: 3, scope: !571)
!601 = !DILocation(line: 137, column: 3, scope: !571)
!602 = !DILocation(line: 138, column: 3, scope: !571)
!603 = !DILocation(line: 140, column: 3, scope: !571)
!604 = !DILocation(line: 144, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !571, file: !10, line: 144, column: 7)
!606 = !DILocation(line: 144, column: 21, scope: !605)
!607 = !DILocation(line: 144, column: 24, scope: !605)
!608 = !DILocation(line: 144, column: 29, scope: !605)
!609 = !DILocation(line: 144, column: 7, scope: !571)
!610 = !DILocation(line: 146, column: 18, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !10, line: 146, column: 11)
!612 = distinct !DILexicalBlock(scope: !605, file: !10, line: 145, column: 5)
!613 = !DILocation(line: 146, column: 11, scope: !611)
!614 = !DILocation(line: 146, column: 11, scope: !612)
!615 = !DILocation(line: 147, column: 9, scope: !611)
!616 = !DILocation(line: 149, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !10, line: 149, column: 11)
!618 = !DILocation(line: 149, column: 11, scope: !617)
!619 = !DILocation(line: 149, column: 11, scope: !612)
!620 = !DILocation(line: 151, column: 24, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !10, line: 150, column: 9)
!622 = !DILocation(line: 151, column: 60, scope: !621)
!623 = !DILocation(line: 151, column: 69, scope: !621)
!624 = !DILocation(line: 151, column: 11, scope: !621)
!625 = !DILocation(line: 153, column: 11, scope: !621)
!626 = !DILocation(line: 155, column: 5, scope: !612)
!627 = !DILocation(line: 157, column: 3, scope: !571)
!628 = !DILocation(line: 158, column: 3, scope: !571)
!629 = !DILocation(line: 160, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !571, file: !10, line: 160, column: 7)
!631 = !DILocation(line: 160, column: 7, scope: !571)
!632 = !DILocation(line: 161, column: 5, scope: !630)
!633 = !DILocation(line: 161, column: 12, scope: !630)
!634 = !DILocation(line: 161, column: 17, scope: !630)
!635 = !DILocation(line: 161, column: 21, scope: !630)
!636 = !DILocation(line: 161, column: 25, scope: !630)
!637 = !DILocation(line: 161, column: 24, scope: !630)
!638 = !DILocation(line: 161, column: 33, scope: !630)
!639 = !DILocation(line: 0, scope: !630)
!640 = !DILocalVariable(name: "temp", scope: !641, file: !10, line: 163, type: !6)
!641 = distinct !DILexicalBlock(scope: !630, file: !10, line: 162, column: 7)
!642 = !DILocation(line: 163, column: 21, scope: !641)
!643 = !DILocation(line: 163, column: 28, scope: !641)
!644 = !DILocation(line: 163, column: 36, scope: !641)
!645 = !DILocalVariable(name: "i", scope: !641, file: !10, line: 164, type: !127)
!646 = !DILocation(line: 164, column: 16, scope: !641)
!647 = !DILocation(line: 170, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !641, file: !10, line: 170, column: 9)
!649 = !DILocation(line: 170, column: 14, scope: !648)
!650 = !DILocation(line: 170, column: 21, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !10, line: 170, column: 9)
!652 = !DILocation(line: 170, column: 26, scope: !651)
!653 = !DILocation(line: 170, column: 9, scope: !648)
!654 = !DILocation(line: 171, column: 19, scope: !651)
!655 = !DILocation(line: 171, column: 24, scope: !651)
!656 = !DILocation(line: 171, column: 11, scope: !651)
!657 = !DILocation(line: 174, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !651, file: !10, line: 172, column: 13)
!659 = !DILocation(line: 176, column: 15, scope: !658)
!660 = !DILocation(line: 177, column: 13, scope: !658)
!661 = !DILocation(line: 170, column: 31, scope: !651)
!662 = !DILocation(line: 170, column: 9, scope: !651)
!663 = distinct !{!663, !653, !664, !386}
!664 = !DILocation(line: 177, column: 13, scope: !648)
!665 = !DILocation(line: 179, column: 13, scope: !666)
!666 = distinct !DILexicalBlock(scope: !641, file: !10, line: 179, column: 13)
!667 = !DILocation(line: 179, column: 15, scope: !666)
!668 = !DILocation(line: 179, column: 13, scope: !641)
!669 = !DILocation(line: 180, column: 11, scope: !666)
!670 = !DILocation(line: 184, column: 9, scope: !641)
!671 = !DILocation(line: 184, column: 17, scope: !641)
!672 = !DILocation(line: 184, column: 16, scope: !641)
!673 = !DILocation(line: 185, column: 24, scope: !641)
!674 = !DILocation(line: 185, column: 19, scope: !641)
!675 = !DILocation(line: 185, column: 11, scope: !641)
!676 = !DILocation(line: 188, column: 21, scope: !677)
!677 = distinct !DILexicalBlock(scope: !641, file: !10, line: 186, column: 13)
!678 = !DILocation(line: 189, column: 15, scope: !677)
!679 = !DILocation(line: 192, column: 21, scope: !677)
!680 = !DILocation(line: 193, column: 15, scope: !677)
!681 = !DILocation(line: 196, column: 30, scope: !677)
!682 = !DILocation(line: 197, column: 15, scope: !677)
!683 = distinct !{!683, !670, !684, !386}
!684 = !DILocation(line: 198, column: 13, scope: !641)
!685 = !DILocation(line: 200, column: 13, scope: !641)
!686 = !DILocation(line: 201, column: 13, scope: !641)
!687 = distinct !{!687, !632, !688, !386}
!688 = !DILocation(line: 202, column: 7, scope: !630)
!689 = !DILabel(scope: !571, name: "just_echo", file: !10, line: 204)
!690 = !DILocation(line: 204, column: 1, scope: !571)
!691 = !DILocation(line: 206, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !571, file: !10, line: 206, column: 7)
!693 = !DILocation(line: 206, column: 13, scope: !692)
!694 = !DILocation(line: 206, column: 16, scope: !692)
!695 = !DILocation(line: 206, column: 7, scope: !571)
!696 = !DILocation(line: 208, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !692, file: !10, line: 207, column: 5)
!698 = !DILocation(line: 208, column: 14, scope: !697)
!699 = !DILocation(line: 208, column: 19, scope: !697)
!700 = !DILocalVariable(name: "s", scope: !701, file: !10, line: 210, type: !6)
!701 = distinct !DILexicalBlock(scope: !697, file: !10, line: 209, column: 9)
!702 = !DILocation(line: 210, column: 23, scope: !701)
!703 = !DILocation(line: 210, column: 27, scope: !701)
!704 = !DILocalVariable(name: "c", scope: !701, file: !10, line: 211, type: !198)
!705 = !DILocation(line: 211, column: 25, scope: !701)
!706 = !DILocation(line: 213, column: 11, scope: !701)
!707 = !DILocation(line: 213, column: 25, scope: !701)
!708 = !DILocation(line: 213, column: 23, scope: !701)
!709 = !DILocation(line: 213, column: 21, scope: !701)
!710 = !DILocation(line: 215, column: 19, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !10, line: 215, column: 19)
!712 = distinct !DILexicalBlock(scope: !701, file: !10, line: 214, column: 13)
!713 = !DILocation(line: 215, column: 21, scope: !711)
!714 = !DILocation(line: 215, column: 29, scope: !711)
!715 = !DILocation(line: 215, column: 33, scope: !711)
!716 = !DILocation(line: 215, column: 32, scope: !711)
!717 = !DILocation(line: 215, column: 19, scope: !712)
!718 = !DILocation(line: 217, column: 33, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !10, line: 216, column: 17)
!720 = !DILocation(line: 217, column: 31, scope: !719)
!721 = !DILocation(line: 217, column: 29, scope: !719)
!722 = !DILocation(line: 217, column: 27, scope: !719)
!723 = !DILocation(line: 217, column: 19, scope: !719)
!724 = !DILocation(line: 219, column: 33, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !10, line: 218, column: 21)
!726 = !DILocation(line: 219, column: 41, scope: !725)
!727 = !DILocation(line: 220, column: 33, scope: !725)
!728 = !DILocation(line: 220, column: 41, scope: !725)
!729 = !DILocation(line: 221, column: 31, scope: !725)
!730 = !DILocation(line: 222, column: 33, scope: !725)
!731 = !DILocation(line: 222, column: 43, scope: !725)
!732 = !DILocation(line: 223, column: 33, scope: !725)
!733 = !DILocation(line: 223, column: 41, scope: !725)
!734 = !DILocation(line: 224, column: 33, scope: !725)
!735 = !DILocation(line: 224, column: 41, scope: !725)
!736 = !DILocation(line: 225, column: 33, scope: !725)
!737 = !DILocation(line: 225, column: 41, scope: !725)
!738 = !DILocation(line: 226, column: 33, scope: !725)
!739 = !DILocation(line: 226, column: 41, scope: !725)
!740 = !DILocation(line: 227, column: 33, scope: !725)
!741 = !DILocation(line: 227, column: 41, scope: !725)
!742 = !DILocalVariable(name: "ch", scope: !743, file: !10, line: 230, type: !198)
!743 = distinct !DILexicalBlock(scope: !725, file: !10, line: 229, column: 23)
!744 = !DILocation(line: 230, column: 39, scope: !743)
!745 = !DILocation(line: 230, column: 45, scope: !743)
!746 = !DILocation(line: 230, column: 44, scope: !743)
!747 = !DILocation(line: 231, column: 43, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !10, line: 231, column: 29)
!749 = !DILocation(line: 231, column: 31, scope: !748)
!750 = !DILocation(line: 231, column: 29, scope: !743)
!751 = !DILocation(line: 232, column: 27, scope: !748)
!752 = !DILocation(line: 233, column: 26, scope: !743)
!753 = !DILocation(line: 234, column: 39, scope: !743)
!754 = !DILocation(line: 234, column: 29, scope: !743)
!755 = !DILocation(line: 234, column: 27, scope: !743)
!756 = !DILocation(line: 235, column: 31, scope: !743)
!757 = !DILocation(line: 235, column: 30, scope: !743)
!758 = !DILocation(line: 235, column: 28, scope: !743)
!759 = !DILocation(line: 236, column: 41, scope: !760)
!760 = distinct !DILexicalBlock(scope: !743, file: !10, line: 236, column: 29)
!761 = !DILocation(line: 236, column: 29, scope: !760)
!762 = !DILocation(line: 236, column: 29, scope: !743)
!763 = !DILocation(line: 238, column: 30, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !10, line: 237, column: 27)
!765 = !DILocation(line: 239, column: 33, scope: !764)
!766 = !DILocation(line: 239, column: 35, scope: !764)
!767 = !DILocation(line: 239, column: 52, scope: !764)
!768 = !DILocation(line: 239, column: 42, scope: !764)
!769 = !DILocation(line: 239, column: 40, scope: !764)
!770 = !DILocation(line: 239, column: 31, scope: !764)
!771 = !DILocation(line: 240, column: 27, scope: !764)
!772 = !DILocation(line: 242, column: 23, scope: !725)
!773 = !DILocation(line: 244, column: 25, scope: !725)
!774 = !DILocation(line: 245, column: 38, scope: !775)
!775 = distinct !DILexicalBlock(scope: !725, file: !10, line: 245, column: 27)
!776 = !DILocation(line: 245, column: 37, scope: !775)
!777 = !DILocation(line: 245, column: 34, scope: !775)
!778 = !DILocation(line: 245, column: 40, scope: !775)
!779 = !DILocation(line: 245, column: 44, scope: !775)
!780 = !DILocation(line: 245, column: 43, scope: !775)
!781 = !DILocation(line: 245, column: 46, scope: !775)
!782 = !DILocation(line: 245, column: 27, scope: !725)
!783 = !DILocation(line: 246, column: 25, scope: !775)
!784 = !DILocation(line: 247, column: 29, scope: !725)
!785 = !DILocation(line: 247, column: 27, scope: !725)
!786 = !DILocation(line: 247, column: 25, scope: !725)
!787 = !DILocation(line: 247, column: 23, scope: !725)
!788 = !DILocation(line: 251, column: 25, scope: !725)
!789 = !DILocation(line: 252, column: 35, scope: !790)
!790 = distinct !DILexicalBlock(scope: !725, file: !10, line: 252, column: 27)
!791 = !DILocation(line: 252, column: 34, scope: !790)
!792 = !DILocation(line: 252, column: 31, scope: !790)
!793 = !DILocation(line: 252, column: 37, scope: !790)
!794 = !DILocation(line: 252, column: 41, scope: !790)
!795 = !DILocation(line: 252, column: 40, scope: !790)
!796 = !DILocation(line: 252, column: 43, scope: !790)
!797 = !DILocation(line: 252, column: 27, scope: !725)
!798 = !DILocation(line: 253, column: 29, scope: !790)
!799 = !DILocation(line: 253, column: 31, scope: !790)
!800 = !DILocation(line: 253, column: 40, scope: !790)
!801 = !DILocation(line: 253, column: 38, scope: !790)
!802 = !DILocation(line: 253, column: 43, scope: !790)
!803 = !DILocation(line: 253, column: 35, scope: !790)
!804 = !DILocation(line: 253, column: 27, scope: !790)
!805 = !DILocation(line: 253, column: 25, scope: !790)
!806 = !DILocation(line: 254, column: 35, scope: !807)
!807 = distinct !DILexicalBlock(scope: !725, file: !10, line: 254, column: 27)
!808 = !DILocation(line: 254, column: 34, scope: !807)
!809 = !DILocation(line: 254, column: 31, scope: !807)
!810 = !DILocation(line: 254, column: 37, scope: !807)
!811 = !DILocation(line: 254, column: 41, scope: !807)
!812 = !DILocation(line: 254, column: 40, scope: !807)
!813 = !DILocation(line: 254, column: 43, scope: !807)
!814 = !DILocation(line: 254, column: 27, scope: !725)
!815 = !DILocation(line: 255, column: 29, scope: !807)
!816 = !DILocation(line: 255, column: 31, scope: !807)
!817 = !DILocation(line: 255, column: 40, scope: !807)
!818 = !DILocation(line: 255, column: 38, scope: !807)
!819 = !DILocation(line: 255, column: 43, scope: !807)
!820 = !DILocation(line: 255, column: 35, scope: !807)
!821 = !DILocation(line: 255, column: 27, scope: !807)
!822 = !DILocation(line: 255, column: 25, scope: !807)
!823 = !DILocation(line: 256, column: 23, scope: !725)
!824 = !DILocation(line: 257, column: 32, scope: !725)
!825 = !DILabel(scope: !725, name: "not_an_escape", file: !10, line: 259)
!826 = !DILocation(line: 259, column: 21, scope: !725)
!827 = !DILocation(line: 260, column: 31, scope: !725)
!828 = !DILocation(line: 260, column: 47, scope: !725)
!829 = !DILocation(line: 262, column: 17, scope: !719)
!830 = !DILocation(line: 263, column: 15, scope: !712)
!831 = distinct !{!831, !706, !832, !386}
!832 = !DILocation(line: 264, column: 13, scope: !701)
!833 = !DILocation(line: 265, column: 15, scope: !701)
!834 = !DILocation(line: 266, column: 15, scope: !701)
!835 = !DILocation(line: 267, column: 15, scope: !836)
!836 = distinct !DILexicalBlock(scope: !701, file: !10, line: 267, column: 15)
!837 = !DILocation(line: 267, column: 20, scope: !836)
!838 = !DILocation(line: 267, column: 15, scope: !701)
!839 = !DILocation(line: 268, column: 13, scope: !836)
!840 = distinct !{!840, !696, !841, !386}
!841 = !DILocation(line: 269, column: 9, scope: !697)
!842 = !DILocation(line: 270, column: 5, scope: !697)
!843 = !DILocation(line: 273, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !692, file: !10, line: 272, column: 5)
!845 = !DILocation(line: 273, column: 14, scope: !844)
!846 = !DILocation(line: 273, column: 19, scope: !844)
!847 = !DILocation(line: 275, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !10, line: 274, column: 9)
!849 = !DILocation(line: 276, column: 15, scope: !848)
!850 = !DILocation(line: 277, column: 15, scope: !848)
!851 = !DILocation(line: 278, column: 15, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !10, line: 278, column: 15)
!853 = !DILocation(line: 278, column: 20, scope: !852)
!854 = !DILocation(line: 278, column: 15, scope: !848)
!855 = !DILocation(line: 279, column: 13, scope: !852)
!856 = distinct !{!856, !843, !857, !386}
!857 = !DILocation(line: 280, column: 9, scope: !844)
!858 = !DILocation(line: 283, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !571, file: !10, line: 283, column: 7)
!860 = !DILocation(line: 283, column: 7, scope: !571)
!861 = !DILocation(line: 284, column: 5, scope: !859)
!862 = !DILocation(line: 285, column: 3, scope: !571)
!863 = !DILocation(line: 286, column: 1, scope: !571)
!864 = distinct !DISubprogram(name: "hextobin", scope: !10, file: !10, line: 102, type: !865, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!865 = !DISubroutineType(types: !866)
!866 = !{!34, !198}
!867 = !DILocalVariable(name: "c", arg: 1, scope: !864, file: !10, line: 102, type: !198)
!868 = !DILocation(line: 102, column: 25, scope: !864)
!869 = !DILocation(line: 104, column: 11, scope: !864)
!870 = !DILocation(line: 104, column: 3, scope: !864)
!871 = !DILocation(line: 106, column: 21, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !10, line: 105, column: 5)
!873 = !DILocation(line: 106, column: 23, scope: !872)
!874 = !DILocation(line: 106, column: 14, scope: !872)
!875 = !DILocation(line: 107, column: 25, scope: !872)
!876 = !DILocation(line: 108, column: 25, scope: !872)
!877 = !DILocation(line: 109, column: 25, scope: !872)
!878 = !DILocation(line: 110, column: 25, scope: !872)
!879 = !DILocation(line: 111, column: 25, scope: !872)
!880 = !DILocation(line: 112, column: 25, scope: !872)
!881 = !DILocation(line: 114, column: 1, scope: !864)
!882 = distinct !DISubprogram(name: "c_isalnum", scope: !883, file: !883, line: 169, type: !884, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!883 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!884 = !DISubroutineType(types: !885)
!885 = !{!50, !34}
!886 = !DILocalVariable(name: "c", arg: 1, scope: !882, file: !883, line: 169, type: !34)
!887 = !DILocation(line: 169, column: 16, scope: !882)
!888 = !DILocation(line: 171, column: 11, scope: !882)
!889 = !DILocation(line: 171, column: 3, scope: !882)
!890 = !DILocation(line: 176, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !882, file: !883, line: 172, column: 5)
!892 = !DILocation(line: 178, column: 7, scope: !891)
!893 = !DILocation(line: 180, column: 1, scope: !882)
!894 = distinct !DISubprogram(name: "c_isalpha", scope: !883, file: !883, line: 183, type: !884, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!895 = !DILocalVariable(name: "c", arg: 1, scope: !894, file: !883, line: 183, type: !34)
!896 = !DILocation(line: 183, column: 16, scope: !894)
!897 = !DILocation(line: 185, column: 11, scope: !894)
!898 = !DILocation(line: 185, column: 3, scope: !894)
!899 = !DILocation(line: 189, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !894, file: !883, line: 186, column: 5)
!901 = !DILocation(line: 191, column: 7, scope: !900)
!902 = !DILocation(line: 193, column: 1, scope: !894)
!903 = distinct !DISubprogram(name: "c_isascii", scope: !883, file: !883, line: 198, type: !884, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!904 = !DILocalVariable(name: "c", arg: 1, scope: !903, file: !883, line: 198, type: !34)
!905 = !DILocation(line: 198, column: 16, scope: !903)
!906 = !DILocation(line: 200, column: 11, scope: !903)
!907 = !DILocation(line: 200, column: 3, scope: !903)
!908 = !DILocation(line: 208, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !883, line: 201, column: 5)
!910 = !DILocation(line: 210, column: 7, scope: !909)
!911 = !DILocation(line: 212, column: 1, scope: !903)
!912 = distinct !DISubprogram(name: "c_isblank", scope: !883, file: !883, line: 215, type: !884, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!913 = !DILocalVariable(name: "c", arg: 1, scope: !912, file: !883, line: 215, type: !34)
!914 = !DILocation(line: 215, column: 16, scope: !912)
!915 = !DILocation(line: 217, column: 10, scope: !912)
!916 = !DILocation(line: 217, column: 12, scope: !912)
!917 = !DILocation(line: 217, column: 19, scope: !912)
!918 = !DILocation(line: 217, column: 22, scope: !912)
!919 = !DILocation(line: 217, column: 24, scope: !912)
!920 = !DILocation(line: 217, column: 3, scope: !912)
!921 = distinct !DISubprogram(name: "c_iscntrl", scope: !883, file: !883, line: 221, type: !884, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!922 = !DILocalVariable(name: "c", arg: 1, scope: !921, file: !883, line: 221, type: !34)
!923 = !DILocation(line: 221, column: 16, scope: !921)
!924 = !DILocation(line: 223, column: 11, scope: !921)
!925 = !DILocation(line: 223, column: 3, scope: !921)
!926 = !DILocation(line: 226, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !883, line: 224, column: 5)
!928 = !DILocation(line: 228, column: 7, scope: !927)
!929 = !DILocation(line: 230, column: 1, scope: !921)
!930 = distinct !DISubprogram(name: "c_isdigit", scope: !883, file: !883, line: 233, type: !884, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!931 = !DILocalVariable(name: "c", arg: 1, scope: !930, file: !883, line: 233, type: !34)
!932 = !DILocation(line: 233, column: 16, scope: !930)
!933 = !DILocation(line: 235, column: 11, scope: !930)
!934 = !DILocation(line: 235, column: 3, scope: !930)
!935 = !DILocation(line: 238, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !883, line: 236, column: 5)
!937 = !DILocation(line: 240, column: 7, scope: !936)
!938 = !DILocation(line: 242, column: 1, scope: !930)
!939 = distinct !DISubprogram(name: "c_isgraph", scope: !883, file: !883, line: 245, type: !884, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!940 = !DILocalVariable(name: "c", arg: 1, scope: !939, file: !883, line: 245, type: !34)
!941 = !DILocation(line: 245, column: 16, scope: !939)
!942 = !DILocation(line: 247, column: 11, scope: !939)
!943 = !DILocation(line: 247, column: 3, scope: !939)
!944 = !DILocation(line: 253, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !883, line: 248, column: 5)
!946 = !DILocation(line: 255, column: 7, scope: !945)
!947 = !DILocation(line: 257, column: 1, scope: !939)
!948 = distinct !DISubprogram(name: "c_islower", scope: !883, file: !883, line: 260, type: !884, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!949 = !DILocalVariable(name: "c", arg: 1, scope: !948, file: !883, line: 260, type: !34)
!950 = !DILocation(line: 260, column: 16, scope: !948)
!951 = !DILocation(line: 262, column: 11, scope: !948)
!952 = !DILocation(line: 262, column: 3, scope: !948)
!953 = !DILocation(line: 265, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !883, line: 263, column: 5)
!955 = !DILocation(line: 267, column: 7, scope: !954)
!956 = !DILocation(line: 269, column: 1, scope: !948)
!957 = distinct !DISubprogram(name: "c_isprint", scope: !883, file: !883, line: 272, type: !884, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!958 = !DILocalVariable(name: "c", arg: 1, scope: !957, file: !883, line: 272, type: !34)
!959 = !DILocation(line: 272, column: 16, scope: !957)
!960 = !DILocation(line: 274, column: 11, scope: !957)
!961 = !DILocation(line: 274, column: 3, scope: !957)
!962 = !DILocation(line: 281, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !883, line: 275, column: 5)
!964 = !DILocation(line: 283, column: 7, scope: !963)
!965 = !DILocation(line: 285, column: 1, scope: !957)
!966 = distinct !DISubprogram(name: "c_ispunct", scope: !883, file: !883, line: 288, type: !884, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!967 = !DILocalVariable(name: "c", arg: 1, scope: !966, file: !883, line: 288, type: !34)
!968 = !DILocation(line: 288, column: 16, scope: !966)
!969 = !DILocation(line: 290, column: 11, scope: !966)
!970 = !DILocation(line: 290, column: 3, scope: !966)
!971 = !DILocation(line: 293, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !966, file: !883, line: 291, column: 5)
!973 = !DILocation(line: 295, column: 7, scope: !972)
!974 = !DILocation(line: 297, column: 1, scope: !966)
!975 = distinct !DISubprogram(name: "c_isspace", scope: !883, file: !883, line: 300, type: !884, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!976 = !DILocalVariable(name: "c", arg: 1, scope: !975, file: !883, line: 300, type: !34)
!977 = !DILocation(line: 300, column: 16, scope: !975)
!978 = !DILocation(line: 302, column: 11, scope: !975)
!979 = !DILocation(line: 302, column: 3, scope: !975)
!980 = !DILocation(line: 305, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !883, line: 303, column: 5)
!982 = !DILocation(line: 307, column: 7, scope: !981)
!983 = !DILocation(line: 309, column: 1, scope: !975)
!984 = distinct !DISubprogram(name: "c_isupper", scope: !883, file: !883, line: 312, type: !884, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!985 = !DILocalVariable(name: "c", arg: 1, scope: !984, file: !883, line: 312, type: !34)
!986 = !DILocation(line: 312, column: 16, scope: !984)
!987 = !DILocation(line: 314, column: 11, scope: !984)
!988 = !DILocation(line: 314, column: 3, scope: !984)
!989 = !DILocation(line: 317, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !883, line: 315, column: 5)
!991 = !DILocation(line: 319, column: 7, scope: !990)
!992 = !DILocation(line: 321, column: 1, scope: !984)
!993 = distinct !DISubprogram(name: "c_isxdigit", scope: !883, file: !883, line: 324, type: !884, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!994 = !DILocalVariable(name: "c", arg: 1, scope: !993, file: !883, line: 324, type: !34)
!995 = !DILocation(line: 324, column: 17, scope: !993)
!996 = !DILocation(line: 326, column: 11, scope: !993)
!997 = !DILocation(line: 326, column: 3, scope: !993)
!998 = !DILocation(line: 330, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !883, line: 327, column: 5)
!1000 = !DILocation(line: 332, column: 7, scope: !999)
!1001 = !DILocation(line: 334, column: 1, scope: !993)
!1002 = distinct !DISubprogram(name: "c_tolower", scope: !883, file: !883, line: 337, type: !1003, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!34, !34}
!1005 = !DILocalVariable(name: "c", arg: 1, scope: !1002, file: !883, line: 337, type: !34)
!1006 = !DILocation(line: 337, column: 16, scope: !1002)
!1007 = !DILocation(line: 339, column: 11, scope: !1002)
!1008 = !DILocation(line: 339, column: 3, scope: !1002)
!1009 = !DILocation(line: 342, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !883, line: 340, column: 5)
!1011 = !DILocation(line: 342, column: 16, scope: !1010)
!1012 = !DILocation(line: 342, column: 22, scope: !1010)
!1013 = !DILocation(line: 342, column: 7, scope: !1010)
!1014 = !DILocation(line: 344, column: 14, scope: !1010)
!1015 = !DILocation(line: 344, column: 7, scope: !1010)
!1016 = !DILocation(line: 346, column: 1, scope: !1002)
!1017 = distinct !DISubprogram(name: "c_toupper", scope: !883, file: !883, line: 349, type: !1003, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !37)
!1018 = !DILocalVariable(name: "c", arg: 1, scope: !1017, file: !883, line: 349, type: !34)
!1019 = !DILocation(line: 349, column: 16, scope: !1017)
!1020 = !DILocation(line: 351, column: 11, scope: !1017)
!1021 = !DILocation(line: 351, column: 3, scope: !1017)
!1022 = !DILocation(line: 354, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !883, line: 352, column: 5)
!1024 = !DILocation(line: 354, column: 16, scope: !1023)
!1025 = !DILocation(line: 354, column: 22, scope: !1023)
!1026 = !DILocation(line: 354, column: 7, scope: !1023)
!1027 = !DILocation(line: 356, column: 14, scope: !1023)
!1028 = !DILocation(line: 356, column: 7, scope: !1023)
!1029 = !DILocation(line: 358, column: 1, scope: !1017)
!1030 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !46, file: !46, line: 50, type: !503, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1031 = !DILocalVariable(name: "file", arg: 1, scope: !1030, file: !46, line: 50, type: !6)
!1032 = !DILocation(line: 50, column: 41, scope: !1030)
!1033 = !DILocation(line: 52, column: 15, scope: !1030)
!1034 = !DILocation(line: 52, column: 13, scope: !1030)
!1035 = !DILocation(line: 53, column: 1, scope: !1030)
!1036 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !46, file: !46, line: 87, type: !1037, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !50}
!1039 = !DILocalVariable(name: "ignore", arg: 1, scope: !1036, file: !46, line: 87, type: !50)
!1040 = !DILocation(line: 87, column: 37, scope: !1036)
!1041 = !DILocation(line: 89, column: 18, scope: !1036)
!1042 = !DILocation(line: 89, column: 16, scope: !1036)
!1043 = !DILocation(line: 90, column: 1, scope: !1036)
!1044 = distinct !DISubprogram(name: "close_stdout", scope: !46, file: !46, line: 116, type: !83, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1045 = !DILocation(line: 118, column: 21, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !46, line: 118, column: 7)
!1047 = !DILocation(line: 118, column: 7, scope: !1046)
!1048 = !DILocation(line: 118, column: 29, scope: !1046)
!1049 = !DILocation(line: 119, column: 7, scope: !1046)
!1050 = !DILocation(line: 119, column: 12, scope: !1046)
!1051 = !DILocation(line: 119, column: 25, scope: !1046)
!1052 = !DILocation(line: 119, column: 28, scope: !1046)
!1053 = !DILocation(line: 119, column: 34, scope: !1046)
!1054 = !DILocation(line: 118, column: 7, scope: !1044)
!1055 = !DILocalVariable(name: "write_error", scope: !1056, file: !46, line: 121, type: !6)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !46, line: 120, column: 5)
!1057 = !DILocation(line: 121, column: 19, scope: !1056)
!1058 = !DILocation(line: 121, column: 33, scope: !1056)
!1059 = !DILocation(line: 122, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !46, line: 122, column: 11)
!1061 = !DILocation(line: 122, column: 11, scope: !1056)
!1062 = !DILocation(line: 123, column: 9, scope: !1060)
!1063 = !DILocation(line: 126, column: 9, scope: !1060)
!1064 = !DILocation(line: 128, column: 14, scope: !1056)
!1065 = !DILocation(line: 128, column: 7, scope: !1056)
!1066 = !DILocation(line: 133, column: 42, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1044, file: !46, line: 133, column: 7)
!1068 = !DILocation(line: 133, column: 28, scope: !1067)
!1069 = !DILocation(line: 133, column: 50, scope: !1067)
!1070 = !DILocation(line: 133, column: 7, scope: !1044)
!1071 = !DILocation(line: 134, column: 12, scope: !1067)
!1072 = !DILocation(line: 134, column: 5, scope: !1067)
!1073 = !DILocation(line: 135, column: 1, scope: !1044)
!1074 = distinct !DISubprogram(name: "verror", scope: !54, file: !54, line: 251, type: !1075, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !34, !34, !6, !62}
!1077 = !DILocalVariable(name: "status", arg: 1, scope: !1074, file: !54, line: 251, type: !34)
!1078 = !DILocation(line: 251, column: 1, scope: !1074)
!1079 = !DILocalVariable(name: "errnum", arg: 2, scope: !1074, file: !54, line: 251, type: !34)
!1080 = !DILocalVariable(name: "message", arg: 3, scope: !1074, file: !54, line: 251, type: !6)
!1081 = !DILocalVariable(name: "args", arg: 4, scope: !1074, file: !54, line: 251, type: !62)
!1082 = !DILocation(line: 261, column: 3, scope: !1074)
!1083 = !DILocation(line: 265, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1074, file: !54, line: 265, column: 7)
!1085 = !DILocation(line: 265, column: 7, scope: !1074)
!1086 = !DILocation(line: 266, column: 7, scope: !1084)
!1087 = !DILocation(line: 266, column: 5, scope: !1084)
!1088 = !DILocation(line: 272, column: 16, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !54, line: 268, column: 5)
!1090 = !DILocation(line: 272, column: 32, scope: !1089)
!1091 = !DILocation(line: 272, column: 7, scope: !1089)
!1092 = !DILocation(line: 276, column: 3, scope: !1074)
!1093 = !DILocation(line: 282, column: 1, scope: !1074)
!1094 = distinct !DISubprogram(name: "flush_stdout", scope: !54, file: !54, line: 163, type: !83, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1095 = !DILocalVariable(name: "stdout_fd", scope: !1094, file: !54, line: 166, type: !34)
!1096 = !DILocation(line: 166, column: 7, scope: !1094)
!1097 = !DILocation(line: 172, column: 13, scope: !1094)
!1098 = !DILocation(line: 182, column: 12, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !54, line: 182, column: 7)
!1100 = !DILocation(line: 182, column: 9, scope: !1099)
!1101 = !DILocation(line: 182, column: 22, scope: !1099)
!1102 = !DILocation(line: 182, column: 34, scope: !1099)
!1103 = !DILocation(line: 182, column: 25, scope: !1099)
!1104 = !DILocation(line: 182, column: 7, scope: !1094)
!1105 = !DILocation(line: 184, column: 5, scope: !1099)
!1106 = !DILocation(line: 185, column: 1, scope: !1094)
!1107 = distinct !DISubprogram(name: "error_tail", scope: !54, file: !54, line: 219, type: !1075, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1108 = !DILocalVariable(name: "status", arg: 1, scope: !1107, file: !54, line: 219, type: !34)
!1109 = !DILocation(line: 219, column: 1, scope: !1107)
!1110 = !DILocalVariable(name: "errnum", arg: 2, scope: !1107, file: !54, line: 219, type: !34)
!1111 = !DILocalVariable(name: "message", arg: 3, scope: !1107, file: !54, line: 219, type: !6)
!1112 = !DILocalVariable(name: "args", arg: 4, scope: !1107, file: !54, line: 219, type: !62)
!1113 = !DILocation(line: 229, column: 13, scope: !1107)
!1114 = !DILocation(line: 229, column: 21, scope: !1107)
!1115 = !DILocation(line: 229, column: 3, scope: !1107)
!1116 = !DILocation(line: 232, column: 3, scope: !1107)
!1117 = !DILocation(line: 233, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1107, file: !54, line: 233, column: 7)
!1119 = !DILocation(line: 233, column: 7, scope: !1107)
!1120 = !DILocation(line: 234, column: 26, scope: !1118)
!1121 = !DILocation(line: 234, column: 5, scope: !1118)
!1122 = !DILocation(line: 238, column: 3, scope: !1107)
!1123 = !DILocation(line: 240, column: 3, scope: !1107)
!1124 = !DILocation(line: 241, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1107, file: !54, line: 241, column: 7)
!1126 = !DILocation(line: 241, column: 7, scope: !1107)
!1127 = !DILocation(line: 242, column: 11, scope: !1125)
!1128 = !DILocation(line: 242, column: 5, scope: !1125)
!1129 = !DILocation(line: 243, column: 1, scope: !1107)
!1130 = distinct !DISubprogram(name: "print_errno_message", scope: !54, file: !54, line: 188, type: !288, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1131 = !DILocalVariable(name: "errnum", arg: 1, scope: !1130, file: !54, line: 188, type: !34)
!1132 = !DILocation(line: 188, column: 26, scope: !1130)
!1133 = !DILocalVariable(name: "s", scope: !1130, file: !54, line: 190, type: !6)
!1134 = !DILocation(line: 190, column: 15, scope: !1130)
!1135 = !DILocalVariable(name: "errbuf", scope: !1130, file: !54, line: 193, type: !1136)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 1024)
!1139 = !DILocation(line: 193, column: 8, scope: !1130)
!1140 = !DILocation(line: 195, column: 21, scope: !1130)
!1141 = !DILocation(line: 195, column: 29, scope: !1130)
!1142 = !DILocation(line: 195, column: 7, scope: !1130)
!1143 = !DILocation(line: 195, column: 5, scope: !1130)
!1144 = !DILocation(line: 207, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1130, file: !54, line: 207, column: 7)
!1146 = !DILocation(line: 207, column: 7, scope: !1130)
!1147 = !DILocation(line: 208, column: 9, scope: !1145)
!1148 = !DILocation(line: 208, column: 7, scope: !1145)
!1149 = !DILocation(line: 208, column: 5, scope: !1145)
!1150 = !DILocation(line: 214, column: 12, scope: !1130)
!1151 = !DILocation(line: 214, column: 28, scope: !1130)
!1152 = !DILocation(line: 214, column: 3, scope: !1130)
!1153 = !DILocation(line: 216, column: 1, scope: !1130)
!1154 = distinct !DISubprogram(name: "is_open", scope: !54, file: !54, line: 145, type: !1003, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1155 = !DILocalVariable(name: "fd", arg: 1, scope: !1154, file: !54, line: 145, type: !34)
!1156 = !DILocation(line: 145, column: 14, scope: !1154)
!1157 = !DILocation(line: 157, column: 22, scope: !1154)
!1158 = !DILocation(line: 157, column: 15, scope: !1154)
!1159 = !DILocation(line: 157, column: 12, scope: !1154)
!1160 = !DILocation(line: 157, column: 3, scope: !1154)
!1161 = distinct !DISubprogram(name: "error", scope: !54, file: !54, line: 285, type: !1162, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !34, !34, !6, null}
!1164 = !DILocalVariable(name: "status", arg: 1, scope: !1161, file: !54, line: 285, type: !34)
!1165 = !DILocation(line: 285, column: 12, scope: !1161)
!1166 = !DILocalVariable(name: "errnum", arg: 2, scope: !1161, file: !54, line: 285, type: !34)
!1167 = !DILocation(line: 285, column: 24, scope: !1161)
!1168 = !DILocalVariable(name: "message", arg: 3, scope: !1161, file: !54, line: 285, type: !6)
!1169 = !DILocation(line: 285, column: 44, scope: !1161)
!1170 = !DILocalVariable(name: "ap", scope: !1161, file: !54, line: 287, type: !62)
!1171 = !DILocation(line: 287, column: 11, scope: !1161)
!1172 = !DILocation(line: 288, column: 3, scope: !1161)
!1173 = !DILocation(line: 289, column: 3, scope: !1161)
!1174 = !DILocation(line: 290, column: 3, scope: !1161)
!1175 = !DILocation(line: 291, column: 1, scope: !1161)
!1176 = !DILocalVariable(name: "status", arg: 1, scope: !59, file: !54, line: 298, type: !34)
!1177 = !DILocation(line: 298, column: 1, scope: !59)
!1178 = !DILocalVariable(name: "errnum", arg: 2, scope: !59, file: !54, line: 298, type: !34)
!1179 = !DILocalVariable(name: "file_name", arg: 3, scope: !59, file: !54, line: 298, type: !6)
!1180 = !DILocalVariable(name: "line_number", arg: 4, scope: !59, file: !54, line: 298, type: !13)
!1181 = !DILocalVariable(name: "message", arg: 5, scope: !59, file: !54, line: 298, type: !6)
!1182 = !DILocalVariable(name: "args", arg: 6, scope: !59, file: !54, line: 298, type: !62)
!1183 = !DILocation(line: 302, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !59, file: !54, line: 302, column: 7)
!1185 = !DILocation(line: 302, column: 7, scope: !59)
!1186 = !DILocation(line: 307, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !54, line: 307, column: 11)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !54, line: 303, column: 5)
!1189 = !DILocation(line: 307, column: 30, scope: !1187)
!1190 = !DILocation(line: 307, column: 27, scope: !1187)
!1191 = !DILocation(line: 308, column: 11, scope: !1187)
!1192 = !DILocation(line: 308, column: 15, scope: !1187)
!1193 = !DILocation(line: 308, column: 28, scope: !1187)
!1194 = !DILocation(line: 308, column: 25, scope: !1187)
!1195 = !DILocation(line: 309, column: 15, scope: !1187)
!1196 = !DILocation(line: 309, column: 19, scope: !1187)
!1197 = !DILocation(line: 309, column: 33, scope: !1187)
!1198 = !DILocation(line: 310, column: 19, scope: !1187)
!1199 = !DILocation(line: 310, column: 22, scope: !1187)
!1200 = !DILocation(line: 310, column: 32, scope: !1187)
!1201 = !DILocation(line: 311, column: 19, scope: !1187)
!1202 = !DILocation(line: 311, column: 30, scope: !1187)
!1203 = !DILocation(line: 311, column: 45, scope: !1187)
!1204 = !DILocation(line: 311, column: 22, scope: !1187)
!1205 = !DILocation(line: 311, column: 56, scope: !1187)
!1206 = !DILocation(line: 307, column: 11, scope: !1188)
!1207 = !DILocation(line: 314, column: 9, scope: !1187)
!1208 = !DILocation(line: 316, column: 23, scope: !1188)
!1209 = !DILocation(line: 316, column: 21, scope: !1188)
!1210 = !DILocation(line: 317, column: 25, scope: !1188)
!1211 = !DILocation(line: 317, column: 23, scope: !1188)
!1212 = !DILocation(line: 318, column: 5, scope: !1188)
!1213 = !DILocation(line: 327, column: 3, scope: !59)
!1214 = !DILocation(line: 331, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !59, file: !54, line: 331, column: 7)
!1216 = !DILocation(line: 331, column: 7, scope: !59)
!1217 = !DILocation(line: 332, column: 7, scope: !1215)
!1218 = !DILocation(line: 332, column: 5, scope: !1215)
!1219 = !DILocation(line: 338, column: 16, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !54, line: 334, column: 5)
!1221 = !DILocation(line: 338, column: 31, scope: !1220)
!1222 = !DILocation(line: 338, column: 7, scope: !1220)
!1223 = !DILocation(line: 346, column: 12, scope: !59)
!1224 = !DILocation(line: 346, column: 20, scope: !59)
!1225 = !DILocation(line: 346, column: 30, scope: !59)
!1226 = !DILocation(line: 347, column: 12, scope: !59)
!1227 = !DILocation(line: 347, column: 23, scope: !59)
!1228 = !DILocation(line: 346, column: 3, scope: !59)
!1229 = !DILocation(line: 350, column: 3, scope: !59)
!1230 = !DILocation(line: 356, column: 1, scope: !59)
!1231 = distinct !DISubprogram(name: "error_at_line", scope: !54, file: !54, line: 359, type: !1232, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !34, !34, !6, !13, !6, null}
!1234 = !DILocalVariable(name: "status", arg: 1, scope: !1231, file: !54, line: 359, type: !34)
!1235 = !DILocation(line: 359, column: 20, scope: !1231)
!1236 = !DILocalVariable(name: "errnum", arg: 2, scope: !1231, file: !54, line: 359, type: !34)
!1237 = !DILocation(line: 359, column: 32, scope: !1231)
!1238 = !DILocalVariable(name: "file_name", arg: 3, scope: !1231, file: !54, line: 359, type: !6)
!1239 = !DILocation(line: 359, column: 52, scope: !1231)
!1240 = !DILocalVariable(name: "line_number", arg: 4, scope: !1231, file: !54, line: 360, type: !13)
!1241 = !DILocation(line: 360, column: 29, scope: !1231)
!1242 = !DILocalVariable(name: "message", arg: 5, scope: !1231, file: !54, line: 360, type: !6)
!1243 = !DILocation(line: 360, column: 54, scope: !1231)
!1244 = !DILocalVariable(name: "ap", scope: !1231, file: !54, line: 362, type: !62)
!1245 = !DILocation(line: 362, column: 11, scope: !1231)
!1246 = !DILocation(line: 363, column: 3, scope: !1231)
!1247 = !DILocation(line: 364, column: 3, scope: !1231)
!1248 = !DILocation(line: 366, column: 3, scope: !1231)
!1249 = !DILocation(line: 367, column: 1, scope: !1231)
!1250 = distinct !DISubprogram(name: "getprogname", scope: !217, file: !217, line: 54, type: !1251, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !37)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!6}
!1253 = !DILocation(line: 58, column: 10, scope: !1250)
!1254 = !DILocation(line: 58, column: 3, scope: !1250)
!1255 = distinct !DISubprogram(name: "set_program_name", scope: !88, file: !88, line: 37, type: !503, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !37)
!1256 = !DILocalVariable(name: "argv0", arg: 1, scope: !1255, file: !88, line: 37, type: !6)
!1257 = !DILocation(line: 37, column: 31, scope: !1255)
!1258 = !DILocalVariable(name: "slash", scope: !1255, file: !88, line: 44, type: !6)
!1259 = !DILocation(line: 44, column: 15, scope: !1255)
!1260 = !DILocation(line: 44, column: 32, scope: !1255)
!1261 = !DILocation(line: 44, column: 23, scope: !1255)
!1262 = !DILocalVariable(name: "base", scope: !1255, file: !88, line: 45, type: !6)
!1263 = !DILocation(line: 45, column: 15, scope: !1255)
!1264 = !DILocation(line: 45, column: 22, scope: !1255)
!1265 = !DILocation(line: 45, column: 30, scope: !1255)
!1266 = !DILocation(line: 45, column: 36, scope: !1255)
!1267 = !DILocation(line: 45, column: 42, scope: !1255)
!1268 = !DILocation(line: 46, column: 12, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1255, file: !88, line: 46, column: 7)
!1270 = !DILocation(line: 46, column: 19, scope: !1269)
!1271 = !DILocation(line: 46, column: 17, scope: !1269)
!1272 = !DILocation(line: 46, column: 9, scope: !1269)
!1273 = !DILocation(line: 46, column: 25, scope: !1269)
!1274 = !DILocation(line: 46, column: 35, scope: !1269)
!1275 = !DILocation(line: 46, column: 40, scope: !1269)
!1276 = !DILocation(line: 46, column: 28, scope: !1269)
!1277 = !DILocation(line: 46, column: 7, scope: !1255)
!1278 = !DILocation(line: 48, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1269, file: !88, line: 47, column: 5)
!1280 = !DILocation(line: 48, column: 13, scope: !1279)
!1281 = !DILocation(line: 49, column: 20, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !88, line: 49, column: 11)
!1283 = !DILocation(line: 49, column: 11, scope: !1282)
!1284 = !DILocation(line: 49, column: 36, scope: !1282)
!1285 = !DILocation(line: 49, column: 11, scope: !1279)
!1286 = !DILocation(line: 51, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !88, line: 50, column: 9)
!1288 = !DILocation(line: 52, column: 19, scope: !1287)
!1289 = !DILocation(line: 52, column: 17, scope: !1287)
!1290 = !DILocation(line: 53, column: 9, scope: !1287)
!1291 = !DILocation(line: 54, column: 5, scope: !1279)
!1292 = !DILocation(line: 65, column: 18, scope: !1255)
!1293 = !DILocation(line: 65, column: 16, scope: !1255)
!1294 = !DILocation(line: 71, column: 38, scope: !1255)
!1295 = !DILocation(line: 71, column: 27, scope: !1255)
!1296 = !DILocation(line: 74, column: 44, scope: !1255)
!1297 = !DILocation(line: 74, column: 33, scope: !1255)
!1298 = !DILocation(line: 76, column: 1, scope: !1255)
!1299 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !93, file: !94, line: 38, type: !6)
!1300 = !DILocation(line: 38, column: 31, scope: !93)
!1301 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !93, file: !94, line: 38, type: !6)
!1302 = !DILocation(line: 38, column: 66, scope: !93)
!1303 = !DILocalVariable(name: "translation", scope: !93, file: !94, line: 40, type: !6)
!1304 = !DILocation(line: 40, column: 15, scope: !93)
!1305 = !DILocation(line: 40, column: 38, scope: !93)
!1306 = !DILocation(line: 40, column: 29, scope: !93)
!1307 = !DILocation(line: 41, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !93, file: !94, line: 41, column: 7)
!1309 = !DILocation(line: 41, column: 22, scope: !1308)
!1310 = !DILocation(line: 41, column: 19, scope: !1308)
!1311 = !DILocation(line: 41, column: 7, scope: !93)
!1312 = !DILocation(line: 42, column: 12, scope: !1308)
!1313 = !DILocation(line: 42, column: 5, scope: !1308)
!1314 = !DILocalVariable(name: "w", scope: !93, file: !94, line: 47, type: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1316, line: 37, baseType: !1317)
!1316 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1318, line: 57, baseType: !1319)
!1318 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1318, line: 42, baseType: !13)
!1320 = !DILocation(line: 47, column: 12, scope: !93)
!1321 = !DILocalVariable(name: "mbs", scope: !93, file: !94, line: 48, type: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !201, line: 6, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !203, line: 21, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 13, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1324, file: !203, line: 15, baseType: !34, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1324, file: !203, line: 20, baseType: !1328, size: 32, offset: 32)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !203, line: 16, size: 32, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1328, file: !203, line: 18, baseType: !13, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1328, file: !203, line: 19, baseType: !212, size: 32)
!1332 = !DILocation(line: 48, column: 13, scope: !93)
!1333 = !DILocation(line: 48, column: 18, scope: !93)
!1334 = !DILocation(line: 49, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !93, file: !94, line: 49, column: 7)
!1336 = !DILocation(line: 49, column: 39, scope: !1335)
!1337 = !DILocation(line: 49, column: 44, scope: !1335)
!1338 = !DILocation(line: 49, column: 47, scope: !1335)
!1339 = !DILocation(line: 49, column: 49, scope: !1335)
!1340 = !DILocation(line: 49, column: 7, scope: !93)
!1341 = !DILocation(line: 50, column: 12, scope: !1335)
!1342 = !DILocation(line: 50, column: 5, scope: !1335)
!1343 = !DILocation(line: 53, column: 10, scope: !93)
!1344 = !DILocation(line: 53, column: 3, scope: !93)
!1345 = !DILocation(line: 54, column: 1, scope: !93)
!1346 = distinct !DISubprogram(name: "clone_quoting_options", scope: !105, file: !105, line: 113, type: !1347, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1349, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1350 = !DILocalVariable(name: "o", arg: 1, scope: !1346, file: !105, line: 113, type: !1349)
!1351 = !DILocation(line: 113, column: 48, scope: !1346)
!1352 = !DILocalVariable(name: "saved_errno", scope: !1346, file: !105, line: 115, type: !34)
!1353 = !DILocation(line: 115, column: 7, scope: !1346)
!1354 = !DILocation(line: 115, column: 21, scope: !1346)
!1355 = !DILocalVariable(name: "p", scope: !1346, file: !105, line: 116, type: !1349)
!1356 = !DILocation(line: 116, column: 27, scope: !1346)
!1357 = !DILocation(line: 116, column: 40, scope: !1346)
!1358 = !DILocation(line: 116, column: 44, scope: !1346)
!1359 = !DILocation(line: 116, column: 31, scope: !1346)
!1360 = !DILocation(line: 118, column: 11, scope: !1346)
!1361 = !DILocation(line: 118, column: 3, scope: !1346)
!1362 = !DILocation(line: 118, column: 9, scope: !1346)
!1363 = !DILocation(line: 119, column: 10, scope: !1346)
!1364 = !DILocation(line: 119, column: 3, scope: !1346)
!1365 = distinct !DISubprogram(name: "get_quoting_style", scope: !105, file: !105, line: 124, type: !1366, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!107, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1370 = !DILocalVariable(name: "o", arg: 1, scope: !1365, file: !105, line: 124, type: !1368)
!1371 = !DILocation(line: 124, column: 50, scope: !1365)
!1372 = !DILocation(line: 126, column: 11, scope: !1365)
!1373 = !DILocation(line: 126, column: 15, scope: !1365)
!1374 = !DILocation(line: 126, column: 46, scope: !1365)
!1375 = !DILocation(line: 126, column: 3, scope: !1365)
!1376 = distinct !DISubprogram(name: "set_quoting_style", scope: !105, file: !105, line: 132, type: !1377, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1349, !107}
!1379 = !DILocalVariable(name: "o", arg: 1, scope: !1376, file: !105, line: 132, type: !1349)
!1380 = !DILocation(line: 132, column: 44, scope: !1376)
!1381 = !DILocalVariable(name: "s", arg: 2, scope: !1376, file: !105, line: 132, type: !107)
!1382 = !DILocation(line: 132, column: 66, scope: !1376)
!1383 = !DILocation(line: 134, column: 47, scope: !1376)
!1384 = !DILocation(line: 134, column: 4, scope: !1376)
!1385 = !DILocation(line: 134, column: 8, scope: !1376)
!1386 = !DILocation(line: 134, column: 39, scope: !1376)
!1387 = !DILocation(line: 134, column: 45, scope: !1376)
!1388 = !DILocation(line: 135, column: 1, scope: !1376)
!1389 = distinct !DISubprogram(name: "set_char_quoting", scope: !105, file: !105, line: 143, type: !1390, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!34, !1349, !8, !34}
!1392 = !DILocalVariable(name: "o", arg: 1, scope: !1389, file: !105, line: 143, type: !1349)
!1393 = !DILocation(line: 143, column: 43, scope: !1389)
!1394 = !DILocalVariable(name: "c", arg: 2, scope: !1389, file: !105, line: 143, type: !8)
!1395 = !DILocation(line: 143, column: 51, scope: !1389)
!1396 = !DILocalVariable(name: "i", arg: 3, scope: !1389, file: !105, line: 143, type: !34)
!1397 = !DILocation(line: 143, column: 58, scope: !1389)
!1398 = !DILocalVariable(name: "uc", scope: !1389, file: !105, line: 145, type: !198)
!1399 = !DILocation(line: 145, column: 17, scope: !1389)
!1400 = !DILocation(line: 145, column: 22, scope: !1389)
!1401 = !DILocalVariable(name: "p", scope: !1389, file: !105, line: 146, type: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1403 = !DILocation(line: 146, column: 17, scope: !1389)
!1404 = !DILocation(line: 147, column: 6, scope: !1389)
!1405 = !DILocation(line: 147, column: 10, scope: !1389)
!1406 = !DILocation(line: 147, column: 41, scope: !1389)
!1407 = !DILocation(line: 147, column: 5, scope: !1389)
!1408 = !DILocation(line: 147, column: 59, scope: !1389)
!1409 = !DILocation(line: 147, column: 62, scope: !1389)
!1410 = !DILocation(line: 147, column: 57, scope: !1389)
!1411 = !DILocalVariable(name: "shift", scope: !1389, file: !105, line: 148, type: !34)
!1412 = !DILocation(line: 148, column: 7, scope: !1389)
!1413 = !DILocation(line: 148, column: 15, scope: !1389)
!1414 = !DILocation(line: 148, column: 18, scope: !1389)
!1415 = !DILocalVariable(name: "r", scope: !1389, file: !105, line: 149, type: !13)
!1416 = !DILocation(line: 149, column: 16, scope: !1389)
!1417 = !DILocation(line: 149, column: 22, scope: !1389)
!1418 = !DILocation(line: 149, column: 21, scope: !1389)
!1419 = !DILocation(line: 149, column: 27, scope: !1389)
!1420 = !DILocation(line: 149, column: 24, scope: !1389)
!1421 = !DILocation(line: 149, column: 34, scope: !1389)
!1422 = !DILocation(line: 150, column: 11, scope: !1389)
!1423 = !DILocation(line: 150, column: 13, scope: !1389)
!1424 = !DILocation(line: 150, column: 21, scope: !1389)
!1425 = !DILocation(line: 150, column: 19, scope: !1389)
!1426 = !DILocation(line: 150, column: 27, scope: !1389)
!1427 = !DILocation(line: 150, column: 24, scope: !1389)
!1428 = !DILocation(line: 150, column: 4, scope: !1389)
!1429 = !DILocation(line: 150, column: 6, scope: !1389)
!1430 = !DILocation(line: 151, column: 10, scope: !1389)
!1431 = !DILocation(line: 151, column: 3, scope: !1389)
!1432 = distinct !DISubprogram(name: "set_quoting_flags", scope: !105, file: !105, line: 159, type: !1433, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!34, !1349, !34}
!1435 = !DILocalVariable(name: "o", arg: 1, scope: !1432, file: !105, line: 159, type: !1349)
!1436 = !DILocation(line: 159, column: 44, scope: !1432)
!1437 = !DILocalVariable(name: "i", arg: 2, scope: !1432, file: !105, line: 159, type: !34)
!1438 = !DILocation(line: 159, column: 51, scope: !1432)
!1439 = !DILocation(line: 161, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !105, line: 161, column: 7)
!1441 = !DILocation(line: 161, column: 7, scope: !1432)
!1442 = !DILocation(line: 162, column: 7, scope: !1440)
!1443 = !DILocation(line: 162, column: 5, scope: !1440)
!1444 = !DILocalVariable(name: "r", scope: !1432, file: !105, line: 163, type: !34)
!1445 = !DILocation(line: 163, column: 7, scope: !1432)
!1446 = !DILocation(line: 163, column: 11, scope: !1432)
!1447 = !DILocation(line: 163, column: 14, scope: !1432)
!1448 = !DILocation(line: 164, column: 14, scope: !1432)
!1449 = !DILocation(line: 164, column: 3, scope: !1432)
!1450 = !DILocation(line: 164, column: 6, scope: !1432)
!1451 = !DILocation(line: 164, column: 12, scope: !1432)
!1452 = !DILocation(line: 165, column: 10, scope: !1432)
!1453 = !DILocation(line: 165, column: 3, scope: !1432)
!1454 = distinct !DISubprogram(name: "set_custom_quoting", scope: !105, file: !105, line: 169, type: !1455, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1349, !6, !6}
!1457 = !DILocalVariable(name: "o", arg: 1, scope: !1454, file: !105, line: 169, type: !1349)
!1458 = !DILocation(line: 169, column: 45, scope: !1454)
!1459 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1454, file: !105, line: 170, type: !6)
!1460 = !DILocation(line: 170, column: 33, scope: !1454)
!1461 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1454, file: !105, line: 170, type: !6)
!1462 = !DILocation(line: 170, column: 57, scope: !1454)
!1463 = !DILocation(line: 172, column: 8, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1454, file: !105, line: 172, column: 7)
!1465 = !DILocation(line: 172, column: 7, scope: !1454)
!1466 = !DILocation(line: 173, column: 7, scope: !1464)
!1467 = !DILocation(line: 173, column: 5, scope: !1464)
!1468 = !DILocation(line: 174, column: 3, scope: !1454)
!1469 = !DILocation(line: 174, column: 6, scope: !1454)
!1470 = !DILocation(line: 174, column: 12, scope: !1454)
!1471 = !DILocation(line: 175, column: 8, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1454, file: !105, line: 175, column: 7)
!1473 = !DILocation(line: 175, column: 19, scope: !1472)
!1474 = !DILocation(line: 175, column: 23, scope: !1472)
!1475 = !DILocation(line: 175, column: 7, scope: !1454)
!1476 = !DILocation(line: 176, column: 5, scope: !1472)
!1477 = !DILocation(line: 177, column: 19, scope: !1454)
!1478 = !DILocation(line: 177, column: 3, scope: !1454)
!1479 = !DILocation(line: 177, column: 6, scope: !1454)
!1480 = !DILocation(line: 177, column: 17, scope: !1454)
!1481 = !DILocation(line: 178, column: 20, scope: !1454)
!1482 = !DILocation(line: 178, column: 3, scope: !1454)
!1483 = !DILocation(line: 178, column: 6, scope: !1454)
!1484 = !DILocation(line: 178, column: 18, scope: !1454)
!1485 = !DILocation(line: 179, column: 1, scope: !1454)
!1486 = distinct !DISubprogram(name: "quotearg_buffer", scope: !105, file: !105, line: 774, type: !1487, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!127, !32, !127, !6, !127, !1368}
!1489 = !DILocalVariable(name: "buffer", arg: 1, scope: !1486, file: !105, line: 774, type: !32)
!1490 = !DILocation(line: 774, column: 24, scope: !1486)
!1491 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1486, file: !105, line: 774, type: !127)
!1492 = !DILocation(line: 774, column: 39, scope: !1486)
!1493 = !DILocalVariable(name: "arg", arg: 3, scope: !1486, file: !105, line: 775, type: !6)
!1494 = !DILocation(line: 775, column: 30, scope: !1486)
!1495 = !DILocalVariable(name: "argsize", arg: 4, scope: !1486, file: !105, line: 775, type: !127)
!1496 = !DILocation(line: 775, column: 42, scope: !1486)
!1497 = !DILocalVariable(name: "o", arg: 5, scope: !1486, file: !105, line: 776, type: !1368)
!1498 = !DILocation(line: 776, column: 48, scope: !1486)
!1499 = !DILocalVariable(name: "p", scope: !1486, file: !105, line: 778, type: !1368)
!1500 = !DILocation(line: 778, column: 33, scope: !1486)
!1501 = !DILocation(line: 778, column: 37, scope: !1486)
!1502 = !DILocation(line: 778, column: 41, scope: !1486)
!1503 = !DILocalVariable(name: "saved_errno", scope: !1486, file: !105, line: 779, type: !34)
!1504 = !DILocation(line: 779, column: 7, scope: !1486)
!1505 = !DILocation(line: 779, column: 21, scope: !1486)
!1506 = !DILocalVariable(name: "r", scope: !1486, file: !105, line: 780, type: !127)
!1507 = !DILocation(line: 780, column: 10, scope: !1486)
!1508 = !DILocation(line: 780, column: 40, scope: !1486)
!1509 = !DILocation(line: 780, column: 48, scope: !1486)
!1510 = !DILocation(line: 780, column: 60, scope: !1486)
!1511 = !DILocation(line: 780, column: 65, scope: !1486)
!1512 = !DILocation(line: 781, column: 40, scope: !1486)
!1513 = !DILocation(line: 781, column: 43, scope: !1486)
!1514 = !DILocation(line: 781, column: 50, scope: !1486)
!1515 = !DILocation(line: 781, column: 53, scope: !1486)
!1516 = !DILocation(line: 781, column: 60, scope: !1486)
!1517 = !DILocation(line: 781, column: 63, scope: !1486)
!1518 = !DILocation(line: 782, column: 40, scope: !1486)
!1519 = !DILocation(line: 782, column: 43, scope: !1486)
!1520 = !DILocation(line: 782, column: 55, scope: !1486)
!1521 = !DILocation(line: 782, column: 58, scope: !1486)
!1522 = !DILocation(line: 780, column: 14, scope: !1486)
!1523 = !DILocation(line: 783, column: 11, scope: !1486)
!1524 = !DILocation(line: 783, column: 3, scope: !1486)
!1525 = !DILocation(line: 783, column: 9, scope: !1486)
!1526 = !DILocation(line: 784, column: 10, scope: !1486)
!1527 = !DILocation(line: 784, column: 3, scope: !1486)
!1528 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !105, file: !105, line: 251, type: !1529, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !37)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!127, !32, !127, !6, !127, !107, !34, !1531, !6, !6}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1533 = !DILocalVariable(name: "buffer", arg: 1, scope: !1528, file: !105, line: 251, type: !32)
!1534 = !DILocation(line: 251, column: 33, scope: !1528)
!1535 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1528, file: !105, line: 251, type: !127)
!1536 = !DILocation(line: 251, column: 48, scope: !1528)
!1537 = !DILocalVariable(name: "arg", arg: 3, scope: !1528, file: !105, line: 252, type: !6)
!1538 = !DILocation(line: 252, column: 39, scope: !1528)
!1539 = !DILocalVariable(name: "argsize", arg: 4, scope: !1528, file: !105, line: 252, type: !127)
!1540 = !DILocation(line: 252, column: 51, scope: !1528)
!1541 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1528, file: !105, line: 253, type: !107)
!1542 = !DILocation(line: 253, column: 46, scope: !1528)
!1543 = !DILocalVariable(name: "flags", arg: 6, scope: !1528, file: !105, line: 253, type: !34)
!1544 = !DILocation(line: 253, column: 65, scope: !1528)
!1545 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1528, file: !105, line: 254, type: !1531)
!1546 = !DILocation(line: 254, column: 47, scope: !1528)
!1547 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1528, file: !105, line: 255, type: !6)
!1548 = !DILocation(line: 255, column: 39, scope: !1528)
!1549 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1528, file: !105, line: 256, type: !6)
!1550 = !DILocation(line: 256, column: 39, scope: !1528)
!1551 = !DILocalVariable(name: "unibyte_locale", scope: !1528, file: !105, line: 258, type: !50)
!1552 = !DILocation(line: 258, column: 8, scope: !1528)
!1553 = !DILocation(line: 258, column: 25, scope: !1528)
!1554 = !DILocation(line: 258, column: 36, scope: !1528)
!1555 = !DILocalVariable(name: "len", scope: !1528, file: !105, line: 260, type: !127)
!1556 = !DILocation(line: 260, column: 10, scope: !1528)
!1557 = !DILocalVariable(name: "orig_buffersize", scope: !1528, file: !105, line: 261, type: !127)
!1558 = !DILocation(line: 261, column: 10, scope: !1528)
!1559 = !DILocalVariable(name: "quote_string", scope: !1528, file: !105, line: 262, type: !6)
!1560 = !DILocation(line: 262, column: 15, scope: !1528)
!1561 = !DILocalVariable(name: "quote_string_len", scope: !1528, file: !105, line: 263, type: !127)
!1562 = !DILocation(line: 263, column: 10, scope: !1528)
!1563 = !DILocalVariable(name: "backslash_escapes", scope: !1528, file: !105, line: 264, type: !50)
!1564 = !DILocation(line: 264, column: 8, scope: !1528)
!1565 = !DILocalVariable(name: "elide_outer_quotes", scope: !1528, file: !105, line: 265, type: !50)
!1566 = !DILocation(line: 265, column: 8, scope: !1528)
!1567 = !DILocation(line: 265, column: 30, scope: !1528)
!1568 = !DILocation(line: 265, column: 36, scope: !1528)
!1569 = !DILocation(line: 265, column: 61, scope: !1528)
!1570 = !DILocalVariable(name: "encountered_single_quote", scope: !1528, file: !105, line: 266, type: !50)
!1571 = !DILocation(line: 266, column: 8, scope: !1528)
!1572 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1528, file: !105, line: 267, type: !50)
!1573 = !DILocation(line: 267, column: 8, scope: !1528)
!1574 = !DILocation(line: 267, column: 3, scope: !1528)
!1575 = !DILabel(scope: !1528, name: "process_input", file: !105, line: 308)
!1576 = !DILocation(line: 308, column: 2, scope: !1528)
!1577 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1528, file: !105, line: 309, type: !50)
!1578 = !DILocation(line: 309, column: 8, scope: !1528)
!1579 = !DILocation(line: 311, column: 11, scope: !1528)
!1580 = !DILocation(line: 311, column: 3, scope: !1528)
!1581 = !DILocation(line: 314, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 312, column: 5)
!1583 = !DILocation(line: 315, column: 26, scope: !1582)
!1584 = !DILocation(line: 315, column: 7, scope: !1582)
!1585 = !DILocation(line: 318, column: 12, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !105, line: 318, column: 11)
!1587 = !DILocation(line: 318, column: 11, scope: !1582)
!1588 = !DILocation(line: 319, column: 9, scope: !1586)
!1589 = !DILocation(line: 319, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !105, line: 319, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !105, line: 319, column: 9)
!1592 = !DILocation(line: 319, column: 9, scope: !1591)
!1593 = !DILocation(line: 320, column: 25, scope: !1582)
!1594 = !DILocation(line: 321, column: 20, scope: !1582)
!1595 = !DILocation(line: 322, column: 24, scope: !1582)
!1596 = !DILocation(line: 323, column: 7, scope: !1582)
!1597 = !DILocation(line: 326, column: 25, scope: !1582)
!1598 = !DILocation(line: 327, column: 26, scope: !1582)
!1599 = !DILocation(line: 328, column: 7, scope: !1582)
!1600 = !DILocation(line: 334, column: 13, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !105, line: 334, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !105, line: 333, column: 7)
!1603 = !DILocation(line: 334, column: 27, scope: !1601)
!1604 = !DILocation(line: 334, column: 13, scope: !1602)
!1605 = !DILocation(line: 357, column: 50, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !105, line: 335, column: 11)
!1607 = !DILocation(line: 357, column: 26, scope: !1606)
!1608 = !DILocation(line: 357, column: 24, scope: !1606)
!1609 = !DILocation(line: 358, column: 51, scope: !1606)
!1610 = !DILocation(line: 358, column: 27, scope: !1606)
!1611 = !DILocation(line: 358, column: 25, scope: !1606)
!1612 = !DILocation(line: 359, column: 11, scope: !1606)
!1613 = !DILocation(line: 360, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1602, file: !105, line: 360, column: 13)
!1615 = !DILocation(line: 360, column: 13, scope: !1602)
!1616 = !DILocalVariable(name: "lq", scope: !1617, file: !105, line: 361, type: !6)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !105, line: 361, column: 11)
!1618 = !DILocation(line: 361, column: 28, scope: !1617)
!1619 = !DILocation(line: 361, column: 33, scope: !1617)
!1620 = !DILocation(line: 361, column: 16, scope: !1617)
!1621 = !DILocation(line: 361, column: 46, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !105, line: 361, column: 11)
!1623 = !DILocation(line: 361, column: 45, scope: !1622)
!1624 = !DILocation(line: 361, column: 11, scope: !1617)
!1625 = !DILocation(line: 362, column: 13, scope: !1622)
!1626 = !DILocation(line: 362, column: 13, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !105, line: 362, column: 13)
!1628 = distinct !DILexicalBlock(scope: !1622, file: !105, line: 362, column: 13)
!1629 = !DILocation(line: 362, column: 13, scope: !1628)
!1630 = !DILocation(line: 361, column: 52, scope: !1622)
!1631 = !DILocation(line: 361, column: 11, scope: !1622)
!1632 = distinct !{!1632, !1624, !1633, !386}
!1633 = !DILocation(line: 362, column: 13, scope: !1617)
!1634 = !DILocation(line: 363, column: 27, scope: !1602)
!1635 = !DILocation(line: 364, column: 24, scope: !1602)
!1636 = !DILocation(line: 364, column: 22, scope: !1602)
!1637 = !DILocation(line: 365, column: 36, scope: !1602)
!1638 = !DILocation(line: 365, column: 28, scope: !1602)
!1639 = !DILocation(line: 365, column: 26, scope: !1602)
!1640 = !DILocation(line: 367, column: 7, scope: !1582)
!1641 = !DILocation(line: 370, column: 25, scope: !1582)
!1642 = !DILocation(line: 370, column: 7, scope: !1582)
!1643 = !DILocation(line: 373, column: 26, scope: !1582)
!1644 = !DILocation(line: 373, column: 7, scope: !1582)
!1645 = !DILocation(line: 376, column: 12, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1582, file: !105, line: 376, column: 11)
!1647 = !DILocation(line: 376, column: 11, scope: !1582)
!1648 = !DILocation(line: 377, column: 27, scope: !1646)
!1649 = !DILocation(line: 377, column: 9, scope: !1646)
!1650 = !DILocation(line: 380, column: 21, scope: !1582)
!1651 = !DILocation(line: 381, column: 12, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1582, file: !105, line: 381, column: 11)
!1653 = !DILocation(line: 381, column: 11, scope: !1582)
!1654 = !DILocation(line: 382, column: 9, scope: !1652)
!1655 = !DILocation(line: 382, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !105, line: 382, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !105, line: 382, column: 9)
!1658 = !DILocation(line: 382, column: 9, scope: !1657)
!1659 = !DILocation(line: 383, column: 20, scope: !1582)
!1660 = !DILocation(line: 384, column: 24, scope: !1582)
!1661 = !DILocation(line: 385, column: 7, scope: !1582)
!1662 = !DILocation(line: 388, column: 26, scope: !1582)
!1663 = !DILocation(line: 389, column: 7, scope: !1582)
!1664 = !DILocation(line: 392, column: 7, scope: !1582)
!1665 = !DILocalVariable(name: "i", scope: !1666, file: !105, line: 395, type: !127)
!1666 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 395, column: 3)
!1667 = !DILocation(line: 395, column: 15, scope: !1666)
!1668 = !DILocation(line: 395, column: 8, scope: !1666)
!1669 = !DILocation(line: 395, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !105, line: 395, column: 3)
!1671 = !DILocation(line: 395, column: 34, scope: !1670)
!1672 = !DILocation(line: 395, column: 48, scope: !1670)
!1673 = !DILocation(line: 395, column: 52, scope: !1670)
!1674 = !DILocation(line: 395, column: 55, scope: !1670)
!1675 = !DILocation(line: 395, column: 65, scope: !1670)
!1676 = !DILocation(line: 395, column: 70, scope: !1670)
!1677 = !DILocation(line: 395, column: 67, scope: !1670)
!1678 = !DILocation(line: 395, column: 23, scope: !1670)
!1679 = !DILocation(line: 395, column: 3, scope: !1666)
!1680 = !DILocalVariable(name: "is_right_quote", scope: !1681, file: !105, line: 397, type: !50)
!1681 = distinct !DILexicalBlock(scope: !1670, file: !105, line: 396, column: 5)
!1682 = !DILocation(line: 397, column: 12, scope: !1681)
!1683 = !DILocalVariable(name: "escaping", scope: !1681, file: !105, line: 398, type: !50)
!1684 = !DILocation(line: 398, column: 12, scope: !1681)
!1685 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1681, file: !105, line: 399, type: !50)
!1686 = !DILocation(line: 399, column: 12, scope: !1681)
!1687 = !DILocation(line: 401, column: 11, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 401, column: 11)
!1689 = !DILocation(line: 402, column: 11, scope: !1688)
!1690 = !DILocation(line: 402, column: 14, scope: !1688)
!1691 = !DILocation(line: 402, column: 28, scope: !1688)
!1692 = !DILocation(line: 403, column: 11, scope: !1688)
!1693 = !DILocation(line: 403, column: 14, scope: !1688)
!1694 = !DILocation(line: 404, column: 11, scope: !1688)
!1695 = !DILocation(line: 404, column: 15, scope: !1688)
!1696 = !DILocation(line: 404, column: 19, scope: !1688)
!1697 = !DILocation(line: 404, column: 17, scope: !1688)
!1698 = !DILocation(line: 405, column: 19, scope: !1688)
!1699 = !DILocation(line: 405, column: 27, scope: !1688)
!1700 = !DILocation(line: 405, column: 39, scope: !1688)
!1701 = !DILocation(line: 405, column: 46, scope: !1688)
!1702 = !DILocation(line: 405, column: 44, scope: !1688)
!1703 = !DILocation(line: 409, column: 40, scope: !1688)
!1704 = !DILocation(line: 409, column: 32, scope: !1688)
!1705 = !DILocation(line: 409, column: 30, scope: !1688)
!1706 = !DILocation(line: 409, column: 48, scope: !1688)
!1707 = !DILocation(line: 405, column: 15, scope: !1688)
!1708 = !DILocation(line: 410, column: 11, scope: !1688)
!1709 = !DILocation(line: 410, column: 21, scope: !1688)
!1710 = !DILocation(line: 410, column: 27, scope: !1688)
!1711 = !DILocation(line: 410, column: 25, scope: !1688)
!1712 = !DILocation(line: 410, column: 30, scope: !1688)
!1713 = !DILocation(line: 410, column: 44, scope: !1688)
!1714 = !DILocation(line: 410, column: 14, scope: !1688)
!1715 = !DILocation(line: 401, column: 11, scope: !1681)
!1716 = !DILocation(line: 412, column: 15, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !105, line: 412, column: 15)
!1718 = distinct !DILexicalBlock(scope: !1688, file: !105, line: 411, column: 9)
!1719 = !DILocation(line: 412, column: 15, scope: !1718)
!1720 = !DILocation(line: 413, column: 13, scope: !1717)
!1721 = !DILocation(line: 414, column: 26, scope: !1718)
!1722 = !DILocation(line: 415, column: 9, scope: !1718)
!1723 = !DILocalVariable(name: "c", scope: !1681, file: !105, line: 417, type: !198)
!1724 = !DILocation(line: 417, column: 21, scope: !1681)
!1725 = !DILocation(line: 417, column: 25, scope: !1681)
!1726 = !DILocation(line: 417, column: 29, scope: !1681)
!1727 = !DILocation(line: 418, column: 15, scope: !1681)
!1728 = !DILocation(line: 418, column: 7, scope: !1681)
!1729 = !DILocation(line: 421, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 421, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 419, column: 9)
!1732 = !DILocation(line: 421, column: 15, scope: !1731)
!1733 = !DILocation(line: 423, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !105, line: 422, column: 13)
!1735 = !DILocation(line: 423, column: 15, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !105, line: 423, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !105, line: 423, column: 15)
!1738 = !DILocation(line: 423, column: 15, scope: !1737)
!1739 = !DILocation(line: 423, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !105, line: 423, column: 15)
!1741 = !DILocation(line: 423, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1740, file: !105, line: 423, column: 15)
!1743 = !DILocation(line: 423, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !105, line: 423, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !105, line: 423, column: 15)
!1746 = !DILocation(line: 423, column: 15, scope: !1745)
!1747 = !DILocation(line: 423, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !105, line: 423, column: 15)
!1749 = distinct !DILexicalBlock(scope: !1742, file: !105, line: 423, column: 15)
!1750 = !DILocation(line: 423, column: 15, scope: !1749)
!1751 = !DILocation(line: 423, column: 15, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !105, line: 423, column: 15)
!1753 = distinct !DILexicalBlock(scope: !1742, file: !105, line: 423, column: 15)
!1754 = !DILocation(line: 423, column: 15, scope: !1753)
!1755 = !DILocation(line: 423, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !105, line: 423, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1737, file: !105, line: 423, column: 15)
!1758 = !DILocation(line: 423, column: 15, scope: !1757)
!1759 = !DILocation(line: 430, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1734, file: !105, line: 430, column: 19)
!1761 = !DILocation(line: 430, column: 33, scope: !1760)
!1762 = !DILocation(line: 431, column: 19, scope: !1760)
!1763 = !DILocation(line: 431, column: 22, scope: !1760)
!1764 = !DILocation(line: 431, column: 24, scope: !1760)
!1765 = !DILocation(line: 431, column: 30, scope: !1760)
!1766 = !DILocation(line: 431, column: 28, scope: !1760)
!1767 = !DILocation(line: 431, column: 38, scope: !1760)
!1768 = !DILocation(line: 431, column: 48, scope: !1760)
!1769 = !DILocation(line: 431, column: 52, scope: !1760)
!1770 = !DILocation(line: 431, column: 54, scope: !1760)
!1771 = !DILocation(line: 431, column: 45, scope: !1760)
!1772 = !DILocation(line: 431, column: 59, scope: !1760)
!1773 = !DILocation(line: 431, column: 62, scope: !1760)
!1774 = !DILocation(line: 431, column: 66, scope: !1760)
!1775 = !DILocation(line: 431, column: 68, scope: !1760)
!1776 = !DILocation(line: 431, column: 73, scope: !1760)
!1777 = !DILocation(line: 430, column: 19, scope: !1734)
!1778 = !DILocation(line: 433, column: 19, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1760, file: !105, line: 432, column: 17)
!1780 = !DILocation(line: 433, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !105, line: 433, column: 19)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !105, line: 433, column: 19)
!1783 = !DILocation(line: 433, column: 19, scope: !1782)
!1784 = !DILocation(line: 434, column: 19, scope: !1779)
!1785 = !DILocation(line: 434, column: 19, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !105, line: 434, column: 19)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !105, line: 434, column: 19)
!1788 = !DILocation(line: 434, column: 19, scope: !1787)
!1789 = !DILocation(line: 435, column: 17, scope: !1779)
!1790 = !DILocation(line: 436, column: 17, scope: !1734)
!1791 = !DILocation(line: 441, column: 13, scope: !1734)
!1792 = !DILocation(line: 442, column: 20, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1730, file: !105, line: 442, column: 20)
!1794 = !DILocation(line: 442, column: 26, scope: !1793)
!1795 = !DILocation(line: 442, column: 20, scope: !1730)
!1796 = !DILocation(line: 443, column: 13, scope: !1793)
!1797 = !DILocation(line: 444, column: 11, scope: !1731)
!1798 = !DILocation(line: 447, column: 20, scope: !1731)
!1799 = !DILocation(line: 447, column: 11, scope: !1731)
!1800 = !DILocation(line: 450, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !105, line: 450, column: 19)
!1802 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 448, column: 13)
!1803 = !DILocation(line: 450, column: 19, scope: !1802)
!1804 = !DILocation(line: 451, column: 17, scope: !1801)
!1805 = !DILocation(line: 452, column: 15, scope: !1802)
!1806 = !DILocation(line: 455, column: 20, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !105, line: 455, column: 19)
!1808 = !DILocation(line: 455, column: 26, scope: !1807)
!1809 = !DILocation(line: 456, column: 19, scope: !1807)
!1810 = !DILocation(line: 456, column: 22, scope: !1807)
!1811 = !DILocation(line: 456, column: 24, scope: !1807)
!1812 = !DILocation(line: 456, column: 30, scope: !1807)
!1813 = !DILocation(line: 456, column: 28, scope: !1807)
!1814 = !DILocation(line: 456, column: 38, scope: !1807)
!1815 = !DILocation(line: 456, column: 41, scope: !1807)
!1816 = !DILocation(line: 456, column: 45, scope: !1807)
!1817 = !DILocation(line: 456, column: 47, scope: !1807)
!1818 = !DILocation(line: 456, column: 52, scope: !1807)
!1819 = !DILocation(line: 455, column: 19, scope: !1802)
!1820 = !DILocation(line: 457, column: 25, scope: !1807)
!1821 = !DILocation(line: 457, column: 29, scope: !1807)
!1822 = !DILocation(line: 457, column: 31, scope: !1807)
!1823 = !DILocation(line: 457, column: 17, scope: !1807)
!1824 = !DILocation(line: 464, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !105, line: 464, column: 25)
!1826 = distinct !DILexicalBlock(scope: !1807, file: !105, line: 458, column: 19)
!1827 = !DILocation(line: 464, column: 25, scope: !1826)
!1828 = !DILocation(line: 465, column: 23, scope: !1825)
!1829 = !DILocation(line: 466, column: 25, scope: !1826)
!1830 = !DILocation(line: 466, column: 29, scope: !1826)
!1831 = !DILocation(line: 466, column: 31, scope: !1826)
!1832 = !DILocation(line: 466, column: 23, scope: !1826)
!1833 = !DILocation(line: 467, column: 23, scope: !1826)
!1834 = !DILocation(line: 468, column: 21, scope: !1826)
!1835 = !DILocation(line: 468, column: 21, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !105, line: 468, column: 21)
!1837 = distinct !DILexicalBlock(scope: !1826, file: !105, line: 468, column: 21)
!1838 = !DILocation(line: 468, column: 21, scope: !1837)
!1839 = !DILocation(line: 469, column: 21, scope: !1826)
!1840 = !DILocation(line: 469, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !105, line: 469, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1826, file: !105, line: 469, column: 21)
!1843 = !DILocation(line: 469, column: 21, scope: !1842)
!1844 = !DILocation(line: 470, column: 21, scope: !1826)
!1845 = !DILocation(line: 470, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !105, line: 470, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1826, file: !105, line: 470, column: 21)
!1848 = !DILocation(line: 470, column: 21, scope: !1847)
!1849 = !DILocation(line: 471, column: 21, scope: !1826)
!1850 = !DILocation(line: 471, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !105, line: 471, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1826, file: !105, line: 471, column: 21)
!1853 = !DILocation(line: 471, column: 21, scope: !1852)
!1854 = !DILocation(line: 472, column: 21, scope: !1826)
!1855 = !DILocation(line: 473, column: 19, scope: !1826)
!1856 = !DILocation(line: 474, column: 15, scope: !1802)
!1857 = !DILocation(line: 476, column: 11, scope: !1731)
!1858 = !DILocation(line: 481, column: 26, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 478, column: 9)
!1860 = !DILocation(line: 481, column: 33, scope: !1859)
!1861 = !DILocation(line: 482, column: 26, scope: !1859)
!1862 = !DILocation(line: 482, column: 33, scope: !1859)
!1863 = !DILocation(line: 483, column: 26, scope: !1859)
!1864 = !DILocation(line: 483, column: 33, scope: !1859)
!1865 = !DILocation(line: 484, column: 26, scope: !1859)
!1866 = !DILocation(line: 484, column: 33, scope: !1859)
!1867 = !DILocation(line: 485, column: 26, scope: !1859)
!1868 = !DILocation(line: 485, column: 33, scope: !1859)
!1869 = !DILocation(line: 486, column: 26, scope: !1859)
!1870 = !DILocation(line: 486, column: 33, scope: !1859)
!1871 = !DILocation(line: 487, column: 26, scope: !1859)
!1872 = !DILocation(line: 487, column: 33, scope: !1859)
!1873 = !DILocation(line: 488, column: 28, scope: !1859)
!1874 = !DILocation(line: 488, column: 26, scope: !1859)
!1875 = !DILocation(line: 490, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1859, file: !105, line: 490, column: 17)
!1877 = !DILocation(line: 490, column: 31, scope: !1876)
!1878 = !DILocation(line: 490, column: 17, scope: !1859)
!1879 = !DILocation(line: 492, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !105, line: 492, column: 21)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !105, line: 491, column: 15)
!1882 = !DILocation(line: 492, column: 21, scope: !1881)
!1883 = !DILocation(line: 493, column: 19, scope: !1880)
!1884 = !DILocation(line: 494, column: 17, scope: !1881)
!1885 = !DILocation(line: 499, column: 17, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1859, file: !105, line: 499, column: 17)
!1887 = !DILocation(line: 499, column: 35, scope: !1886)
!1888 = !DILocation(line: 499, column: 38, scope: !1886)
!1889 = !DILocation(line: 499, column: 57, scope: !1886)
!1890 = !DILocation(line: 499, column: 60, scope: !1886)
!1891 = !DILocation(line: 499, column: 17, scope: !1859)
!1892 = !DILocation(line: 500, column: 15, scope: !1886)
!1893 = !DILabel(scope: !1859, name: "c_and_shell_escape", file: !105, line: 502)
!1894 = !DILocation(line: 502, column: 11, scope: !1859)
!1895 = !DILocation(line: 503, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1859, file: !105, line: 503, column: 17)
!1897 = !DILocation(line: 503, column: 31, scope: !1896)
!1898 = !DILocation(line: 504, column: 17, scope: !1896)
!1899 = !DILocation(line: 504, column: 20, scope: !1896)
!1900 = !DILocation(line: 503, column: 17, scope: !1859)
!1901 = !DILocation(line: 505, column: 15, scope: !1896)
!1902 = !DILabel(scope: !1859, name: "c_escape", file: !105, line: 507)
!1903 = !DILocation(line: 507, column: 11, scope: !1859)
!1904 = !DILocation(line: 508, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1859, file: !105, line: 508, column: 17)
!1906 = !DILocation(line: 508, column: 17, scope: !1859)
!1907 = !DILocation(line: 510, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !105, line: 509, column: 15)
!1909 = !DILocation(line: 510, column: 19, scope: !1908)
!1910 = !DILocation(line: 511, column: 17, scope: !1908)
!1911 = !DILocation(line: 513, column: 13, scope: !1859)
!1912 = !DILocation(line: 517, column: 18, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 517, column: 15)
!1914 = !DILocation(line: 517, column: 26, scope: !1913)
!1915 = !DILocation(line: 517, column: 15, scope: !1731)
!1916 = !DILocation(line: 517, column: 40, scope: !1913)
!1917 = !DILocation(line: 517, column: 47, scope: !1913)
!1918 = !DILocation(line: 517, column: 57, scope: !1913)
!1919 = !DILocation(line: 517, column: 65, scope: !1913)
!1920 = !DILocation(line: 518, column: 13, scope: !1913)
!1921 = !DILocation(line: 517, column: 69, scope: !1913)
!1922 = !DILocation(line: 521, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 521, column: 15)
!1924 = !DILocation(line: 521, column: 17, scope: !1923)
!1925 = !DILocation(line: 521, column: 15, scope: !1731)
!1926 = !DILocation(line: 522, column: 13, scope: !1923)
!1927 = !DILocation(line: 521, column: 20, scope: !1923)
!1928 = !DILocation(line: 525, column: 36, scope: !1731)
!1929 = !DILocation(line: 525, column: 11, scope: !1731)
!1930 = !DILocation(line: 536, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 536, column: 15)
!1932 = !DILocation(line: 536, column: 29, scope: !1931)
!1933 = !DILocation(line: 537, column: 15, scope: !1931)
!1934 = !DILocation(line: 537, column: 18, scope: !1931)
!1935 = !DILocation(line: 536, column: 15, scope: !1731)
!1936 = !DILocation(line: 538, column: 13, scope: !1931)
!1937 = !DILocation(line: 539, column: 11, scope: !1731)
!1938 = !DILocation(line: 542, column: 36, scope: !1731)
!1939 = !DILocation(line: 543, column: 36, scope: !1731)
!1940 = !DILocation(line: 544, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 544, column: 15)
!1942 = !DILocation(line: 544, column: 29, scope: !1941)
!1943 = !DILocation(line: 544, column: 15, scope: !1731)
!1944 = !DILocation(line: 546, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !105, line: 546, column: 19)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !105, line: 545, column: 13)
!1947 = !DILocation(line: 546, column: 19, scope: !1946)
!1948 = !DILocation(line: 547, column: 17, scope: !1945)
!1949 = !DILocation(line: 549, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !105, line: 549, column: 19)
!1951 = !DILocation(line: 549, column: 30, scope: !1950)
!1952 = !DILocation(line: 549, column: 35, scope: !1950)
!1953 = !DILocation(line: 549, column: 19, scope: !1946)
!1954 = !DILocation(line: 554, column: 37, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !105, line: 550, column: 17)
!1956 = !DILocation(line: 554, column: 35, scope: !1955)
!1957 = !DILocation(line: 555, column: 30, scope: !1955)
!1958 = !DILocation(line: 556, column: 17, scope: !1955)
!1959 = !DILocation(line: 558, column: 15, scope: !1946)
!1960 = !DILocation(line: 558, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !105, line: 558, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1946, file: !105, line: 558, column: 15)
!1963 = !DILocation(line: 558, column: 15, scope: !1962)
!1964 = !DILocation(line: 559, column: 15, scope: !1946)
!1965 = !DILocation(line: 559, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !105, line: 559, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !105, line: 559, column: 15)
!1968 = !DILocation(line: 559, column: 15, scope: !1967)
!1969 = !DILocation(line: 560, column: 15, scope: !1946)
!1970 = !DILocation(line: 560, column: 15, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !105, line: 560, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1946, file: !105, line: 560, column: 15)
!1973 = !DILocation(line: 560, column: 15, scope: !1972)
!1974 = !DILocation(line: 561, column: 40, scope: !1946)
!1975 = !DILocation(line: 562, column: 13, scope: !1946)
!1976 = !DILocation(line: 563, column: 11, scope: !1731)
!1977 = !DILocation(line: 587, column: 36, scope: !1731)
!1978 = !DILocation(line: 588, column: 11, scope: !1731)
!1979 = !DILocalVariable(name: "m", scope: !1980, file: !105, line: 598, type: !127)
!1980 = distinct !DILexicalBlock(scope: !1731, file: !105, line: 596, column: 11)
!1981 = !DILocation(line: 598, column: 20, scope: !1980)
!1982 = !DILocalVariable(name: "printable", scope: !1980, file: !105, line: 600, type: !50)
!1983 = !DILocation(line: 600, column: 18, scope: !1980)
!1984 = !DILocation(line: 602, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !105, line: 602, column: 17)
!1986 = !DILocation(line: 602, column: 17, scope: !1980)
!1987 = !DILocation(line: 604, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !105, line: 603, column: 15)
!1989 = !DILocation(line: 605, column: 29, scope: !1988)
!1990 = !DILocation(line: 605, column: 41, scope: !1988)
!1991 = !DILocation(line: 605, column: 27, scope: !1988)
!1992 = !DILocation(line: 606, column: 15, scope: !1988)
!1993 = !DILocalVariable(name: "mbs", scope: !1994, file: !105, line: 609, type: !1995)
!1994 = distinct !DILexicalBlock(scope: !1985, file: !105, line: 608, column: 15)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !201, line: 6, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !203, line: 21, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 13, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1997, file: !203, line: 15, baseType: !34, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1997, file: !203, line: 20, baseType: !2001, size: 32, offset: 32)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !203, line: 16, size: 32, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2001, file: !203, line: 18, baseType: !13, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2001, file: !203, line: 19, baseType: !212, size: 32)
!2005 = !DILocation(line: 609, column: 27, scope: !1994)
!2006 = !DILocation(line: 609, column: 32, scope: !1994)
!2007 = !DILocation(line: 611, column: 19, scope: !1994)
!2008 = !DILocation(line: 612, column: 27, scope: !1994)
!2009 = !DILocation(line: 613, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1994, file: !105, line: 613, column: 21)
!2011 = !DILocation(line: 613, column: 29, scope: !2010)
!2012 = !DILocation(line: 613, column: 21, scope: !1994)
!2013 = !DILocation(line: 614, column: 37, scope: !2010)
!2014 = !DILocation(line: 614, column: 29, scope: !2010)
!2015 = !DILocation(line: 614, column: 27, scope: !2010)
!2016 = !DILocation(line: 614, column: 19, scope: !2010)
!2017 = !DILocation(line: 616, column: 17, scope: !1994)
!2018 = !DILocalVariable(name: "w", scope: !2019, file: !105, line: 618, type: !1315)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !105, line: 617, column: 19)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !105, line: 616, column: 17)
!2021 = distinct !DILexicalBlock(scope: !1994, file: !105, line: 616, column: 17)
!2022 = !DILocation(line: 618, column: 30, scope: !2019)
!2023 = !DILocalVariable(name: "bytes", scope: !2019, file: !105, line: 619, type: !127)
!2024 = !DILocation(line: 619, column: 28, scope: !2019)
!2025 = !DILocation(line: 619, column: 51, scope: !2019)
!2026 = !DILocation(line: 619, column: 55, scope: !2019)
!2027 = !DILocation(line: 619, column: 59, scope: !2019)
!2028 = !DILocation(line: 619, column: 57, scope: !2019)
!2029 = !DILocation(line: 620, column: 46, scope: !2019)
!2030 = !DILocation(line: 620, column: 57, scope: !2019)
!2031 = !DILocation(line: 620, column: 61, scope: !2019)
!2032 = !DILocation(line: 620, column: 59, scope: !2019)
!2033 = !DILocation(line: 620, column: 54, scope: !2019)
!2034 = !DILocation(line: 619, column: 36, scope: !2019)
!2035 = !DILocation(line: 621, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2019, file: !105, line: 621, column: 25)
!2037 = !DILocation(line: 621, column: 31, scope: !2036)
!2038 = !DILocation(line: 621, column: 25, scope: !2019)
!2039 = !DILocation(line: 622, column: 23, scope: !2036)
!2040 = !DILocation(line: 623, column: 30, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !105, line: 623, column: 30)
!2042 = !DILocation(line: 623, column: 36, scope: !2041)
!2043 = !DILocation(line: 623, column: 30, scope: !2036)
!2044 = !DILocation(line: 625, column: 35, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !105, line: 624, column: 23)
!2046 = !DILocation(line: 626, column: 25, scope: !2045)
!2047 = !DILocation(line: 628, column: 30, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2041, file: !105, line: 628, column: 30)
!2049 = !DILocation(line: 628, column: 36, scope: !2048)
!2050 = !DILocation(line: 628, column: 30, scope: !2041)
!2051 = !DILocation(line: 630, column: 35, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !105, line: 629, column: 23)
!2053 = !DILocation(line: 631, column: 25, scope: !2052)
!2054 = !DILocation(line: 631, column: 32, scope: !2052)
!2055 = !DILocation(line: 631, column: 36, scope: !2052)
!2056 = !DILocation(line: 631, column: 34, scope: !2052)
!2057 = !DILocation(line: 631, column: 40, scope: !2052)
!2058 = !DILocation(line: 631, column: 38, scope: !2052)
!2059 = !DILocation(line: 631, column: 48, scope: !2052)
!2060 = !DILocation(line: 631, column: 51, scope: !2052)
!2061 = !DILocation(line: 631, column: 55, scope: !2052)
!2062 = !DILocation(line: 631, column: 59, scope: !2052)
!2063 = !DILocation(line: 631, column: 57, scope: !2052)
!2064 = !DILocation(line: 0, scope: !2052)
!2065 = !DILocation(line: 632, column: 28, scope: !2052)
!2066 = distinct !{!2066, !2053, !2065, !386}
!2067 = !DILocation(line: 633, column: 25, scope: !2052)
!2068 = !DILocation(line: 645, column: 44, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !105, line: 645, column: 29)
!2070 = distinct !DILexicalBlock(scope: !2048, file: !105, line: 636, column: 23)
!2071 = !DILocation(line: 646, column: 29, scope: !2069)
!2072 = !DILocation(line: 646, column: 32, scope: !2069)
!2073 = !DILocation(line: 646, column: 46, scope: !2069)
!2074 = !DILocation(line: 645, column: 29, scope: !2070)
!2075 = !DILocalVariable(name: "j", scope: !2076, file: !105, line: 648, type: !127)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !105, line: 648, column: 29)
!2077 = distinct !DILexicalBlock(scope: !2069, file: !105, line: 647, column: 27)
!2078 = !DILocation(line: 648, column: 41, scope: !2076)
!2079 = !DILocation(line: 648, column: 34, scope: !2076)
!2080 = !DILocation(line: 648, column: 48, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !105, line: 648, column: 29)
!2082 = !DILocation(line: 648, column: 52, scope: !2081)
!2083 = !DILocation(line: 648, column: 50, scope: !2081)
!2084 = !DILocation(line: 648, column: 29, scope: !2076)
!2085 = !DILocation(line: 649, column: 39, scope: !2081)
!2086 = !DILocation(line: 649, column: 43, scope: !2081)
!2087 = !DILocation(line: 649, column: 47, scope: !2081)
!2088 = !DILocation(line: 649, column: 45, scope: !2081)
!2089 = !DILocation(line: 649, column: 51, scope: !2081)
!2090 = !DILocation(line: 649, column: 49, scope: !2081)
!2091 = !DILocation(line: 649, column: 31, scope: !2081)
!2092 = !DILocation(line: 653, column: 35, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2081, file: !105, line: 650, column: 33)
!2094 = !DILocation(line: 654, column: 33, scope: !2093)
!2095 = !DILocation(line: 648, column: 60, scope: !2081)
!2096 = !DILocation(line: 648, column: 29, scope: !2081)
!2097 = distinct !{!2097, !2084, !2098, !386}
!2098 = !DILocation(line: 654, column: 33, scope: !2076)
!2099 = !DILocation(line: 655, column: 27, scope: !2077)
!2100 = !DILocation(line: 657, column: 43, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2070, file: !105, line: 657, column: 29)
!2102 = !DILocation(line: 657, column: 31, scope: !2101)
!2103 = !DILocation(line: 657, column: 29, scope: !2070)
!2104 = !DILocation(line: 658, column: 37, scope: !2101)
!2105 = !DILocation(line: 658, column: 27, scope: !2101)
!2106 = !DILocation(line: 659, column: 30, scope: !2070)
!2107 = !DILocation(line: 659, column: 27, scope: !2070)
!2108 = !DILocation(line: 664, column: 23, scope: !2019)
!2109 = !DILocation(line: 668, column: 40, scope: !1980)
!2110 = !DILocation(line: 668, column: 38, scope: !1980)
!2111 = !DILocation(line: 670, column: 21, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1980, file: !105, line: 670, column: 17)
!2113 = !DILocation(line: 670, column: 19, scope: !2112)
!2114 = !DILocation(line: 670, column: 23, scope: !2112)
!2115 = !DILocation(line: 670, column: 27, scope: !2112)
!2116 = !DILocation(line: 670, column: 45, scope: !2112)
!2117 = !DILocation(line: 670, column: 50, scope: !2112)
!2118 = !DILocation(line: 670, column: 17, scope: !1980)
!2119 = !DILocalVariable(name: "ilim", scope: !2120, file: !105, line: 674, type: !127)
!2120 = distinct !DILexicalBlock(scope: !2112, file: !105, line: 671, column: 15)
!2121 = !DILocation(line: 674, column: 24, scope: !2120)
!2122 = !DILocation(line: 674, column: 31, scope: !2120)
!2123 = !DILocation(line: 674, column: 35, scope: !2120)
!2124 = !DILocation(line: 674, column: 33, scope: !2120)
!2125 = !DILocation(line: 676, column: 17, scope: !2120)
!2126 = !DILocation(line: 678, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !105, line: 678, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !105, line: 677, column: 19)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !105, line: 676, column: 17)
!2130 = distinct !DILexicalBlock(scope: !2120, file: !105, line: 676, column: 17)
!2131 = !DILocation(line: 678, column: 43, scope: !2127)
!2132 = !DILocation(line: 678, column: 48, scope: !2127)
!2133 = !DILocation(line: 678, column: 25, scope: !2128)
!2134 = !DILocation(line: 680, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2127, file: !105, line: 679, column: 23)
!2136 = !DILocation(line: 680, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !105, line: 680, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !105, line: 680, column: 25)
!2139 = !DILocation(line: 680, column: 25, scope: !2138)
!2140 = !DILocation(line: 680, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !105, line: 680, column: 25)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !105, line: 680, column: 25)
!2144 = !DILocation(line: 680, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !105, line: 680, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !105, line: 680, column: 25)
!2147 = !DILocation(line: 680, column: 25, scope: !2146)
!2148 = !DILocation(line: 680, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !105, line: 680, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2143, file: !105, line: 680, column: 25)
!2151 = !DILocation(line: 680, column: 25, scope: !2150)
!2152 = !DILocation(line: 680, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !105, line: 680, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2143, file: !105, line: 680, column: 25)
!2155 = !DILocation(line: 680, column: 25, scope: !2154)
!2156 = !DILocation(line: 680, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !105, line: 680, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2138, file: !105, line: 680, column: 25)
!2159 = !DILocation(line: 680, column: 25, scope: !2158)
!2160 = !DILocation(line: 681, column: 25, scope: !2135)
!2161 = !DILocation(line: 681, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !105, line: 681, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2135, file: !105, line: 681, column: 25)
!2164 = !DILocation(line: 681, column: 25, scope: !2163)
!2165 = !DILocation(line: 682, column: 25, scope: !2135)
!2166 = !DILocation(line: 682, column: 25, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !105, line: 682, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2135, file: !105, line: 682, column: 25)
!2169 = !DILocation(line: 682, column: 25, scope: !2168)
!2170 = !DILocation(line: 683, column: 36, scope: !2135)
!2171 = !DILocation(line: 683, column: 38, scope: !2135)
!2172 = !DILocation(line: 683, column: 33, scope: !2135)
!2173 = !DILocation(line: 683, column: 29, scope: !2135)
!2174 = !DILocation(line: 683, column: 27, scope: !2135)
!2175 = !DILocation(line: 684, column: 23, scope: !2135)
!2176 = !DILocation(line: 685, column: 30, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2127, file: !105, line: 685, column: 30)
!2178 = !DILocation(line: 685, column: 30, scope: !2127)
!2179 = !DILocation(line: 687, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2177, file: !105, line: 686, column: 23)
!2181 = !DILocation(line: 687, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !105, line: 687, column: 25)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !105, line: 687, column: 25)
!2184 = !DILocation(line: 687, column: 25, scope: !2183)
!2185 = !DILocation(line: 688, column: 40, scope: !2180)
!2186 = !DILocation(line: 689, column: 23, scope: !2180)
!2187 = !DILocation(line: 690, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2128, file: !105, line: 690, column: 25)
!2189 = !DILocation(line: 690, column: 33, scope: !2188)
!2190 = !DILocation(line: 690, column: 35, scope: !2188)
!2191 = !DILocation(line: 690, column: 30, scope: !2188)
!2192 = !DILocation(line: 690, column: 25, scope: !2128)
!2193 = !DILocation(line: 691, column: 23, scope: !2188)
!2194 = !DILocation(line: 692, column: 21, scope: !2128)
!2195 = !DILocation(line: 692, column: 21, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !105, line: 692, column: 21)
!2197 = distinct !DILexicalBlock(scope: !2128, file: !105, line: 692, column: 21)
!2198 = !DILocation(line: 692, column: 21, scope: !2197)
!2199 = !DILocation(line: 692, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !105, line: 692, column: 21)
!2201 = !DILocation(line: 692, column: 21, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !105, line: 692, column: 21)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !105, line: 692, column: 21)
!2204 = !DILocation(line: 692, column: 21, scope: !2203)
!2205 = !DILocation(line: 692, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !105, line: 692, column: 21)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !105, line: 692, column: 21)
!2208 = !DILocation(line: 692, column: 21, scope: !2207)
!2209 = !DILocation(line: 693, column: 21, scope: !2128)
!2210 = !DILocation(line: 693, column: 21, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 693, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2128, file: !105, line: 693, column: 21)
!2213 = !DILocation(line: 693, column: 21, scope: !2212)
!2214 = !DILocation(line: 694, column: 25, scope: !2128)
!2215 = !DILocation(line: 694, column: 29, scope: !2128)
!2216 = !DILocation(line: 694, column: 23, scope: !2128)
!2217 = !DILocation(line: 676, column: 17, scope: !2129)
!2218 = distinct !{!2218, !2219, !2220}
!2219 = !DILocation(line: 676, column: 17, scope: !2130)
!2220 = !DILocation(line: 695, column: 19, scope: !2130)
!2221 = !DILocation(line: 697, column: 17, scope: !2120)
!2222 = !DILocation(line: 700, column: 9, scope: !1731)
!2223 = !DILocation(line: 702, column: 16, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 702, column: 11)
!2225 = !DILocation(line: 702, column: 34, scope: !2224)
!2226 = !DILocation(line: 702, column: 37, scope: !2224)
!2227 = !DILocation(line: 702, column: 51, scope: !2224)
!2228 = !DILocation(line: 703, column: 15, scope: !2224)
!2229 = !DILocation(line: 703, column: 18, scope: !2224)
!2230 = !DILocation(line: 704, column: 14, scope: !2224)
!2231 = !DILocation(line: 704, column: 17, scope: !2224)
!2232 = !DILocation(line: 705, column: 14, scope: !2224)
!2233 = !DILocation(line: 705, column: 17, scope: !2224)
!2234 = !DILocation(line: 705, column: 33, scope: !2224)
!2235 = !DILocation(line: 705, column: 35, scope: !2224)
!2236 = !DILocation(line: 705, column: 51, scope: !2224)
!2237 = !DILocation(line: 705, column: 53, scope: !2224)
!2238 = !DILocation(line: 705, column: 47, scope: !2224)
!2239 = !DILocation(line: 705, column: 65, scope: !2224)
!2240 = !DILocation(line: 706, column: 11, scope: !2224)
!2241 = !DILocation(line: 706, column: 15, scope: !2224)
!2242 = !DILocation(line: 702, column: 11, scope: !1681)
!2243 = !DILocation(line: 707, column: 9, scope: !2224)
!2244 = !DILabel(scope: !1681, name: "store_escape", file: !105, line: 709)
!2245 = !DILocation(line: 709, column: 5, scope: !1681)
!2246 = !DILocation(line: 710, column: 7, scope: !1681)
!2247 = !DILocation(line: 710, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !105, line: 710, column: 7)
!2249 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 710, column: 7)
!2250 = !DILocation(line: 710, column: 7, scope: !2249)
!2251 = !DILocation(line: 710, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !105, line: 710, column: 7)
!2253 = !DILocation(line: 710, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 710, column: 7)
!2255 = !DILocation(line: 710, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !105, line: 710, column: 7)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !105, line: 710, column: 7)
!2258 = !DILocation(line: 710, column: 7, scope: !2257)
!2259 = !DILocation(line: 710, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !105, line: 710, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2254, file: !105, line: 710, column: 7)
!2262 = !DILocation(line: 710, column: 7, scope: !2261)
!2263 = !DILocation(line: 710, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !105, line: 710, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2254, file: !105, line: 710, column: 7)
!2266 = !DILocation(line: 710, column: 7, scope: !2265)
!2267 = !DILocation(line: 710, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !105, line: 710, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2249, file: !105, line: 710, column: 7)
!2270 = !DILocation(line: 710, column: 7, scope: !2269)
!2271 = !DILabel(scope: !1681, name: "store_c", file: !105, line: 712)
!2272 = !DILocation(line: 712, column: 5, scope: !1681)
!2273 = !DILocation(line: 713, column: 7, scope: !1681)
!2274 = !DILocation(line: 713, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !105, line: 713, column: 7)
!2276 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 713, column: 7)
!2277 = !DILocation(line: 713, column: 7, scope: !2276)
!2278 = !DILocation(line: 713, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !105, line: 713, column: 7)
!2280 = !DILocation(line: 713, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !105, line: 713, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !105, line: 713, column: 7)
!2283 = !DILocation(line: 713, column: 7, scope: !2282)
!2284 = !DILocation(line: 713, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !105, line: 713, column: 7)
!2286 = distinct !DILexicalBlock(scope: !2279, file: !105, line: 713, column: 7)
!2287 = !DILocation(line: 713, column: 7, scope: !2286)
!2288 = !DILocation(line: 714, column: 7, scope: !1681)
!2289 = !DILocation(line: 714, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !105, line: 714, column: 7)
!2291 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 714, column: 7)
!2292 = !DILocation(line: 714, column: 7, scope: !2291)
!2293 = !DILocation(line: 716, column: 13, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1681, file: !105, line: 716, column: 11)
!2295 = !DILocation(line: 716, column: 11, scope: !1681)
!2296 = !DILocation(line: 717, column: 38, scope: !2294)
!2297 = !DILocation(line: 717, column: 9, scope: !2294)
!2298 = !DILocation(line: 718, column: 5, scope: !1681)
!2299 = !DILocation(line: 395, column: 82, scope: !1670)
!2300 = !DILocation(line: 395, column: 3, scope: !1670)
!2301 = distinct !{!2301, !1679, !2302, !386}
!2302 = !DILocation(line: 718, column: 5, scope: !1666)
!2303 = !DILocation(line: 720, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 720, column: 7)
!2305 = !DILocation(line: 720, column: 11, scope: !2304)
!2306 = !DILocation(line: 720, column: 16, scope: !2304)
!2307 = !DILocation(line: 720, column: 19, scope: !2304)
!2308 = !DILocation(line: 720, column: 33, scope: !2304)
!2309 = !DILocation(line: 721, column: 7, scope: !2304)
!2310 = !DILocation(line: 721, column: 10, scope: !2304)
!2311 = !DILocation(line: 720, column: 7, scope: !1528)
!2312 = !DILocation(line: 722, column: 5, scope: !2304)
!2313 = !DILocation(line: 728, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 728, column: 7)
!2315 = !DILocation(line: 728, column: 21, scope: !2314)
!2316 = !DILocation(line: 728, column: 51, scope: !2314)
!2317 = !DILocation(line: 728, column: 56, scope: !2314)
!2318 = !DILocation(line: 729, column: 7, scope: !2314)
!2319 = !DILocation(line: 729, column: 10, scope: !2314)
!2320 = !DILocation(line: 728, column: 7, scope: !1528)
!2321 = !DILocation(line: 731, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !105, line: 731, column: 11)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !105, line: 730, column: 5)
!2324 = !DILocation(line: 731, column: 11, scope: !2323)
!2325 = !DILocation(line: 732, column: 42, scope: !2322)
!2326 = !DILocation(line: 732, column: 50, scope: !2322)
!2327 = !DILocation(line: 732, column: 67, scope: !2322)
!2328 = !DILocation(line: 732, column: 72, scope: !2322)
!2329 = !DILocation(line: 734, column: 42, scope: !2322)
!2330 = !DILocation(line: 734, column: 49, scope: !2322)
!2331 = !DILocation(line: 735, column: 42, scope: !2322)
!2332 = !DILocation(line: 735, column: 54, scope: !2322)
!2333 = !DILocation(line: 732, column: 16, scope: !2322)
!2334 = !DILocation(line: 732, column: 9, scope: !2322)
!2335 = !DILocation(line: 736, column: 18, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2322, file: !105, line: 736, column: 16)
!2337 = !DILocation(line: 736, column: 29, scope: !2336)
!2338 = !DILocation(line: 736, column: 32, scope: !2336)
!2339 = !DILocation(line: 736, column: 16, scope: !2322)
!2340 = !DILocation(line: 739, column: 24, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !105, line: 737, column: 9)
!2342 = !DILocation(line: 739, column: 22, scope: !2341)
!2343 = !DILocation(line: 740, column: 15, scope: !2341)
!2344 = !DILocation(line: 741, column: 11, scope: !2341)
!2345 = !DILocation(line: 743, column: 5, scope: !2323)
!2346 = !DILocation(line: 745, column: 7, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 745, column: 7)
!2348 = !DILocation(line: 745, column: 20, scope: !2347)
!2349 = !DILocation(line: 745, column: 24, scope: !2347)
!2350 = !DILocation(line: 745, column: 7, scope: !1528)
!2351 = !DILocation(line: 746, column: 5, scope: !2347)
!2352 = !DILocation(line: 746, column: 13, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !105, line: 746, column: 5)
!2354 = distinct !DILexicalBlock(scope: !2347, file: !105, line: 746, column: 5)
!2355 = !DILocation(line: 746, column: 12, scope: !2353)
!2356 = !DILocation(line: 746, column: 5, scope: !2354)
!2357 = !DILocation(line: 747, column: 7, scope: !2353)
!2358 = !DILocation(line: 747, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !105, line: 747, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2353, file: !105, line: 747, column: 7)
!2361 = !DILocation(line: 747, column: 7, scope: !2360)
!2362 = !DILocation(line: 746, column: 39, scope: !2353)
!2363 = !DILocation(line: 746, column: 5, scope: !2353)
!2364 = distinct !{!2364, !2356, !2365, !386}
!2365 = !DILocation(line: 747, column: 7, scope: !2354)
!2366 = !DILocation(line: 749, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 749, column: 7)
!2368 = !DILocation(line: 749, column: 13, scope: !2367)
!2369 = !DILocation(line: 749, column: 11, scope: !2367)
!2370 = !DILocation(line: 749, column: 7, scope: !1528)
!2371 = !DILocation(line: 750, column: 5, scope: !2367)
!2372 = !DILocation(line: 750, column: 12, scope: !2367)
!2373 = !DILocation(line: 750, column: 17, scope: !2367)
!2374 = !DILocation(line: 751, column: 10, scope: !1528)
!2375 = !DILocation(line: 751, column: 3, scope: !1528)
!2376 = !DILabel(scope: !1528, name: "force_outer_quoting_style", file: !105, line: 753)
!2377 = !DILocation(line: 753, column: 2, scope: !1528)
!2378 = !DILocation(line: 756, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1528, file: !105, line: 756, column: 7)
!2380 = !DILocation(line: 756, column: 21, scope: !2379)
!2381 = !DILocation(line: 756, column: 51, scope: !2379)
!2382 = !DILocation(line: 756, column: 54, scope: !2379)
!2383 = !DILocation(line: 756, column: 7, scope: !1528)
!2384 = !DILocation(line: 757, column: 19, scope: !2379)
!2385 = !DILocation(line: 757, column: 5, scope: !2379)
!2386 = !DILocation(line: 758, column: 36, scope: !1528)
!2387 = !DILocation(line: 758, column: 44, scope: !1528)
!2388 = !DILocation(line: 758, column: 56, scope: !1528)
!2389 = !DILocation(line: 758, column: 61, scope: !1528)
!2390 = !DILocation(line: 759, column: 36, scope: !1528)
!2391 = !DILocation(line: 760, column: 36, scope: !1528)
!2392 = !DILocation(line: 760, column: 42, scope: !1528)
!2393 = !DILocation(line: 761, column: 36, scope: !1528)
!2394 = !DILocation(line: 761, column: 48, scope: !1528)
!2395 = !DILocation(line: 758, column: 10, scope: !1528)
!2396 = !DILocation(line: 758, column: 3, scope: !1528)
!2397 = !DILocation(line: 762, column: 1, scope: !1528)
!2398 = !DILocalVariable(name: "msgid", arg: 1, scope: !158, file: !105, line: 197, type: !6)
!2399 = !DILocation(line: 197, column: 28, scope: !158)
!2400 = !DILocalVariable(name: "s", arg: 2, scope: !158, file: !105, line: 197, type: !107)
!2401 = !DILocation(line: 197, column: 54, scope: !158)
!2402 = !DILocalVariable(name: "translation", scope: !158, file: !105, line: 199, type: !6)
!2403 = !DILocation(line: 199, column: 15, scope: !158)
!2404 = !DILocation(line: 199, column: 29, scope: !158)
!2405 = !DILocation(line: 201, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !158, file: !105, line: 201, column: 7)
!2407 = !DILocation(line: 201, column: 22, scope: !2406)
!2408 = !DILocation(line: 201, column: 19, scope: !2406)
!2409 = !DILocation(line: 201, column: 7, scope: !158)
!2410 = !DILocation(line: 202, column: 12, scope: !2406)
!2411 = !DILocation(line: 202, column: 5, scope: !2406)
!2412 = !DILocalVariable(name: "w", scope: !158, file: !105, line: 229, type: !1315)
!2413 = !DILocation(line: 229, column: 12, scope: !158)
!2414 = !DILocalVariable(name: "mbs", scope: !158, file: !105, line: 230, type: !1995)
!2415 = !DILocation(line: 230, column: 13, scope: !158)
!2416 = !DILocation(line: 230, column: 18, scope: !158)
!2417 = !DILocation(line: 231, column: 7, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !158, file: !105, line: 231, column: 7)
!2419 = !DILocation(line: 231, column: 40, scope: !2418)
!2420 = !DILocation(line: 231, column: 45, scope: !2418)
!2421 = !DILocation(line: 231, column: 48, scope: !2418)
!2422 = !DILocation(line: 231, column: 50, scope: !2418)
!2423 = !DILocation(line: 231, column: 7, scope: !158)
!2424 = !DILocation(line: 232, column: 18, scope: !2418)
!2425 = !DILocation(line: 232, column: 27, scope: !2418)
!2426 = !DILocation(line: 232, column: 12, scope: !2418)
!2427 = !DILocation(line: 232, column: 5, scope: !2418)
!2428 = !DILocation(line: 234, column: 11, scope: !158)
!2429 = !DILocation(line: 234, column: 13, scope: !158)
!2430 = !DILocation(line: 234, column: 3, scope: !158)
!2431 = !DILocation(line: 235, column: 1, scope: !158)
!2432 = distinct !DISubprogram(name: "quotearg_alloc", scope: !105, file: !105, line: 788, type: !2433, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!32, !6, !127, !1368}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2432, file: !105, line: 788, type: !6)
!2436 = !DILocation(line: 788, column: 29, scope: !2432)
!2437 = !DILocalVariable(name: "argsize", arg: 2, scope: !2432, file: !105, line: 788, type: !127)
!2438 = !DILocation(line: 788, column: 41, scope: !2432)
!2439 = !DILocalVariable(name: "o", arg: 3, scope: !2432, file: !105, line: 789, type: !1368)
!2440 = !DILocation(line: 789, column: 47, scope: !2432)
!2441 = !DILocation(line: 791, column: 30, scope: !2432)
!2442 = !DILocation(line: 791, column: 35, scope: !2432)
!2443 = !DILocation(line: 791, column: 50, scope: !2432)
!2444 = !DILocation(line: 791, column: 10, scope: !2432)
!2445 = !DILocation(line: 791, column: 3, scope: !2432)
!2446 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !105, file: !105, line: 801, type: !2447, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!32, !6, !127, !233, !1368}
!2449 = !DILocalVariable(name: "arg", arg: 1, scope: !2446, file: !105, line: 801, type: !6)
!2450 = !DILocation(line: 801, column: 33, scope: !2446)
!2451 = !DILocalVariable(name: "argsize", arg: 2, scope: !2446, file: !105, line: 801, type: !127)
!2452 = !DILocation(line: 801, column: 45, scope: !2446)
!2453 = !DILocalVariable(name: "size", arg: 3, scope: !2446, file: !105, line: 801, type: !233)
!2454 = !DILocation(line: 801, column: 62, scope: !2446)
!2455 = !DILocalVariable(name: "o", arg: 4, scope: !2446, file: !105, line: 802, type: !1368)
!2456 = !DILocation(line: 802, column: 51, scope: !2446)
!2457 = !DILocalVariable(name: "p", scope: !2446, file: !105, line: 804, type: !1368)
!2458 = !DILocation(line: 804, column: 33, scope: !2446)
!2459 = !DILocation(line: 804, column: 37, scope: !2446)
!2460 = !DILocation(line: 804, column: 41, scope: !2446)
!2461 = !DILocalVariable(name: "saved_errno", scope: !2446, file: !105, line: 805, type: !34)
!2462 = !DILocation(line: 805, column: 7, scope: !2446)
!2463 = !DILocation(line: 805, column: 21, scope: !2446)
!2464 = !DILocalVariable(name: "flags", scope: !2446, file: !105, line: 807, type: !34)
!2465 = !DILocation(line: 807, column: 7, scope: !2446)
!2466 = !DILocation(line: 807, column: 15, scope: !2446)
!2467 = !DILocation(line: 807, column: 18, scope: !2446)
!2468 = !DILocation(line: 807, column: 27, scope: !2446)
!2469 = !DILocation(line: 807, column: 24, scope: !2446)
!2470 = !DILocalVariable(name: "bufsize", scope: !2446, file: !105, line: 808, type: !127)
!2471 = !DILocation(line: 808, column: 10, scope: !2446)
!2472 = !DILocation(line: 808, column: 55, scope: !2446)
!2473 = !DILocation(line: 808, column: 60, scope: !2446)
!2474 = !DILocation(line: 808, column: 69, scope: !2446)
!2475 = !DILocation(line: 808, column: 72, scope: !2446)
!2476 = !DILocation(line: 809, column: 46, scope: !2446)
!2477 = !DILocation(line: 809, column: 53, scope: !2446)
!2478 = !DILocation(line: 809, column: 56, scope: !2446)
!2479 = !DILocation(line: 810, column: 46, scope: !2446)
!2480 = !DILocation(line: 810, column: 49, scope: !2446)
!2481 = !DILocation(line: 811, column: 46, scope: !2446)
!2482 = !DILocation(line: 811, column: 49, scope: !2446)
!2483 = !DILocation(line: 808, column: 20, scope: !2446)
!2484 = !DILocation(line: 811, column: 62, scope: !2446)
!2485 = !DILocalVariable(name: "buf", scope: !2446, file: !105, line: 812, type: !32)
!2486 = !DILocation(line: 812, column: 9, scope: !2446)
!2487 = !DILocation(line: 812, column: 27, scope: !2446)
!2488 = !DILocation(line: 812, column: 15, scope: !2446)
!2489 = !DILocation(line: 813, column: 29, scope: !2446)
!2490 = !DILocation(line: 813, column: 34, scope: !2446)
!2491 = !DILocation(line: 813, column: 43, scope: !2446)
!2492 = !DILocation(line: 813, column: 48, scope: !2446)
!2493 = !DILocation(line: 813, column: 57, scope: !2446)
!2494 = !DILocation(line: 813, column: 60, scope: !2446)
!2495 = !DILocation(line: 813, column: 67, scope: !2446)
!2496 = !DILocation(line: 814, column: 29, scope: !2446)
!2497 = !DILocation(line: 814, column: 32, scope: !2446)
!2498 = !DILocation(line: 815, column: 29, scope: !2446)
!2499 = !DILocation(line: 815, column: 32, scope: !2446)
!2500 = !DILocation(line: 815, column: 44, scope: !2446)
!2501 = !DILocation(line: 815, column: 47, scope: !2446)
!2502 = !DILocation(line: 813, column: 3, scope: !2446)
!2503 = !DILocation(line: 816, column: 11, scope: !2446)
!2504 = !DILocation(line: 816, column: 3, scope: !2446)
!2505 = !DILocation(line: 816, column: 9, scope: !2446)
!2506 = !DILocation(line: 817, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2446, file: !105, line: 817, column: 7)
!2508 = !DILocation(line: 817, column: 7, scope: !2446)
!2509 = !DILocation(line: 818, column: 13, scope: !2507)
!2510 = !DILocation(line: 818, column: 21, scope: !2507)
!2511 = !DILocation(line: 818, column: 6, scope: !2507)
!2512 = !DILocation(line: 818, column: 11, scope: !2507)
!2513 = !DILocation(line: 818, column: 5, scope: !2507)
!2514 = !DILocation(line: 819, column: 10, scope: !2446)
!2515 = !DILocation(line: 819, column: 3, scope: !2446)
!2516 = distinct !DISubprogram(name: "quotearg_free", scope: !105, file: !105, line: 837, type: !83, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2517 = !DILocalVariable(name: "sv", scope: !2516, file: !105, line: 839, type: !166)
!2518 = !DILocation(line: 839, column: 19, scope: !2516)
!2519 = !DILocation(line: 839, column: 24, scope: !2516)
!2520 = !DILocalVariable(name: "i", scope: !2521, file: !105, line: 840, type: !34)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !105, line: 840, column: 3)
!2522 = !DILocation(line: 840, column: 12, scope: !2521)
!2523 = !DILocation(line: 840, column: 8, scope: !2521)
!2524 = !DILocation(line: 840, column: 19, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !105, line: 840, column: 3)
!2526 = !DILocation(line: 840, column: 23, scope: !2525)
!2527 = !DILocation(line: 840, column: 21, scope: !2525)
!2528 = !DILocation(line: 840, column: 3, scope: !2521)
!2529 = !DILocation(line: 841, column: 11, scope: !2525)
!2530 = !DILocation(line: 841, column: 14, scope: !2525)
!2531 = !DILocation(line: 841, column: 17, scope: !2525)
!2532 = !DILocation(line: 841, column: 5, scope: !2525)
!2533 = !DILocation(line: 840, column: 32, scope: !2525)
!2534 = !DILocation(line: 840, column: 3, scope: !2525)
!2535 = distinct !{!2535, !2528, !2536, !386}
!2536 = !DILocation(line: 841, column: 20, scope: !2521)
!2537 = !DILocation(line: 842, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2516, file: !105, line: 842, column: 7)
!2539 = !DILocation(line: 842, column: 13, scope: !2538)
!2540 = !DILocation(line: 842, column: 17, scope: !2538)
!2541 = !DILocation(line: 842, column: 7, scope: !2516)
!2542 = !DILocation(line: 844, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !105, line: 843, column: 5)
!2544 = !DILocation(line: 844, column: 19, scope: !2543)
!2545 = !DILocation(line: 844, column: 7, scope: !2543)
!2546 = !DILocation(line: 845, column: 21, scope: !2543)
!2547 = !DILocation(line: 846, column: 20, scope: !2543)
!2548 = !DILocation(line: 847, column: 5, scope: !2543)
!2549 = !DILocation(line: 848, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2516, file: !105, line: 848, column: 7)
!2551 = !DILocation(line: 848, column: 10, scope: !2550)
!2552 = !DILocation(line: 848, column: 7, scope: !2516)
!2553 = !DILocation(line: 850, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !105, line: 849, column: 5)
!2555 = !DILocation(line: 850, column: 7, scope: !2554)
!2556 = !DILocation(line: 851, column: 15, scope: !2554)
!2557 = !DILocation(line: 852, column: 5, scope: !2554)
!2558 = !DILocation(line: 853, column: 10, scope: !2516)
!2559 = !DILocation(line: 854, column: 1, scope: !2516)
!2560 = distinct !DISubprogram(name: "quotearg_n", scope: !105, file: !105, line: 919, type: !2561, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!32, !34, !6}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2560, file: !105, line: 919, type: !34)
!2564 = !DILocation(line: 919, column: 17, scope: !2560)
!2565 = !DILocalVariable(name: "arg", arg: 2, scope: !2560, file: !105, line: 919, type: !6)
!2566 = !DILocation(line: 919, column: 32, scope: !2560)
!2567 = !DILocation(line: 921, column: 30, scope: !2560)
!2568 = !DILocation(line: 921, column: 33, scope: !2560)
!2569 = !DILocation(line: 921, column: 10, scope: !2560)
!2570 = !DILocation(line: 921, column: 3, scope: !2560)
!2571 = distinct !DISubprogram(name: "quotearg_n_options", scope: !105, file: !105, line: 866, type: !2572, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!32, !34, !6, !127, !1368}
!2574 = !DILocalVariable(name: "n", arg: 1, scope: !2571, file: !105, line: 866, type: !34)
!2575 = !DILocation(line: 866, column: 25, scope: !2571)
!2576 = !DILocalVariable(name: "arg", arg: 2, scope: !2571, file: !105, line: 866, type: !6)
!2577 = !DILocation(line: 866, column: 40, scope: !2571)
!2578 = !DILocalVariable(name: "argsize", arg: 3, scope: !2571, file: !105, line: 866, type: !127)
!2579 = !DILocation(line: 866, column: 52, scope: !2571)
!2580 = !DILocalVariable(name: "options", arg: 4, scope: !2571, file: !105, line: 867, type: !1368)
!2581 = !DILocation(line: 867, column: 51, scope: !2571)
!2582 = !DILocalVariable(name: "saved_errno", scope: !2571, file: !105, line: 869, type: !34)
!2583 = !DILocation(line: 869, column: 7, scope: !2571)
!2584 = !DILocation(line: 869, column: 21, scope: !2571)
!2585 = !DILocalVariable(name: "sv", scope: !2571, file: !105, line: 871, type: !166)
!2586 = !DILocation(line: 871, column: 19, scope: !2571)
!2587 = !DILocation(line: 871, column: 24, scope: !2571)
!2588 = !DILocalVariable(name: "nslots_max", scope: !2571, file: !105, line: 873, type: !34)
!2589 = !DILocation(line: 873, column: 7, scope: !2571)
!2590 = !DILocation(line: 874, column: 15, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2571, file: !105, line: 874, column: 7)
!2592 = !DILocation(line: 874, column: 12, scope: !2591)
!2593 = !DILocation(line: 874, column: 17, scope: !2591)
!2594 = !DILocation(line: 874, column: 20, scope: !2591)
!2595 = !DILocation(line: 874, column: 24, scope: !2591)
!2596 = !DILocation(line: 874, column: 22, scope: !2591)
!2597 = !DILocation(line: 874, column: 7, scope: !2571)
!2598 = !DILocation(line: 875, column: 5, scope: !2591)
!2599 = !DILocation(line: 877, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2571, file: !105, line: 877, column: 7)
!2601 = !DILocation(line: 877, column: 17, scope: !2600)
!2602 = !DILocation(line: 877, column: 14, scope: !2600)
!2603 = !DILocation(line: 877, column: 7, scope: !2571)
!2604 = !DILocalVariable(name: "preallocated", scope: !2605, file: !105, line: 879, type: !50)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !105, line: 878, column: 5)
!2606 = !DILocation(line: 879, column: 12, scope: !2605)
!2607 = !DILocation(line: 879, column: 28, scope: !2605)
!2608 = !DILocation(line: 879, column: 31, scope: !2605)
!2609 = !DILocalVariable(name: "new_nslots", scope: !2605, file: !105, line: 880, type: !241)
!2610 = !DILocation(line: 880, column: 13, scope: !2605)
!2611 = !DILocation(line: 880, column: 26, scope: !2605)
!2612 = !DILocation(line: 882, column: 31, scope: !2605)
!2613 = !DILocation(line: 882, column: 53, scope: !2605)
!2614 = !DILocation(line: 883, column: 31, scope: !2605)
!2615 = !DILocation(line: 883, column: 35, scope: !2605)
!2616 = !DILocation(line: 883, column: 33, scope: !2605)
!2617 = !DILocation(line: 883, column: 42, scope: !2605)
!2618 = !DILocation(line: 883, column: 47, scope: !2605)
!2619 = !DILocation(line: 882, column: 22, scope: !2605)
!2620 = !DILocation(line: 882, column: 20, scope: !2605)
!2621 = !DILocation(line: 882, column: 15, scope: !2605)
!2622 = !DILocation(line: 884, column: 11, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2605, file: !105, line: 884, column: 11)
!2624 = !DILocation(line: 884, column: 11, scope: !2605)
!2625 = !DILocation(line: 885, column: 10, scope: !2623)
!2626 = !DILocation(line: 885, column: 15, scope: !2623)
!2627 = !DILocation(line: 885, column: 9, scope: !2623)
!2628 = !DILocation(line: 886, column: 15, scope: !2605)
!2629 = !DILocation(line: 886, column: 20, scope: !2605)
!2630 = !DILocation(line: 886, column: 18, scope: !2605)
!2631 = !DILocation(line: 886, column: 7, scope: !2605)
!2632 = !DILocation(line: 886, column: 32, scope: !2605)
!2633 = !DILocation(line: 886, column: 45, scope: !2605)
!2634 = !DILocation(line: 886, column: 43, scope: !2605)
!2635 = !DILocation(line: 886, column: 53, scope: !2605)
!2636 = !DILocation(line: 887, column: 16, scope: !2605)
!2637 = !DILocation(line: 887, column: 14, scope: !2605)
!2638 = !DILocation(line: 888, column: 5, scope: !2605)
!2639 = !DILocalVariable(name: "size", scope: !2640, file: !105, line: 891, type: !127)
!2640 = distinct !DILexicalBlock(scope: !2571, file: !105, line: 890, column: 3)
!2641 = !DILocation(line: 891, column: 12, scope: !2640)
!2642 = !DILocation(line: 891, column: 19, scope: !2640)
!2643 = !DILocation(line: 891, column: 22, scope: !2640)
!2644 = !DILocation(line: 891, column: 25, scope: !2640)
!2645 = !DILocalVariable(name: "val", scope: !2640, file: !105, line: 892, type: !32)
!2646 = !DILocation(line: 892, column: 11, scope: !2640)
!2647 = !DILocation(line: 892, column: 17, scope: !2640)
!2648 = !DILocation(line: 892, column: 20, scope: !2640)
!2649 = !DILocation(line: 892, column: 23, scope: !2640)
!2650 = !DILocalVariable(name: "flags", scope: !2640, file: !105, line: 894, type: !34)
!2651 = !DILocation(line: 894, column: 9, scope: !2640)
!2652 = !DILocation(line: 894, column: 17, scope: !2640)
!2653 = !DILocation(line: 894, column: 26, scope: !2640)
!2654 = !DILocation(line: 894, column: 32, scope: !2640)
!2655 = !DILocalVariable(name: "qsize", scope: !2640, file: !105, line: 895, type: !127)
!2656 = !DILocation(line: 895, column: 12, scope: !2640)
!2657 = !DILocation(line: 895, column: 46, scope: !2640)
!2658 = !DILocation(line: 895, column: 51, scope: !2640)
!2659 = !DILocation(line: 895, column: 57, scope: !2640)
!2660 = !DILocation(line: 895, column: 62, scope: !2640)
!2661 = !DILocation(line: 896, column: 46, scope: !2640)
!2662 = !DILocation(line: 896, column: 55, scope: !2640)
!2663 = !DILocation(line: 896, column: 62, scope: !2640)
!2664 = !DILocation(line: 897, column: 46, scope: !2640)
!2665 = !DILocation(line: 897, column: 55, scope: !2640)
!2666 = !DILocation(line: 898, column: 46, scope: !2640)
!2667 = !DILocation(line: 898, column: 55, scope: !2640)
!2668 = !DILocation(line: 899, column: 46, scope: !2640)
!2669 = !DILocation(line: 899, column: 55, scope: !2640)
!2670 = !DILocation(line: 895, column: 20, scope: !2640)
!2671 = !DILocation(line: 901, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2640, file: !105, line: 901, column: 9)
!2673 = !DILocation(line: 901, column: 17, scope: !2672)
!2674 = !DILocation(line: 901, column: 14, scope: !2672)
!2675 = !DILocation(line: 901, column: 9, scope: !2640)
!2676 = !DILocation(line: 903, column: 29, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !105, line: 902, column: 7)
!2678 = !DILocation(line: 903, column: 35, scope: !2677)
!2679 = !DILocation(line: 903, column: 27, scope: !2677)
!2680 = !DILocation(line: 903, column: 9, scope: !2677)
!2681 = !DILocation(line: 903, column: 12, scope: !2677)
!2682 = !DILocation(line: 903, column: 15, scope: !2677)
!2683 = !DILocation(line: 903, column: 20, scope: !2677)
!2684 = !DILocation(line: 904, column: 13, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !105, line: 904, column: 13)
!2686 = !DILocation(line: 904, column: 17, scope: !2685)
!2687 = !DILocation(line: 904, column: 13, scope: !2677)
!2688 = !DILocation(line: 905, column: 17, scope: !2685)
!2689 = !DILocation(line: 905, column: 11, scope: !2685)
!2690 = !DILocation(line: 906, column: 39, scope: !2677)
!2691 = !DILocation(line: 906, column: 27, scope: !2677)
!2692 = !DILocation(line: 906, column: 25, scope: !2677)
!2693 = !DILocation(line: 906, column: 9, scope: !2677)
!2694 = !DILocation(line: 906, column: 12, scope: !2677)
!2695 = !DILocation(line: 906, column: 15, scope: !2677)
!2696 = !DILocation(line: 906, column: 19, scope: !2677)
!2697 = !DILocation(line: 907, column: 35, scope: !2677)
!2698 = !DILocation(line: 907, column: 40, scope: !2677)
!2699 = !DILocation(line: 907, column: 46, scope: !2677)
!2700 = !DILocation(line: 907, column: 51, scope: !2677)
!2701 = !DILocation(line: 907, column: 60, scope: !2677)
!2702 = !DILocation(line: 907, column: 69, scope: !2677)
!2703 = !DILocation(line: 908, column: 35, scope: !2677)
!2704 = !DILocation(line: 908, column: 42, scope: !2677)
!2705 = !DILocation(line: 908, column: 51, scope: !2677)
!2706 = !DILocation(line: 909, column: 35, scope: !2677)
!2707 = !DILocation(line: 909, column: 44, scope: !2677)
!2708 = !DILocation(line: 910, column: 35, scope: !2677)
!2709 = !DILocation(line: 910, column: 44, scope: !2677)
!2710 = !DILocation(line: 907, column: 9, scope: !2677)
!2711 = !DILocation(line: 911, column: 7, scope: !2677)
!2712 = !DILocation(line: 913, column: 13, scope: !2640)
!2713 = !DILocation(line: 913, column: 5, scope: !2640)
!2714 = !DILocation(line: 913, column: 11, scope: !2640)
!2715 = !DILocation(line: 914, column: 12, scope: !2640)
!2716 = !DILocation(line: 914, column: 5, scope: !2640)
!2717 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !105, file: !105, line: 925, type: !2718, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!32, !34, !6, !127}
!2720 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !105, line: 925, type: !34)
!2721 = !DILocation(line: 925, column: 21, scope: !2717)
!2722 = !DILocalVariable(name: "arg", arg: 2, scope: !2717, file: !105, line: 925, type: !6)
!2723 = !DILocation(line: 925, column: 36, scope: !2717)
!2724 = !DILocalVariable(name: "argsize", arg: 3, scope: !2717, file: !105, line: 925, type: !127)
!2725 = !DILocation(line: 925, column: 48, scope: !2717)
!2726 = !DILocation(line: 927, column: 30, scope: !2717)
!2727 = !DILocation(line: 927, column: 33, scope: !2717)
!2728 = !DILocation(line: 927, column: 38, scope: !2717)
!2729 = !DILocation(line: 927, column: 10, scope: !2717)
!2730 = !DILocation(line: 927, column: 3, scope: !2717)
!2731 = distinct !DISubprogram(name: "quotearg", scope: !105, file: !105, line: 931, type: !2732, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!32, !6}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !105, line: 931, type: !6)
!2735 = !DILocation(line: 931, column: 23, scope: !2731)
!2736 = !DILocation(line: 933, column: 25, scope: !2731)
!2737 = !DILocation(line: 933, column: 10, scope: !2731)
!2738 = !DILocation(line: 933, column: 3, scope: !2731)
!2739 = distinct !DISubprogram(name: "quotearg_mem", scope: !105, file: !105, line: 937, type: !2740, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!32, !6, !127}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !105, line: 937, type: !6)
!2743 = !DILocation(line: 937, column: 27, scope: !2739)
!2744 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !105, line: 937, type: !127)
!2745 = !DILocation(line: 937, column: 39, scope: !2739)
!2746 = !DILocation(line: 939, column: 29, scope: !2739)
!2747 = !DILocation(line: 939, column: 34, scope: !2739)
!2748 = !DILocation(line: 939, column: 10, scope: !2739)
!2749 = !DILocation(line: 939, column: 3, scope: !2739)
!2750 = distinct !DISubprogram(name: "quotearg_n_style", scope: !105, file: !105, line: 943, type: !2751, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!32, !34, !107, !6}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !105, line: 943, type: !34)
!2754 = !DILocation(line: 943, column: 23, scope: !2750)
!2755 = !DILocalVariable(name: "s", arg: 2, scope: !2750, file: !105, line: 943, type: !107)
!2756 = !DILocation(line: 943, column: 45, scope: !2750)
!2757 = !DILocalVariable(name: "arg", arg: 3, scope: !2750, file: !105, line: 943, type: !6)
!2758 = !DILocation(line: 943, column: 60, scope: !2750)
!2759 = !DILocalVariable(name: "o", scope: !2750, file: !105, line: 945, type: !1369)
!2760 = !DILocation(line: 945, column: 32, scope: !2750)
!2761 = !DILocation(line: 945, column: 64, scope: !2750)
!2762 = !DILocation(line: 945, column: 36, scope: !2750)
!2763 = !DILocation(line: 946, column: 30, scope: !2750)
!2764 = !DILocation(line: 946, column: 33, scope: !2750)
!2765 = !DILocation(line: 946, column: 10, scope: !2750)
!2766 = !DILocation(line: 946, column: 3, scope: !2750)
!2767 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !105, file: !105, line: 183, type: !2768, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!139, !107}
!2770 = !DILocalVariable(name: "style", arg: 1, scope: !2767, file: !105, line: 183, type: !107)
!2771 = !DILocation(line: 183, column: 48, scope: !2767)
!2772 = !DILocalVariable(name: "o", scope: !2767, file: !105, line: 185, type: !139)
!2773 = !DILocation(line: 185, column: 26, scope: !2767)
!2774 = !DILocation(line: 186, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !105, line: 186, column: 7)
!2776 = !DILocation(line: 186, column: 13, scope: !2775)
!2777 = !DILocation(line: 186, column: 7, scope: !2767)
!2778 = !DILocation(line: 187, column: 5, scope: !2775)
!2779 = !DILocation(line: 188, column: 13, scope: !2767)
!2780 = !DILocation(line: 188, column: 5, scope: !2767)
!2781 = !DILocation(line: 188, column: 11, scope: !2767)
!2782 = !DILocation(line: 189, column: 3, scope: !2767)
!2783 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !105, file: !105, line: 950, type: !2784, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!32, !34, !107, !6, !127}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !105, line: 950, type: !34)
!2787 = !DILocation(line: 950, column: 27, scope: !2783)
!2788 = !DILocalVariable(name: "s", arg: 2, scope: !2783, file: !105, line: 950, type: !107)
!2789 = !DILocation(line: 950, column: 49, scope: !2783)
!2790 = !DILocalVariable(name: "arg", arg: 3, scope: !2783, file: !105, line: 951, type: !6)
!2791 = !DILocation(line: 951, column: 35, scope: !2783)
!2792 = !DILocalVariable(name: "argsize", arg: 4, scope: !2783, file: !105, line: 951, type: !127)
!2793 = !DILocation(line: 951, column: 47, scope: !2783)
!2794 = !DILocalVariable(name: "o", scope: !2783, file: !105, line: 953, type: !1369)
!2795 = !DILocation(line: 953, column: 32, scope: !2783)
!2796 = !DILocation(line: 953, column: 64, scope: !2783)
!2797 = !DILocation(line: 953, column: 36, scope: !2783)
!2798 = !DILocation(line: 954, column: 30, scope: !2783)
!2799 = !DILocation(line: 954, column: 33, scope: !2783)
!2800 = !DILocation(line: 954, column: 38, scope: !2783)
!2801 = !DILocation(line: 954, column: 10, scope: !2783)
!2802 = !DILocation(line: 954, column: 3, scope: !2783)
!2803 = distinct !DISubprogram(name: "quotearg_style", scope: !105, file: !105, line: 958, type: !2804, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!32, !107, !6}
!2806 = !DILocalVariable(name: "s", arg: 1, scope: !2803, file: !105, line: 958, type: !107)
!2807 = !DILocation(line: 958, column: 36, scope: !2803)
!2808 = !DILocalVariable(name: "arg", arg: 2, scope: !2803, file: !105, line: 958, type: !6)
!2809 = !DILocation(line: 958, column: 51, scope: !2803)
!2810 = !DILocation(line: 960, column: 31, scope: !2803)
!2811 = !DILocation(line: 960, column: 34, scope: !2803)
!2812 = !DILocation(line: 960, column: 10, scope: !2803)
!2813 = !DILocation(line: 960, column: 3, scope: !2803)
!2814 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !105, file: !105, line: 964, type: !2815, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!32, !107, !6, !127}
!2817 = !DILocalVariable(name: "s", arg: 1, scope: !2814, file: !105, line: 964, type: !107)
!2818 = !DILocation(line: 964, column: 40, scope: !2814)
!2819 = !DILocalVariable(name: "arg", arg: 2, scope: !2814, file: !105, line: 964, type: !6)
!2820 = !DILocation(line: 964, column: 55, scope: !2814)
!2821 = !DILocalVariable(name: "argsize", arg: 3, scope: !2814, file: !105, line: 964, type: !127)
!2822 = !DILocation(line: 964, column: 67, scope: !2814)
!2823 = !DILocation(line: 966, column: 35, scope: !2814)
!2824 = !DILocation(line: 966, column: 38, scope: !2814)
!2825 = !DILocation(line: 966, column: 43, scope: !2814)
!2826 = !DILocation(line: 966, column: 10, scope: !2814)
!2827 = !DILocation(line: 966, column: 3, scope: !2814)
!2828 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !105, file: !105, line: 970, type: !2829, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!32, !6, !127, !8}
!2831 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !105, line: 970, type: !6)
!2832 = !DILocation(line: 970, column: 32, scope: !2828)
!2833 = !DILocalVariable(name: "argsize", arg: 2, scope: !2828, file: !105, line: 970, type: !127)
!2834 = !DILocation(line: 970, column: 44, scope: !2828)
!2835 = !DILocalVariable(name: "ch", arg: 3, scope: !2828, file: !105, line: 970, type: !8)
!2836 = !DILocation(line: 970, column: 58, scope: !2828)
!2837 = !DILocalVariable(name: "options", scope: !2828, file: !105, line: 972, type: !139)
!2838 = !DILocation(line: 972, column: 26, scope: !2828)
!2839 = !DILocation(line: 973, column: 13, scope: !2828)
!2840 = !DILocation(line: 974, column: 31, scope: !2828)
!2841 = !DILocation(line: 974, column: 3, scope: !2828)
!2842 = !DILocation(line: 975, column: 33, scope: !2828)
!2843 = !DILocation(line: 975, column: 38, scope: !2828)
!2844 = !DILocation(line: 975, column: 10, scope: !2828)
!2845 = !DILocation(line: 975, column: 3, scope: !2828)
!2846 = distinct !DISubprogram(name: "quotearg_char", scope: !105, file: !105, line: 979, type: !2847, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!32, !6, !8}
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2846, file: !105, line: 979, type: !6)
!2850 = !DILocation(line: 979, column: 28, scope: !2846)
!2851 = !DILocalVariable(name: "ch", arg: 2, scope: !2846, file: !105, line: 979, type: !8)
!2852 = !DILocation(line: 979, column: 38, scope: !2846)
!2853 = !DILocation(line: 981, column: 29, scope: !2846)
!2854 = !DILocation(line: 981, column: 44, scope: !2846)
!2855 = !DILocation(line: 981, column: 10, scope: !2846)
!2856 = !DILocation(line: 981, column: 3, scope: !2846)
!2857 = distinct !DISubprogram(name: "quotearg_colon", scope: !105, file: !105, line: 985, type: !2732, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2858 = !DILocalVariable(name: "arg", arg: 1, scope: !2857, file: !105, line: 985, type: !6)
!2859 = !DILocation(line: 985, column: 29, scope: !2857)
!2860 = !DILocation(line: 987, column: 25, scope: !2857)
!2861 = !DILocation(line: 987, column: 10, scope: !2857)
!2862 = !DILocation(line: 987, column: 3, scope: !2857)
!2863 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !105, file: !105, line: 991, type: !2740, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2864 = !DILocalVariable(name: "arg", arg: 1, scope: !2863, file: !105, line: 991, type: !6)
!2865 = !DILocation(line: 991, column: 33, scope: !2863)
!2866 = !DILocalVariable(name: "argsize", arg: 2, scope: !2863, file: !105, line: 991, type: !127)
!2867 = !DILocation(line: 991, column: 45, scope: !2863)
!2868 = !DILocation(line: 993, column: 29, scope: !2863)
!2869 = !DILocation(line: 993, column: 34, scope: !2863)
!2870 = !DILocation(line: 993, column: 10, scope: !2863)
!2871 = !DILocation(line: 993, column: 3, scope: !2863)
!2872 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !105, file: !105, line: 997, type: !2751, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2873 = !DILocalVariable(name: "n", arg: 1, scope: !2872, file: !105, line: 997, type: !34)
!2874 = !DILocation(line: 997, column: 29, scope: !2872)
!2875 = !DILocalVariable(name: "s", arg: 2, scope: !2872, file: !105, line: 997, type: !107)
!2876 = !DILocation(line: 997, column: 51, scope: !2872)
!2877 = !DILocalVariable(name: "arg", arg: 3, scope: !2872, file: !105, line: 997, type: !6)
!2878 = !DILocation(line: 997, column: 66, scope: !2872)
!2879 = !DILocalVariable(name: "options", scope: !2872, file: !105, line: 999, type: !139)
!2880 = !DILocation(line: 999, column: 26, scope: !2872)
!2881 = !DILocation(line: 1000, column: 41, scope: !2872)
!2882 = !DILocation(line: 1000, column: 13, scope: !2872)
!2883 = !DILocation(line: 1001, column: 3, scope: !2872)
!2884 = !DILocation(line: 1002, column: 30, scope: !2872)
!2885 = !DILocation(line: 1002, column: 33, scope: !2872)
!2886 = !DILocation(line: 1002, column: 10, scope: !2872)
!2887 = !DILocation(line: 1002, column: 3, scope: !2872)
!2888 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !105, file: !105, line: 1006, type: !2889, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!32, !34, !6, !6, !6}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2888, file: !105, line: 1006, type: !34)
!2892 = !DILocation(line: 1006, column: 24, scope: !2888)
!2893 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2888, file: !105, line: 1006, type: !6)
!2894 = !DILocation(line: 1006, column: 39, scope: !2888)
!2895 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2888, file: !105, line: 1007, type: !6)
!2896 = !DILocation(line: 1007, column: 32, scope: !2888)
!2897 = !DILocalVariable(name: "arg", arg: 4, scope: !2888, file: !105, line: 1007, type: !6)
!2898 = !DILocation(line: 1007, column: 57, scope: !2888)
!2899 = !DILocation(line: 1009, column: 33, scope: !2888)
!2900 = !DILocation(line: 1009, column: 36, scope: !2888)
!2901 = !DILocation(line: 1009, column: 48, scope: !2888)
!2902 = !DILocation(line: 1009, column: 61, scope: !2888)
!2903 = !DILocation(line: 1009, column: 10, scope: !2888)
!2904 = !DILocation(line: 1009, column: 3, scope: !2888)
!2905 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !105, file: !105, line: 1014, type: !2906, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!32, !34, !6, !6, !6, !127}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !105, line: 1014, type: !34)
!2909 = !DILocation(line: 1014, column: 28, scope: !2905)
!2910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2905, file: !105, line: 1014, type: !6)
!2911 = !DILocation(line: 1014, column: 43, scope: !2905)
!2912 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2905, file: !105, line: 1015, type: !6)
!2913 = !DILocation(line: 1015, column: 36, scope: !2905)
!2914 = !DILocalVariable(name: "arg", arg: 4, scope: !2905, file: !105, line: 1016, type: !6)
!2915 = !DILocation(line: 1016, column: 36, scope: !2905)
!2916 = !DILocalVariable(name: "argsize", arg: 5, scope: !2905, file: !105, line: 1016, type: !127)
!2917 = !DILocation(line: 1016, column: 48, scope: !2905)
!2918 = !DILocalVariable(name: "o", scope: !2905, file: !105, line: 1018, type: !139)
!2919 = !DILocation(line: 1018, column: 26, scope: !2905)
!2920 = !DILocation(line: 1018, column: 30, scope: !2905)
!2921 = !DILocation(line: 1019, column: 27, scope: !2905)
!2922 = !DILocation(line: 1019, column: 39, scope: !2905)
!2923 = !DILocation(line: 1019, column: 3, scope: !2905)
!2924 = !DILocation(line: 1020, column: 30, scope: !2905)
!2925 = !DILocation(line: 1020, column: 33, scope: !2905)
!2926 = !DILocation(line: 1020, column: 38, scope: !2905)
!2927 = !DILocation(line: 1020, column: 10, scope: !2905)
!2928 = !DILocation(line: 1020, column: 3, scope: !2905)
!2929 = distinct !DISubprogram(name: "quotearg_custom", scope: !105, file: !105, line: 1024, type: !2930, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!32, !6, !6, !6}
!2932 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2929, file: !105, line: 1024, type: !6)
!2933 = !DILocation(line: 1024, column: 30, scope: !2929)
!2934 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2929, file: !105, line: 1024, type: !6)
!2935 = !DILocation(line: 1024, column: 54, scope: !2929)
!2936 = !DILocalVariable(name: "arg", arg: 3, scope: !2929, file: !105, line: 1025, type: !6)
!2937 = !DILocation(line: 1025, column: 30, scope: !2929)
!2938 = !DILocation(line: 1027, column: 32, scope: !2929)
!2939 = !DILocation(line: 1027, column: 44, scope: !2929)
!2940 = !DILocation(line: 1027, column: 57, scope: !2929)
!2941 = !DILocation(line: 1027, column: 10, scope: !2929)
!2942 = !DILocation(line: 1027, column: 3, scope: !2929)
!2943 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !105, file: !105, line: 1031, type: !2944, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!32, !6, !6, !6, !127}
!2946 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2943, file: !105, line: 1031, type: !6)
!2947 = !DILocation(line: 1031, column: 34, scope: !2943)
!2948 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2943, file: !105, line: 1031, type: !6)
!2949 = !DILocation(line: 1031, column: 58, scope: !2943)
!2950 = !DILocalVariable(name: "arg", arg: 3, scope: !2943, file: !105, line: 1032, type: !6)
!2951 = !DILocation(line: 1032, column: 34, scope: !2943)
!2952 = !DILocalVariable(name: "argsize", arg: 4, scope: !2943, file: !105, line: 1032, type: !127)
!2953 = !DILocation(line: 1032, column: 46, scope: !2943)
!2954 = !DILocation(line: 1034, column: 36, scope: !2943)
!2955 = !DILocation(line: 1034, column: 48, scope: !2943)
!2956 = !DILocation(line: 1034, column: 61, scope: !2943)
!2957 = !DILocation(line: 1035, column: 33, scope: !2943)
!2958 = !DILocation(line: 1034, column: 10, scope: !2943)
!2959 = !DILocation(line: 1034, column: 3, scope: !2943)
!2960 = distinct !DISubprogram(name: "quote_n_mem", scope: !105, file: !105, line: 1049, type: !2961, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!6, !34, !6, !127}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2960, file: !105, line: 1049, type: !34)
!2964 = !DILocation(line: 1049, column: 18, scope: !2960)
!2965 = !DILocalVariable(name: "arg", arg: 2, scope: !2960, file: !105, line: 1049, type: !6)
!2966 = !DILocation(line: 1049, column: 33, scope: !2960)
!2967 = !DILocalVariable(name: "argsize", arg: 3, scope: !2960, file: !105, line: 1049, type: !127)
!2968 = !DILocation(line: 1049, column: 45, scope: !2960)
!2969 = !DILocation(line: 1051, column: 30, scope: !2960)
!2970 = !DILocation(line: 1051, column: 33, scope: !2960)
!2971 = !DILocation(line: 1051, column: 38, scope: !2960)
!2972 = !DILocation(line: 1051, column: 10, scope: !2960)
!2973 = !DILocation(line: 1051, column: 3, scope: !2960)
!2974 = distinct !DISubprogram(name: "quote_mem", scope: !105, file: !105, line: 1055, type: !2975, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!6, !6, !127}
!2977 = !DILocalVariable(name: "arg", arg: 1, scope: !2974, file: !105, line: 1055, type: !6)
!2978 = !DILocation(line: 1055, column: 24, scope: !2974)
!2979 = !DILocalVariable(name: "argsize", arg: 2, scope: !2974, file: !105, line: 1055, type: !127)
!2980 = !DILocation(line: 1055, column: 36, scope: !2974)
!2981 = !DILocation(line: 1057, column: 26, scope: !2974)
!2982 = !DILocation(line: 1057, column: 31, scope: !2974)
!2983 = !DILocation(line: 1057, column: 10, scope: !2974)
!2984 = !DILocation(line: 1057, column: 3, scope: !2974)
!2985 = distinct !DISubprogram(name: "quote_n", scope: !105, file: !105, line: 1061, type: !2986, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!6, !34, !6}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2985, file: !105, line: 1061, type: !34)
!2989 = !DILocation(line: 1061, column: 14, scope: !2985)
!2990 = !DILocalVariable(name: "arg", arg: 2, scope: !2985, file: !105, line: 1061, type: !6)
!2991 = !DILocation(line: 1061, column: 29, scope: !2985)
!2992 = !DILocation(line: 1063, column: 23, scope: !2985)
!2993 = !DILocation(line: 1063, column: 26, scope: !2985)
!2994 = !DILocation(line: 1063, column: 10, scope: !2985)
!2995 = !DILocation(line: 1063, column: 3, scope: !2985)
!2996 = distinct !DISubprogram(name: "quote", scope: !105, file: !105, line: 1067, type: !2997, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !37)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!6, !6}
!2999 = !DILocalVariable(name: "arg", arg: 1, scope: !2996, file: !105, line: 1067, type: !6)
!3000 = !DILocation(line: 1067, column: 20, scope: !2996)
!3001 = !DILocation(line: 1069, column: 22, scope: !2996)
!3002 = !DILocation(line: 1069, column: 10, scope: !2996)
!3003 = !DILocation(line: 1069, column: 3, scope: !2996)
!3004 = distinct !DISubprogram(name: "streq", scope: !3005, file: !3005, line: 1359, type: !3006, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !37)
!3005 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!50, !6, !6}
!3008 = !DILocalVariable(name: "__s1", arg: 1, scope: !3004, file: !3005, line: 1359, type: !6)
!3009 = !DILocation(line: 1359, column: 20, scope: !3004)
!3010 = !DILocalVariable(name: "__s2", arg: 2, scope: !3004, file: !3005, line: 1359, type: !6)
!3011 = !DILocation(line: 1359, column: 38, scope: !3004)
!3012 = !DILocation(line: 1361, column: 19, scope: !3004)
!3013 = !DILocation(line: 1361, column: 25, scope: !3004)
!3014 = !DILocation(line: 1361, column: 11, scope: !3004)
!3015 = !DILocation(line: 1361, column: 10, scope: !3004)
!3016 = !DILocation(line: 1361, column: 3, scope: !3004)
!3017 = distinct !DISubprogram(name: "version_etc_arn", scope: !221, file: !221, line: 61, type: !3018, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !3020, !6, !6, !6, !3073, !127}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3022, line: 7, baseType: !3023)
!3022 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3024, line: 49, size: 1728, elements: !3025)
!3024 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3041, !3043, !3044, !3045, !3047, !3048, !3050, !3054, !3057, !3059, !3062, !3065, !3066, !3067, !3068, !3069}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3023, file: !3024, line: 51, baseType: !34, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3023, file: !3024, line: 54, baseType: !32, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3023, file: !3024, line: 55, baseType: !32, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3023, file: !3024, line: 56, baseType: !32, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3023, file: !3024, line: 57, baseType: !32, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3023, file: !3024, line: 58, baseType: !32, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3023, file: !3024, line: 59, baseType: !32, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3023, file: !3024, line: 60, baseType: !32, size: 64, offset: 448)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3023, file: !3024, line: 61, baseType: !32, size: 64, offset: 512)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3023, file: !3024, line: 64, baseType: !32, size: 64, offset: 576)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3023, file: !3024, line: 65, baseType: !32, size: 64, offset: 640)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3023, file: !3024, line: 66, baseType: !32, size: 64, offset: 704)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3023, file: !3024, line: 68, baseType: !3039, size: 64, offset: 768)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3024, line: 36, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3023, file: !3024, line: 70, baseType: !3042, size: 64, offset: 832)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3023, file: !3024, line: 72, baseType: !34, size: 32, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3023, file: !3024, line: 73, baseType: !34, size: 32, offset: 928)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3023, file: !3024, line: 74, baseType: !3046, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1318, line: 152, baseType: !244)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3023, file: !3024, line: 77, baseType: !35, size: 16, offset: 1024)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3023, file: !3024, line: 78, baseType: !3049, size: 8, offset: 1040)
!3049 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3023, file: !3024, line: 79, baseType: !3051, size: 8, offset: 1048)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3052)
!3052 = !{!3053}
!3053 = !DISubrange(count: 1)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3023, file: !3024, line: 81, baseType: !3055, size: 64, offset: 1088)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3024, line: 43, baseType: null)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3023, file: !3024, line: 89, baseType: !3058, size: 64, offset: 1152)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1318, line: 153, baseType: !244)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3023, file: !3024, line: 91, baseType: !3060, size: 64, offset: 1216)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3024, line: 37, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3023, file: !3024, line: 92, baseType: !3063, size: 64, offset: 1280)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3024, line: 38, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3023, file: !3024, line: 93, baseType: !3042, size: 64, offset: 1344)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3023, file: !3024, line: 94, baseType: !33, size: 64, offset: 1408)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3023, file: !3024, line: 95, baseType: !127, size: 64, offset: 1472)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3023, file: !3024, line: 96, baseType: !34, size: 32, offset: 1536)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3023, file: !3024, line: 98, baseType: !3070, size: 160, offset: 1568)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3071)
!3071 = !{!3072}
!3072 = !DISubrange(count: 20)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!3074 = !DILocalVariable(name: "stream", arg: 1, scope: !3017, file: !221, line: 61, type: !3020)
!3075 = !DILocation(line: 61, column: 24, scope: !3017)
!3076 = !DILocalVariable(name: "command_name", arg: 2, scope: !3017, file: !221, line: 62, type: !6)
!3077 = !DILocation(line: 62, column: 30, scope: !3017)
!3078 = !DILocalVariable(name: "package", arg: 3, scope: !3017, file: !221, line: 62, type: !6)
!3079 = !DILocation(line: 62, column: 56, scope: !3017)
!3080 = !DILocalVariable(name: "version", arg: 4, scope: !3017, file: !221, line: 63, type: !6)
!3081 = !DILocation(line: 63, column: 30, scope: !3017)
!3082 = !DILocalVariable(name: "authors", arg: 5, scope: !3017, file: !221, line: 64, type: !3073)
!3083 = !DILocation(line: 64, column: 39, scope: !3017)
!3084 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3017, file: !221, line: 64, type: !127)
!3085 = !DILocation(line: 64, column: 55, scope: !3017)
!3086 = !DILocation(line: 66, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3017, file: !221, line: 66, column: 7)
!3088 = !DILocation(line: 66, column: 7, scope: !3017)
!3089 = !DILocation(line: 67, column: 14, scope: !3087)
!3090 = !DILocation(line: 67, column: 38, scope: !3087)
!3091 = !DILocation(line: 67, column: 52, scope: !3087)
!3092 = !DILocation(line: 67, column: 61, scope: !3087)
!3093 = !DILocation(line: 67, column: 5, scope: !3087)
!3094 = !DILocation(line: 69, column: 14, scope: !3087)
!3095 = !DILocation(line: 69, column: 33, scope: !3087)
!3096 = !DILocation(line: 69, column: 42, scope: !3087)
!3097 = !DILocation(line: 69, column: 5, scope: !3087)
!3098 = !DILocation(line: 83, column: 12, scope: !3017)
!3099 = !DILocation(line: 83, column: 43, scope: !3017)
!3100 = !DILocation(line: 83, column: 3, scope: !3017)
!3101 = !DILocation(line: 85, column: 3, scope: !3017)
!3102 = !DILocation(line: 88, column: 12, scope: !3017)
!3103 = !DILocation(line: 88, column: 20, scope: !3017)
!3104 = !DILocation(line: 88, column: 3, scope: !3017)
!3105 = !DILocation(line: 95, column: 3, scope: !3017)
!3106 = !DILocation(line: 97, column: 11, scope: !3017)
!3107 = !DILocation(line: 97, column: 3, scope: !3017)
!3108 = !DILocation(line: 102, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3017, file: !221, line: 98, column: 5)
!3110 = !DILocation(line: 105, column: 16, scope: !3109)
!3111 = !DILocation(line: 105, column: 24, scope: !3109)
!3112 = !DILocation(line: 105, column: 47, scope: !3109)
!3113 = !DILocation(line: 105, column: 7, scope: !3109)
!3114 = !DILocation(line: 106, column: 7, scope: !3109)
!3115 = !DILocation(line: 109, column: 16, scope: !3109)
!3116 = !DILocation(line: 109, column: 24, scope: !3109)
!3117 = !DILocation(line: 109, column: 54, scope: !3109)
!3118 = !DILocation(line: 109, column: 66, scope: !3109)
!3119 = !DILocation(line: 109, column: 7, scope: !3109)
!3120 = !DILocation(line: 110, column: 7, scope: !3109)
!3121 = !DILocation(line: 113, column: 16, scope: !3109)
!3122 = !DILocation(line: 113, column: 24, scope: !3109)
!3123 = !DILocation(line: 114, column: 16, scope: !3109)
!3124 = !DILocation(line: 114, column: 28, scope: !3109)
!3125 = !DILocation(line: 114, column: 40, scope: !3109)
!3126 = !DILocation(line: 113, column: 7, scope: !3109)
!3127 = !DILocation(line: 115, column: 7, scope: !3109)
!3128 = !DILocation(line: 120, column: 16, scope: !3109)
!3129 = !DILocation(line: 120, column: 24, scope: !3109)
!3130 = !DILocation(line: 121, column: 16, scope: !3109)
!3131 = !DILocation(line: 121, column: 28, scope: !3109)
!3132 = !DILocation(line: 121, column: 40, scope: !3109)
!3133 = !DILocation(line: 121, column: 52, scope: !3109)
!3134 = !DILocation(line: 120, column: 7, scope: !3109)
!3135 = !DILocation(line: 122, column: 7, scope: !3109)
!3136 = !DILocation(line: 127, column: 16, scope: !3109)
!3137 = !DILocation(line: 127, column: 24, scope: !3109)
!3138 = !DILocation(line: 128, column: 16, scope: !3109)
!3139 = !DILocation(line: 128, column: 28, scope: !3109)
!3140 = !DILocation(line: 128, column: 40, scope: !3109)
!3141 = !DILocation(line: 128, column: 52, scope: !3109)
!3142 = !DILocation(line: 128, column: 64, scope: !3109)
!3143 = !DILocation(line: 127, column: 7, scope: !3109)
!3144 = !DILocation(line: 129, column: 7, scope: !3109)
!3145 = !DILocation(line: 134, column: 16, scope: !3109)
!3146 = !DILocation(line: 134, column: 24, scope: !3109)
!3147 = !DILocation(line: 135, column: 16, scope: !3109)
!3148 = !DILocation(line: 135, column: 28, scope: !3109)
!3149 = !DILocation(line: 135, column: 40, scope: !3109)
!3150 = !DILocation(line: 135, column: 52, scope: !3109)
!3151 = !DILocation(line: 135, column: 64, scope: !3109)
!3152 = !DILocation(line: 136, column: 16, scope: !3109)
!3153 = !DILocation(line: 134, column: 7, scope: !3109)
!3154 = !DILocation(line: 137, column: 7, scope: !3109)
!3155 = !DILocation(line: 142, column: 16, scope: !3109)
!3156 = !DILocation(line: 142, column: 24, scope: !3109)
!3157 = !DILocation(line: 143, column: 16, scope: !3109)
!3158 = !DILocation(line: 143, column: 28, scope: !3109)
!3159 = !DILocation(line: 143, column: 40, scope: !3109)
!3160 = !DILocation(line: 143, column: 52, scope: !3109)
!3161 = !DILocation(line: 143, column: 64, scope: !3109)
!3162 = !DILocation(line: 144, column: 16, scope: !3109)
!3163 = !DILocation(line: 144, column: 28, scope: !3109)
!3164 = !DILocation(line: 142, column: 7, scope: !3109)
!3165 = !DILocation(line: 145, column: 7, scope: !3109)
!3166 = !DILocation(line: 150, column: 16, scope: !3109)
!3167 = !DILocation(line: 150, column: 24, scope: !3109)
!3168 = !DILocation(line: 152, column: 17, scope: !3109)
!3169 = !DILocation(line: 152, column: 29, scope: !3109)
!3170 = !DILocation(line: 152, column: 41, scope: !3109)
!3171 = !DILocation(line: 152, column: 53, scope: !3109)
!3172 = !DILocation(line: 152, column: 65, scope: !3109)
!3173 = !DILocation(line: 153, column: 17, scope: !3109)
!3174 = !DILocation(line: 153, column: 29, scope: !3109)
!3175 = !DILocation(line: 153, column: 41, scope: !3109)
!3176 = !DILocation(line: 150, column: 7, scope: !3109)
!3177 = !DILocation(line: 154, column: 7, scope: !3109)
!3178 = !DILocation(line: 159, column: 16, scope: !3109)
!3179 = !DILocation(line: 159, column: 24, scope: !3109)
!3180 = !DILocation(line: 161, column: 16, scope: !3109)
!3181 = !DILocation(line: 161, column: 28, scope: !3109)
!3182 = !DILocation(line: 161, column: 40, scope: !3109)
!3183 = !DILocation(line: 161, column: 52, scope: !3109)
!3184 = !DILocation(line: 161, column: 64, scope: !3109)
!3185 = !DILocation(line: 162, column: 16, scope: !3109)
!3186 = !DILocation(line: 162, column: 28, scope: !3109)
!3187 = !DILocation(line: 162, column: 40, scope: !3109)
!3188 = !DILocation(line: 162, column: 52, scope: !3109)
!3189 = !DILocation(line: 159, column: 7, scope: !3109)
!3190 = !DILocation(line: 163, column: 7, scope: !3109)
!3191 = !DILocation(line: 170, column: 16, scope: !3109)
!3192 = !DILocation(line: 170, column: 24, scope: !3109)
!3193 = !DILocation(line: 172, column: 17, scope: !3109)
!3194 = !DILocation(line: 172, column: 29, scope: !3109)
!3195 = !DILocation(line: 172, column: 41, scope: !3109)
!3196 = !DILocation(line: 172, column: 53, scope: !3109)
!3197 = !DILocation(line: 172, column: 65, scope: !3109)
!3198 = !DILocation(line: 173, column: 17, scope: !3109)
!3199 = !DILocation(line: 173, column: 29, scope: !3109)
!3200 = !DILocation(line: 173, column: 41, scope: !3109)
!3201 = !DILocation(line: 173, column: 53, scope: !3109)
!3202 = !DILocation(line: 170, column: 7, scope: !3109)
!3203 = !DILocation(line: 174, column: 7, scope: !3109)
!3204 = !DILocation(line: 176, column: 1, scope: !3017)
!3205 = distinct !DISubprogram(name: "version_etc_ar", scope: !221, file: !221, line: 183, type: !3206, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3020, !6, !6, !6, !3073}
!3208 = !DILocalVariable(name: "stream", arg: 1, scope: !3205, file: !221, line: 183, type: !3020)
!3209 = !DILocation(line: 183, column: 23, scope: !3205)
!3210 = !DILocalVariable(name: "command_name", arg: 2, scope: !3205, file: !221, line: 184, type: !6)
!3211 = !DILocation(line: 184, column: 29, scope: !3205)
!3212 = !DILocalVariable(name: "package", arg: 3, scope: !3205, file: !221, line: 184, type: !6)
!3213 = !DILocation(line: 184, column: 55, scope: !3205)
!3214 = !DILocalVariable(name: "version", arg: 4, scope: !3205, file: !221, line: 185, type: !6)
!3215 = !DILocation(line: 185, column: 29, scope: !3205)
!3216 = !DILocalVariable(name: "authors", arg: 5, scope: !3205, file: !221, line: 185, type: !3073)
!3217 = !DILocation(line: 185, column: 59, scope: !3205)
!3218 = !DILocalVariable(name: "n_authors", scope: !3205, file: !221, line: 187, type: !127)
!3219 = !DILocation(line: 187, column: 10, scope: !3205)
!3220 = !DILocation(line: 189, column: 18, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3205, file: !221, line: 189, column: 3)
!3222 = !DILocation(line: 189, column: 8, scope: !3221)
!3223 = !DILocation(line: 189, column: 23, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !221, line: 189, column: 3)
!3225 = !DILocation(line: 189, column: 31, scope: !3224)
!3226 = !DILocation(line: 189, column: 3, scope: !3221)
!3227 = !DILocation(line: 189, column: 52, scope: !3224)
!3228 = !DILocation(line: 189, column: 3, scope: !3224)
!3229 = distinct !{!3229, !3226, !3230, !386}
!3230 = !DILocation(line: 190, column: 5, scope: !3221)
!3231 = !DILocation(line: 191, column: 20, scope: !3205)
!3232 = !DILocation(line: 191, column: 28, scope: !3205)
!3233 = !DILocation(line: 191, column: 42, scope: !3205)
!3234 = !DILocation(line: 191, column: 51, scope: !3205)
!3235 = !DILocation(line: 191, column: 60, scope: !3205)
!3236 = !DILocation(line: 191, column: 69, scope: !3205)
!3237 = !DILocation(line: 191, column: 3, scope: !3205)
!3238 = !DILocation(line: 192, column: 1, scope: !3205)
!3239 = distinct !DISubprogram(name: "version_etc_va", scope: !221, file: !221, line: 199, type: !3240, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3020, !6, !6, !6, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 52, baseType: !3243)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !65, line: 32, baseType: !3244)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3245, baseType: !3246)
!3245 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3246, file: !3245, line: 192, baseType: !33, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3246, file: !3245, line: 192, baseType: !33, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3246, file: !3245, line: 192, baseType: !33, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3246, file: !3245, line: 192, baseType: !34, size: 32, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3246, file: !3245, line: 192, baseType: !34, size: 32, offset: 224)
!3253 = !DILocalVariable(name: "stream", arg: 1, scope: !3239, file: !221, line: 199, type: !3020)
!3254 = !DILocation(line: 199, column: 23, scope: !3239)
!3255 = !DILocalVariable(name: "command_name", arg: 2, scope: !3239, file: !221, line: 200, type: !6)
!3256 = !DILocation(line: 200, column: 29, scope: !3239)
!3257 = !DILocalVariable(name: "package", arg: 3, scope: !3239, file: !221, line: 200, type: !6)
!3258 = !DILocation(line: 200, column: 55, scope: !3239)
!3259 = !DILocalVariable(name: "version", arg: 4, scope: !3239, file: !221, line: 201, type: !6)
!3260 = !DILocation(line: 201, column: 29, scope: !3239)
!3261 = !DILocalVariable(name: "authors", arg: 5, scope: !3239, file: !221, line: 201, type: !3242)
!3262 = !DILocation(line: 201, column: 46, scope: !3239)
!3263 = !DILocalVariable(name: "n_authors", scope: !3239, file: !221, line: 203, type: !127)
!3264 = !DILocation(line: 203, column: 10, scope: !3239)
!3265 = !DILocalVariable(name: "authtab", scope: !3239, file: !221, line: 204, type: !3266)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !135)
!3267 = !DILocation(line: 204, column: 15, scope: !3239)
!3268 = !DILocation(line: 206, column: 18, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3239, file: !221, line: 206, column: 3)
!3270 = !DILocation(line: 206, column: 8, scope: !3269)
!3271 = !DILocation(line: 207, column: 8, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !221, line: 206, column: 3)
!3273 = !DILocation(line: 207, column: 18, scope: !3272)
!3274 = !DILocation(line: 208, column: 10, scope: !3272)
!3275 = !DILocation(line: 208, column: 35, scope: !3272)
!3276 = !DILocation(line: 208, column: 22, scope: !3272)
!3277 = !DILocation(line: 208, column: 14, scope: !3272)
!3278 = !DILocation(line: 208, column: 33, scope: !3272)
!3279 = !DILocation(line: 208, column: 67, scope: !3272)
!3280 = !DILocation(line: 0, scope: !3272)
!3281 = !DILocation(line: 206, column: 3, scope: !3269)
!3282 = !DILocation(line: 209, column: 17, scope: !3272)
!3283 = !DILocation(line: 206, column: 3, scope: !3272)
!3284 = distinct !{!3284, !3281, !3285, !386}
!3285 = !DILocation(line: 210, column: 5, scope: !3269)
!3286 = !DILocation(line: 211, column: 20, scope: !3239)
!3287 = !DILocation(line: 211, column: 28, scope: !3239)
!3288 = !DILocation(line: 211, column: 42, scope: !3239)
!3289 = !DILocation(line: 211, column: 51, scope: !3239)
!3290 = !DILocation(line: 212, column: 20, scope: !3239)
!3291 = !DILocation(line: 212, column: 29, scope: !3239)
!3292 = !DILocation(line: 211, column: 3, scope: !3239)
!3293 = !DILocation(line: 213, column: 1, scope: !3239)
!3294 = distinct !DISubprogram(name: "version_etc", scope: !221, file: !221, line: 230, type: !3295, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !3020, !6, !6, !6, null}
!3297 = !DILocalVariable(name: "stream", arg: 1, scope: !3294, file: !221, line: 230, type: !3020)
!3298 = !DILocation(line: 230, column: 20, scope: !3294)
!3299 = !DILocalVariable(name: "command_name", arg: 2, scope: !3294, file: !221, line: 231, type: !6)
!3300 = !DILocation(line: 231, column: 26, scope: !3294)
!3301 = !DILocalVariable(name: "package", arg: 3, scope: !3294, file: !221, line: 231, type: !6)
!3302 = !DILocation(line: 231, column: 52, scope: !3294)
!3303 = !DILocalVariable(name: "version", arg: 4, scope: !3294, file: !221, line: 232, type: !6)
!3304 = !DILocation(line: 232, column: 26, scope: !3294)
!3305 = !DILocalVariable(name: "authors", scope: !3294, file: !221, line: 234, type: !3242)
!3306 = !DILocation(line: 234, column: 11, scope: !3294)
!3307 = !DILocation(line: 235, column: 3, scope: !3294)
!3308 = !DILocation(line: 236, column: 19, scope: !3294)
!3309 = !DILocation(line: 236, column: 27, scope: !3294)
!3310 = !DILocation(line: 236, column: 41, scope: !3294)
!3311 = !DILocation(line: 236, column: 50, scope: !3294)
!3312 = !DILocation(line: 236, column: 3, scope: !3294)
!3313 = !DILocation(line: 237, column: 3, scope: !3294)
!3314 = !DILocation(line: 238, column: 1, scope: !3294)
!3315 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !221, file: !221, line: 241, type: !83, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!3316 = !DILocation(line: 243, column: 3, scope: !3315)
!3317 = !DILocation(line: 248, column: 11, scope: !3315)
!3318 = !DILocation(line: 248, column: 3, scope: !3315)
!3319 = !DILocation(line: 254, column: 11, scope: !3315)
!3320 = !DILocation(line: 254, column: 3, scope: !3315)
!3321 = !DILocation(line: 259, column: 11, scope: !3315)
!3322 = !DILocation(line: 259, column: 3, scope: !3315)
!3323 = !DILocation(line: 261, column: 1, scope: !3315)
!3324 = distinct !DISubprogram(name: "xnrealloc", scope: !3325, file: !3325, line: 147, type: !3326, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3325 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!33, !33, !127, !127}
!3328 = !DILocalVariable(name: "p", arg: 1, scope: !3324, file: !3325, line: 147, type: !33)
!3329 = !DILocation(line: 147, column: 18, scope: !3324)
!3330 = !DILocalVariable(name: "n", arg: 2, scope: !3324, file: !3325, line: 147, type: !127)
!3331 = !DILocation(line: 147, column: 28, scope: !3324)
!3332 = !DILocalVariable(name: "s", arg: 3, scope: !3324, file: !3325, line: 147, type: !127)
!3333 = !DILocation(line: 147, column: 38, scope: !3324)
!3334 = !DILocation(line: 149, column: 25, scope: !3324)
!3335 = !DILocation(line: 149, column: 28, scope: !3324)
!3336 = !DILocation(line: 149, column: 31, scope: !3324)
!3337 = !DILocation(line: 149, column: 10, scope: !3324)
!3338 = !DILocation(line: 149, column: 3, scope: !3324)
!3339 = distinct !DISubprogram(name: "xreallocarray", scope: !227, file: !227, line: 83, type: !3326, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !227, line: 83, type: !33)
!3341 = !DILocation(line: 83, column: 22, scope: !3339)
!3342 = !DILocalVariable(name: "n", arg: 2, scope: !3339, file: !227, line: 83, type: !127)
!3343 = !DILocation(line: 83, column: 32, scope: !3339)
!3344 = !DILocalVariable(name: "s", arg: 3, scope: !3339, file: !227, line: 83, type: !127)
!3345 = !DILocation(line: 83, column: 42, scope: !3339)
!3346 = !DILocation(line: 85, column: 39, scope: !3339)
!3347 = !DILocation(line: 85, column: 42, scope: !3339)
!3348 = !DILocation(line: 85, column: 45, scope: !3339)
!3349 = !DILocation(line: 85, column: 25, scope: !3339)
!3350 = !DILocation(line: 85, column: 10, scope: !3339)
!3351 = !DILocation(line: 85, column: 3, scope: !3339)
!3352 = distinct !DISubprogram(name: "check_nonnull", scope: !227, file: !227, line: 37, type: !3353, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!33, !33}
!3355 = !DILocalVariable(name: "p", arg: 1, scope: !3352, file: !227, line: 37, type: !33)
!3356 = !DILocation(line: 37, column: 22, scope: !3352)
!3357 = !DILocation(line: 39, column: 8, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3352, file: !227, line: 39, column: 7)
!3359 = !DILocation(line: 39, column: 7, scope: !3352)
!3360 = !DILocation(line: 40, column: 5, scope: !3358)
!3361 = !DILocation(line: 41, column: 10, scope: !3352)
!3362 = !DILocation(line: 41, column: 3, scope: !3352)
!3363 = distinct !DISubprogram(name: "xmalloc", scope: !227, file: !227, line: 47, type: !3364, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!33, !127}
!3366 = !DILocalVariable(name: "s", arg: 1, scope: !3363, file: !227, line: 47, type: !127)
!3367 = !DILocation(line: 47, column: 17, scope: !3363)
!3368 = !DILocation(line: 49, column: 33, scope: !3363)
!3369 = !DILocation(line: 49, column: 25, scope: !3363)
!3370 = !DILocation(line: 49, column: 10, scope: !3363)
!3371 = !DILocation(line: 49, column: 3, scope: !3363)
!3372 = distinct !DISubprogram(name: "ximalloc", scope: !227, file: !227, line: 53, type: !3373, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!33, !241}
!3375 = !DILocalVariable(name: "s", arg: 1, scope: !3372, file: !227, line: 53, type: !241)
!3376 = !DILocation(line: 53, column: 17, scope: !3372)
!3377 = !DILocation(line: 55, column: 34, scope: !3372)
!3378 = !DILocation(line: 55, column: 25, scope: !3372)
!3379 = !DILocation(line: 55, column: 10, scope: !3372)
!3380 = !DILocation(line: 55, column: 3, scope: !3372)
!3381 = distinct !DISubprogram(name: "xcharalloc", scope: !227, file: !227, line: 59, type: !3382, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!32, !127}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !227, line: 59, type: !127)
!3385 = !DILocation(line: 59, column: 20, scope: !3381)
!3386 = !DILocation(line: 61, column: 10, scope: !3381)
!3387 = !DILocation(line: 61, column: 3, scope: !3381)
!3388 = distinct !DISubprogram(name: "xrealloc", scope: !227, file: !227, line: 68, type: !3389, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!33, !33, !127}
!3391 = !DILocalVariable(name: "p", arg: 1, scope: !3388, file: !227, line: 68, type: !33)
!3392 = !DILocation(line: 68, column: 17, scope: !3388)
!3393 = !DILocalVariable(name: "s", arg: 2, scope: !3388, file: !227, line: 68, type: !127)
!3394 = !DILocation(line: 68, column: 27, scope: !3388)
!3395 = !DILocation(line: 70, column: 34, scope: !3388)
!3396 = !DILocation(line: 70, column: 37, scope: !3388)
!3397 = !DILocation(line: 70, column: 25, scope: !3388)
!3398 = !DILocation(line: 70, column: 10, scope: !3388)
!3399 = !DILocation(line: 70, column: 3, scope: !3388)
!3400 = distinct !DISubprogram(name: "xirealloc", scope: !227, file: !227, line: 74, type: !3401, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!33, !33, !241}
!3403 = !DILocalVariable(name: "p", arg: 1, scope: !3400, file: !227, line: 74, type: !33)
!3404 = !DILocation(line: 74, column: 18, scope: !3400)
!3405 = !DILocalVariable(name: "s", arg: 2, scope: !3400, file: !227, line: 74, type: !241)
!3406 = !DILocation(line: 74, column: 27, scope: !3400)
!3407 = !DILocation(line: 76, column: 35, scope: !3400)
!3408 = !DILocation(line: 76, column: 38, scope: !3400)
!3409 = !DILocation(line: 76, column: 25, scope: !3400)
!3410 = !DILocation(line: 76, column: 10, scope: !3400)
!3411 = !DILocation(line: 76, column: 3, scope: !3400)
!3412 = distinct !DISubprogram(name: "xireallocarray", scope: !227, file: !227, line: 89, type: !3413, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!33, !33, !241, !241}
!3415 = !DILocalVariable(name: "p", arg: 1, scope: !3412, file: !227, line: 89, type: !33)
!3416 = !DILocation(line: 89, column: 23, scope: !3412)
!3417 = !DILocalVariable(name: "n", arg: 2, scope: !3412, file: !227, line: 89, type: !241)
!3418 = !DILocation(line: 89, column: 32, scope: !3412)
!3419 = !DILocalVariable(name: "s", arg: 3, scope: !3412, file: !227, line: 89, type: !241)
!3420 = !DILocation(line: 89, column: 41, scope: !3412)
!3421 = !DILocation(line: 91, column: 40, scope: !3412)
!3422 = !DILocation(line: 91, column: 43, scope: !3412)
!3423 = !DILocation(line: 91, column: 46, scope: !3412)
!3424 = !DILocation(line: 91, column: 25, scope: !3412)
!3425 = !DILocation(line: 91, column: 10, scope: !3412)
!3426 = !DILocation(line: 91, column: 3, scope: !3412)
!3427 = distinct !DISubprogram(name: "xnmalloc", scope: !227, file: !227, line: 98, type: !3428, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!33, !127, !127}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3427, file: !227, line: 98, type: !127)
!3431 = !DILocation(line: 98, column: 18, scope: !3427)
!3432 = !DILocalVariable(name: "s", arg: 2, scope: !3427, file: !227, line: 98, type: !127)
!3433 = !DILocation(line: 98, column: 28, scope: !3427)
!3434 = !DILocation(line: 100, column: 31, scope: !3427)
!3435 = !DILocation(line: 100, column: 34, scope: !3427)
!3436 = !DILocation(line: 100, column: 10, scope: !3427)
!3437 = !DILocation(line: 100, column: 3, scope: !3427)
!3438 = distinct !DISubprogram(name: "xinmalloc", scope: !227, file: !227, line: 104, type: !3439, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!33, !241, !241}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3438, file: !227, line: 104, type: !241)
!3442 = !DILocation(line: 104, column: 18, scope: !3438)
!3443 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !227, line: 104, type: !241)
!3444 = !DILocation(line: 104, column: 27, scope: !3438)
!3445 = !DILocation(line: 106, column: 32, scope: !3438)
!3446 = !DILocation(line: 106, column: 35, scope: !3438)
!3447 = !DILocation(line: 106, column: 10, scope: !3438)
!3448 = !DILocation(line: 106, column: 3, scope: !3438)
!3449 = distinct !DISubprogram(name: "x2realloc", scope: !227, file: !227, line: 116, type: !3450, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!33, !33, !233}
!3452 = !DILocalVariable(name: "p", arg: 1, scope: !3449, file: !227, line: 116, type: !33)
!3453 = !DILocation(line: 116, column: 18, scope: !3449)
!3454 = !DILocalVariable(name: "ps", arg: 2, scope: !3449, file: !227, line: 116, type: !233)
!3455 = !DILocation(line: 116, column: 29, scope: !3449)
!3456 = !DILocation(line: 118, column: 22, scope: !3449)
!3457 = !DILocation(line: 118, column: 25, scope: !3449)
!3458 = !DILocation(line: 118, column: 10, scope: !3449)
!3459 = !DILocation(line: 118, column: 3, scope: !3449)
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !230, file: !227, line: 176, type: !33)
!3461 = !DILocation(line: 176, column: 19, scope: !230)
!3462 = !DILocalVariable(name: "pn", arg: 2, scope: !230, file: !227, line: 176, type: !233)
!3463 = !DILocation(line: 176, column: 30, scope: !230)
!3464 = !DILocalVariable(name: "s", arg: 3, scope: !230, file: !227, line: 176, type: !127)
!3465 = !DILocation(line: 176, column: 41, scope: !230)
!3466 = !DILocalVariable(name: "n", scope: !230, file: !227, line: 178, type: !127)
!3467 = !DILocation(line: 178, column: 10, scope: !230)
!3468 = !DILocation(line: 178, column: 15, scope: !230)
!3469 = !DILocation(line: 178, column: 14, scope: !230)
!3470 = !DILocation(line: 180, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !230, file: !227, line: 180, column: 7)
!3472 = !DILocation(line: 180, column: 7, scope: !230)
!3473 = !DILocation(line: 182, column: 13, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !227, line: 182, column: 11)
!3475 = distinct !DILexicalBlock(scope: !3471, file: !227, line: 181, column: 5)
!3476 = !DILocation(line: 182, column: 11, scope: !3475)
!3477 = !DILocation(line: 190, column: 32, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !227, line: 183, column: 9)
!3479 = !DILocation(line: 190, column: 30, scope: !3478)
!3480 = !DILocation(line: 190, column: 13, scope: !3478)
!3481 = !DILocation(line: 191, column: 17, scope: !3478)
!3482 = !DILocation(line: 191, column: 16, scope: !3478)
!3483 = !DILocation(line: 191, column: 13, scope: !3478)
!3484 = !DILocation(line: 192, column: 9, scope: !3478)
!3485 = !DILocation(line: 193, column: 5, scope: !3475)
!3486 = !DILocation(line: 197, column: 11, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !227, line: 197, column: 11)
!3488 = distinct !DILexicalBlock(scope: !3471, file: !227, line: 195, column: 5)
!3489 = !DILocation(line: 197, column: 11, scope: !3488)
!3490 = !DILocation(line: 198, column: 9, scope: !3487)
!3491 = !DILocation(line: 201, column: 22, scope: !230)
!3492 = !DILocation(line: 201, column: 25, scope: !230)
!3493 = !DILocation(line: 201, column: 28, scope: !230)
!3494 = !DILocation(line: 201, column: 7, scope: !230)
!3495 = !DILocation(line: 201, column: 5, scope: !230)
!3496 = !DILocation(line: 202, column: 9, scope: !230)
!3497 = !DILocation(line: 202, column: 4, scope: !230)
!3498 = !DILocation(line: 202, column: 7, scope: !230)
!3499 = !DILocation(line: 203, column: 10, scope: !230)
!3500 = !DILocation(line: 203, column: 3, scope: !230)
!3501 = !DILocalVariable(name: "pa", arg: 1, scope: !237, file: !227, line: 223, type: !33)
!3502 = !DILocation(line: 223, column: 16, scope: !237)
!3503 = !DILocalVariable(name: "pn", arg: 2, scope: !237, file: !227, line: 223, type: !240)
!3504 = !DILocation(line: 223, column: 27, scope: !237)
!3505 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !237, file: !227, line: 223, type: !241)
!3506 = !DILocation(line: 223, column: 37, scope: !237)
!3507 = !DILocalVariable(name: "n_max", arg: 4, scope: !237, file: !227, line: 223, type: !243)
!3508 = !DILocation(line: 223, column: 59, scope: !237)
!3509 = !DILocalVariable(name: "s", arg: 5, scope: !237, file: !227, line: 223, type: !241)
!3510 = !DILocation(line: 223, column: 72, scope: !237)
!3511 = !DILocalVariable(name: "n0", scope: !237, file: !227, line: 230, type: !241)
!3512 = !DILocation(line: 230, column: 9, scope: !237)
!3513 = !DILocation(line: 230, column: 15, scope: !237)
!3514 = !DILocation(line: 230, column: 14, scope: !237)
!3515 = !DILocalVariable(name: "n", scope: !237, file: !227, line: 237, type: !241)
!3516 = !DILocation(line: 237, column: 9, scope: !237)
!3517 = !DILocation(line: 238, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !237, file: !227, line: 238, column: 7)
!3519 = !DILocation(line: 238, column: 7, scope: !237)
!3520 = !DILocation(line: 239, column: 7, scope: !3518)
!3521 = !DILocation(line: 239, column: 5, scope: !3518)
!3522 = !DILocation(line: 240, column: 12, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !237, file: !227, line: 240, column: 7)
!3524 = !DILocation(line: 240, column: 9, scope: !3523)
!3525 = !DILocation(line: 240, column: 18, scope: !3523)
!3526 = !DILocation(line: 240, column: 21, scope: !3523)
!3527 = !DILocation(line: 240, column: 29, scope: !3523)
!3528 = !DILocation(line: 240, column: 27, scope: !3523)
!3529 = !DILocation(line: 240, column: 7, scope: !237)
!3530 = !DILocation(line: 241, column: 9, scope: !3523)
!3531 = !DILocation(line: 241, column: 7, scope: !3523)
!3532 = !DILocation(line: 241, column: 5, scope: !3523)
!3533 = !DILocalVariable(name: "nbytes", scope: !237, file: !227, line: 248, type: !241)
!3534 = !DILocation(line: 248, column: 9, scope: !237)
!3535 = !DILocalVariable(name: "adjusted_nbytes", scope: !237, file: !227, line: 252, type: !241)
!3536 = !DILocation(line: 252, column: 9, scope: !237)
!3537 = !DILocation(line: 253, column: 8, scope: !237)
!3538 = !DILocation(line: 255, column: 10, scope: !237)
!3539 = !DILocation(line: 255, column: 17, scope: !237)
!3540 = !DILocation(line: 256, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !237, file: !227, line: 256, column: 7)
!3542 = !DILocation(line: 256, column: 7, scope: !237)
!3543 = !DILocation(line: 258, column: 11, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !227, line: 257, column: 5)
!3545 = !DILocation(line: 258, column: 29, scope: !3544)
!3546 = !DILocation(line: 258, column: 27, scope: !3544)
!3547 = !DILocation(line: 258, column: 9, scope: !3544)
!3548 = !DILocation(line: 259, column: 16, scope: !3544)
!3549 = !DILocation(line: 259, column: 34, scope: !3544)
!3550 = !DILocation(line: 259, column: 52, scope: !3544)
!3551 = !DILocation(line: 259, column: 50, scope: !3544)
!3552 = !DILocation(line: 259, column: 32, scope: !3544)
!3553 = !DILocation(line: 259, column: 14, scope: !3544)
!3554 = !DILocation(line: 260, column: 5, scope: !3544)
!3555 = !DILocation(line: 262, column: 9, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !237, file: !227, line: 262, column: 7)
!3557 = !DILocation(line: 262, column: 7, scope: !237)
!3558 = !DILocation(line: 263, column: 6, scope: !3556)
!3559 = !DILocation(line: 263, column: 9, scope: !3556)
!3560 = !DILocation(line: 263, column: 5, scope: !3556)
!3561 = !DILocation(line: 264, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !237, file: !227, line: 264, column: 7)
!3563 = !DILocation(line: 264, column: 11, scope: !3562)
!3564 = !DILocation(line: 264, column: 9, scope: !3562)
!3565 = !DILocation(line: 264, column: 16, scope: !3562)
!3566 = !DILocation(line: 264, column: 14, scope: !3562)
!3567 = !DILocation(line: 265, column: 7, scope: !3562)
!3568 = !DILocation(line: 265, column: 11, scope: !3562)
!3569 = !DILocation(line: 266, column: 11, scope: !3562)
!3570 = !DILocation(line: 266, column: 20, scope: !3562)
!3571 = !DILocation(line: 266, column: 17, scope: !3562)
!3572 = !DILocation(line: 266, column: 26, scope: !3562)
!3573 = !DILocation(line: 266, column: 29, scope: !3562)
!3574 = !DILocation(line: 266, column: 37, scope: !3562)
!3575 = !DILocation(line: 266, column: 35, scope: !3562)
!3576 = !DILocation(line: 267, column: 11, scope: !3562)
!3577 = !DILocation(line: 267, column: 14, scope: !3562)
!3578 = !DILocation(line: 264, column: 7, scope: !237)
!3579 = !DILocation(line: 268, column: 5, scope: !3562)
!3580 = !DILocation(line: 269, column: 18, scope: !237)
!3581 = !DILocation(line: 269, column: 22, scope: !237)
!3582 = !DILocation(line: 269, column: 8, scope: !237)
!3583 = !DILocation(line: 269, column: 6, scope: !237)
!3584 = !DILocation(line: 270, column: 9, scope: !237)
!3585 = !DILocation(line: 270, column: 4, scope: !237)
!3586 = !DILocation(line: 270, column: 7, scope: !237)
!3587 = !DILocation(line: 271, column: 10, scope: !237)
!3588 = !DILocation(line: 271, column: 3, scope: !237)
!3589 = distinct !DISubprogram(name: "xzalloc", scope: !227, file: !227, line: 279, type: !3364, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3590 = !DILocalVariable(name: "s", arg: 1, scope: !3589, file: !227, line: 279, type: !127)
!3591 = !DILocation(line: 279, column: 17, scope: !3589)
!3592 = !DILocation(line: 281, column: 19, scope: !3589)
!3593 = !DILocation(line: 281, column: 10, scope: !3589)
!3594 = !DILocation(line: 281, column: 3, scope: !3589)
!3595 = distinct !DISubprogram(name: "xcalloc", scope: !227, file: !227, line: 294, type: !3428, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3595, file: !227, line: 294, type: !127)
!3597 = !DILocation(line: 294, column: 17, scope: !3595)
!3598 = !DILocalVariable(name: "s", arg: 2, scope: !3595, file: !227, line: 294, type: !127)
!3599 = !DILocation(line: 294, column: 27, scope: !3595)
!3600 = !DILocation(line: 296, column: 33, scope: !3595)
!3601 = !DILocation(line: 296, column: 36, scope: !3595)
!3602 = !DILocation(line: 296, column: 25, scope: !3595)
!3603 = !DILocation(line: 296, column: 10, scope: !3595)
!3604 = !DILocation(line: 296, column: 3, scope: !3595)
!3605 = distinct !DISubprogram(name: "xizalloc", scope: !227, file: !227, line: 285, type: !3373, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3606 = !DILocalVariable(name: "s", arg: 1, scope: !3605, file: !227, line: 285, type: !241)
!3607 = !DILocation(line: 285, column: 17, scope: !3605)
!3608 = !DILocation(line: 287, column: 20, scope: !3605)
!3609 = !DILocation(line: 287, column: 10, scope: !3605)
!3610 = !DILocation(line: 287, column: 3, scope: !3605)
!3611 = distinct !DISubprogram(name: "xicalloc", scope: !227, file: !227, line: 300, type: !3439, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3612 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !227, line: 300, type: !241)
!3613 = !DILocation(line: 300, column: 17, scope: !3611)
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3611, file: !227, line: 300, type: !241)
!3615 = !DILocation(line: 300, column: 26, scope: !3611)
!3616 = !DILocation(line: 302, column: 34, scope: !3611)
!3617 = !DILocation(line: 302, column: 37, scope: !3611)
!3618 = !DILocation(line: 302, column: 25, scope: !3611)
!3619 = !DILocation(line: 302, column: 10, scope: !3611)
!3620 = !DILocation(line: 302, column: 3, scope: !3611)
!3621 = distinct !DISubprogram(name: "xmemdup", scope: !227, file: !227, line: 310, type: !3622, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!33, !3624, !127}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3621, file: !227, line: 310, type: !3624)
!3627 = !DILocation(line: 310, column: 22, scope: !3621)
!3628 = !DILocalVariable(name: "s", arg: 2, scope: !3621, file: !227, line: 310, type: !127)
!3629 = !DILocation(line: 310, column: 32, scope: !3621)
!3630 = !DILocation(line: 312, column: 27, scope: !3621)
!3631 = !DILocation(line: 312, column: 18, scope: !3621)
!3632 = !DILocation(line: 312, column: 31, scope: !3621)
!3633 = !DILocation(line: 312, column: 34, scope: !3621)
!3634 = !DILocation(line: 312, column: 10, scope: !3621)
!3635 = !DILocation(line: 312, column: 3, scope: !3621)
!3636 = distinct !DISubprogram(name: "ximemdup", scope: !227, file: !227, line: 316, type: !3637, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!33, !3624, !241}
!3639 = !DILocalVariable(name: "p", arg: 1, scope: !3636, file: !227, line: 316, type: !3624)
!3640 = !DILocation(line: 316, column: 23, scope: !3636)
!3641 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !227, line: 316, type: !241)
!3642 = !DILocation(line: 316, column: 32, scope: !3636)
!3643 = !DILocation(line: 318, column: 28, scope: !3636)
!3644 = !DILocation(line: 318, column: 18, scope: !3636)
!3645 = !DILocation(line: 318, column: 32, scope: !3636)
!3646 = !DILocation(line: 318, column: 35, scope: !3636)
!3647 = !DILocation(line: 318, column: 10, scope: !3636)
!3648 = !DILocation(line: 318, column: 3, scope: !3636)
!3649 = distinct !DISubprogram(name: "ximemdup0", scope: !227, file: !227, line: 325, type: !3650, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!32, !3624, !241}
!3652 = !DILocalVariable(name: "p", arg: 1, scope: !3649, file: !227, line: 325, type: !3624)
!3653 = !DILocation(line: 325, column: 24, scope: !3649)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3649, file: !227, line: 325, type: !241)
!3655 = !DILocation(line: 325, column: 33, scope: !3649)
!3656 = !DILocalVariable(name: "result", scope: !3649, file: !227, line: 327, type: !32)
!3657 = !DILocation(line: 327, column: 9, scope: !3649)
!3658 = !DILocation(line: 327, column: 28, scope: !3649)
!3659 = !DILocation(line: 327, column: 30, scope: !3649)
!3660 = !DILocation(line: 327, column: 18, scope: !3649)
!3661 = !DILocation(line: 328, column: 3, scope: !3649)
!3662 = !DILocation(line: 328, column: 10, scope: !3649)
!3663 = !DILocation(line: 328, column: 13, scope: !3649)
!3664 = !DILocation(line: 329, column: 18, scope: !3649)
!3665 = !DILocation(line: 329, column: 26, scope: !3649)
!3666 = !DILocation(line: 329, column: 29, scope: !3649)
!3667 = !DILocation(line: 329, column: 10, scope: !3649)
!3668 = !DILocation(line: 329, column: 3, scope: !3649)
!3669 = distinct !DISubprogram(name: "xstrdup", scope: !227, file: !227, line: 335, type: !2732, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !37)
!3670 = !DILocalVariable(name: "string", arg: 1, scope: !3669, file: !227, line: 335, type: !6)
!3671 = !DILocation(line: 335, column: 22, scope: !3669)
!3672 = !DILocation(line: 337, column: 19, scope: !3669)
!3673 = !DILocation(line: 337, column: 35, scope: !3669)
!3674 = !DILocation(line: 337, column: 27, scope: !3669)
!3675 = !DILocation(line: 337, column: 43, scope: !3669)
!3676 = !DILocation(line: 337, column: 10, scope: !3669)
!3677 = !DILocation(line: 337, column: 3, scope: !3669)
!3678 = distinct !DISubprogram(name: "xalloc_die", scope: !247, file: !247, line: 32, type: !83, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !37)
!3679 = !DILocalVariable(name: "__errstatus", scope: !3680, file: !247, line: 34, type: !3681)
!3680 = distinct !DILexicalBlock(scope: !3678, file: !247, line: 34, column: 3)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!3682 = !DILocation(line: 34, column: 3, scope: !3680)
!3683 = !DILocation(line: 40, column: 3, scope: !3678)
!3684 = distinct !DISubprogram(name: "c32isprint", scope: !3685, file: !3685, line: 41, type: !3686, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !37)
!3685 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!34, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3689, line: 20, baseType: !13)
!3689 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3690 = !DILocalVariable(name: "wc", arg: 1, scope: !3684, file: !3685, line: 41, type: !3688)
!3691 = !DILocation(line: 41, column: 14, scope: !3684)
!3692 = !DILocation(line: 66, column: 22, scope: !3684)
!3693 = !DILocation(line: 66, column: 10, scope: !3684)
!3694 = !DILocation(line: 66, column: 3, scope: !3684)
!3695 = distinct !DISubprogram(name: "close_stream", scope: !251, file: !251, line: 55, type: !3696, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !37)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!34, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3022, line: 7, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3024, line: 49, size: 1728, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3700, file: !3024, line: 51, baseType: !34, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3700, file: !3024, line: 54, baseType: !32, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3700, file: !3024, line: 55, baseType: !32, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3700, file: !3024, line: 56, baseType: !32, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3700, file: !3024, line: 57, baseType: !32, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3700, file: !3024, line: 58, baseType: !32, size: 64, offset: 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3700, file: !3024, line: 59, baseType: !32, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3700, file: !3024, line: 60, baseType: !32, size: 64, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3700, file: !3024, line: 61, baseType: !32, size: 64, offset: 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3700, file: !3024, line: 64, baseType: !32, size: 64, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3700, file: !3024, line: 65, baseType: !32, size: 64, offset: 640)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3700, file: !3024, line: 66, baseType: !32, size: 64, offset: 704)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3700, file: !3024, line: 68, baseType: !3039, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3700, file: !3024, line: 70, baseType: !3716, size: 64, offset: 832)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3700, file: !3024, line: 72, baseType: !34, size: 32, offset: 896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3700, file: !3024, line: 73, baseType: !34, size: 32, offset: 928)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3700, file: !3024, line: 74, baseType: !3046, size: 64, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3700, file: !3024, line: 77, baseType: !35, size: 16, offset: 1024)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3700, file: !3024, line: 78, baseType: !3049, size: 8, offset: 1040)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3700, file: !3024, line: 79, baseType: !3051, size: 8, offset: 1048)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3700, file: !3024, line: 81, baseType: !3055, size: 64, offset: 1088)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3700, file: !3024, line: 89, baseType: !3058, size: 64, offset: 1152)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3700, file: !3024, line: 91, baseType: !3060, size: 64, offset: 1216)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3700, file: !3024, line: 92, baseType: !3063, size: 64, offset: 1280)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3700, file: !3024, line: 93, baseType: !3716, size: 64, offset: 1344)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3700, file: !3024, line: 94, baseType: !33, size: 64, offset: 1408)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3700, file: !3024, line: 95, baseType: !127, size: 64, offset: 1472)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3700, file: !3024, line: 96, baseType: !34, size: 32, offset: 1536)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3700, file: !3024, line: 98, baseType: !3070, size: 160, offset: 1568)
!3732 = !DILocalVariable(name: "stream", arg: 1, scope: !3695, file: !251, line: 55, type: !3698)
!3733 = !DILocation(line: 55, column: 21, scope: !3695)
!3734 = !DILocalVariable(name: "some_pending", scope: !3695, file: !251, line: 57, type: !3735)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!3736 = !DILocation(line: 57, column: 14, scope: !3695)
!3737 = !DILocation(line: 57, column: 42, scope: !3695)
!3738 = !DILocation(line: 57, column: 30, scope: !3695)
!3739 = !DILocation(line: 57, column: 50, scope: !3695)
!3740 = !DILocalVariable(name: "prev_fail", scope: !3695, file: !251, line: 58, type: !3735)
!3741 = !DILocation(line: 58, column: 14, scope: !3695)
!3742 = !DILocation(line: 58, column: 27, scope: !3695)
!3743 = !DILocation(line: 58, column: 43, scope: !3695)
!3744 = !DILocalVariable(name: "fclose_fail", scope: !3695, file: !251, line: 59, type: !3735)
!3745 = !DILocation(line: 59, column: 14, scope: !3695)
!3746 = !DILocation(line: 59, column: 37, scope: !3695)
!3747 = !DILocation(line: 59, column: 29, scope: !3695)
!3748 = !DILocation(line: 59, column: 45, scope: !3695)
!3749 = !DILocation(line: 69, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3695, file: !251, line: 69, column: 7)
!3751 = !DILocation(line: 69, column: 17, scope: !3750)
!3752 = !DILocation(line: 69, column: 21, scope: !3750)
!3753 = !DILocation(line: 69, column: 33, scope: !3750)
!3754 = !DILocation(line: 69, column: 37, scope: !3750)
!3755 = !DILocation(line: 69, column: 50, scope: !3750)
!3756 = !DILocation(line: 69, column: 53, scope: !3750)
!3757 = !DILocation(line: 69, column: 59, scope: !3750)
!3758 = !DILocation(line: 69, column: 7, scope: !3695)
!3759 = !DILocation(line: 71, column: 13, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !251, line: 71, column: 11)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !251, line: 70, column: 5)
!3762 = !DILocation(line: 71, column: 11, scope: !3761)
!3763 = !DILocation(line: 72, column: 9, scope: !3760)
!3764 = !DILocation(line: 72, column: 15, scope: !3760)
!3765 = !DILocation(line: 73, column: 7, scope: !3761)
!3766 = !DILocation(line: 76, column: 3, scope: !3695)
!3767 = !DILocation(line: 77, column: 1, scope: !3695)
!3768 = distinct !DISubprogram(name: "rpl_fclose", scope: !253, file: !253, line: 58, type: !3769, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !37)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!34, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3022, line: 7, baseType: !3773)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3024, line: 49, size: 1728, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3773, file: !3024, line: 51, baseType: !34, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3773, file: !3024, line: 54, baseType: !32, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3773, file: !3024, line: 55, baseType: !32, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3773, file: !3024, line: 56, baseType: !32, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3773, file: !3024, line: 57, baseType: !32, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3773, file: !3024, line: 58, baseType: !32, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3773, file: !3024, line: 59, baseType: !32, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3773, file: !3024, line: 60, baseType: !32, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3773, file: !3024, line: 61, baseType: !32, size: 64, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3773, file: !3024, line: 64, baseType: !32, size: 64, offset: 576)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3773, file: !3024, line: 65, baseType: !32, size: 64, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3773, file: !3024, line: 66, baseType: !32, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3773, file: !3024, line: 68, baseType: !3039, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3773, file: !3024, line: 70, baseType: !3789, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3773, file: !3024, line: 72, baseType: !34, size: 32, offset: 896)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3773, file: !3024, line: 73, baseType: !34, size: 32, offset: 928)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3773, file: !3024, line: 74, baseType: !3046, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3773, file: !3024, line: 77, baseType: !35, size: 16, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3773, file: !3024, line: 78, baseType: !3049, size: 8, offset: 1040)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3773, file: !3024, line: 79, baseType: !3051, size: 8, offset: 1048)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3773, file: !3024, line: 81, baseType: !3055, size: 64, offset: 1088)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3773, file: !3024, line: 89, baseType: !3058, size: 64, offset: 1152)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3773, file: !3024, line: 91, baseType: !3060, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3773, file: !3024, line: 92, baseType: !3063, size: 64, offset: 1280)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3773, file: !3024, line: 93, baseType: !3789, size: 64, offset: 1344)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3773, file: !3024, line: 94, baseType: !33, size: 64, offset: 1408)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3773, file: !3024, line: 95, baseType: !127, size: 64, offset: 1472)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3773, file: !3024, line: 96, baseType: !34, size: 32, offset: 1536)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3773, file: !3024, line: 98, baseType: !3070, size: 160, offset: 1568)
!3805 = !DILocalVariable(name: "fp", arg: 1, scope: !3768, file: !253, line: 58, type: !3771)
!3806 = !DILocation(line: 58, column: 19, scope: !3768)
!3807 = !DILocalVariable(name: "saved_errno", scope: !3768, file: !253, line: 60, type: !34)
!3808 = !DILocation(line: 60, column: 7, scope: !3768)
!3809 = !DILocalVariable(name: "fd", scope: !3768, file: !253, line: 63, type: !34)
!3810 = !DILocation(line: 63, column: 7, scope: !3768)
!3811 = !DILocation(line: 63, column: 20, scope: !3768)
!3812 = !DILocation(line: 63, column: 12, scope: !3768)
!3813 = !DILocation(line: 64, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3768, file: !253, line: 64, column: 7)
!3815 = !DILocation(line: 64, column: 10, scope: !3814)
!3816 = !DILocation(line: 64, column: 7, scope: !3768)
!3817 = !DILocation(line: 65, column: 28, scope: !3814)
!3818 = !DILocation(line: 65, column: 12, scope: !3814)
!3819 = !DILocation(line: 65, column: 5, scope: !3814)
!3820 = !DILocation(line: 70, column: 9, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3768, file: !253, line: 70, column: 7)
!3822 = !DILocation(line: 70, column: 23, scope: !3821)
!3823 = !DILocation(line: 70, column: 41, scope: !3821)
!3824 = !DILocation(line: 70, column: 33, scope: !3821)
!3825 = !DILocation(line: 70, column: 26, scope: !3821)
!3826 = !DILocation(line: 70, column: 59, scope: !3821)
!3827 = !DILocation(line: 71, column: 7, scope: !3821)
!3828 = !DILocation(line: 71, column: 18, scope: !3821)
!3829 = !DILocation(line: 71, column: 10, scope: !3821)
!3830 = !DILocation(line: 70, column: 7, scope: !3768)
!3831 = !DILocation(line: 72, column: 19, scope: !3821)
!3832 = !DILocation(line: 72, column: 17, scope: !3821)
!3833 = !DILocation(line: 72, column: 5, scope: !3821)
!3834 = !DILocalVariable(name: "result", scope: !3768, file: !253, line: 74, type: !34)
!3835 = !DILocation(line: 74, column: 7, scope: !3768)
!3836 = !DILocation(line: 100, column: 28, scope: !3768)
!3837 = !DILocation(line: 100, column: 12, scope: !3768)
!3838 = !DILocation(line: 100, column: 10, scope: !3768)
!3839 = !DILocation(line: 105, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3768, file: !253, line: 105, column: 7)
!3841 = !DILocation(line: 105, column: 19, scope: !3840)
!3842 = !DILocation(line: 105, column: 7, scope: !3768)
!3843 = !DILocation(line: 107, column: 15, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !253, line: 106, column: 5)
!3845 = !DILocation(line: 107, column: 7, scope: !3844)
!3846 = !DILocation(line: 107, column: 13, scope: !3844)
!3847 = !DILocation(line: 108, column: 14, scope: !3844)
!3848 = !DILocation(line: 109, column: 5, scope: !3844)
!3849 = !DILocation(line: 111, column: 10, scope: !3768)
!3850 = !DILocation(line: 111, column: 3, scope: !3768)
!3851 = !DILocation(line: 112, column: 1, scope: !3768)
!3852 = distinct !DISubprogram(name: "rpl_fflush", scope: !255, file: !255, line: 130, type: !3853, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !254, retainedNodes: !37)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!34, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3022, line: 7, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3024, line: 49, size: 1728, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3857, file: !3024, line: 51, baseType: !34, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3857, file: !3024, line: 54, baseType: !32, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3857, file: !3024, line: 55, baseType: !32, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3857, file: !3024, line: 56, baseType: !32, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3857, file: !3024, line: 57, baseType: !32, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3857, file: !3024, line: 58, baseType: !32, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3857, file: !3024, line: 59, baseType: !32, size: 64, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3857, file: !3024, line: 60, baseType: !32, size: 64, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3857, file: !3024, line: 61, baseType: !32, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3857, file: !3024, line: 64, baseType: !32, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3857, file: !3024, line: 65, baseType: !32, size: 64, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3857, file: !3024, line: 66, baseType: !32, size: 64, offset: 704)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3857, file: !3024, line: 68, baseType: !3039, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3857, file: !3024, line: 70, baseType: !3873, size: 64, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3857, file: !3024, line: 72, baseType: !34, size: 32, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3857, file: !3024, line: 73, baseType: !34, size: 32, offset: 928)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3857, file: !3024, line: 74, baseType: !3046, size: 64, offset: 960)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3857, file: !3024, line: 77, baseType: !35, size: 16, offset: 1024)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3857, file: !3024, line: 78, baseType: !3049, size: 8, offset: 1040)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3857, file: !3024, line: 79, baseType: !3051, size: 8, offset: 1048)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3857, file: !3024, line: 81, baseType: !3055, size: 64, offset: 1088)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3857, file: !3024, line: 89, baseType: !3058, size: 64, offset: 1152)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3857, file: !3024, line: 91, baseType: !3060, size: 64, offset: 1216)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3857, file: !3024, line: 92, baseType: !3063, size: 64, offset: 1280)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3857, file: !3024, line: 93, baseType: !3873, size: 64, offset: 1344)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3857, file: !3024, line: 94, baseType: !33, size: 64, offset: 1408)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3857, file: !3024, line: 95, baseType: !127, size: 64, offset: 1472)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3857, file: !3024, line: 96, baseType: !34, size: 32, offset: 1536)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3857, file: !3024, line: 98, baseType: !3070, size: 160, offset: 1568)
!3889 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !255, line: 130, type: !3855)
!3890 = !DILocation(line: 130, column: 19, scope: !3852)
!3891 = !DILocation(line: 151, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3852, file: !255, line: 151, column: 7)
!3893 = !DILocation(line: 151, column: 14, scope: !3892)
!3894 = !DILocation(line: 151, column: 22, scope: !3892)
!3895 = !DILocation(line: 151, column: 27, scope: !3892)
!3896 = !DILocation(line: 151, column: 7, scope: !3852)
!3897 = !DILocation(line: 152, column: 20, scope: !3892)
!3898 = !DILocation(line: 152, column: 12, scope: !3892)
!3899 = !DILocation(line: 152, column: 5, scope: !3892)
!3900 = !DILocation(line: 157, column: 44, scope: !3852)
!3901 = !DILocation(line: 157, column: 3, scope: !3852)
!3902 = !DILocation(line: 159, column: 18, scope: !3852)
!3903 = !DILocation(line: 159, column: 10, scope: !3852)
!3904 = !DILocation(line: 159, column: 3, scope: !3852)
!3905 = !DILocation(line: 236, column: 1, scope: !3852)
!3906 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !255, file: !255, line: 42, type: !3907, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !254, retainedNodes: !37)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3855}
!3909 = !DILocalVariable(name: "fp", arg: 1, scope: !3906, file: !255, line: 42, type: !3855)
!3910 = !DILocation(line: 42, column: 48, scope: !3906)
!3911 = !DILocation(line: 44, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3906, file: !255, line: 44, column: 7)
!3913 = !DILocation(line: 44, column: 12, scope: !3912)
!3914 = !DILocation(line: 44, column: 19, scope: !3912)
!3915 = !DILocation(line: 44, column: 7, scope: !3906)
!3916 = !DILocation(line: 46, column: 13, scope: !3912)
!3917 = !DILocation(line: 46, column: 5, scope: !3912)
!3918 = !DILocation(line: 47, column: 1, scope: !3906)
!3919 = distinct !DISubprogram(name: "rpl_fseeko", scope: !257, file: !257, line: 28, type: !3920, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !37)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!34, !3922, !3956, !34}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3022, line: 7, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3024, line: 49, size: 1728, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3924, file: !3024, line: 51, baseType: !34, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3924, file: !3024, line: 54, baseType: !32, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3924, file: !3024, line: 55, baseType: !32, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3924, file: !3024, line: 56, baseType: !32, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3924, file: !3024, line: 57, baseType: !32, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3924, file: !3024, line: 58, baseType: !32, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3924, file: !3024, line: 59, baseType: !32, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3924, file: !3024, line: 60, baseType: !32, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3924, file: !3024, line: 61, baseType: !32, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3924, file: !3024, line: 64, baseType: !32, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3924, file: !3024, line: 65, baseType: !32, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3924, file: !3024, line: 66, baseType: !32, size: 64, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3924, file: !3024, line: 68, baseType: !3039, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3924, file: !3024, line: 70, baseType: !3940, size: 64, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3924, file: !3024, line: 72, baseType: !34, size: 32, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3924, file: !3024, line: 73, baseType: !34, size: 32, offset: 928)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3924, file: !3024, line: 74, baseType: !3046, size: 64, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3924, file: !3024, line: 77, baseType: !35, size: 16, offset: 1024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3924, file: !3024, line: 78, baseType: !3049, size: 8, offset: 1040)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3924, file: !3024, line: 79, baseType: !3051, size: 8, offset: 1048)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3924, file: !3024, line: 81, baseType: !3055, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3924, file: !3024, line: 89, baseType: !3058, size: 64, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3924, file: !3024, line: 91, baseType: !3060, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3924, file: !3024, line: 92, baseType: !3063, size: 64, offset: 1280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3924, file: !3024, line: 93, baseType: !3940, size: 64, offset: 1344)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3924, file: !3024, line: 94, baseType: !33, size: 64, offset: 1408)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3924, file: !3024, line: 95, baseType: !127, size: 64, offset: 1472)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3924, file: !3024, line: 96, baseType: !34, size: 32, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3924, file: !3024, line: 98, baseType: !3070, size: 160, offset: 1568)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !63, line: 63, baseType: !3046)
!3957 = !DILocalVariable(name: "fp", arg: 1, scope: !3919, file: !257, line: 28, type: !3922)
!3958 = !DILocation(line: 28, column: 15, scope: !3919)
!3959 = !DILocalVariable(name: "offset", arg: 2, scope: !3919, file: !257, line: 28, type: !3956)
!3960 = !DILocation(line: 28, column: 25, scope: !3919)
!3961 = !DILocalVariable(name: "whence", arg: 3, scope: !3919, file: !257, line: 28, type: !34)
!3962 = !DILocation(line: 28, column: 37, scope: !3919)
!3963 = !DILocation(line: 55, column: 7, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3919, file: !257, line: 55, column: 7)
!3965 = !DILocation(line: 55, column: 12, scope: !3964)
!3966 = !DILocation(line: 55, column: 28, scope: !3964)
!3967 = !DILocation(line: 55, column: 33, scope: !3964)
!3968 = !DILocation(line: 55, column: 25, scope: !3964)
!3969 = !DILocation(line: 56, column: 7, scope: !3964)
!3970 = !DILocation(line: 56, column: 10, scope: !3964)
!3971 = !DILocation(line: 56, column: 15, scope: !3964)
!3972 = !DILocation(line: 56, column: 32, scope: !3964)
!3973 = !DILocation(line: 56, column: 37, scope: !3964)
!3974 = !DILocation(line: 56, column: 29, scope: !3964)
!3975 = !DILocation(line: 57, column: 7, scope: !3964)
!3976 = !DILocation(line: 57, column: 10, scope: !3964)
!3977 = !DILocation(line: 57, column: 15, scope: !3964)
!3978 = !DILocation(line: 57, column: 29, scope: !3964)
!3979 = !DILocation(line: 55, column: 7, scope: !3919)
!3980 = !DILocalVariable(name: "pos", scope: !3981, file: !257, line: 123, type: !3956)
!3981 = distinct !DILexicalBlock(scope: !3964, file: !257, line: 119, column: 5)
!3982 = !DILocation(line: 123, column: 13, scope: !3981)
!3983 = !DILocation(line: 123, column: 34, scope: !3981)
!3984 = !DILocation(line: 123, column: 26, scope: !3981)
!3985 = !DILocation(line: 123, column: 39, scope: !3981)
!3986 = !DILocation(line: 123, column: 47, scope: !3981)
!3987 = !DILocation(line: 123, column: 19, scope: !3981)
!3988 = !DILocation(line: 124, column: 11, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3981, file: !257, line: 124, column: 11)
!3990 = !DILocation(line: 124, column: 15, scope: !3989)
!3991 = !DILocation(line: 124, column: 11, scope: !3981)
!3992 = !DILocation(line: 130, column: 11, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !257, line: 125, column: 9)
!3994 = !DILocation(line: 135, column: 7, scope: !3981)
!3995 = !DILocation(line: 135, column: 12, scope: !3981)
!3996 = !DILocation(line: 135, column: 19, scope: !3981)
!3997 = !DILocation(line: 136, column: 22, scope: !3981)
!3998 = !DILocation(line: 136, column: 7, scope: !3981)
!3999 = !DILocation(line: 136, column: 12, scope: !3981)
!4000 = !DILocation(line: 136, column: 20, scope: !3981)
!4001 = !DILocation(line: 167, column: 7, scope: !3981)
!4002 = !DILocation(line: 169, column: 18, scope: !3919)
!4003 = !DILocation(line: 169, column: 22, scope: !3919)
!4004 = !DILocation(line: 169, column: 30, scope: !3919)
!4005 = !DILocation(line: 169, column: 10, scope: !3919)
!4006 = !DILocation(line: 169, column: 3, scope: !3919)
!4007 = !DILocation(line: 170, column: 1, scope: !3919)
!4008 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4009, file: !4009, line: 43, type: !4010, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !37)
!4009 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4010 = !DISubroutineType(types: !55)
!4011 = !DILocation(line: 45, column: 3, scope: !4008)
!4012 = !DILocation(line: 45, column: 9, scope: !4008)
!4013 = !DILocation(line: 46, column: 3, scope: !4008)
!4014 = distinct !DISubprogram(name: "imalloc", scope: !4009, file: !4009, line: 55, type: !3373, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !37)
!4015 = !DILocalVariable(name: "s", arg: 1, scope: !4014, file: !4009, line: 55, type: !241)
!4016 = !DILocation(line: 55, column: 16, scope: !4014)
!4017 = !DILocation(line: 57, column: 10, scope: !4014)
!4018 = !DILocation(line: 57, column: 12, scope: !4014)
!4019 = !DILocation(line: 57, column: 34, scope: !4014)
!4020 = !DILocation(line: 57, column: 26, scope: !4014)
!4021 = !DILocation(line: 57, column: 39, scope: !4014)
!4022 = !DILocation(line: 57, column: 3, scope: !4014)
!4023 = distinct !DISubprogram(name: "irealloc", scope: !4009, file: !4009, line: 66, type: !3401, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !37)
!4024 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !4009, line: 66, type: !33)
!4025 = !DILocation(line: 66, column: 17, scope: !4023)
!4026 = !DILocalVariable(name: "s", arg: 2, scope: !4023, file: !4009, line: 66, type: !241)
!4027 = !DILocation(line: 66, column: 26, scope: !4023)
!4028 = !DILocation(line: 68, column: 10, scope: !4023)
!4029 = !DILocation(line: 68, column: 12, scope: !4023)
!4030 = !DILocation(line: 68, column: 35, scope: !4023)
!4031 = !DILocation(line: 68, column: 38, scope: !4023)
!4032 = !DILocation(line: 68, column: 26, scope: !4023)
!4033 = !DILocation(line: 68, column: 43, scope: !4023)
!4034 = !DILocation(line: 68, column: 3, scope: !4023)
!4035 = distinct !DISubprogram(name: "icalloc", scope: !4009, file: !4009, line: 77, type: !3439, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !37)
!4036 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !4009, line: 77, type: !241)
!4037 = !DILocation(line: 77, column: 16, scope: !4035)
!4038 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !4009, line: 77, type: !241)
!4039 = !DILocation(line: 77, column: 25, scope: !4035)
!4040 = !DILocation(line: 79, column: 18, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4035, file: !4009, line: 79, column: 7)
!4042 = !DILocation(line: 79, column: 16, scope: !4041)
!4043 = !DILocation(line: 79, column: 7, scope: !4035)
!4044 = !DILocation(line: 81, column: 11, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !4009, line: 81, column: 11)
!4046 = distinct !DILexicalBlock(scope: !4041, file: !4009, line: 80, column: 5)
!4047 = !DILocation(line: 81, column: 13, scope: !4045)
!4048 = !DILocation(line: 81, column: 11, scope: !4046)
!4049 = !DILocation(line: 82, column: 16, scope: !4045)
!4050 = !DILocation(line: 82, column: 9, scope: !4045)
!4051 = !DILocation(line: 83, column: 9, scope: !4046)
!4052 = !DILocation(line: 84, column: 5, scope: !4046)
!4053 = !DILocation(line: 85, column: 18, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4035, file: !4009, line: 85, column: 7)
!4055 = !DILocation(line: 85, column: 16, scope: !4054)
!4056 = !DILocation(line: 85, column: 7, scope: !4035)
!4057 = !DILocation(line: 87, column: 11, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !4009, line: 87, column: 11)
!4059 = distinct !DILexicalBlock(scope: !4054, file: !4009, line: 86, column: 5)
!4060 = !DILocation(line: 87, column: 13, scope: !4058)
!4061 = !DILocation(line: 87, column: 11, scope: !4059)
!4062 = !DILocation(line: 88, column: 16, scope: !4058)
!4063 = !DILocation(line: 88, column: 9, scope: !4058)
!4064 = !DILocation(line: 89, column: 9, scope: !4059)
!4065 = !DILocation(line: 90, column: 5, scope: !4059)
!4066 = !DILocation(line: 91, column: 18, scope: !4035)
!4067 = !DILocation(line: 91, column: 21, scope: !4035)
!4068 = !DILocation(line: 91, column: 10, scope: !4035)
!4069 = !DILocation(line: 91, column: 3, scope: !4035)
!4070 = !DILocation(line: 92, column: 1, scope: !4035)
!4071 = distinct !DISubprogram(name: "ireallocarray", scope: !4009, file: !4009, line: 98, type: !3413, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !37)
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4071, file: !4009, line: 98, type: !33)
!4073 = !DILocation(line: 98, column: 22, scope: !4071)
!4074 = !DILocalVariable(name: "n", arg: 2, scope: !4071, file: !4009, line: 98, type: !241)
!4075 = !DILocation(line: 98, column: 31, scope: !4071)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4071, file: !4009, line: 98, type: !241)
!4077 = !DILocation(line: 98, column: 40, scope: !4071)
!4078 = !DILocation(line: 100, column: 11, scope: !4071)
!4079 = !DILocation(line: 100, column: 13, scope: !4071)
!4080 = !DILocation(line: 100, column: 25, scope: !4071)
!4081 = !DILocation(line: 100, column: 28, scope: !4071)
!4082 = !DILocation(line: 100, column: 30, scope: !4071)
!4083 = !DILocation(line: 101, column: 27, scope: !4071)
!4084 = !DILocation(line: 101, column: 30, scope: !4071)
!4085 = !DILocation(line: 101, column: 33, scope: !4071)
!4086 = !DILocation(line: 101, column: 13, scope: !4071)
!4087 = !DILocation(line: 102, column: 13, scope: !4071)
!4088 = !DILocation(line: 100, column: 3, scope: !4071)
!4089 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !196, file: !196, line: 100, type: !4090, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !195, retainedNodes: !37)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!127, !4092, !6, !127, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4094 = !DILocalVariable(name: "pwc", arg: 1, scope: !4089, file: !196, line: 100, type: !4092)
!4095 = !DILocation(line: 100, column: 21, scope: !4089)
!4096 = !DILocalVariable(name: "s", arg: 2, scope: !4089, file: !196, line: 100, type: !6)
!4097 = !DILocation(line: 100, column: 38, scope: !4089)
!4098 = !DILocalVariable(name: "n", arg: 3, scope: !4089, file: !196, line: 100, type: !127)
!4099 = !DILocation(line: 100, column: 48, scope: !4089)
!4100 = !DILocalVariable(name: "ps", arg: 4, scope: !4089, file: !196, line: 100, type: !4093)
!4101 = !DILocation(line: 100, column: 62, scope: !4089)
!4102 = !DILocation(line: 105, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4089, file: !196, line: 105, column: 7)
!4104 = !DILocation(line: 105, column: 9, scope: !4103)
!4105 = !DILocation(line: 105, column: 7, scope: !4089)
!4106 = !DILocation(line: 107, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !196, line: 106, column: 5)
!4108 = !DILocation(line: 108, column: 9, scope: !4107)
!4109 = !DILocation(line: 109, column: 9, scope: !4107)
!4110 = !DILocation(line: 110, column: 5, scope: !4107)
!4111 = !DILocation(line: 117, column: 7, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4089, file: !196, line: 117, column: 7)
!4113 = !DILocation(line: 117, column: 10, scope: !4112)
!4114 = !DILocation(line: 117, column: 7, scope: !4089)
!4115 = !DILocation(line: 118, column: 8, scope: !4112)
!4116 = !DILocation(line: 118, column: 5, scope: !4112)
!4117 = !DILocalVariable(name: "ret", scope: !4089, file: !196, line: 130, type: !127)
!4118 = !DILocation(line: 130, column: 10, scope: !4089)
!4119 = !DILocation(line: 130, column: 26, scope: !4089)
!4120 = !DILocation(line: 130, column: 31, scope: !4089)
!4121 = !DILocation(line: 130, column: 34, scope: !4089)
!4122 = !DILocation(line: 130, column: 37, scope: !4089)
!4123 = !DILocation(line: 130, column: 16, scope: !4089)
!4124 = !DILocation(line: 135, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4089, file: !196, line: 135, column: 7)
!4126 = !DILocation(line: 135, column: 11, scope: !4125)
!4127 = !DILocation(line: 135, column: 25, scope: !4125)
!4128 = !DILocation(line: 135, column: 39, scope: !4125)
!4129 = !DILocation(line: 135, column: 30, scope: !4125)
!4130 = !DILocation(line: 135, column: 7, scope: !4089)
!4131 = !DILocation(line: 137, column: 14, scope: !4125)
!4132 = !DILocation(line: 137, column: 5, scope: !4125)
!4133 = !DILocation(line: 138, column: 7, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4089, file: !196, line: 138, column: 7)
!4135 = !DILocation(line: 138, column: 11, scope: !4134)
!4136 = !DILocation(line: 138, column: 7, scope: !4089)
!4137 = !DILocation(line: 139, column: 5, scope: !4134)
!4138 = !DILocation(line: 143, column: 22, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4089, file: !196, line: 143, column: 7)
!4140 = !DILocation(line: 143, column: 19, scope: !4139)
!4141 = !DILocation(line: 143, column: 26, scope: !4139)
!4142 = !DILocation(line: 143, column: 29, scope: !4139)
!4143 = !DILocation(line: 143, column: 31, scope: !4139)
!4144 = !DILocation(line: 143, column: 36, scope: !4139)
!4145 = !DILocation(line: 143, column: 41, scope: !4139)
!4146 = !DILocation(line: 143, column: 7, scope: !4089)
!4147 = !DILocation(line: 145, column: 11, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !196, line: 145, column: 11)
!4149 = distinct !DILexicalBlock(scope: !4139, file: !196, line: 144, column: 5)
!4150 = !DILocation(line: 145, column: 15, scope: !4148)
!4151 = !DILocation(line: 145, column: 11, scope: !4149)
!4152 = !DILocation(line: 146, column: 33, scope: !4148)
!4153 = !DILocation(line: 146, column: 32, scope: !4148)
!4154 = !DILocation(line: 146, column: 16, scope: !4148)
!4155 = !DILocation(line: 146, column: 10, scope: !4148)
!4156 = !DILocation(line: 146, column: 14, scope: !4148)
!4157 = !DILocation(line: 146, column: 9, scope: !4148)
!4158 = !DILocation(line: 147, column: 7, scope: !4149)
!4159 = !DILocation(line: 151, column: 10, scope: !4089)
!4160 = !DILocation(line: 151, column: 3, scope: !4089)
!4161 = !DILocation(line: 286, column: 1, scope: !4089)
!4162 = distinct !DISubprogram(name: "mbszero", scope: !4163, file: !4163, line: 1135, type: !4164, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !37)
!4163 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4166}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !201, line: 6, baseType: !4168)
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !203, line: 21, baseType: !4169)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 13, size: 64, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4169, file: !203, line: 15, baseType: !34, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4169, file: !203, line: 20, baseType: !4173, size: 32, offset: 32)
!4173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4169, file: !203, line: 16, size: 32, elements: !4174)
!4174 = !{!4175, !4176}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4173, file: !203, line: 18, baseType: !13, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4173, file: !203, line: 19, baseType: !212, size: 32)
!4177 = !DILocalVariable(name: "ps", arg: 1, scope: !4162, file: !4163, line: 1135, type: !4166)
!4178 = !DILocation(line: 1135, column: 21, scope: !4162)
!4179 = !DILocation(line: 1137, column: 11, scope: !4162)
!4180 = !DILocation(line: 1137, column: 3, scope: !4162)
!4181 = !DILocation(line: 1138, column: 1, scope: !4162)
!4182 = distinct !DISubprogram(name: "memeq", scope: !3005, file: !3005, line: 974, type: !4183, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !37)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!50, !3624, !3624, !127}
!4185 = !DILocalVariable(name: "__s1", arg: 1, scope: !4182, file: !3005, line: 974, type: !3624)
!4186 = !DILocation(line: 974, column: 20, scope: !4182)
!4187 = !DILocalVariable(name: "__s2", arg: 2, scope: !4182, file: !3005, line: 974, type: !3624)
!4188 = !DILocation(line: 974, column: 38, scope: !4182)
!4189 = !DILocalVariable(name: "__n", arg: 3, scope: !4182, file: !3005, line: 974, type: !127)
!4190 = !DILocation(line: 974, column: 51, scope: !4182)
!4191 = !DILocation(line: 976, column: 19, scope: !4182)
!4192 = !DILocation(line: 976, column: 25, scope: !4182)
!4193 = !DILocation(line: 976, column: 31, scope: !4182)
!4194 = !DILocation(line: 976, column: 11, scope: !4182)
!4195 = !DILocation(line: 976, column: 10, scope: !4182)
!4196 = !DILocation(line: 976, column: 3, scope: !4182)
!4197 = distinct !DISubprogram(name: "rpl_realloc", scope: !4198, file: !4198, line: 2057, type: !3389, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !37)
!4198 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4199 = !DILocalVariable(name: "ptr", arg: 1, scope: !4197, file: !4198, line: 2057, type: !33)
!4200 = !DILocation(line: 2057, column: 20, scope: !4197)
!4201 = !DILocalVariable(name: "size", arg: 2, scope: !4197, file: !4198, line: 2057, type: !127)
!4202 = !DILocation(line: 2057, column: 32, scope: !4197)
!4203 = !DILocation(line: 2059, column: 19, scope: !4197)
!4204 = !DILocation(line: 2059, column: 24, scope: !4197)
!4205 = !DILocation(line: 2059, column: 31, scope: !4197)
!4206 = !DILocation(line: 2059, column: 10, scope: !4197)
!4207 = !DILocation(line: 2059, column: 3, scope: !4197)
!4208 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !267, file: !267, line: 27, type: !3326, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !37)
!4209 = !DILocalVariable(name: "ptr", arg: 1, scope: !4208, file: !267, line: 27, type: !33)
!4210 = !DILocation(line: 27, column: 21, scope: !4208)
!4211 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4208, file: !267, line: 27, type: !127)
!4212 = !DILocation(line: 27, column: 33, scope: !4208)
!4213 = !DILocalVariable(name: "size", arg: 3, scope: !4208, file: !267, line: 27, type: !127)
!4214 = !DILocation(line: 27, column: 47, scope: !4208)
!4215 = !DILocalVariable(name: "nbytes", scope: !4208, file: !267, line: 29, type: !127)
!4216 = !DILocation(line: 29, column: 10, scope: !4208)
!4217 = !DILocation(line: 30, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !267, line: 30, column: 7)
!4219 = !DILocation(line: 30, column: 7, scope: !4208)
!4220 = !DILocation(line: 32, column: 7, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4218, file: !267, line: 31, column: 5)
!4222 = !DILocation(line: 32, column: 13, scope: !4221)
!4223 = !DILocation(line: 33, column: 7, scope: !4221)
!4224 = !DILocation(line: 37, column: 19, scope: !4208)
!4225 = !DILocation(line: 37, column: 24, scope: !4208)
!4226 = !DILocation(line: 37, column: 10, scope: !4208)
!4227 = !DILocation(line: 37, column: 3, scope: !4208)
!4228 = !DILocation(line: 38, column: 1, scope: !4208)
!4229 = distinct !DISubprogram(name: "hard_locale", scope: !270, file: !270, line: 28, type: !884, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !37)
!4230 = !DILocalVariable(name: "category", arg: 1, scope: !4229, file: !270, line: 28, type: !34)
!4231 = !DILocation(line: 28, column: 18, scope: !4229)
!4232 = !DILocalVariable(name: "locale", scope: !4229, file: !270, line: 30, type: !4233)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4234)
!4234 = !{!4235}
!4235 = !DISubrange(count: 257)
!4236 = !DILocation(line: 30, column: 8, scope: !4229)
!4237 = !DILocation(line: 32, column: 25, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4229, file: !270, line: 32, column: 7)
!4239 = !DILocation(line: 32, column: 35, scope: !4238)
!4240 = !DILocation(line: 32, column: 7, scope: !4238)
!4241 = !DILocation(line: 32, column: 7, scope: !4229)
!4242 = !DILocation(line: 33, column: 5, scope: !4238)
!4243 = !DILocation(line: 35, column: 16, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4229, file: !270, line: 35, column: 7)
!4245 = !DILocation(line: 35, column: 9, scope: !4244)
!4246 = !DILocation(line: 35, column: 29, scope: !4244)
!4247 = !DILocation(line: 35, column: 39, scope: !4244)
!4248 = !DILocation(line: 35, column: 32, scope: !4244)
!4249 = !DILocation(line: 35, column: 7, scope: !4229)
!4250 = !DILocation(line: 36, column: 5, scope: !4244)
!4251 = !DILocation(line: 46, column: 3, scope: !4229)
!4252 = !DILocation(line: 47, column: 1, scope: !4229)
!4253 = distinct !DISubprogram(name: "setlocale_null_r", scope: !272, file: !272, line: 154, type: !4254, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !37)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!34, !34, !32, !127}
!4256 = !DILocalVariable(name: "category", arg: 1, scope: !4253, file: !272, line: 154, type: !34)
!4257 = !DILocation(line: 154, column: 23, scope: !4253)
!4258 = !DILocalVariable(name: "buf", arg: 2, scope: !4253, file: !272, line: 154, type: !32)
!4259 = !DILocation(line: 154, column: 39, scope: !4253)
!4260 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4253, file: !272, line: 154, type: !127)
!4261 = !DILocation(line: 154, column: 51, scope: !4253)
!4262 = !DILocation(line: 159, column: 37, scope: !4253)
!4263 = !DILocation(line: 159, column: 47, scope: !4253)
!4264 = !DILocation(line: 159, column: 52, scope: !4253)
!4265 = !DILocation(line: 159, column: 10, scope: !4253)
!4266 = !DILocation(line: 159, column: 3, scope: !4253)
!4267 = distinct !DISubprogram(name: "setlocale_null", scope: !272, file: !272, line: 186, type: !4268, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !37)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!6, !34}
!4270 = !DILocalVariable(name: "category", arg: 1, scope: !4267, file: !272, line: 186, type: !34)
!4271 = !DILocation(line: 186, column: 21, scope: !4267)
!4272 = !DILocation(line: 189, column: 35, scope: !4267)
!4273 = !DILocation(line: 189, column: 10, scope: !4267)
!4274 = !DILocation(line: 189, column: 3, scope: !4267)
!4275 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !274, file: !274, line: 35, type: !4268, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !37)
!4276 = !DILocalVariable(name: "category", arg: 1, scope: !4275, file: !274, line: 35, type: !34)
!4277 = !DILocation(line: 35, column: 30, scope: !4275)
!4278 = !DILocalVariable(name: "result", scope: !4275, file: !274, line: 37, type: !6)
!4279 = !DILocation(line: 37, column: 15, scope: !4275)
!4280 = !DILocation(line: 37, column: 35, scope: !4275)
!4281 = !DILocation(line: 37, column: 24, scope: !4275)
!4282 = !DILocation(line: 62, column: 10, scope: !4275)
!4283 = !DILocation(line: 62, column: 3, scope: !4275)
!4284 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !274, file: !274, line: 66, type: !4254, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !37)
!4285 = !DILocalVariable(name: "category", arg: 1, scope: !4284, file: !274, line: 66, type: !34)
!4286 = !DILocation(line: 66, column: 32, scope: !4284)
!4287 = !DILocalVariable(name: "buf", arg: 2, scope: !4284, file: !274, line: 66, type: !32)
!4288 = !DILocation(line: 66, column: 48, scope: !4284)
!4289 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4284, file: !274, line: 66, type: !127)
!4290 = !DILocation(line: 66, column: 60, scope: !4284)
!4291 = !DILocalVariable(name: "result", scope: !4284, file: !274, line: 111, type: !6)
!4292 = !DILocation(line: 111, column: 15, scope: !4284)
!4293 = !DILocation(line: 111, column: 49, scope: !4284)
!4294 = !DILocation(line: 111, column: 24, scope: !4284)
!4295 = !DILocation(line: 113, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4284, file: !274, line: 113, column: 7)
!4297 = !DILocation(line: 113, column: 14, scope: !4296)
!4298 = !DILocation(line: 113, column: 7, scope: !4284)
!4299 = !DILocation(line: 116, column: 11, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !274, line: 116, column: 11)
!4301 = distinct !DILexicalBlock(scope: !4296, file: !274, line: 114, column: 5)
!4302 = !DILocation(line: 116, column: 19, scope: !4300)
!4303 = !DILocation(line: 116, column: 11, scope: !4301)
!4304 = !DILocation(line: 120, column: 9, scope: !4300)
!4305 = !DILocation(line: 120, column: 16, scope: !4300)
!4306 = !DILocation(line: 121, column: 7, scope: !4301)
!4307 = !DILocalVariable(name: "length", scope: !4308, file: !274, line: 125, type: !127)
!4308 = distinct !DILexicalBlock(scope: !4296, file: !274, line: 124, column: 5)
!4309 = !DILocation(line: 125, column: 14, scope: !4308)
!4310 = !DILocation(line: 125, column: 31, scope: !4308)
!4311 = !DILocation(line: 125, column: 23, scope: !4308)
!4312 = !DILocation(line: 126, column: 11, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4308, file: !274, line: 126, column: 11)
!4314 = !DILocation(line: 126, column: 20, scope: !4313)
!4315 = !DILocation(line: 126, column: 18, scope: !4313)
!4316 = !DILocation(line: 126, column: 11, scope: !4308)
!4317 = !DILocation(line: 128, column: 19, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4313, file: !274, line: 127, column: 9)
!4319 = !DILocation(line: 128, column: 24, scope: !4318)
!4320 = !DILocation(line: 128, column: 32, scope: !4318)
!4321 = !DILocation(line: 128, column: 39, scope: !4318)
!4322 = !DILocation(line: 128, column: 11, scope: !4318)
!4323 = !DILocation(line: 129, column: 11, scope: !4318)
!4324 = !DILocation(line: 133, column: 15, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !274, line: 133, column: 15)
!4326 = distinct !DILexicalBlock(scope: !4313, file: !274, line: 132, column: 9)
!4327 = !DILocation(line: 133, column: 23, scope: !4325)
!4328 = !DILocation(line: 133, column: 15, scope: !4326)
!4329 = !DILocation(line: 138, column: 23, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4325, file: !274, line: 134, column: 13)
!4331 = !DILocation(line: 138, column: 28, scope: !4330)
!4332 = !DILocation(line: 138, column: 36, scope: !4330)
!4333 = !DILocation(line: 138, column: 44, scope: !4330)
!4334 = !DILocation(line: 138, column: 15, scope: !4330)
!4335 = !DILocation(line: 139, column: 15, scope: !4330)
!4336 = !DILocation(line: 139, column: 19, scope: !4330)
!4337 = !DILocation(line: 139, column: 27, scope: !4330)
!4338 = !DILocation(line: 139, column: 32, scope: !4330)
!4339 = !DILocation(line: 140, column: 13, scope: !4330)
!4340 = !DILocation(line: 141, column: 11, scope: !4326)
!4341 = !DILocation(line: 145, column: 1, scope: !4284)
