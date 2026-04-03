; ModuleID = 'src/nohup.bc'
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
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"ignoring input and redirecting standard error to standard output\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"redirecting standard error to standard output\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.54 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), align 8, !dbg !62
@file_name = internal global i8* null, align 8, !dbg !67
@ignore_EPIPE = internal global i8 0, align 1, !dbg !72
@.str.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !75
@stderr = external global %struct._IO_FILE*, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !104
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !81
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !100
@.str.1.76 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.77 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.78 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !102
@.str.4.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.72 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.73 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4, !dbg !109
@opterr = external global i32, align 4
@.str.91 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.92, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.93, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !117
@optind = external global i32, align 4
@.str.1.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.92 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.93 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !134
@.str.101 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.102 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !141
@.str.105 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.107 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.108 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.109 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.110 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.111 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.112 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.113 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.114 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.108, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.114, i32 0, i32 0), i8* null], align 8, !dbg !152
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !167
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !185
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !200
@nslots = internal global i32 1, align 4, !dbg !207
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !187
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !209
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !173
@.str.10.115 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.116 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !192
@.str.125 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.126 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.127 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.128 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.129 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.130 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.131 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.132 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.133 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.134 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.135 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.136 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.137 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.138 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.139 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.140 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.141 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.146 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.147 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.148 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.149 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.150 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.151 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.152 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !215
@exit_failure = dso_local global i32 1, align 4, !dbg !223
@.str.165 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.163 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.164 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.190 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !229
@.str.201 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.202 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !329 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load i32, i32* %2, align 4, !dbg !332
  %4 = icmp ne i32 %3, 0, !dbg !334
  br i1 %4, label %5, label %12, !dbg !335

5:                                                ; preds = %1
  br label %6, !dbg !336

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !337
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !337
  %9 = load i8*, i8** @program_name, align 8, !dbg !337
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !337
  br label %11, !dbg !337

11:                                               ; preds = %6
  br label %27, !dbg !337

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !339
  %14 = load i8*, i8** @program_name, align 8, !dbg !341
  %15 = load i8*, i8** @program_name, align 8, !dbg !342
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !343
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !344
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !344
  %19 = call i32 @fputs_unlocked(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !344
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !345
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !345
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !346
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !346
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([291 x i8], [291 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !347
  %23 = load i8*, i8** @program_name, align 8, !dbg !348
  %24 = call i32 (i8*, ...) @printf(i8* noundef %22, i8* noundef %23), !dbg !349
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !350
  %26 = call i32 (i8*, ...) @printf(i8* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !351
  call void @emit_exec_status(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !352
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !353
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4, !dbg !354
  call void @exit(i32 noundef %28) #20, !dbg !355
  unreachable, !dbg !355
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !2 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !356, metadata !DIExpression()), !dbg !357
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !358, metadata !DIExpression()), !dbg !359
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !360
  %15 = icmp eq i32 %14, -1, !dbg !362
  br i1 %15, label %16, label %30, !dbg !363

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !364, metadata !DIExpression()), !dbg !366
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #19, !dbg !367
  store i8* %17, i8** %5, align 8, !dbg !366
  %18 = load i8*, i8** %5, align 8, !dbg !368
  %19 = icmp ne i8* %18, null, !dbg !368
  br i1 %19, label %20, label %27, !dbg !369

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !370
  %22 = load i8, i8* %21, align 1, !dbg !371
  %23 = icmp ne i8 %22, 0, !dbg !371
  br i1 %23, label %24, label %27, !dbg !372

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !373
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)), !dbg !374
  br label %27, !dbg !372

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !372
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !375
  br label %30, !dbg !376

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !377
  %32 = icmp ne i32 %31, 0, !dbg !377
  br i1 %32, label %33, label %37, !dbg !379

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !380
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !380
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !380
  br label %274, !dbg !382

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !383, metadata !DIExpression()), !dbg !384
  store i8 1, i8* %6, align 1, !dbg !384
  call void @llvm.dbg.declare(metadata i8** %7, metadata !385, metadata !DIExpression()), !dbg !386
  %38 = load i8*, i8** %4, align 8, !dbg !387
  %39 = load i8*, i8** %4, align 8, !dbg !388
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #21, !dbg !389
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !390
  store i8* %41, i8** %7, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata i8** %8, metadata !391, metadata !DIExpression()), !dbg !392
  %42 = load i8*, i8** %4, align 8, !dbg !393
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !394
  store i8* %43, i8** %8, align 8, !dbg !392
  %44 = load i8*, i8** %8, align 8, !dbg !395
  %45 = icmp ne i8* %44, null, !dbg !395
  br i1 %45, label %48, label %46, !dbg !397

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !398
  store i8* %47, i8** %8, align 8, !dbg !400
  store i8 0, i8* %6, align 1, !dbg !401
  br label %89, !dbg !402

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !403
  %50 = load i8*, i8** %7, align 8, !dbg !405
  %51 = icmp ne i8* %49, %50, !dbg !406
  br i1 %51, label %52, label %88, !dbg !407

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !408, metadata !DIExpression()), !dbg !410
  %53 = load i8*, i8** %7, align 8, !dbg !411
  store i8* %53, i8** %9, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata i64* %10, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 0, i64* %10, align 8, !dbg !413
  br label %54, !dbg !414

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !415
  %56 = load i8*, i8** %8, align 8, !dbg !416
  %57 = icmp ult i8* %55, %56, !dbg !417
  br i1 %57, label %58, label %61, !dbg !418

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !419
  %60 = icmp ult i64 %59, 2, !dbg !420
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !421
  br i1 %62, label %63, label %82, !dbg !414

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !422
  %65 = load i16*, i16** %64, align 8, !dbg !422
  %66 = load i8*, i8** %9, align 8, !dbg !422
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !422
  store i8* %67, i8** %9, align 8, !dbg !422
  %68 = load i8, i8* %66, align 1, !dbg !422
  %69 = zext i8 %68 to i32, !dbg !422
  %70 = sext i32 %69 to i64, !dbg !422
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !422
  %72 = load i16, i16* %71, align 2, !dbg !422
  %73 = zext i16 %72 to i32, !dbg !422
  %74 = and i32 %73, 8192, !dbg !422
  %75 = icmp ne i32 %74, 0, !dbg !423
  %76 = xor i1 %75, true, !dbg !423
  %77 = xor i1 %76, true, !dbg !424
  %78 = zext i1 %77 to i32, !dbg !424
  %79 = sext i32 %78 to i64, !dbg !424
  %80 = load i64, i64* %10, align 8, !dbg !425
  %81 = add i64 %80, %79, !dbg !425
  store i64 %81, i64* %10, align 8, !dbg !425
  br label %54, !dbg !414, !llvm.loop !426

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !428
  %84 = icmp eq i64 %83, 2, !dbg !430
  br i1 %84, label %85, label %87, !dbg !431

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !432
  store i8* %86, i8** %8, align 8, !dbg !434
  store i8 0, i8* %6, align 1, !dbg !435
  br label %87, !dbg !436

87:                                               ; preds = %85, %82
  br label %88, !dbg !437

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !438, metadata !DIExpression()), !dbg !439
  %90 = load i8*, i8** %8, align 8, !dbg !440
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #21, !dbg !441
  store i64 %91, i64* %11, align 8, !dbg !439
  call void @llvm.dbg.declare(metadata i8** %12, metadata !442, metadata !DIExpression()), !dbg !443
  %92 = load i8*, i8** %8, align 8, !dbg !444
  %93 = load i64, i64* %11, align 8, !dbg !445
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !446
  store i8* %94, i8** %12, align 8, !dbg !443
  br label %95, !dbg !447

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !448
  %97 = load i8, i8* %96, align 1, !dbg !449
  %98 = zext i8 %97 to i32, !dbg !449
  %99 = icmp ne i32 %98, 0, !dbg !449
  br i1 %99, label %100, label %105, !dbg !450

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !451
  %102 = load i8, i8* %101, align 1, !dbg !452
  %103 = zext i8 %102 to i32, !dbg !452
  %104 = icmp ne i32 %103, 10, !dbg !453
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !454
  br i1 %106, label %107, label %164, !dbg !447

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !455
  %109 = load i8, i8* %108, align 1, !dbg !458
  %110 = zext i8 %109 to i32, !dbg !458
  %111 = icmp eq i32 %110, 45, !dbg !459
  br i1 %111, label %112, label %119, !dbg !460

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !461
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !462
  %115 = load i8, i8* %114, align 1, !dbg !463
  %116 = zext i8 %115 to i32, !dbg !463
  %117 = icmp eq i32 %116, 45, !dbg !464
  br i1 %117, label %118, label %119, !dbg !465

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !466
  br label %119, !dbg !467

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !468
  %121 = load i16*, i16** %120, align 8, !dbg !468
  %122 = load i8*, i8** %12, align 8, !dbg !468
  %123 = load i8, i8* %122, align 1, !dbg !468
  %124 = zext i8 %123 to i32, !dbg !468
  %125 = sext i32 %124 to i64, !dbg !468
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !468
  %127 = load i16, i16* %126, align 2, !dbg !468
  %128 = zext i16 %127 to i32, !dbg !468
  %129 = and i32 %128, 8192, !dbg !468
  %130 = icmp ne i32 %129, 0, !dbg !468
  br i1 %130, label %131, label %161, !dbg !470

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !471
  %133 = load i8, i8* %132, align 1, !dbg !474
  %134 = zext i8 %133 to i32, !dbg !474
  %135 = icmp eq i32 %134, 9, !dbg !475
  br i1 %135, label %149, label %136, !dbg !476

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !477
  %138 = load i16*, i16** %137, align 8, !dbg !477
  %139 = load i8*, i8** %12, align 8, !dbg !477
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !477
  %141 = load i8, i8* %140, align 1, !dbg !477
  %142 = zext i8 %141 to i32, !dbg !477
  %143 = sext i32 %142 to i64, !dbg !477
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !477
  %145 = load i16, i16* %144, align 2, !dbg !477
  %146 = zext i16 %145 to i32, !dbg !477
  %147 = and i32 %146, 8192, !dbg !477
  %148 = icmp ne i32 %147, 0, !dbg !477
  br i1 %148, label %149, label %150, !dbg !478

149:                                              ; preds = %136, %131
  br label %164, !dbg !479

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !480
  %152 = trunc i8 %151 to i1, !dbg !480
  br i1 %152, label %160, label %153, !dbg !482

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !483
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !484
  %156 = load i8, i8* %155, align 1, !dbg !485
  %157 = zext i8 %156 to i32, !dbg !485
  %158 = icmp ne i32 %157, 45, !dbg !486
  br i1 %158, label %159, label %160, !dbg !487

159:                                              ; preds = %153
  br label %164, !dbg !488

160:                                              ; preds = %153, %150
  br label %161, !dbg !489

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !490
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !490
  store i8* %163, i8** %12, align 8, !dbg !490
  br label %95, !dbg !447, !llvm.loop !491

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !493
  %166 = load i8*, i8** %7, align 8, !dbg !493
  %167 = load i8*, i8** %4, align 8, !dbg !493
  %168 = ptrtoint i8* %166 to i64, !dbg !493
  %169 = ptrtoint i8* %167 to i64, !dbg !493
  %170 = sub i64 %168, %169, !dbg !493
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !493
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !493
  call void @llvm.dbg.declare(metadata i8** %13, metadata !494, metadata !DIExpression()), !dbg !495
  %173 = load i8*, i8** %3, align 8, !dbg !496
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)), !dbg !497
  br i1 %174, label %175, label %176, !dbg !497

175:                                              ; preds = %164
  br label %232, !dbg !497

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !498
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)), !dbg !499
  br i1 %178, label %179, label %180, !dbg !499

179:                                              ; preds = %176
  br label %230, !dbg !499

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !500
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)), !dbg !501
  br i1 %182, label %183, label %184, !dbg !501

183:                                              ; preds = %180
  br label %228, !dbg !501

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !502
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)), !dbg !503
  br i1 %186, label %187, label %188, !dbg !503

187:                                              ; preds = %184
  br label %226, !dbg !503

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !504
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)), !dbg !505
  br i1 %190, label %191, label %192, !dbg !505

191:                                              ; preds = %188
  br label %224, !dbg !505

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !506
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)), !dbg !507
  br i1 %194, label %195, label %196, !dbg !507

195:                                              ; preds = %192
  br label %222, !dbg !507

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !508
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)), !dbg !509
  br i1 %198, label %199, label %200, !dbg !509

199:                                              ; preds = %196
  br label %220, !dbg !509

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !510
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)), !dbg !511
  br i1 %202, label %203, label %204, !dbg !511

203:                                              ; preds = %200
  br label %218, !dbg !511

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !512
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)), !dbg !513
  br i1 %206, label %207, label %208, !dbg !513

207:                                              ; preds = %204
  br label %216, !dbg !513

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !514
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)), !dbg !515
  br i1 %210, label %211, label %212, !dbg !515

211:                                              ; preds = %208
  br label %214, !dbg !515

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !516
  br label %214, !dbg !515

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !515
  br label %216, !dbg !513

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !513
  br label %218, !dbg !511

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !511
  br label %220, !dbg !509

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !509
  br label %222, !dbg !507

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !507
  br label %224, !dbg !505

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !505
  br label %226, !dbg !503

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !503
  br label %228, !dbg !501

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !501
  br label %230, !dbg !499

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !499
  br label %232, !dbg !497

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !497
  store i8* %233, i8** %13, align 8, !dbg !495
  %234 = load i8*, i8** %8, align 8, !dbg !517
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 noundef 6) #21, !dbg !517
  %236 = icmp eq i32 %235, 0, !dbg !517
  br i1 %236, label %241, label %237, !dbg !519

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !520
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #21, !dbg !520
  %240 = icmp eq i32 %239, 0, !dbg !520
  br i1 %240, label %241, label %248, !dbg !521

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !522
  %243 = load i8*, i8** %13, align 8, !dbg !524
  %244 = load i64, i64* %11, align 8, !dbg !525
  %245 = trunc i64 %244 to i32, !dbg !526
  %246 = load i8*, i8** %8, align 8, !dbg !527
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !528
  br label %254, !dbg !529

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !530
  %250 = load i64, i64* %11, align 8, !dbg !532
  %251 = trunc i64 %250 to i32, !dbg !533
  %252 = load i8*, i8** %8, align 8, !dbg !534
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !535
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !536
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !536
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !537
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !537
  %259 = load i8*, i8** %7, align 8, !dbg !538
  %260 = load i8*, i8** %12, align 8, !dbg !538
  %261 = load i8*, i8** %7, align 8, !dbg !538
  %262 = ptrtoint i8* %260 to i64, !dbg !538
  %263 = ptrtoint i8* %261 to i64, !dbg !538
  %264 = sub i64 %262, %263, !dbg !538
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !538
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !539
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !540
  %271 = load i8*, i8** %12, align 8, !dbg !541
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !541
  br label %274, !dbg !542

274:                                              ; preds = %254, %33
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_exec_status(i8* noundef %0) #4 !dbg !543 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !546, metadata !DIExpression()), !dbg !547
  %3 = call i8* @gettext(i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.54, i64 0, i64 0)) #19, !dbg !548
  %4 = load i8*, i8** %2, align 8, !dbg !549
  %5 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef %4), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !552 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !555, metadata !DIExpression()), !dbg !564
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !564
  call void @llvm.dbg.declare(metadata i8** %4, metadata !565, metadata !DIExpression()), !dbg !566
  %9 = load i8*, i8** %2, align 8, !dbg !567
  store i8* %9, i8** %4, align 8, !dbg !566
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !568, metadata !DIExpression()), !dbg !570
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !571
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !570
  br label %11, !dbg !572

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !573
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !574
  %14 = load i8*, i8** %13, align 8, !dbg !574
  %15 = icmp ne i8* %14, null, !dbg !573
  br i1 %15, label %16, label %23, !dbg !575

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !576
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !577
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !578
  %20 = load i8*, i8** %19, align 8, !dbg !578
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !579
  %22 = xor i1 %21, true, !dbg !580
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !581
  br i1 %24, label %25, label %28, !dbg !572

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !582
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !582
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !582
  br label %11, !dbg !572, !llvm.loop !583

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !584
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !586
  %31 = load i8*, i8** %30, align 8, !dbg !586
  %32 = icmp ne i8* %31, null, !dbg !584
  br i1 %32, label %33, label %37, !dbg !587

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !588
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !589
  %36 = load i8*, i8** %35, align 8, !dbg !589
  store i8* %36, i8** %4, align 8, !dbg !590
  br label %37, !dbg !591

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !592
  call void @llvm.dbg.declare(metadata i8** %6, metadata !593, metadata !DIExpression()), !dbg !594
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !595
  store i8* %38, i8** %6, align 8, !dbg !594
  %39 = load i8*, i8** %6, align 8, !dbg !596
  %40 = icmp ne i8* %39, null, !dbg !596
  br i1 %40, label %41, label %49, !dbg !598

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !599
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 noundef 3) #21, !dbg !599
  %44 = icmp ne i32 %43, 0, !dbg !599
  br i1 %44, label %45, label %49, !dbg !600

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.59, i64 0, i64 0)) #19, !dbg !601
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !601
  br label %49, !dbg !603

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !604, metadata !DIExpression()), !dbg !605
  %50 = load i8*, i8** %2, align 8, !dbg !606
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)), !dbg !607
  br i1 %51, label %52, label %53, !dbg !607

52:                                               ; preds = %49
  br label %55, !dbg !607

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !608
  br label %55, !dbg !607

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !607
  store i8* %56, i8** %7, align 8, !dbg !605
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0)) #19, !dbg !609
  %58 = load i8*, i8** %7, align 8, !dbg !610
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %58), !dbg !611
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0)) #19, !dbg !612
  %61 = load i8*, i8** %4, align 8, !dbg !613
  %62 = load i8*, i8** %4, align 8, !dbg !614
  %63 = load i8*, i8** %2, align 8, !dbg !615
  %64 = icmp eq i8* %62, %63, !dbg !616
  %65 = zext i1 %64 to i64, !dbg !614
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !614
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !617
  ret void, !dbg !618
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !619 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !623, metadata !DIExpression()), !dbg !624
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !625, metadata !DIExpression()), !dbg !626
  %26 = load i8**, i8*** %5, align 8, !dbg !627
  %27 = getelementptr inbounds i8*, i8** %26, i64 0, !dbg !627
  %28 = load i8*, i8** %27, align 8, !dbg !627
  call void @set_program_name(i8* noundef %28), !dbg !628
  %29 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !629
  %30 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !630
  %31 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !631
  call void @llvm.dbg.declare(metadata i32* %6, metadata !632, metadata !DIExpression()), !dbg !633
  %32 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !634
  %33 = icmp ne i8* %32, null, !dbg !634
  %34 = zext i1 %33 to i64, !dbg !634
  %35 = select i1 %33, i32 127, i32 125, !dbg !634
  store i32 %35, i32* %6, align 4, !dbg !633
  %36 = load i32, i32* %6, align 4, !dbg !635
  call void @initialize_exit_failure(i32 noundef %36), !dbg !636
  %37 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !637
  %38 = load i32, i32* %4, align 4, !dbg !638
  %39 = load i8**, i8*** %5, align 8, !dbg !639
  %40 = load i8*, i8** @Version, align 8, !dbg !640
  %41 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)), !dbg !641
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %38, i8** noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %40, i1 noundef false, void (i32)* noundef @usage, i8* noundef %41, i8* noundef null), !dbg !642
  %42 = load i32, i32* %4, align 4, !dbg !643
  %43 = load i32, i32* @optind, align 4, !dbg !645
  %44 = icmp sle i32 %42, %43, !dbg !646
  br i1 %44, label %45, label %48, !dbg !647

45:                                               ; preds = %2
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !648
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %46), !dbg !648
  %47 = load i32, i32* %6, align 4, !dbg !650
  call void @usage(i32 noundef %47) #23, !dbg !651
  unreachable, !dbg !651

48:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8* %7, metadata !652, metadata !DIExpression()), !dbg !653
  %49 = call i32 @isatty(i32 noundef 0) #19, !dbg !654
  %50 = icmp ne i32 %49, 0, !dbg !654
  %51 = zext i1 %50 to i8, !dbg !653
  store i8 %51, i8* %7, align 1, !dbg !653
  call void @llvm.dbg.declare(metadata i8* %8, metadata !655, metadata !DIExpression()), !dbg !656
  %52 = call i32 @isatty(i32 noundef 1) #19, !dbg !657
  %53 = icmp ne i32 %52, 0, !dbg !657
  %54 = zext i1 %53 to i8, !dbg !656
  store i8 %54, i8* %8, align 1, !dbg !656
  call void @llvm.dbg.declare(metadata i8* %9, metadata !658, metadata !DIExpression()), !dbg !659
  %55 = load i8, i8* %8, align 1, !dbg !660
  %56 = trunc i8 %55 to i1, !dbg !660
  br i1 %56, label %61, label %57, !dbg !661

57:                                               ; preds = %48
  %58 = call i32* @__errno_location() #22, !dbg !662
  %59 = load i32, i32* %58, align 4, !dbg !662
  %60 = icmp eq i32 %59, 9, !dbg !663
  br label %61

61:                                               ; preds = %57, %48
  %62 = phi i1 [ false, %48 ], [ %60, %57 ], !dbg !664
  %63 = zext i1 %62 to i8, !dbg !659
  store i8 %63, i8* %9, align 1, !dbg !659
  call void @llvm.dbg.declare(metadata i8* %10, metadata !665, metadata !DIExpression()), !dbg !666
  %64 = call i32 @isatty(i32 noundef 2) #19, !dbg !667
  %65 = icmp ne i32 %64, 0, !dbg !667
  %66 = zext i1 %65 to i8, !dbg !666
  store i8 %66, i8* %10, align 1, !dbg !666
  %67 = load i8, i8* %7, align 1, !dbg !668
  %68 = trunc i8 %67 to i1, !dbg !668
  br i1 %68, label %69, label %108, !dbg !670

69:                                               ; preds = %61
  %70 = call i32 @fd_reopen(i32 noundef 0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1, i32 noundef 0), !dbg !671
  %71 = icmp slt i32 %70, 0, !dbg !674
  br i1 %71, label %72, label %99, !dbg !675

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4, !dbg !676
  %74 = call i1 @llvm.is.constant.i32(i32 %73), !dbg !676
  br i1 %74, label %75, label %86, !dbg !676

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4, !dbg !676
  %77 = call i32* @__errno_location() #22, !dbg !676
  %78 = load i32, i32* %77, align 4, !dbg !676
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !676
  call void (i32, i32, i8*, ...) @error(i32 noundef %76, i32 noundef %78, i8* noundef %79), !dbg !676
  %80 = load i32, i32* %6, align 4, !dbg !676
  %81 = icmp ne i32 %80, 0, !dbg !676
  br i1 %81, label %82, label %84, !dbg !676

82:                                               ; preds = %75
  unreachable, !dbg !676

83:                                               ; No predecessors!
  br label %85, !dbg !676

84:                                               ; preds = %75
  br label %85, !dbg !676

85:                                               ; preds = %84, %83
  br label %98, !dbg !676

86:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata i32* %11, metadata !677, metadata !DIExpression()), !dbg !680
  %87 = load i32, i32* %6, align 4, !dbg !680
  store i32 %87, i32* %11, align 4, !dbg !680
  %88 = load i32, i32* %11, align 4, !dbg !680
  %89 = call i32* @__errno_location() #22, !dbg !680
  %90 = load i32, i32* %89, align 4, !dbg !680
  %91 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !680
  call void (i32, i32, i8*, ...) @error(i32 noundef %88, i32 noundef %90, i8* noundef %91), !dbg !680
  %92 = load i32, i32* %11, align 4, !dbg !680
  %93 = icmp ne i32 %92, 0, !dbg !680
  br i1 %93, label %94, label %96, !dbg !680

94:                                               ; preds = %86
  unreachable, !dbg !680

95:                                               ; No predecessors!
  br label %97, !dbg !680

96:                                               ; preds = %86
  br label %97, !dbg !680

97:                                               ; preds = %96, %95
  br label %98, !dbg !676

98:                                               ; preds = %97, %85
  br label %99, !dbg !676

99:                                               ; preds = %98, %69
  %100 = load i8, i8* %8, align 1, !dbg !681
  %101 = trunc i8 %100 to i1, !dbg !681
  br i1 %101, label %107, label %102, !dbg !683

102:                                              ; preds = %99
  %103 = load i8, i8* %10, align 1, !dbg !684
  %104 = trunc i8 %103 to i1, !dbg !684
  br i1 %104, label %107, label %105, !dbg !685

105:                                              ; preds = %102
  %106 = call i8* @gettext(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #19, !dbg !686
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %106), !dbg !686
  br label %107, !dbg !686

107:                                              ; preds = %105, %102, %99
  br label %108, !dbg !687

108:                                              ; preds = %107, %61
  call void @llvm.dbg.declare(metadata i32* %12, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 1, i32* %12, align 4, !dbg !689
  %109 = load i8, i8* %8, align 1, !dbg !690
  %110 = trunc i8 %109 to i1, !dbg !690
  br i1 %110, label %117, label %111, !dbg !692

111:                                              ; preds = %108
  %112 = load i8, i8* %10, align 1, !dbg !693
  %113 = trunc i8 %112 to i1, !dbg !693
  br i1 %113, label %114, label %191, !dbg !694

114:                                              ; preds = %111
  %115 = load i8, i8* %9, align 1, !dbg !695
  %116 = trunc i8 %115 to i1, !dbg !695
  br i1 %116, label %117, label %191, !dbg !696

117:                                              ; preds = %114, %108
  call void @llvm.dbg.declare(metadata i8** %13, metadata !697, metadata !DIExpression()), !dbg !699
  store i8* null, i8** %13, align 8, !dbg !699
  call void @llvm.dbg.declare(metadata i8** %14, metadata !700, metadata !DIExpression()), !dbg !701
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %14, align 8, !dbg !701
  call void @llvm.dbg.declare(metadata i32* %15, metadata !702, metadata !DIExpression()), !dbg !703
  store i32 1089, i32* %15, align 4, !dbg !703
  call void @llvm.dbg.declare(metadata i32* %16, metadata !704, metadata !DIExpression()), !dbg !709
  store i32 384, i32* %16, align 4, !dbg !709
  call void @llvm.dbg.declare(metadata i32* %17, metadata !710, metadata !DIExpression()), !dbg !711
  %118 = call i32 @umask(i32 noundef 0) #19, !dbg !712
  store i32 %118, i32* %17, align 4, !dbg !711
  %119 = load i8, i8* %8, align 1, !dbg !713
  %120 = trunc i8 %119 to i1, !dbg !713
  br i1 %120, label %121, label %126, !dbg !713

121:                                              ; preds = %117
  %122 = load i8*, i8** %14, align 8, !dbg !714
  %123 = load i32, i32* %15, align 4, !dbg !715
  %124 = load i32, i32* %16, align 4, !dbg !716
  %125 = call i32 @fd_reopen(i32 noundef 1, i8* noundef %122, i32 noundef %123, i32 noundef %124), !dbg !717
  br label %131, !dbg !713

126:                                              ; preds = %117
  %127 = load i8*, i8** %14, align 8, !dbg !718
  %128 = load i32, i32* %15, align 4, !dbg !719
  %129 = load i32, i32* %16, align 4, !dbg !720
  %130 = call i32 (i8*, i32, ...) @open(i8* noundef %127, i32 noundef %128, i32 noundef %129), !dbg !721
  br label %131, !dbg !713

131:                                              ; preds = %126, %121
  %132 = phi i32 [ %125, %121 ], [ %130, %126 ], !dbg !713
  store i32 %132, i32* %12, align 4, !dbg !722
  %133 = load i32, i32* %12, align 4, !dbg !723
  %134 = icmp slt i32 %133, 0, !dbg !725
  br i1 %134, label %135, label %180, !dbg !726

135:                                              ; preds = %131
  call void @llvm.dbg.declare(metadata i32* %18, metadata !727, metadata !DIExpression()), !dbg !729
  %136 = call i32* @__errno_location() #22, !dbg !730
  %137 = load i32, i32* %136, align 4, !dbg !730
  store i32 %137, i32* %18, align 4, !dbg !729
  call void @llvm.dbg.declare(metadata i8** %19, metadata !731, metadata !DIExpression()), !dbg !732
  %138 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #19, !dbg !733
  store i8* %138, i8** %19, align 8, !dbg !732
  %139 = load i8*, i8** %19, align 8, !dbg !734
  %140 = icmp ne i8* %139, null, !dbg !734
  br i1 %140, label %141, label %159, !dbg !736

141:                                              ; preds = %135
  %142 = load i8*, i8** %19, align 8, !dbg !737
  %143 = load i8*, i8** %14, align 8, !dbg !739
  %144 = call noalias nonnull i8* @file_name_concat(i8* noundef %142, i8* noundef %143, i8** noundef null), !dbg !740
  store i8* %144, i8** %13, align 8, !dbg !741
  %145 = load i8, i8* %8, align 1, !dbg !742
  %146 = trunc i8 %145 to i1, !dbg !742
  br i1 %146, label %147, label %152, !dbg !742

147:                                              ; preds = %141
  %148 = load i8*, i8** %13, align 8, !dbg !743
  %149 = load i32, i32* %15, align 4, !dbg !744
  %150 = load i32, i32* %16, align 4, !dbg !745
  %151 = call i32 @fd_reopen(i32 noundef 1, i8* noundef %148, i32 noundef %149, i32 noundef %150), !dbg !746
  br label %157, !dbg !742

152:                                              ; preds = %141
  %153 = load i8*, i8** %13, align 8, !dbg !747
  %154 = load i32, i32* %15, align 4, !dbg !748
  %155 = load i32, i32* %16, align 4, !dbg !749
  %156 = call i32 (i8*, i32, ...) @open(i8* noundef %153, i32 noundef %154, i32 noundef %155), !dbg !750
  br label %157, !dbg !742

157:                                              ; preds = %152, %147
  %158 = phi i32 [ %151, %147 ], [ %156, %152 ], !dbg !742
  store i32 %158, i32* %12, align 4, !dbg !751
  br label %159, !dbg !752

159:                                              ; preds = %157, %135
  %160 = load i32, i32* %12, align 4, !dbg !753
  %161 = icmp slt i32 %160, 0, !dbg !755
  br i1 %161, label %162, label %178, !dbg !756

162:                                              ; preds = %159
  call void @llvm.dbg.declare(metadata i32* %20, metadata !757, metadata !DIExpression()), !dbg !759
  %163 = call i32* @__errno_location() #22, !dbg !760
  %164 = load i32, i32* %163, align 4, !dbg !760
  store i32 %164, i32* %20, align 4, !dbg !759
  %165 = load i32, i32* %18, align 4, !dbg !761
  %166 = call i8* @gettext(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #19, !dbg !761
  %167 = load i8*, i8** %14, align 8, !dbg !761
  %168 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %167), !dbg !761
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %165, i8* noundef %166, i8* noundef %168), !dbg !761
  %169 = load i8*, i8** %13, align 8, !dbg !762
  %170 = icmp ne i8* %169, null, !dbg !762
  br i1 %170, label %171, label %176, !dbg !764

171:                                              ; preds = %162
  %172 = load i32, i32* %20, align 4, !dbg !765
  %173 = call i8* @gettext(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #19, !dbg !765
  %174 = load i8*, i8** %13, align 8, !dbg !765
  %175 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %174), !dbg !765
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %172, i8* noundef %173, i8* noundef %175), !dbg !765
  br label %176, !dbg !765

176:                                              ; preds = %171, %162
  %177 = load i32, i32* %6, align 4, !dbg !766
  store i32 %177, i32* %3, align 4, !dbg !767
  br label %276, !dbg !767

178:                                              ; preds = %159
  %179 = load i8*, i8** %13, align 8, !dbg !768
  store i8* %179, i8** %14, align 8, !dbg !769
  br label %180, !dbg !770

180:                                              ; preds = %178, %131
  %181 = load i32, i32* %17, align 4, !dbg !771
  %182 = call i32 @umask(i32 noundef %181) #19, !dbg !772
  %183 = load i8, i8* %7, align 1, !dbg !773
  %184 = trunc i8 %183 to i1, !dbg !773
  %185 = zext i1 %184 to i64, !dbg !773
  %186 = select i1 %184, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), !dbg !773
  %187 = call i8* @gettext(i8* noundef %186) #19, !dbg !773
  %188 = load i8*, i8** %14, align 8, !dbg !773
  %189 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %188), !dbg !773
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %187, i8* noundef %189), !dbg !773
  %190 = load i8*, i8** %13, align 8, !dbg !774
  call void @free(i8* noundef %190) #19, !dbg !775
  br label %191, !dbg !776

191:                                              ; preds = %180, %114, %111
  call void @llvm.dbg.declare(metadata i32* %21, metadata !777, metadata !DIExpression()), !dbg !778
  store i32 2, i32* %21, align 4, !dbg !778
  %192 = load i8, i8* %10, align 1, !dbg !779
  %193 = trunc i8 %192 to i1, !dbg !779
  br i1 %193, label %194, label %242, !dbg !781

194:                                              ; preds = %191
  %195 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3), !dbg !782
  store i32 %195, i32* %21, align 4, !dbg !784
  %196 = load i8, i8* %8, align 1, !dbg !785
  %197 = trunc i8 %196 to i1, !dbg !785
  br i1 %197, label %204, label %198, !dbg !787

198:                                              ; preds = %194
  %199 = load i8, i8* %7, align 1, !dbg !788
  %200 = trunc i8 %199 to i1, !dbg !788
  %201 = zext i1 %200 to i64, !dbg !788
  %202 = select i1 %200, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), !dbg !788
  %203 = call i8* @gettext(i8* noundef %202) #19, !dbg !788
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %203), !dbg !788
  br label %204, !dbg !788

204:                                              ; preds = %198, %194
  %205 = load i32, i32* %12, align 4, !dbg !789
  %206 = call i32 @dup2(i32 noundef %205, i32 noundef 2) #19, !dbg !791
  %207 = icmp slt i32 %206, 0, !dbg !792
  br i1 %207, label %208, label %235, !dbg !793

208:                                              ; preds = %204
  %209 = load i32, i32* %6, align 4, !dbg !794
  %210 = call i1 @llvm.is.constant.i32(i32 %209), !dbg !794
  br i1 %210, label %211, label %222, !dbg !794

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4, !dbg !794
  %213 = call i32* @__errno_location() #22, !dbg !794
  %214 = load i32, i32* %213, align 4, !dbg !794
  %215 = call i8* @gettext(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #19, !dbg !794
  call void (i32, i32, i8*, ...) @error(i32 noundef %212, i32 noundef %214, i8* noundef %215), !dbg !794
  %216 = load i32, i32* %6, align 4, !dbg !794
  %217 = icmp ne i32 %216, 0, !dbg !794
  br i1 %217, label %218, label %220, !dbg !794

218:                                              ; preds = %211
  unreachable, !dbg !794

219:                                              ; No predecessors!
  br label %221, !dbg !794

220:                                              ; preds = %211
  br label %221, !dbg !794

221:                                              ; preds = %220, %219
  br label %234, !dbg !794

222:                                              ; preds = %208
  call void @llvm.dbg.declare(metadata i32* %22, metadata !795, metadata !DIExpression()), !dbg !797
  %223 = load i32, i32* %6, align 4, !dbg !797
  store i32 %223, i32* %22, align 4, !dbg !797
  %224 = load i32, i32* %22, align 4, !dbg !797
  %225 = call i32* @__errno_location() #22, !dbg !797
  %226 = load i32, i32* %225, align 4, !dbg !797
  %227 = call i8* @gettext(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #19, !dbg !797
  call void (i32, i32, i8*, ...) @error(i32 noundef %224, i32 noundef %226, i8* noundef %227), !dbg !797
  %228 = load i32, i32* %22, align 4, !dbg !797
  %229 = icmp ne i32 %228, 0, !dbg !797
  br i1 %229, label %230, label %232, !dbg !797

230:                                              ; preds = %222
  unreachable, !dbg !797

231:                                              ; No predecessors!
  br label %233, !dbg !797

232:                                              ; preds = %222
  br label %233, !dbg !797

233:                                              ; preds = %232, %231
  br label %234, !dbg !794

234:                                              ; preds = %233, %221
  br label %235, !dbg !794

235:                                              ; preds = %234, %204
  %236 = load i8, i8* %9, align 1, !dbg !798
  %237 = trunc i8 %236 to i1, !dbg !798
  br i1 %237, label %238, label %241, !dbg !800

238:                                              ; preds = %235
  %239 = load i32, i32* %12, align 4, !dbg !801
  %240 = call i32 @close(i32 noundef %239), !dbg !802
  br label %241, !dbg !802

241:                                              ; preds = %238, %235
  br label %242, !dbg !803

242:                                              ; preds = %241, %191
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !804
  %244 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %243) #19, !dbg !804
  %245 = icmp ne i32 %244, 0, !dbg !804
  br i1 %245, label %246, label %248, !dbg !806

246:                                              ; preds = %242
  %247 = load i32, i32* %6, align 4, !dbg !807
  store i32 %247, i32* %3, align 4, !dbg !808
  br label %276, !dbg !808

248:                                              ; preds = %242
  %249 = call void (i32)* @signal(i32 noundef 1, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #19, !dbg !809
  call void @llvm.dbg.declare(metadata i8*** %23, metadata !810, metadata !DIExpression()), !dbg !811
  %250 = load i8**, i8*** %5, align 8, !dbg !812
  %251 = load i32, i32* @optind, align 4, !dbg !813
  %252 = sext i32 %251 to i64, !dbg !814
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252, !dbg !814
  store i8** %253, i8*** %23, align 8, !dbg !811
  %254 = load i8**, i8*** %23, align 8, !dbg !815
  %255 = load i8*, i8** %254, align 8, !dbg !816
  %256 = load i8**, i8*** %23, align 8, !dbg !817
  %257 = call i32 @execvp(i8* noundef %255, i8** noundef %256) #19, !dbg !818
  call void @llvm.dbg.declare(metadata i32* %24, metadata !819, metadata !DIExpression()), !dbg !820
  %258 = call i32* @__errno_location() #22, !dbg !821
  %259 = load i32, i32* %258, align 4, !dbg !821
  %260 = icmp eq i32 %259, 2, !dbg !822
  %261 = zext i1 %260 to i64, !dbg !821
  %262 = select i1 %260, i32 127, i32 126, !dbg !821
  store i32 %262, i32* %24, align 4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %25, metadata !823, metadata !DIExpression()), !dbg !824
  %263 = call i32* @__errno_location() #22, !dbg !825
  %264 = load i32, i32* %263, align 4, !dbg !825
  store i32 %264, i32* %25, align 4, !dbg !824
  %265 = load i32, i32* %21, align 4, !dbg !826
  %266 = call i32 @dup2(i32 noundef %265, i32 noundef 2) #19, !dbg !828
  %267 = icmp eq i32 %266, 2, !dbg !829
  br i1 %267, label %268, label %274, !dbg !830

268:                                              ; preds = %248
  %269 = load i32, i32* %25, align 4, !dbg !831
  %270 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0)) #19, !dbg !831
  %271 = load i8**, i8*** %23, align 8, !dbg !831
  %272 = load i8*, i8** %271, align 8, !dbg !831
  %273 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %272), !dbg !831
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %269, i8* noundef %270, i8* noundef %273), !dbg !831
  br label %274, !dbg !831

274:                                              ; preds = %268, %248
  %275 = load i32, i32* %24, align 4, !dbg !832
  store i32 %275, i32* %3, align 4, !dbg !833
  br label %276, !dbg !833

276:                                              ; preds = %274, %246, %176
  %277 = load i32, i32* %3, align 4, !dbg !834
  ret i32 %277, !dbg !834
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #4 !dbg !835 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !836, metadata !DIExpression()), !dbg !837
  %3 = load i32, i32* %2, align 4, !dbg !838
  %4 = icmp ne i32 %3, 1, !dbg !840
  br i1 %4, label %5, label %7, !dbg !841

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !842
  store volatile i32 %6, i32* @exit_failure, align 4, !dbg !843
  br label %7, !dbg !844

7:                                                ; preds = %5, %1
  ret void, !dbg !845
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: nounwind
declare i32 @execvp(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !846 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !847, metadata !DIExpression()), !dbg !848
  %3 = load i8*, i8** %2, align 8, !dbg !849
  store i8* %3, i8** @file_name, align 8, !dbg !850
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !852 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !855, metadata !DIExpression()), !dbg !856
  %4 = load i8, i8* %2, align 1, !dbg !857
  %5 = trunc i8 %4 to i1, !dbg !857
  %6 = zext i1 %5 to i8, !dbg !858
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !858
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !860 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !861
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !863
  %4 = icmp ne i32 %3, 0, !dbg !864
  br i1 %4, label %5, label %28, !dbg !865

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !866
  %7 = trunc i8 %6 to i1, !dbg !866
  br i1 %7, label %8, label %12, !dbg !867

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !868
  %10 = load i32, i32* %9, align 4, !dbg !868
  %11 = icmp eq i32 %10, 32, !dbg !869
  br i1 %11, label %28, label %12, !dbg !870

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !871, metadata !DIExpression()), !dbg !873
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.67, i64 0, i64 0)) #19, !dbg !874
  store i8* %13, i8** %1, align 8, !dbg !873
  %14 = load i8*, i8** @file_name, align 8, !dbg !875
  %15 = icmp ne i8* %14, null, !dbg !875
  br i1 %15, label %16, label %22, !dbg !877

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !878
  %18 = load i32, i32* %17, align 4, !dbg !878
  %19 = load i8*, i8** @file_name, align 8, !dbg !878
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !878
  %21 = load i8*, i8** %1, align 8, !dbg !878
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.68, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !878
  br label %26, !dbg !878

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !879
  %24 = load i32, i32* %23, align 4, !dbg !879
  %25 = load i8*, i8** %1, align 8, !dbg !879
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.69, i64 0, i64 0), i8* noundef %25), !dbg !879
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !880
  call void @_exit(i32 noundef %27) #23, !dbg !881
  unreachable, !dbg !881

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !882
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !884
  %31 = icmp ne i32 %30, 0, !dbg !885
  br i1 %31, label %32, label %34, !dbg !886

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !887
  call void @_exit(i32 noundef %33) #23, !dbg !888
  unreachable, !dbg !888

34:                                               ; preds = %28
  ret void, !dbg !889
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !890 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !895, metadata !DIExpression()), !dbg !894
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !896, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !897, metadata !DIExpression()), !dbg !894
  call void @flush_stdout(), !dbg !898
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !899
  %10 = icmp ne void ()* %9, null, !dbg !899
  br i1 %10, label %11, label %13, !dbg !901

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !902
  call void %12(), !dbg !903
  br label %17, !dbg !903

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !904
  %15 = call i8* @getprogname() #21, !dbg !906
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef %15), !dbg !907
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !908
  %19 = load i32, i32* %6, align 4, !dbg !908
  %20 = load i8*, i8** %7, align 8, !dbg !908
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !908
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !908
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !908
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !910 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 1, i32* %1, align 4, !dbg !913
  %2 = load i32, i32* %1, align 4, !dbg !914
  %3 = icmp sle i32 0, %2, !dbg !916
  br i1 %3, label %4, label %11, !dbg !917

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !918
  %6 = call i32 @is_open(i32 noundef %5), !dbg !919
  %7 = icmp ne i32 %6, 0, !dbg !919
  br i1 %7, label %8, label %11, !dbg !920

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !921
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !921
  br label %11, !dbg !921

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !922
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !923 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !926, metadata !DIExpression()), !dbg !925
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !927, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !928, metadata !DIExpression()), !dbg !925
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !929
  %10 = load i8*, i8** %7, align 8, !dbg !930
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !931
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !931
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !931
  %14 = load i32, i32* @error_message_count, align 4, !dbg !932
  %15 = add i32 %14, 1, !dbg !932
  store i32 %15, i32* @error_message_count, align 4, !dbg !932
  %16 = load i32, i32* %6, align 4, !dbg !933
  %17 = icmp ne i32 %16, 0, !dbg !933
  br i1 %17, label %18, label %20, !dbg !935

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !936
  call void @print_errno_message(i32 noundef %19), !dbg !937
  br label %20, !dbg !937

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !938
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !938
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !939
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !939
  %25 = load i32, i32* %5, align 4, !dbg !940
  %26 = icmp ne i32 %25, 0, !dbg !940
  br i1 %26, label %27, label %29, !dbg !942

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !943
  call void @exit(i32 noundef %28) #20, !dbg !944
  unreachable, !dbg !944

29:                                               ; preds = %20
  ret void, !dbg !945
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !946 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata i8** %3, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !951, metadata !DIExpression()), !dbg !955
  %5 = load i32, i32* %2, align 4, !dbg !956
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !957
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !958
  store i8* %7, i8** %3, align 8, !dbg !959
  %8 = load i8*, i8** %3, align 8, !dbg !960
  %9 = icmp ne i8* %8, null, !dbg !960
  br i1 %9, label %12, label %10, !dbg !962

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.72, i64 0, i64 0)) #19, !dbg !963
  store i8* %11, i8** %3, align 8, !dbg !964
  br label %12, !dbg !965

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !966
  %14 = load i8*, i8** %3, align 8, !dbg !967
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.73, i64 0, i64 0), i8* noundef %14), !dbg !968
  ret void, !dbg !969
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !970 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !973, metadata !DIExpression()), !dbg !974
  %3 = load i32, i32* %2, align 4, !dbg !975
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !976
  %5 = icmp sle i32 0, %4, !dbg !977
  %6 = zext i1 %5 to i32, !dbg !977
  ret i32 %6, !dbg !978
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !979 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !982, metadata !DIExpression()), !dbg !983
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !984, metadata !DIExpression()), !dbg !985
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !988, metadata !DIExpression()), !dbg !989
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !990
  call void @llvm.va_start(i8* %9), !dbg !990
  %10 = load i32, i32* %4, align 4, !dbg !991
  %11 = load i32, i32* %5, align 4, !dbg !991
  %12 = load i8*, i8** %6, align 8, !dbg !991
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !991
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !991
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !991
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !992
  call void @llvm.va_end(i8* %15), !dbg !992
  ret void, !dbg !993
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !83 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !994, metadata !DIExpression()), !dbg !995
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !996, metadata !DIExpression()), !dbg !995
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !997, metadata !DIExpression()), !dbg !995
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !998, metadata !DIExpression()), !dbg !995
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !999, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1000, metadata !DIExpression()), !dbg !995
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1001
  %14 = icmp ne i32 %13, 0, !dbg !1001
  br i1 %14, label %15, label %38, !dbg !1003

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1004
  %17 = load i32, i32* %10, align 4, !dbg !1007
  %18 = icmp eq i32 %16, %17, !dbg !1008
  br i1 %18, label %19, label %35, !dbg !1009

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1010
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1011
  %22 = icmp eq i8* %20, %21, !dbg !1012
  br i1 %22, label %34, label %23, !dbg !1013

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1014
  %25 = icmp ne i8* %24, null, !dbg !1015
  br i1 %25, label %26, label %35, !dbg !1016

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1017
  %28 = icmp ne i8* %27, null, !dbg !1018
  br i1 %28, label %29, label %35, !dbg !1019

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1020
  %31 = load i8*, i8** %9, align 8, !dbg !1021
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1022
  %33 = icmp eq i32 %32, 0, !dbg !1023
  br i1 %33, label %34, label %35, !dbg !1024

34:                                               ; preds = %29, %19
  br label %61, !dbg !1025

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1026
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1027
  %37 = load i32, i32* %10, align 4, !dbg !1028
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1029
  br label %38, !dbg !1030

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1031
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1032
  %40 = icmp ne void ()* %39, null, !dbg !1032
  br i1 %40, label %41, label %43, !dbg !1034

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1035
  call void %42(), !dbg !1036
  br label %47, !dbg !1036

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1037
  %45 = call i8* @getprogname() #21, !dbg !1039
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.76, i64 0, i64 0), i8* noundef %45), !dbg !1040
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1041
  %49 = load i8*, i8** %9, align 8, !dbg !1042
  %50 = icmp ne i8* %49, null, !dbg !1043
  %51 = zext i1 %50 to i64, !dbg !1042
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), !dbg !1042
  %53 = load i8*, i8** %9, align 8, !dbg !1044
  %54 = load i32, i32* %10, align 4, !dbg !1045
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1046
  %56 = load i32, i32* %7, align 4, !dbg !1047
  %57 = load i32, i32* %8, align 4, !dbg !1047
  %58 = load i8*, i8** %11, align 8, !dbg !1047
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1047
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1047
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1047
  br label %61, !dbg !1048

61:                                               ; preds = %47, %34
  ret void, !dbg !1048
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1049 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1062, metadata !DIExpression()), !dbg !1063
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1064
  call void @llvm.va_start(i8* %13), !dbg !1064
  %14 = load i32, i32* %6, align 4, !dbg !1065
  %15 = load i32, i32* %7, align 4, !dbg !1065
  %16 = load i8*, i8** %8, align 8, !dbg !1065
  %17 = load i32, i32* %9, align 4, !dbg !1065
  %18 = load i8*, i8** %10, align 8, !dbg !1065
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1065
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1065
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1065
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1066
  call void @llvm.va_end(i8* %21), !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) #4 !dbg !1068 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1075, metadata !DIExpression()), !dbg !1086
  %11 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1087
  call void @llvm.va_start(i8* %11), !dbg !1087
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i32 -1, i32* %6, align 4, !dbg !1089
  %12 = load i32, i32* %4, align 4, !dbg !1090
  switch i32 %12, label %59 [
    i32 0, label %13
    i32 1030, label %36
  ], !dbg !1091

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1092, metadata !DIExpression()), !dbg !1095
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1096
  %15 = load i32, i32* %14, align 8, !dbg !1096
  %16 = icmp sge i32 %15, 0, !dbg !1096
  br i1 %16, label %25, label %17, !dbg !1096

17:                                               ; preds = %13
  %18 = add i32 %15, 8, !dbg !1096
  store i32 %18, i32* %14, align 8, !dbg !1096
  %19 = icmp sle i32 %18, 0, !dbg !1096
  br i1 %19, label %20, label %25, !dbg !1096

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1096
  %22 = load i8*, i8** %21, align 8, !dbg !1096
  %23 = getelementptr inbounds i8, i8* %22, i32 %15, !dbg !1096
  %24 = bitcast i8* %23 to i32*, !dbg !1096
  br label %30, !dbg !1096

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1096
  %27 = load i8*, i8** %26, align 8, !dbg !1096
  %28 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !1096
  store i8* %28, i8** %26, align 8, !dbg !1096
  %29 = bitcast i8* %27 to i32*, !dbg !1096
  br label %30, !dbg !1096

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ], !dbg !1096
  %32 = load i32, i32* %31, align 8, !dbg !1096
  store i32 %32, i32* %7, align 4, !dbg !1095
  %33 = load i32, i32* %3, align 4, !dbg !1097
  %34 = load i32, i32* %7, align 4, !dbg !1098
  %35 = call i32 @rpl_fcntl_DUPFD(i32 noundef %33, i32 noundef %34), !dbg !1099
  store i32 %35, i32* %6, align 4, !dbg !1100
  br label %114, !dbg !1101

36:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1102, metadata !DIExpression()), !dbg !1104
  %37 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1105
  %38 = load i32, i32* %37, align 8, !dbg !1105
  %39 = icmp sge i32 %38, 0, !dbg !1105
  br i1 %39, label %48, label %40, !dbg !1105

40:                                               ; preds = %36
  %41 = add i32 %38, 8, !dbg !1105
  store i32 %41, i32* %37, align 8, !dbg !1105
  %42 = icmp sle i32 %41, 0, !dbg !1105
  br i1 %42, label %43, label %48, !dbg !1105

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1105
  %45 = load i8*, i8** %44, align 8, !dbg !1105
  %46 = getelementptr inbounds i8, i8* %45, i32 %38, !dbg !1105
  %47 = bitcast i8* %46 to i32*, !dbg !1105
  br label %53, !dbg !1105

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1105
  %50 = load i8*, i8** %49, align 8, !dbg !1105
  %51 = getelementptr inbounds i8, i8* %50, i64 8, !dbg !1105
  store i8* %51, i8** %49, align 8, !dbg !1105
  %52 = bitcast i8* %50 to i32*, !dbg !1105
  br label %53, !dbg !1105

53:                                               ; preds = %48, %43
  %54 = phi i32* [ %47, %43 ], [ %52, %48 ], !dbg !1105
  %55 = load i32, i32* %54, align 8, !dbg !1105
  store i32 %55, i32* %8, align 4, !dbg !1104
  %56 = load i32, i32* %3, align 4, !dbg !1106
  %57 = load i32, i32* %8, align 4, !dbg !1107
  %58 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %56, i32 noundef %57), !dbg !1108
  store i32 %58, i32* %6, align 4, !dbg !1109
  br label %114, !dbg !1110

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4, !dbg !1111
  switch i32 %60, label %89 [
    i32 1, label %61
    i32 3, label %61
    i32 1025, label %61
    i32 9, label %61
    i32 1032, label %61
    i32 1034, label %61
    i32 11, label %61
    i32 1033, label %65
    i32 0, label %65
    i32 1030, label %65
    i32 1026, label %65
    i32 2, label %65
    i32 4, label %65
    i32 1024, label %65
    i32 8, label %65
    i32 1031, label %65
    i32 10, label %65
  ], !dbg !1113

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %62 = load i32, i32* %3, align 4, !dbg !1114
  %63 = load i32, i32* %4, align 4, !dbg !1116
  %64 = call i32 (i32, i32, ...) @fcntl(i32 noundef %62, i32 noundef %63), !dbg !1117
  store i32 %64, i32* %6, align 4, !dbg !1118
  br label %113, !dbg !1119

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1120, metadata !DIExpression()), !dbg !1122
  %66 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1123
  %67 = load i32, i32* %66, align 8, !dbg !1123
  %68 = icmp sge i32 %67, 0, !dbg !1123
  br i1 %68, label %77, label %69, !dbg !1123

69:                                               ; preds = %65
  %70 = add i32 %67, 8, !dbg !1123
  store i32 %70, i32* %66, align 8, !dbg !1123
  %71 = icmp sle i32 %70, 0, !dbg !1123
  br i1 %71, label %72, label %77, !dbg !1123

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1123
  %74 = load i8*, i8** %73, align 8, !dbg !1123
  %75 = getelementptr inbounds i8, i8* %74, i32 %67, !dbg !1123
  %76 = bitcast i8* %75 to i32*, !dbg !1123
  br label %82, !dbg !1123

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1123
  %79 = load i8*, i8** %78, align 8, !dbg !1123
  %80 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !1123
  store i8* %80, i8** %78, align 8, !dbg !1123
  %81 = bitcast i8* %79 to i32*, !dbg !1123
  br label %82, !dbg !1123

82:                                               ; preds = %77, %72
  %83 = phi i32* [ %76, %72 ], [ %81, %77 ], !dbg !1123
  %84 = load i32, i32* %83, align 8, !dbg !1123
  store i32 %84, i32* %9, align 4, !dbg !1122
  %85 = load i32, i32* %3, align 4, !dbg !1124
  %86 = load i32, i32* %4, align 4, !dbg !1125
  %87 = load i32, i32* %9, align 4, !dbg !1126
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef %86, i32 noundef %87), !dbg !1127
  store i32 %88, i32* %6, align 4, !dbg !1128
  br label %113, !dbg !1129

89:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1130, metadata !DIExpression()), !dbg !1132
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1133
  %91 = load i32, i32* %90, align 8, !dbg !1133
  %92 = icmp sge i32 %91, 0, !dbg !1133
  br i1 %92, label %101, label %93, !dbg !1133

93:                                               ; preds = %89
  %94 = add i32 %91, 8, !dbg !1133
  store i32 %94, i32* %90, align 8, !dbg !1133
  %95 = icmp sle i32 %94, 0, !dbg !1133
  br i1 %95, label %96, label %101, !dbg !1133

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1133
  %98 = load i8*, i8** %97, align 8, !dbg !1133
  %99 = getelementptr inbounds i8, i8* %98, i32 %91, !dbg !1133
  %100 = bitcast i8* %99 to i8**, !dbg !1133
  br label %106, !dbg !1133

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1133
  %103 = load i8*, i8** %102, align 8, !dbg !1133
  %104 = getelementptr inbounds i8, i8* %103, i64 8, !dbg !1133
  store i8* %104, i8** %102, align 8, !dbg !1133
  %105 = bitcast i8* %103 to i8**, !dbg !1133
  br label %106, !dbg !1133

106:                                              ; preds = %101, %96
  %107 = phi i8** [ %100, %96 ], [ %105, %101 ], !dbg !1133
  %108 = load i8*, i8** %107, align 8, !dbg !1133
  store i8* %108, i8** %10, align 8, !dbg !1132
  %109 = load i32, i32* %3, align 4, !dbg !1134
  %110 = load i32, i32* %4, align 4, !dbg !1135
  %111 = load i8*, i8** %10, align 8, !dbg !1136
  %112 = call i32 (i32, i32, ...) @fcntl(i32 noundef %109, i32 noundef %110, i8* noundef %111), !dbg !1137
  store i32 %112, i32* %6, align 4, !dbg !1138
  br label %113, !dbg !1139

113:                                              ; preds = %106, %82, %61
  br label %114, !dbg !1140

114:                                              ; preds = %113, %53, %30
  %115 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1141
  call void @llvm.va_end(i8* %115), !dbg !1141
  %116 = load i32, i32* %6, align 4, !dbg !1142
  ret i32 %116, !dbg !1143
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 noundef %0, i32 noundef %1) #4 !dbg !1144 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1149, metadata !DIExpression()), !dbg !1150
  %6 = load i32, i32* %3, align 4, !dbg !1151
  %7 = load i32, i32* %4, align 4, !dbg !1152
  %8 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 0, i32 noundef %7), !dbg !1153
  store i32 %8, i32* %5, align 4, !dbg !1154
  %9 = load i32, i32* %5, align 4, !dbg !1155
  ret i32 %9, !dbg !1156
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %0, i32 noundef %1) #4 !dbg !111 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1157, metadata !DIExpression()), !dbg !1158
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1159, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1161, metadata !DIExpression()), !dbg !1162
  %8 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1163
  %9 = icmp sle i32 0, %8, !dbg !1165
  br i1 %9, label %10, label %30, !dbg !1166

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !1167
  %12 = load i32, i32* %4, align 4, !dbg !1169
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 1030, i32 noundef %12), !dbg !1170
  store i32 %13, i32* %5, align 4, !dbg !1171
  %14 = load i32, i32* %5, align 4, !dbg !1172
  %15 = icmp sle i32 0, %14, !dbg !1174
  br i1 %15, label %20, label %16, !dbg !1175

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #22, !dbg !1176
  %18 = load i32, i32* %17, align 4, !dbg !1176
  %19 = icmp ne i32 %18, 22, !dbg !1177
  br i1 %19, label %20, label %21, !dbg !1178

20:                                               ; preds = %16, %10
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1179
  br label %29, !dbg !1181

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4, !dbg !1182
  %23 = load i32, i32* %4, align 4, !dbg !1184
  %24 = call i32 @rpl_fcntl_DUPFD(i32 noundef %22, i32 noundef %23), !dbg !1185
  store i32 %24, i32* %5, align 4, !dbg !1186
  %25 = load i32, i32* %5, align 4, !dbg !1187
  %26 = icmp sge i32 %25, 0, !dbg !1189
  br i1 %26, label %27, label %28, !dbg !1190

27:                                               ; preds = %21
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1191
  br label %28, !dbg !1192

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  br label %34, !dbg !1193

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4, !dbg !1194
  %32 = load i32, i32* %4, align 4, !dbg !1195
  %33 = call i32 @rpl_fcntl_DUPFD(i32 noundef %31, i32 noundef %32), !dbg !1196
  store i32 %33, i32* %5, align 4, !dbg !1197
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4, !dbg !1198
  %36 = icmp sle i32 0, %35, !dbg !1200
  br i1 %36, label %37, label %59, !dbg !1201

37:                                               ; preds = %34
  %38 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1202
  %39 = icmp eq i32 %38, -1, !dbg !1203
  br i1 %39, label %40, label %59, !dbg !1204

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1205, metadata !DIExpression()), !dbg !1207
  %41 = load i32, i32* %5, align 4, !dbg !1208
  %42 = call i32 (i32, i32, ...) @fcntl(i32 noundef %41, i32 noundef 1), !dbg !1209
  store i32 %42, i32* %6, align 4, !dbg !1207
  %43 = load i32, i32* %6, align 4, !dbg !1210
  %44 = icmp slt i32 %43, 0, !dbg !1212
  br i1 %44, label %51, label %45, !dbg !1213

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4, !dbg !1214
  %47 = load i32, i32* %6, align 4, !dbg !1215
  %48 = or i32 %47, 1, !dbg !1216
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %46, i32 noundef 2, i32 noundef %48), !dbg !1217
  %50 = icmp eq i32 %49, -1, !dbg !1218
  br i1 %50, label %51, label %58, !dbg !1219

51:                                               ; preds = %45, %40
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1220, metadata !DIExpression()), !dbg !1222
  %52 = call i32* @__errno_location() #22, !dbg !1223
  %53 = load i32, i32* %52, align 4, !dbg !1223
  store i32 %53, i32* %7, align 4, !dbg !1222
  %54 = load i32, i32* %5, align 4, !dbg !1224
  %55 = call i32 @close(i32 noundef %54), !dbg !1225
  %56 = load i32, i32* %7, align 4, !dbg !1226
  %57 = call i32* @__errno_location() #22, !dbg !1227
  store i32 %56, i32* %57, align 4, !dbg !1228
  store i32 -1, i32* %5, align 4, !dbg !1229
  br label %58, !dbg !1230

58:                                               ; preds = %51, %45
  br label %59, !dbg !1231

59:                                               ; preds = %58, %37, %34
  %60 = load i32, i32* %5, align 4, !dbg !1232
  ret i32 %60, !dbg !1233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef %3) #4 !dbg !1234 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1241, metadata !DIExpression()), !dbg !1242
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1245, metadata !DIExpression()), !dbg !1246
  %13 = load i8*, i8** %7, align 8, !dbg !1247
  %14 = load i32, i32* %8, align 4, !dbg !1248
  %15 = load i32, i32* %9, align 4, !dbg !1249
  %16 = call i32 (i8*, i32, ...) @open(i8* noundef %13, i32 noundef %14, i32 noundef %15), !dbg !1250
  store i32 %16, i32* %10, align 4, !dbg !1246
  %17 = load i32, i32* %10, align 4, !dbg !1251
  %18 = load i32, i32* %6, align 4, !dbg !1253
  %19 = icmp eq i32 %17, %18, !dbg !1254
  br i1 %19, label %23, label %20, !dbg !1255

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !1256
  %22 = icmp slt i32 %21, 0, !dbg !1257
  br i1 %22, label %23, label %25, !dbg !1258

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %10, align 4, !dbg !1259
  store i32 %24, i32* %5, align 4, !dbg !1260
  br label %36, !dbg !1260

25:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1261, metadata !DIExpression()), !dbg !1263
  %26 = load i32, i32* %10, align 4, !dbg !1264
  %27 = load i32, i32* %6, align 4, !dbg !1265
  %28 = call i32 @dup2(i32 noundef %26, i32 noundef %27) #19, !dbg !1266
  store i32 %28, i32* %11, align 4, !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1267, metadata !DIExpression()), !dbg !1268
  %29 = call i32* @__errno_location() #22, !dbg !1269
  %30 = load i32, i32* %29, align 4, !dbg !1269
  store i32 %30, i32* %12, align 4, !dbg !1268
  %31 = load i32, i32* %10, align 4, !dbg !1270
  %32 = call i32 @close(i32 noundef %31), !dbg !1271
  %33 = load i32, i32* %12, align 4, !dbg !1272
  %34 = call i32* @__errno_location() #22, !dbg !1273
  store i32 %33, i32* %34, align 4, !dbg !1274
  %35 = load i32, i32* %11, align 4, !dbg !1275
  store i32 %35, i32* %5, align 4, !dbg !1276
  br label %36, !dbg !1276

36:                                               ; preds = %25, %23
  %37 = load i32, i32* %5, align 4, !dbg !1277
  ret i32 %37, !dbg !1277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 !dbg !1278 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1287, metadata !DIExpression()), !dbg !1288
  %8 = load i8*, i8** %4, align 8, !dbg !1289
  %9 = load i8*, i8** %5, align 8, !dbg !1290
  %10 = load i8**, i8*** %6, align 8, !dbg !1291
  %11 = call noalias i8* @mfile_name_concat(i8* noundef %8, i8* noundef %9, i8** noundef %10), !dbg !1292
  store i8* %11, i8** %7, align 8, !dbg !1288
  %12 = load i8*, i8** %7, align 8, !dbg !1293
  %13 = icmp eq i8* %12, null, !dbg !1295
  br i1 %13, label %14, label %15, !dbg !1296

14:                                               ; preds = %3
  call void @xalloc_die() #23, !dbg !1297
  unreachable, !dbg !1297

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8, !dbg !1298
  ret i8* %16, !dbg !1299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 !dbg !1300 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1301, metadata !DIExpression()), !dbg !1302
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1303, metadata !DIExpression()), !dbg !1304
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1305, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1307, metadata !DIExpression()), !dbg !1308
  %15 = load i8*, i8** %5, align 8, !dbg !1309
  %16 = call i8* @last_component(i8* noundef %15) #21, !dbg !1310
  store i8* %16, i8** %8, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1311, metadata !DIExpression()), !dbg !1312
  %17 = load i8*, i8** %8, align 8, !dbg !1313
  %18 = call i64 @base_len(i8* noundef %17) #21, !dbg !1314
  store i64 %18, i64* %9, align 8, !dbg !1312
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1315, metadata !DIExpression()), !dbg !1316
  %19 = load i8*, i8** %8, align 8, !dbg !1317
  %20 = load i8*, i8** %5, align 8, !dbg !1318
  %21 = ptrtoint i8* %19 to i64, !dbg !1319
  %22 = ptrtoint i8* %20 to i64, !dbg !1319
  %23 = sub i64 %21, %22, !dbg !1319
  %24 = load i64, i64* %9, align 8, !dbg !1320
  %25 = add i64 %23, %24, !dbg !1321
  store i64 %25, i64* %10, align 8, !dbg !1316
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1322, metadata !DIExpression()), !dbg !1323
  %26 = load i8*, i8** %6, align 8, !dbg !1324
  %27 = call i64 @strlen(i8* noundef %26) #21, !dbg !1325
  store i64 %27, i64* %11, align 8, !dbg !1323
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1326, metadata !DIExpression()), !dbg !1327
  store i8 0, i8* %12, align 1, !dbg !1327
  %28 = load i64, i64* %9, align 8, !dbg !1328
  %29 = icmp ne i64 %28, 0, !dbg !1328
  br i1 %29, label %30, label %45, !dbg !1330

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8, !dbg !1331
  %32 = load i64, i64* %10, align 8, !dbg !1331
  %33 = sub i64 %32, 1, !dbg !1331
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !1331
  %35 = load i8, i8* %34, align 1, !dbg !1331
  %36 = zext i8 %35 to i32, !dbg !1331
  %37 = icmp eq i32 %36, 47, !dbg !1331
  br i1 %37, label %44, label %38, !dbg !1334

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8, !dbg !1335
  %40 = load i8, i8* %39, align 1, !dbg !1335
  %41 = zext i8 %40 to i32, !dbg !1335
  %42 = icmp eq i32 %41, 47, !dbg !1335
  br i1 %42, label %44, label %43, !dbg !1336

43:                                               ; preds = %38
  store i8 47, i8* %12, align 1, !dbg !1337
  br label %44, !dbg !1338

44:                                               ; preds = %43, %38, %30
  br label %52, !dbg !1339

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8, !dbg !1340
  %47 = load i8, i8* %46, align 1, !dbg !1340
  %48 = zext i8 %47 to i32, !dbg !1340
  %49 = icmp eq i32 %48, 47, !dbg !1340
  br i1 %49, label %50, label %51, !dbg !1342

50:                                               ; preds = %45
  store i8 46, i8* %12, align 1, !dbg !1343
  br label %51, !dbg !1345

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %44
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1346, metadata !DIExpression()), !dbg !1347
  %53 = load i64, i64* %10, align 8, !dbg !1348
  %54 = load i8, i8* %12, align 1, !dbg !1349
  %55 = zext i8 %54 to i32, !dbg !1349
  %56 = icmp ne i32 %55, 0, !dbg !1350
  %57 = zext i1 %56 to i32, !dbg !1350
  %58 = sext i32 %57 to i64, !dbg !1351
  %59 = add i64 %53, %58, !dbg !1352
  %60 = load i64, i64* %11, align 8, !dbg !1353
  %61 = add i64 %59, %60, !dbg !1354
  %62 = add i64 %61, 1, !dbg !1355
  %63 = call noalias i8* @malloc(i64 noundef %62) #19, !dbg !1356
  store i8* %63, i8** %13, align 8, !dbg !1347
  %64 = load i8*, i8** %13, align 8, !dbg !1357
  %65 = icmp eq i8* %64, null, !dbg !1359
  br i1 %65, label %66, label %67, !dbg !1360

66:                                               ; preds = %52
  store i8* null, i8** %4, align 8, !dbg !1361
  br label %93, !dbg !1361

67:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1362, metadata !DIExpression()), !dbg !1364
  %68 = load i8*, i8** %13, align 8, !dbg !1365
  %69 = load i8*, i8** %5, align 8, !dbg !1366
  %70 = load i64, i64* %10, align 8, !dbg !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 %69, i64 %70, i1 false), !dbg !1368
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !1368
  store i8* %71, i8** %14, align 8, !dbg !1369
  %72 = load i8, i8* %12, align 1, !dbg !1370
  %73 = load i8*, i8** %14, align 8, !dbg !1371
  store i8 %72, i8* %73, align 1, !dbg !1372
  %74 = load i8, i8* %12, align 1, !dbg !1373
  %75 = zext i8 %74 to i32, !dbg !1373
  %76 = icmp ne i32 %75, 0, !dbg !1374
  %77 = zext i1 %76 to i32, !dbg !1374
  %78 = load i8*, i8** %14, align 8, !dbg !1375
  %79 = sext i32 %77 to i64, !dbg !1375
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !1375
  store i8* %80, i8** %14, align 8, !dbg !1375
  %81 = load i8**, i8*** %7, align 8, !dbg !1376
  %82 = icmp ne i8** %81, null, !dbg !1376
  br i1 %82, label %83, label %86, !dbg !1378

83:                                               ; preds = %67
  %84 = load i8*, i8** %14, align 8, !dbg !1379
  %85 = load i8**, i8*** %7, align 8, !dbg !1380
  store i8* %84, i8** %85, align 8, !dbg !1381
  br label %86, !dbg !1382

86:                                               ; preds = %83, %67
  %87 = load i8*, i8** %14, align 8, !dbg !1383
  %88 = load i8*, i8** %6, align 8, !dbg !1384
  %89 = load i64, i64* %11, align 8, !dbg !1385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 %89, i1 false), !dbg !1386
  %90 = getelementptr inbounds i8, i8* %87, i64 %89, !dbg !1386
  store i8* %90, i8** %14, align 8, !dbg !1387
  %91 = load i8*, i8** %14, align 8, !dbg !1388
  store i8 0, i8* %91, align 1, !dbg !1389
  %92 = load i8*, i8** %13, align 8, !dbg !1390
  store i8* %92, i8** %4, align 8, !dbg !1391
  br label %93, !dbg !1391

93:                                               ; preds = %86, %66
  %94 = load i8*, i8** %4, align 8, !dbg !1392
  ret i8* %94, !dbg !1392
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #13 !dbg !1393 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1396
  ret i8* %1, !dbg !1397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !1398 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"struct.std::__va_list", align 8
  %16 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1409, metadata !DIExpression()), !dbg !1410
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1413, metadata !DIExpression()), !dbg !1414
  %17 = load i32, i32* @opterr, align 4, !dbg !1415
  store i32 %17, i32* %13, align 4, !dbg !1414
  store i32 0, i32* @opterr, align 4, !dbg !1416
  %18 = load i32, i32* %7, align 4, !dbg !1417
  %19 = icmp eq i32 %18, 2, !dbg !1419
  br i1 %19, label %20, label %41, !dbg !1420

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1421, metadata !DIExpression()), !dbg !1423
  %21 = load i32, i32* %7, align 4, !dbg !1424
  %22 = load i8**, i8*** %8, align 8, !dbg !1425
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1426
  store i32 %23, i32* %14, align 4, !dbg !1423
  %24 = load i32, i32* %14, align 4, !dbg !1427
  %25 = icmp ne i32 %24, -1, !dbg !1429
  br i1 %25, label %26, label %40, !dbg !1430

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !1431
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !1433

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !1434
  call void %29(i32 noundef 0), !dbg !1436
  br label %39, !dbg !1437

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !1438, metadata !DIExpression()), !dbg !1451
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1452
  call void @llvm.va_start(i8* %31), !dbg !1452
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1453
  %33 = load i8*, i8** %9, align 8, !dbg !1454
  %34 = load i8*, i8** %10, align 8, !dbg !1455
  %35 = load i8*, i8** %11, align 8, !dbg !1456
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !1457
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !1457
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !1457
  call void @exit(i32 noundef 0) #20, !dbg !1458
  unreachable, !dbg !1458

38:                                               ; preds = %26
  br label %39, !dbg !1459

39:                                               ; preds = %38, %28
  br label %40, !dbg !1460

40:                                               ; preds = %39, %20
  br label %41, !dbg !1461

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !1462
  store i32 %42, i32* @opterr, align 4, !dbg !1463
  store i32 0, i32* @optind, align 4, !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !1466 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca void (i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %"struct.std::__va_list", align 8
  %19 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1473, metadata !DIExpression()), !dbg !1474
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1477, metadata !DIExpression()), !dbg !1478
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1479, metadata !DIExpression()), !dbg !1480
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1483, metadata !DIExpression()), !dbg !1484
  %21 = load i32, i32* @opterr, align 4, !dbg !1485
  store i32 %21, i32* %15, align 4, !dbg !1484
  store i32 1, i32* @opterr, align 4, !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1487, metadata !DIExpression()), !dbg !1488
  %22 = load i8, i8* %13, align 1, !dbg !1489
  %23 = trunc i8 %22 to i1, !dbg !1489
  %24 = zext i1 %23 to i64, !dbg !1489
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), !dbg !1489
  store i8* %25, i8** %16, align 8, !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1490, metadata !DIExpression()), !dbg !1491
  %26 = load i32, i32* %8, align 4, !dbg !1492
  %27 = load i8**, i8*** %9, align 8, !dbg !1493
  %28 = load i8*, i8** %16, align 8, !dbg !1494
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1495
  store i32 %29, i32* %17, align 4, !dbg !1491
  %30 = load i32, i32* %17, align 4, !dbg !1496
  %31 = icmp ne i32 %30, -1, !dbg !1498
  br i1 %31, label %32, label %48, !dbg !1499

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !1500
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !1502

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !1503
  call void %35(i32 noundef 0), !dbg !1505
  br label %47, !dbg !1506

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !1507, metadata !DIExpression()), !dbg !1509
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1510
  call void @llvm.va_start(i8* %37), !dbg !1510
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1511
  %39 = load i8*, i8** %10, align 8, !dbg !1512
  %40 = load i8*, i8** %11, align 8, !dbg !1513
  %41 = load i8*, i8** %12, align 8, !dbg !1514
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !1515
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !1515
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !1515
  call void @exit(i32 noundef 0) #20, !dbg !1516
  unreachable, !dbg !1516

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !1517
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !1518
  call void %45(i32 noundef %46), !dbg !1519
  br label %47, !dbg !1520

47:                                               ; preds = %44, %34
  br label %48, !dbg !1521

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !1522
  store i32 %49, i32* @opterr, align 4, !dbg !1523
  ret void, !dbg !1524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1525 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1528, metadata !DIExpression()), !dbg !1529
  %5 = load i8*, i8** %2, align 8, !dbg !1530
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !1531
  store i8* %6, i8** %3, align 8, !dbg !1529
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1532, metadata !DIExpression()), !dbg !1533
  %7 = load i8*, i8** %3, align 8, !dbg !1534
  %8 = icmp ne i8* %7, null, !dbg !1534
  br i1 %8, label %9, label %12, !dbg !1534

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1535
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1536
  br label %14, !dbg !1534

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1537
  br label %14, !dbg !1534

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1534
  store i8* %15, i8** %4, align 8, !dbg !1533
  %16 = load i8*, i8** %4, align 8, !dbg !1538
  %17 = load i8*, i8** %2, align 8, !dbg !1540
  %18 = ptrtoint i8* %16 to i64, !dbg !1541
  %19 = ptrtoint i8* %17 to i64, !dbg !1541
  %20 = sub i64 %18, %19, !dbg !1541
  %21 = icmp sle i64 7, %20, !dbg !1542
  br i1 %21, label %22, label %36, !dbg !1543

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1544
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1545
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), i64 noundef 7), !dbg !1546
  br i1 %25, label %26, label %36, !dbg !1547

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1548
  store i8* %27, i8** %2, align 8, !dbg !1550
  %28 = load i8*, i8** %4, align 8, !dbg !1551
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.102, i64 0, i64 0), i64 noundef 3) #21, !dbg !1553
  %30 = icmp eq i32 %29, 0, !dbg !1554
  br i1 %30, label %31, label %35, !dbg !1555

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1556
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1556
  store i8* %33, i8** %4, align 8, !dbg !1556
  %34 = load i8*, i8** %4, align 8, !dbg !1558
  store i8* %34, i8** %2, align 8, !dbg !1559
  br label %35, !dbg !1560

35:                                               ; preds = %31, %26
  br label %36, !dbg !1561

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1562
  store i8* %37, i8** @program_name, align 8, !dbg !1563
  %38 = load i8*, i8** %2, align 8, !dbg !1564
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1565
  %39 = load i8*, i8** %4, align 8, !dbg !1566
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1567
  ret void, !dbg !1568
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !143 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1571, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1573, metadata !DIExpression()), !dbg !1574
  %9 = load i8*, i8** %4, align 8, !dbg !1575
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1576
  store i8* %10, i8** %6, align 8, !dbg !1574
  %11 = load i8*, i8** %6, align 8, !dbg !1577
  %12 = load i8*, i8** %4, align 8, !dbg !1579
  %13 = icmp ne i8* %11, %12, !dbg !1580
  br i1 %13, label %14, label %16, !dbg !1581

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1582
  store i8* %15, i8** %3, align 8, !dbg !1583
  br label %26, !dbg !1583

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1584, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1590, metadata !DIExpression()), !dbg !1601
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1602
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1603
  %18 = icmp eq i64 %17, 2, !dbg !1605
  br i1 %18, label %19, label %24, !dbg !1606

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1607
  %21 = icmp eq i32 %20, 2047, !dbg !1608
  br i1 %21, label %22, label %24, !dbg !1609

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1610
  store i8* %23, i8** %3, align 8, !dbg !1611
  br label %26, !dbg !1611

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1612
  store i8* %25, i8** %3, align 8, !dbg !1613
  br label %26, !dbg !1613

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1614
  ret i8* %27, !dbg !1614
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1615 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  %5 = call i32* @__errno_location() #22, !dbg !1623
  %6 = load i32, i32* %5, align 4, !dbg !1623
  store i32 %6, i32* %3, align 4, !dbg !1622
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1624, metadata !DIExpression()), !dbg !1625
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1626
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1626
  br i1 %8, label %9, label %11, !dbg !1626

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1627
  br label %12, !dbg !1626

11:                                               ; preds = %1
  br label %12, !dbg !1626

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1626
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1626
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1628
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1628
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1625
  %17 = load i32, i32* %3, align 4, !dbg !1629
  %18 = call i32* @__errno_location() #22, !dbg !1630
  store i32 %17, i32* %18, align 4, !dbg !1631
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1632
  ret %struct.quoting_options* %19, !dbg !1633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1634 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1639, metadata !DIExpression()), !dbg !1640
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1641
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1641
  br i1 %4, label %5, label %7, !dbg !1641

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1642
  br label %8, !dbg !1641

7:                                                ; preds = %1
  br label %8, !dbg !1641

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1641
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1643
  %11 = load i32, i32* %10, align 8, !dbg !1643
  ret i32 %11, !dbg !1644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1645 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1650, metadata !DIExpression()), !dbg !1651
  %5 = load i32, i32* %4, align 4, !dbg !1652
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1653
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1653
  br i1 %7, label %8, label %10, !dbg !1653

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1654
  br label %11, !dbg !1653

10:                                               ; preds = %2
  br label %11, !dbg !1653

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1653
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1655
  store i32 %5, i32* %13, align 8, !dbg !1656
  ret void, !dbg !1657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1658 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1663, metadata !DIExpression()), !dbg !1664
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1667, metadata !DIExpression()), !dbg !1668
  %11 = load i8, i8* %5, align 1, !dbg !1669
  store i8 %11, i8* %7, align 1, !dbg !1668
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1670, metadata !DIExpression()), !dbg !1672
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1673
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1673
  br i1 %13, label %14, label %16, !dbg !1673

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1674
  br label %17, !dbg !1673

16:                                               ; preds = %3
  br label %17, !dbg !1673

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1673
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1675
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1676
  %21 = load i8, i8* %7, align 1, !dbg !1677
  %22 = zext i8 %21 to i64, !dbg !1677
  %23 = udiv i64 %22, 32, !dbg !1678
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1679
  store i32* %24, i32** %8, align 8, !dbg !1672
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1680, metadata !DIExpression()), !dbg !1681
  %25 = load i8, i8* %7, align 1, !dbg !1682
  %26 = zext i8 %25 to i64, !dbg !1682
  %27 = urem i64 %26, 32, !dbg !1683
  %28 = trunc i64 %27 to i32, !dbg !1682
  store i32 %28, i32* %9, align 4, !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1684, metadata !DIExpression()), !dbg !1685
  %29 = load i32*, i32** %8, align 8, !dbg !1686
  %30 = load i32, i32* %29, align 4, !dbg !1687
  %31 = load i32, i32* %9, align 4, !dbg !1688
  %32 = lshr i32 %30, %31, !dbg !1689
  %33 = and i32 %32, 1, !dbg !1690
  store i32 %33, i32* %10, align 4, !dbg !1685
  %34 = load i32, i32* %6, align 4, !dbg !1691
  %35 = and i32 %34, 1, !dbg !1692
  %36 = load i32, i32* %10, align 4, !dbg !1693
  %37 = xor i32 %35, %36, !dbg !1694
  %38 = load i32, i32* %9, align 4, !dbg !1695
  %39 = shl i32 %37, %38, !dbg !1696
  %40 = load i32*, i32** %8, align 8, !dbg !1697
  %41 = load i32, i32* %40, align 4, !dbg !1698
  %42 = xor i32 %41, %39, !dbg !1698
  store i32 %42, i32* %40, align 4, !dbg !1698
  %43 = load i32, i32* %10, align 4, !dbg !1699
  ret i32 %43, !dbg !1700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1701 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1706, metadata !DIExpression()), !dbg !1707
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1708
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1708
  br i1 %7, label %9, label %8, !dbg !1710

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1711
  br label %9, !dbg !1712

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1713, metadata !DIExpression()), !dbg !1714
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1715
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1716
  %12 = load i32, i32* %11, align 4, !dbg !1716
  store i32 %12, i32* %5, align 4, !dbg !1714
  %13 = load i32, i32* %4, align 4, !dbg !1717
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1718
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1719
  store i32 %13, i32* %15, align 4, !dbg !1720
  %16 = load i32, i32* %5, align 4, !dbg !1721
  ret i32 %16, !dbg !1722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1723 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1728, metadata !DIExpression()), !dbg !1729
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1730, metadata !DIExpression()), !dbg !1731
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1732
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1732
  br i1 %8, label %10, label %9, !dbg !1734

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1735
  br label %10, !dbg !1736

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1737
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1738
  store i32 10, i32* %12, align 8, !dbg !1739
  %13 = load i8*, i8** %5, align 8, !dbg !1740
  %14 = icmp ne i8* %13, null, !dbg !1740
  br i1 %14, label %15, label %18, !dbg !1742

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1743
  %17 = icmp ne i8* %16, null, !dbg !1743
  br i1 %17, label %19, label %18, !dbg !1744

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !1745
  unreachable, !dbg !1745

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1746
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1747
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1748
  store i8* %20, i8** %22, align 8, !dbg !1749
  %23 = load i8*, i8** %6, align 8, !dbg !1750
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1751
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1752
  store i8* %23, i8** %25, align 8, !dbg !1753
  ret void, !dbg !1754
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1755 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1758, metadata !DIExpression()), !dbg !1759
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1760, metadata !DIExpression()), !dbg !1761
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1764, metadata !DIExpression()), !dbg !1765
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1768, metadata !DIExpression()), !dbg !1769
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1770
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1770
  br i1 %15, label %16, label %18, !dbg !1770

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1771
  br label %19, !dbg !1770

18:                                               ; preds = %5
  br label %19, !dbg !1770

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1770
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1769
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1772, metadata !DIExpression()), !dbg !1773
  %21 = call i32* @__errno_location() #22, !dbg !1774
  %22 = load i32, i32* %21, align 4, !dbg !1774
  store i32 %22, i32* %12, align 4, !dbg !1773
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1775, metadata !DIExpression()), !dbg !1776
  %23 = load i8*, i8** %6, align 8, !dbg !1777
  %24 = load i64, i64* %7, align 8, !dbg !1778
  %25 = load i8*, i8** %8, align 8, !dbg !1779
  %26 = load i64, i64* %9, align 8, !dbg !1780
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1781
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1782
  %29 = load i32, i32* %28, align 8, !dbg !1782
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1783
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1784
  %32 = load i32, i32* %31, align 4, !dbg !1784
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1785
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1786
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1785
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1787
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1788
  %38 = load i8*, i8** %37, align 8, !dbg !1788
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1789
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1790
  %41 = load i8*, i8** %40, align 8, !dbg !1790
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1791
  store i64 %42, i64* %13, align 8, !dbg !1776
  %43 = load i32, i32* %12, align 4, !dbg !1792
  %44 = call i32* @__errno_location() #22, !dbg !1793
  store i32 %43, i32* %44, align 4, !dbg !1794
  %45 = load i64, i64* %13, align 8, !dbg !1795
  ret i64 %45, !dbg !1796
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1797 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1802, metadata !DIExpression()), !dbg !1803
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1804, metadata !DIExpression()), !dbg !1805
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1806, metadata !DIExpression()), !dbg !1807
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1810, metadata !DIExpression()), !dbg !1811
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1812, metadata !DIExpression()), !dbg !1813
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1814, metadata !DIExpression()), !dbg !1815
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1816, metadata !DIExpression()), !dbg !1817
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1818, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1820, metadata !DIExpression()), !dbg !1821
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !1822
  %45 = icmp eq i64 %44, 1, !dbg !1823
  %46 = zext i1 %45 to i8, !dbg !1821
  store i8 %46, i8* %20, align 1, !dbg !1821
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1824, metadata !DIExpression()), !dbg !1825
  store i64 0, i64* %21, align 8, !dbg !1825
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1826, metadata !DIExpression()), !dbg !1827
  store i64 0, i64* %22, align 8, !dbg !1827
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i8* null, i8** %23, align 8, !dbg !1829
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i64 0, i64* %24, align 8, !dbg !1831
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1832, metadata !DIExpression()), !dbg !1833
  store i8 0, i8* %25, align 1, !dbg !1833
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1834, metadata !DIExpression()), !dbg !1835
  %47 = load i32, i32* %16, align 4, !dbg !1836
  %48 = and i32 %47, 2, !dbg !1837
  %49 = icmp ne i32 %48, 0, !dbg !1838
  %50 = zext i1 %49 to i8, !dbg !1835
  store i8 %50, i8* %26, align 1, !dbg !1835
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1839, metadata !DIExpression()), !dbg !1840
  store i8 0, i8* %27, align 1, !dbg !1840
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1841, metadata !DIExpression()), !dbg !1842
  store i8 1, i8* %28, align 1, !dbg !1842
  br label %51, !dbg !1843

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1844), !dbg !1845
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i8 0, i8* %29, align 1, !dbg !1847
  %52 = load i32, i32* %15, align 4, !dbg !1848
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
  ], !dbg !1849

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1850
  store i8 1, i8* %26, align 1, !dbg !1852
  br label %54, !dbg !1853

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1854
  %56 = trunc i8 %55 to i1, !dbg !1854
  br i1 %56, label %70, label %57, !dbg !1856

57:                                               ; preds = %54
  br label %58, !dbg !1857

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1858
  %60 = load i64, i64* %12, align 8, !dbg !1858
  %61 = icmp ult i64 %59, %60, !dbg !1858
  br i1 %61, label %62, label %66, !dbg !1861

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1858
  %64 = load i64, i64* %21, align 8, !dbg !1858
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1858
  store i8 34, i8* %65, align 1, !dbg !1858
  br label %66, !dbg !1858

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1861
  %68 = add i64 %67, 1, !dbg !1861
  store i64 %68, i64* %21, align 8, !dbg !1861
  br label %69, !dbg !1861

69:                                               ; preds = %66
  br label %70, !dbg !1861

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1862
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.115, i64 0, i64 0), i8** %23, align 8, !dbg !1863
  store i64 1, i64* %24, align 8, !dbg !1864
  br label %138, !dbg !1865

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1866
  store i8 0, i8* %26, align 1, !dbg !1867
  br label %138, !dbg !1868

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1869
  %74 = icmp ne i32 %73, 10, !dbg !1872
  br i1 %74, label %75, label %80, !dbg !1873

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1874
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.116, i64 0, i64 0), i32 noundef %76), !dbg !1876
  store i8* %77, i8** %18, align 8, !dbg !1877
  %78 = load i32, i32* %15, align 4, !dbg !1878
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), i32 noundef %78), !dbg !1879
  store i8* %79, i8** %19, align 8, !dbg !1880
  br label %80, !dbg !1881

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1882
  %82 = trunc i8 %81 to i1, !dbg !1882
  br i1 %82, label %108, label %83, !dbg !1884

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1885, metadata !DIExpression()), !dbg !1887
  %84 = load i8*, i8** %18, align 8, !dbg !1888
  store i8* %84, i8** %30, align 8, !dbg !1887
  br label %85, !dbg !1889

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1890
  %87 = load i8, i8* %86, align 1, !dbg !1892
  %88 = icmp ne i8 %87, 0, !dbg !1893
  br i1 %88, label %89, label %107, !dbg !1893

89:                                               ; preds = %85
  br label %90, !dbg !1894

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1895
  %92 = load i64, i64* %12, align 8, !dbg !1895
  %93 = icmp ult i64 %91, %92, !dbg !1895
  br i1 %93, label %94, label %100, !dbg !1898

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1895
  %96 = load i8, i8* %95, align 1, !dbg !1895
  %97 = load i8*, i8** %11, align 8, !dbg !1895
  %98 = load i64, i64* %21, align 8, !dbg !1895
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1895
  store i8 %96, i8* %99, align 1, !dbg !1895
  br label %100, !dbg !1895

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1898
  %102 = add i64 %101, 1, !dbg !1898
  store i64 %102, i64* %21, align 8, !dbg !1898
  br label %103, !dbg !1898

103:                                              ; preds = %100
  br label %104, !dbg !1898

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1899
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1899
  store i8* %106, i8** %30, align 8, !dbg !1899
  br label %85, !dbg !1900, !llvm.loop !1901

107:                                              ; preds = %85
  br label %108, !dbg !1902

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1903
  %109 = load i8*, i8** %19, align 8, !dbg !1904
  store i8* %109, i8** %23, align 8, !dbg !1905
  %110 = load i8*, i8** %23, align 8, !dbg !1906
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !1907
  store i64 %111, i64* %24, align 8, !dbg !1908
  br label %138, !dbg !1909

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1910
  br label %113, !dbg !1911

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1912
  br label %114, !dbg !1913

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1914
  %116 = trunc i8 %115 to i1, !dbg !1914
  br i1 %116, label %118, label %117, !dbg !1916

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1917
  br label %118, !dbg !1918

118:                                              ; preds = %117, %114
  br label %119, !dbg !1914

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1919
  %120 = load i8, i8* %26, align 1, !dbg !1920
  %121 = trunc i8 %120 to i1, !dbg !1920
  br i1 %121, label %135, label %122, !dbg !1922

122:                                              ; preds = %119
  br label %123, !dbg !1923

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1924
  %125 = load i64, i64* %12, align 8, !dbg !1924
  %126 = icmp ult i64 %124, %125, !dbg !1924
  br i1 %126, label %127, label %131, !dbg !1927

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1924
  %129 = load i64, i64* %21, align 8, !dbg !1924
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1924
  store i8 39, i8* %130, align 1, !dbg !1924
  br label %131, !dbg !1924

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1927
  %133 = add i64 %132, 1, !dbg !1927
  store i64 %133, i64* %21, align 8, !dbg !1927
  br label %134, !dbg !1927

134:                                              ; preds = %131
  br label %135, !dbg !1927

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), i8** %23, align 8, !dbg !1928
  store i64 1, i64* %24, align 8, !dbg !1929
  br label %138, !dbg !1930

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1931
  br label %138, !dbg !1932

137:                                              ; preds = %51
  call void @abort() #20, !dbg !1933
  unreachable, !dbg !1933

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1934, metadata !DIExpression()), !dbg !1936
  store i64 0, i64* %31, align 8, !dbg !1936
  br label %139, !dbg !1937

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1938
  %141 = icmp eq i64 %140, -1, !dbg !1940
  br i1 %141, label %142, label %150, !dbg !1938

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1941
  %144 = load i64, i64* %31, align 8, !dbg !1942
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1941
  %146 = load i8, i8* %145, align 1, !dbg !1941
  %147 = zext i8 %146 to i32, !dbg !1941
  %148 = icmp eq i32 %147, 0, !dbg !1943
  %149 = zext i1 %148 to i32, !dbg !1943
  br label %155, !dbg !1938

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1944
  %152 = load i64, i64* %14, align 8, !dbg !1945
  %153 = icmp eq i64 %151, %152, !dbg !1946
  %154 = zext i1 %153 to i32, !dbg !1946
  br label %155, !dbg !1938

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1938
  %157 = icmp ne i32 %156, 0, !dbg !1947
  %158 = xor i1 %157, true, !dbg !1947
  br i1 %158, label %159, label %996, !dbg !1948

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1949, metadata !DIExpression()), !dbg !1951
  store i8 0, i8* %32, align 1, !dbg !1951
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1952, metadata !DIExpression()), !dbg !1953
  store i8 0, i8* %33, align 1, !dbg !1953
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i8 0, i8* %34, align 1, !dbg !1955
  %160 = load i8, i8* %25, align 1, !dbg !1956
  %161 = trunc i8 %160 to i1, !dbg !1956
  br i1 %161, label %162, label %197, !dbg !1958

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1959
  %164 = icmp ne i32 %163, 2, !dbg !1960
  br i1 %164, label %165, label %197, !dbg !1961

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1962
  %167 = icmp ne i64 %166, 0, !dbg !1962
  br i1 %167, label %168, label %197, !dbg !1963

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1964
  %170 = load i64, i64* %24, align 8, !dbg !1965
  %171 = add i64 %169, %170, !dbg !1966
  %172 = load i64, i64* %14, align 8, !dbg !1967
  %173 = icmp eq i64 %172, -1, !dbg !1968
  br i1 %173, label %174, label %180, !dbg !1969

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1970
  %176 = icmp ult i64 1, %175, !dbg !1971
  br i1 %176, label %177, label %180, !dbg !1967

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1972
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !1973
  store i64 %179, i64* %14, align 8, !dbg !1974
  br label %182, !dbg !1967

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1975
  br label %182, !dbg !1967

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1967
  %184 = icmp ule i64 %171, %183, !dbg !1976
  br i1 %184, label %185, label %197, !dbg !1977

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1978
  %187 = load i64, i64* %31, align 8, !dbg !1979
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1980
  %189 = load i8*, i8** %23, align 8, !dbg !1981
  %190 = load i64, i64* %24, align 8, !dbg !1982
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1983
  br i1 %191, label %192, label %197, !dbg !1984

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1985
  %194 = trunc i8 %193 to i1, !dbg !1985
  br i1 %194, label %195, label %196, !dbg !1988

195:                                              ; preds = %192
  br label %1078, !dbg !1989

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1990
  br label %197, !dbg !1991

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1992, metadata !DIExpression()), !dbg !1993
  %198 = load i8*, i8** %13, align 8, !dbg !1994
  %199 = load i64, i64* %31, align 8, !dbg !1995
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1994
  %201 = load i8, i8* %200, align 1, !dbg !1994
  store i8 %201, i8* %35, align 1, !dbg !1993
  %202 = load i8, i8* %35, align 1, !dbg !1996
  %203 = zext i8 %202 to i32, !dbg !1996
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
  ], !dbg !1997

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1998
  %206 = trunc i8 %205 to i1, !dbg !1998
  br i1 %206, label %207, label %318, !dbg !2001

207:                                              ; preds = %204
  br label %208, !dbg !2002

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2004
  %210 = trunc i8 %209 to i1, !dbg !2004
  br i1 %210, label %211, label %212, !dbg !2007

211:                                              ; preds = %208
  br label %1078, !dbg !2004

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2007
  %213 = load i32, i32* %15, align 4, !dbg !2008
  %214 = icmp eq i32 %213, 2, !dbg !2008
  br i1 %214, label %215, label %255, !dbg !2008

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2008
  %217 = trunc i8 %216 to i1, !dbg !2008
  br i1 %217, label %255, label %218, !dbg !2007

218:                                              ; preds = %215
  br label %219, !dbg !2010

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2012
  %221 = load i64, i64* %12, align 8, !dbg !2012
  %222 = icmp ult i64 %220, %221, !dbg !2012
  br i1 %222, label %223, label %227, !dbg !2015

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2012
  %225 = load i64, i64* %21, align 8, !dbg !2012
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2012
  store i8 39, i8* %226, align 1, !dbg !2012
  br label %227, !dbg !2012

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2015
  %229 = add i64 %228, 1, !dbg !2015
  store i64 %229, i64* %21, align 8, !dbg !2015
  br label %230, !dbg !2015

230:                                              ; preds = %227
  br label %231, !dbg !2010

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2016
  %233 = load i64, i64* %12, align 8, !dbg !2016
  %234 = icmp ult i64 %232, %233, !dbg !2016
  br i1 %234, label %235, label %239, !dbg !2019

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2016
  %237 = load i64, i64* %21, align 8, !dbg !2016
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2016
  store i8 36, i8* %238, align 1, !dbg !2016
  br label %239, !dbg !2016

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2019
  %241 = add i64 %240, 1, !dbg !2019
  store i64 %241, i64* %21, align 8, !dbg !2019
  br label %242, !dbg !2019

242:                                              ; preds = %239
  br label %243, !dbg !2010

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2020
  %245 = load i64, i64* %12, align 8, !dbg !2020
  %246 = icmp ult i64 %244, %245, !dbg !2020
  br i1 %246, label %247, label %251, !dbg !2023

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2020
  %249 = load i64, i64* %21, align 8, !dbg !2020
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2020
  store i8 39, i8* %250, align 1, !dbg !2020
  br label %251, !dbg !2020

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2023
  %253 = add i64 %252, 1, !dbg !2023
  store i64 %253, i64* %21, align 8, !dbg !2023
  br label %254, !dbg !2023

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2010
  br label %255, !dbg !2010

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2007

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2024
  %258 = load i64, i64* %12, align 8, !dbg !2024
  %259 = icmp ult i64 %257, %258, !dbg !2024
  br i1 %259, label %260, label %264, !dbg !2027

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2024
  %262 = load i64, i64* %21, align 8, !dbg !2024
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2024
  store i8 92, i8* %263, align 1, !dbg !2024
  br label %264, !dbg !2024

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2027
  %266 = add i64 %265, 1, !dbg !2027
  store i64 %266, i64* %21, align 8, !dbg !2027
  br label %267, !dbg !2027

267:                                              ; preds = %264
  br label %268, !dbg !2007

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2028
  %270 = icmp ne i32 %269, 2, !dbg !2030
  br i1 %270, label %271, label %317, !dbg !2031

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2032
  %273 = add i64 %272, 1, !dbg !2033
  %274 = load i64, i64* %14, align 8, !dbg !2034
  %275 = icmp ult i64 %273, %274, !dbg !2035
  br i1 %275, label %276, label %317, !dbg !2036

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2037
  %278 = load i64, i64* %31, align 8, !dbg !2038
  %279 = add i64 %278, 1, !dbg !2039
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2037
  %281 = load i8, i8* %280, align 1, !dbg !2037
  %282 = zext i8 %281 to i32, !dbg !2037
  %283 = icmp sle i32 48, %282, !dbg !2040
  br i1 %283, label %284, label %317, !dbg !2041

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2042
  %286 = load i64, i64* %31, align 8, !dbg !2043
  %287 = add i64 %286, 1, !dbg !2044
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2042
  %289 = load i8, i8* %288, align 1, !dbg !2042
  %290 = zext i8 %289 to i32, !dbg !2042
  %291 = icmp sle i32 %290, 57, !dbg !2045
  br i1 %291, label %292, label %317, !dbg !2046

292:                                              ; preds = %284
  br label %293, !dbg !2047

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2049
  %295 = load i64, i64* %12, align 8, !dbg !2049
  %296 = icmp ult i64 %294, %295, !dbg !2049
  br i1 %296, label %297, label %301, !dbg !2052

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2049
  %299 = load i64, i64* %21, align 8, !dbg !2049
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2049
  store i8 48, i8* %300, align 1, !dbg !2049
  br label %301, !dbg !2049

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2052
  %303 = add i64 %302, 1, !dbg !2052
  store i64 %303, i64* %21, align 8, !dbg !2052
  br label %304, !dbg !2052

304:                                              ; preds = %301
  br label %305, !dbg !2053

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2054
  %307 = load i64, i64* %12, align 8, !dbg !2054
  %308 = icmp ult i64 %306, %307, !dbg !2054
  br i1 %308, label %309, label %313, !dbg !2057

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2054
  %311 = load i64, i64* %21, align 8, !dbg !2054
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2054
  store i8 48, i8* %312, align 1, !dbg !2054
  br label %313, !dbg !2054

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2057
  %315 = add i64 %314, 1, !dbg !2057
  store i64 %315, i64* %21, align 8, !dbg !2057
  br label %316, !dbg !2057

316:                                              ; preds = %313
  br label %317, !dbg !2058

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2059
  br label %324, !dbg !2060

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2061
  %320 = and i32 %319, 1, !dbg !2063
  %321 = icmp ne i32 %320, 0, !dbg !2063
  br i1 %321, label %322, label %323, !dbg !2064

322:                                              ; preds = %318
  br label %993, !dbg !2065

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2066

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2067
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2068

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2069
  %329 = trunc i8 %328 to i1, !dbg !2069
  br i1 %329, label %330, label %331, !dbg !2072

330:                                              ; preds = %327
  br label %1078, !dbg !2073

331:                                              ; preds = %327
  br label %418, !dbg !2074

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2075
  %334 = and i32 %333, 4, !dbg !2077
  %335 = icmp ne i32 %334, 0, !dbg !2077
  br i1 %335, label %336, label %417, !dbg !2078

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2079
  %338 = add i64 %337, 2, !dbg !2080
  %339 = load i64, i64* %14, align 8, !dbg !2081
  %340 = icmp ult i64 %338, %339, !dbg !2082
  br i1 %340, label %341, label %417, !dbg !2083

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2084
  %343 = load i64, i64* %31, align 8, !dbg !2085
  %344 = add i64 %343, 1, !dbg !2086
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2084
  %346 = load i8, i8* %345, align 1, !dbg !2084
  %347 = zext i8 %346 to i32, !dbg !2084
  %348 = icmp eq i32 %347, 63, !dbg !2087
  br i1 %348, label %349, label %417, !dbg !2088

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2089
  %351 = load i64, i64* %31, align 8, !dbg !2090
  %352 = add i64 %351, 2, !dbg !2091
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2089
  %354 = load i8, i8* %353, align 1, !dbg !2089
  %355 = zext i8 %354 to i32, !dbg !2089
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
  ], !dbg !2092

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2093
  %358 = trunc i8 %357 to i1, !dbg !2093
  br i1 %358, label %359, label %360, !dbg !2096

359:                                              ; preds = %356
  br label %1078, !dbg !2097

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2098
  %362 = load i64, i64* %31, align 8, !dbg !2099
  %363 = add i64 %362, 2, !dbg !2100
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2098
  %365 = load i8, i8* %364, align 1, !dbg !2098
  store i8 %365, i8* %35, align 1, !dbg !2101
  %366 = load i64, i64* %31, align 8, !dbg !2102
  %367 = add i64 %366, 2, !dbg !2102
  store i64 %367, i64* %31, align 8, !dbg !2102
  br label %368, !dbg !2103

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2104
  %370 = load i64, i64* %12, align 8, !dbg !2104
  %371 = icmp ult i64 %369, %370, !dbg !2104
  br i1 %371, label %372, label %376, !dbg !2107

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2104
  %374 = load i64, i64* %21, align 8, !dbg !2104
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2104
  store i8 63, i8* %375, align 1, !dbg !2104
  br label %376, !dbg !2104

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2107
  %378 = add i64 %377, 1, !dbg !2107
  store i64 %378, i64* %21, align 8, !dbg !2107
  br label %379, !dbg !2107

379:                                              ; preds = %376
  br label %380, !dbg !2108

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2109
  %382 = load i64, i64* %12, align 8, !dbg !2109
  %383 = icmp ult i64 %381, %382, !dbg !2109
  br i1 %383, label %384, label %388, !dbg !2112

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2109
  %386 = load i64, i64* %21, align 8, !dbg !2109
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2109
  store i8 34, i8* %387, align 1, !dbg !2109
  br label %388, !dbg !2109

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2112
  %390 = add i64 %389, 1, !dbg !2112
  store i64 %390, i64* %21, align 8, !dbg !2112
  br label %391, !dbg !2112

391:                                              ; preds = %388
  br label %392, !dbg !2113

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2114
  %394 = load i64, i64* %12, align 8, !dbg !2114
  %395 = icmp ult i64 %393, %394, !dbg !2114
  br i1 %395, label %396, label %400, !dbg !2117

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2114
  %398 = load i64, i64* %21, align 8, !dbg !2114
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2114
  store i8 34, i8* %399, align 1, !dbg !2114
  br label %400, !dbg !2114

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2117
  %402 = add i64 %401, 1, !dbg !2117
  store i64 %402, i64* %21, align 8, !dbg !2117
  br label %403, !dbg !2117

403:                                              ; preds = %400
  br label %404, !dbg !2118

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2119
  %406 = load i64, i64* %12, align 8, !dbg !2119
  %407 = icmp ult i64 %405, %406, !dbg !2119
  br i1 %407, label %408, label %412, !dbg !2122

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2119
  %410 = load i64, i64* %21, align 8, !dbg !2119
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2119
  store i8 63, i8* %411, align 1, !dbg !2119
  br label %412, !dbg !2119

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2122
  %414 = add i64 %413, 1, !dbg !2122
  store i64 %414, i64* %21, align 8, !dbg !2122
  br label %415, !dbg !2122

415:                                              ; preds = %412
  br label %416, !dbg !2123

416:                                              ; preds = %349, %415
  br label %417, !dbg !2124

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2125

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2126

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2127
  br label %454, !dbg !2129

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2130
  br label %454, !dbg !2131

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2132
  br label %454, !dbg !2133

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2134
  br label %446, !dbg !2135

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2136
  br label %446, !dbg !2137

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2138
  br label %446, !dbg !2139

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2140
  br label %454, !dbg !2141

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2142
  store i8 %427, i8* %36, align 1, !dbg !2143
  %428 = load i32, i32* %15, align 4, !dbg !2144
  %429 = icmp eq i32 %428, 2, !dbg !2146
  br i1 %429, label %430, label %435, !dbg !2147

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2148
  %432 = trunc i8 %431 to i1, !dbg !2148
  br i1 %432, label %433, label %434, !dbg !2151

433:                                              ; preds = %430
  br label %1078, !dbg !2152

434:                                              ; preds = %430
  br label %942, !dbg !2153

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2154
  %437 = trunc i8 %436 to i1, !dbg !2154
  br i1 %437, label %438, label %445, !dbg !2156

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2157
  %440 = trunc i8 %439 to i1, !dbg !2157
  br i1 %440, label %441, label %445, !dbg !2158

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2159
  %443 = icmp ne i64 %442, 0, !dbg !2159
  br i1 %443, label %444, label %445, !dbg !2160

444:                                              ; preds = %441
  br label %942, !dbg !2161

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2159

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2162), !dbg !2163
  %447 = load i32, i32* %15, align 4, !dbg !2164
  %448 = icmp eq i32 %447, 2, !dbg !2166
  br i1 %448, label %449, label %453, !dbg !2167

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2168
  %451 = trunc i8 %450 to i1, !dbg !2168
  br i1 %451, label %452, label %453, !dbg !2169

452:                                              ; preds = %449
  br label %1078, !dbg !2170

453:                                              ; preds = %449, %446
  br label %454, !dbg !2168

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2171), !dbg !2172
  %455 = load i8, i8* %25, align 1, !dbg !2173
  %456 = trunc i8 %455 to i1, !dbg !2173
  br i1 %456, label %457, label %459, !dbg !2175

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2176
  store i8 %458, i8* %35, align 1, !dbg !2178
  br label %880, !dbg !2179

459:                                              ; preds = %454
  br label %849, !dbg !2180

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2181
  %462 = icmp eq i64 %461, -1, !dbg !2183
  br i1 %462, label %463, label %469, !dbg !2184

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2185
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2185
  %466 = load i8, i8* %465, align 1, !dbg !2185
  %467 = zext i8 %466 to i32, !dbg !2185
  %468 = icmp eq i32 %467, 0, !dbg !2186
  br i1 %468, label %473, label %472, !dbg !2181

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2187
  %471 = icmp eq i64 %470, 1, !dbg !2188
  br i1 %471, label %473, label %472, !dbg !2184

472:                                              ; preds = %469, %463
  br label %849, !dbg !2189

473:                                              ; preds = %469, %463
  br label %474, !dbg !2190

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2191
  %476 = icmp ne i64 %475, 0, !dbg !2193
  br i1 %476, label %477, label %478, !dbg !2194

477:                                              ; preds = %474
  br label %849, !dbg !2195

478:                                              ; preds = %474
  br label %479, !dbg !2196

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2197
  br label %480, !dbg !2198

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2199
  %482 = icmp eq i32 %481, 2, !dbg !2201
  br i1 %482, label %483, label %487, !dbg !2202

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2203
  %485 = trunc i8 %484 to i1, !dbg !2203
  br i1 %485, label %486, label %487, !dbg !2204

486:                                              ; preds = %483
  br label %1078, !dbg !2205

487:                                              ; preds = %483, %480
  br label %849, !dbg !2206

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2207
  store i8 1, i8* %34, align 1, !dbg !2208
  %489 = load i32, i32* %15, align 4, !dbg !2209
  %490 = icmp eq i32 %489, 2, !dbg !2211
  br i1 %490, label %491, label %540, !dbg !2212

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2213
  %493 = trunc i8 %492 to i1, !dbg !2213
  br i1 %493, label %494, label %495, !dbg !2216

494:                                              ; preds = %491
  br label %1078, !dbg !2217

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2218
  %497 = icmp ne i64 %496, 0, !dbg !2218
  br i1 %497, label %498, label %503, !dbg !2220

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2221
  %500 = icmp ne i64 %499, 0, !dbg !2221
  br i1 %500, label %503, label %501, !dbg !2222

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2223
  store i64 %502, i64* %22, align 8, !dbg !2225
  store i64 0, i64* %12, align 8, !dbg !2226
  br label %503, !dbg !2227

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2228

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2229
  %506 = load i64, i64* %12, align 8, !dbg !2229
  %507 = icmp ult i64 %505, %506, !dbg !2229
  br i1 %507, label %508, label %512, !dbg !2232

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2229
  %510 = load i64, i64* %21, align 8, !dbg !2229
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2229
  store i8 39, i8* %511, align 1, !dbg !2229
  br label %512, !dbg !2229

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2232
  %514 = add i64 %513, 1, !dbg !2232
  store i64 %514, i64* %21, align 8, !dbg !2232
  br label %515, !dbg !2232

515:                                              ; preds = %512
  br label %516, !dbg !2233

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2234
  %518 = load i64, i64* %12, align 8, !dbg !2234
  %519 = icmp ult i64 %517, %518, !dbg !2234
  br i1 %519, label %520, label %524, !dbg !2237

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2234
  %522 = load i64, i64* %21, align 8, !dbg !2234
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2234
  store i8 92, i8* %523, align 1, !dbg !2234
  br label %524, !dbg !2234

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2237
  %526 = add i64 %525, 1, !dbg !2237
  store i64 %526, i64* %21, align 8, !dbg !2237
  br label %527, !dbg !2237

527:                                              ; preds = %524
  br label %528, !dbg !2238

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2239
  %530 = load i64, i64* %12, align 8, !dbg !2239
  %531 = icmp ult i64 %529, %530, !dbg !2239
  br i1 %531, label %532, label %536, !dbg !2242

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2239
  %534 = load i64, i64* %21, align 8, !dbg !2239
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2239
  store i8 39, i8* %535, align 1, !dbg !2239
  br label %536, !dbg !2239

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2242
  %538 = add i64 %537, 1, !dbg !2242
  store i64 %538, i64* %21, align 8, !dbg !2242
  br label %539, !dbg !2242

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2243
  br label %540, !dbg !2244

540:                                              ; preds = %539, %488
  br label %849, !dbg !2245

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2246
  br label %849, !dbg !2247

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2251, metadata !DIExpression()), !dbg !2252
  %543 = load i8, i8* %20, align 1, !dbg !2253
  %544 = trunc i8 %543 to i1, !dbg !2253
  br i1 %544, label %545, label %557, !dbg !2255

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2256
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2258
  %547 = load i16*, i16** %546, align 8, !dbg !2258
  %548 = load i8, i8* %35, align 1, !dbg !2258
  %549 = zext i8 %548 to i32, !dbg !2258
  %550 = sext i32 %549 to i64, !dbg !2258
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2258
  %552 = load i16, i16* %551, align 2, !dbg !2258
  %553 = zext i16 %552 to i32, !dbg !2258
  %554 = and i32 %553, 16384, !dbg !2258
  %555 = icmp ne i32 %554, 0, !dbg !2259
  %556 = zext i1 %555 to i8, !dbg !2260
  store i8 %556, i8* %38, align 1, !dbg !2260
  br label %648, !dbg !2261

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2262, metadata !DIExpression()), !dbg !2274
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2275
  store i64 0, i64* %37, align 8, !dbg !2276
  store i8 1, i8* %38, align 1, !dbg !2277
  %558 = load i64, i64* %14, align 8, !dbg !2278
  %559 = icmp eq i64 %558, -1, !dbg !2280
  br i1 %559, label %560, label %563, !dbg !2281

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2282
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2283
  store i64 %562, i64* %14, align 8, !dbg !2284
  br label %563, !dbg !2285

563:                                              ; preds = %560, %557
  br label %564, !dbg !2286

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2287, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2292, metadata !DIExpression()), !dbg !2293
  %565 = load i8*, i8** %13, align 8, !dbg !2294
  %566 = load i64, i64* %31, align 8, !dbg !2295
  %567 = load i64, i64* %37, align 8, !dbg !2296
  %568 = add i64 %566, %567, !dbg !2297
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2294
  %570 = load i64, i64* %14, align 8, !dbg !2298
  %571 = load i64, i64* %31, align 8, !dbg !2299
  %572 = load i64, i64* %37, align 8, !dbg !2300
  %573 = add i64 %571, %572, !dbg !2301
  %574 = sub i64 %570, %573, !dbg !2302
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2303
  store i64 %575, i64* %41, align 8, !dbg !2293
  %576 = load i64, i64* %41, align 8, !dbg !2304
  %577 = icmp eq i64 %576, 0, !dbg !2306
  br i1 %577, label %578, label %579, !dbg !2307

578:                                              ; preds = %564
  br label %647, !dbg !2308

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2309
  %581 = icmp eq i64 %580, -1, !dbg !2311
  br i1 %581, label %582, label %583, !dbg !2312

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2313
  br label %647, !dbg !2315

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2316
  %585 = icmp eq i64 %584, -2, !dbg !2318
  br i1 %585, label %586, label %608, !dbg !2319

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2320
  br label %587, !dbg !2322

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2323
  %589 = load i64, i64* %37, align 8, !dbg !2324
  %590 = add i64 %588, %589, !dbg !2325
  %591 = load i64, i64* %14, align 8, !dbg !2326
  %592 = icmp ult i64 %590, %591, !dbg !2327
  br i1 %592, label %593, label %602, !dbg !2328

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2329
  %595 = load i64, i64* %31, align 8, !dbg !2330
  %596 = load i64, i64* %37, align 8, !dbg !2331
  %597 = add i64 %595, %596, !dbg !2332
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2329
  %599 = load i8, i8* %598, align 1, !dbg !2329
  %600 = zext i8 %599 to i32, !dbg !2329
  %601 = icmp ne i32 %600, 0, !dbg !2328
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2333
  br i1 %603, label %604, label %607, !dbg !2322

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2334
  %606 = add i64 %605, 1, !dbg !2334
  store i64 %606, i64* %37, align 8, !dbg !2334
  br label %587, !dbg !2322, !llvm.loop !2335

607:                                              ; preds = %602
  br label %647, !dbg !2336

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2337
  %610 = trunc i8 %609 to i1, !dbg !2337
  br i1 %610, label %611, label %635, !dbg !2340

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2341
  %613 = icmp eq i32 %612, 2, !dbg !2342
  br i1 %613, label %614, label %635, !dbg !2343

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2344, metadata !DIExpression()), !dbg !2347
  store i64 1, i64* %42, align 8, !dbg !2347
  br label %615, !dbg !2348

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2349
  %617 = load i64, i64* %41, align 8, !dbg !2351
  %618 = icmp ult i64 %616, %617, !dbg !2352
  br i1 %618, label %619, label %634, !dbg !2353

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2354
  %621 = load i64, i64* %31, align 8, !dbg !2355
  %622 = load i64, i64* %37, align 8, !dbg !2356
  %623 = add i64 %621, %622, !dbg !2357
  %624 = load i64, i64* %42, align 8, !dbg !2358
  %625 = add i64 %623, %624, !dbg !2359
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2354
  %627 = load i8, i8* %626, align 1, !dbg !2354
  %628 = zext i8 %627 to i32, !dbg !2354
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2360

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2361

630:                                              ; preds = %619
  br label %631, !dbg !2363

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2364
  %633 = add i64 %632, 1, !dbg !2364
  store i64 %633, i64* %42, align 8, !dbg !2364
  br label %615, !dbg !2365, !llvm.loop !2366

634:                                              ; preds = %615
  br label %635, !dbg !2368

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2369
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2371
  %638 = icmp ne i32 %637, 0, !dbg !2371
  br i1 %638, label %640, label %639, !dbg !2372

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2373
  br label %640, !dbg !2374

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2375
  %642 = load i64, i64* %37, align 8, !dbg !2376
  %643 = add i64 %642, %641, !dbg !2376
  store i64 %643, i64* %37, align 8, !dbg !2376
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2377

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2378
  %650 = trunc i8 %649 to i1, !dbg !2378
  %651 = zext i1 %650 to i8, !dbg !2379
  store i8 %651, i8* %34, align 1, !dbg !2379
  %652 = load i64, i64* %37, align 8, !dbg !2380
  %653 = icmp ult i64 1, %652, !dbg !2382
  br i1 %653, label %660, label %654, !dbg !2383

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2384
  %656 = trunc i8 %655 to i1, !dbg !2384
  br i1 %656, label %657, label %848, !dbg !2385

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2386
  %659 = trunc i8 %658 to i1, !dbg !2386
  br i1 %659, label %848, label %660, !dbg !2387

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2388, metadata !DIExpression()), !dbg !2390
  %661 = load i64, i64* %31, align 8, !dbg !2391
  %662 = load i64, i64* %37, align 8, !dbg !2392
  %663 = add i64 %661, %662, !dbg !2393
  store i64 %663, i64* %43, align 8, !dbg !2390
  br label %664, !dbg !2394

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2395
  %666 = trunc i8 %665 to i1, !dbg !2395
  br i1 %666, label %667, label %772, !dbg !2400

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2401
  %669 = trunc i8 %668 to i1, !dbg !2401
  br i1 %669, label %772, label %670, !dbg !2402

670:                                              ; preds = %667
  br label %671, !dbg !2403

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2405
  %673 = trunc i8 %672 to i1, !dbg !2405
  br i1 %673, label %674, label %675, !dbg !2408

674:                                              ; preds = %671
  br label %1078, !dbg !2405

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2408
  %676 = load i32, i32* %15, align 4, !dbg !2409
  %677 = icmp eq i32 %676, 2, !dbg !2409
  br i1 %677, label %678, label %718, !dbg !2409

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2409
  %680 = trunc i8 %679 to i1, !dbg !2409
  br i1 %680, label %718, label %681, !dbg !2408

681:                                              ; preds = %678
  br label %682, !dbg !2411

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2413
  %684 = load i64, i64* %12, align 8, !dbg !2413
  %685 = icmp ult i64 %683, %684, !dbg !2413
  br i1 %685, label %686, label %690, !dbg !2416

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2413
  %688 = load i64, i64* %21, align 8, !dbg !2413
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2413
  store i8 39, i8* %689, align 1, !dbg !2413
  br label %690, !dbg !2413

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2416
  %692 = add i64 %691, 1, !dbg !2416
  store i64 %692, i64* %21, align 8, !dbg !2416
  br label %693, !dbg !2416

693:                                              ; preds = %690
  br label %694, !dbg !2411

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2417
  %696 = load i64, i64* %12, align 8, !dbg !2417
  %697 = icmp ult i64 %695, %696, !dbg !2417
  br i1 %697, label %698, label %702, !dbg !2420

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2417
  %700 = load i64, i64* %21, align 8, !dbg !2417
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2417
  store i8 36, i8* %701, align 1, !dbg !2417
  br label %702, !dbg !2417

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2420
  %704 = add i64 %703, 1, !dbg !2420
  store i64 %704, i64* %21, align 8, !dbg !2420
  br label %705, !dbg !2420

705:                                              ; preds = %702
  br label %706, !dbg !2411

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2421
  %708 = load i64, i64* %12, align 8, !dbg !2421
  %709 = icmp ult i64 %707, %708, !dbg !2421
  br i1 %709, label %710, label %714, !dbg !2424

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2421
  %712 = load i64, i64* %21, align 8, !dbg !2421
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2421
  store i8 39, i8* %713, align 1, !dbg !2421
  br label %714, !dbg !2421

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2424
  %716 = add i64 %715, 1, !dbg !2424
  store i64 %716, i64* %21, align 8, !dbg !2424
  br label %717, !dbg !2424

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2411
  br label %718, !dbg !2411

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2408

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2425
  %721 = load i64, i64* %12, align 8, !dbg !2425
  %722 = icmp ult i64 %720, %721, !dbg !2425
  br i1 %722, label %723, label %727, !dbg !2428

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2425
  %725 = load i64, i64* %21, align 8, !dbg !2425
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2425
  store i8 92, i8* %726, align 1, !dbg !2425
  br label %727, !dbg !2425

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2428
  %729 = add i64 %728, 1, !dbg !2428
  store i64 %729, i64* %21, align 8, !dbg !2428
  br label %730, !dbg !2428

730:                                              ; preds = %727
  br label %731, !dbg !2408

731:                                              ; preds = %730
  br label %732, !dbg !2429

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2430
  %734 = load i64, i64* %12, align 8, !dbg !2430
  %735 = icmp ult i64 %733, %734, !dbg !2430
  br i1 %735, label %736, label %745, !dbg !2433

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2430
  %738 = zext i8 %737 to i32, !dbg !2430
  %739 = ashr i32 %738, 6, !dbg !2430
  %740 = add nsw i32 48, %739, !dbg !2430
  %741 = trunc i32 %740 to i8, !dbg !2430
  %742 = load i8*, i8** %11, align 8, !dbg !2430
  %743 = load i64, i64* %21, align 8, !dbg !2430
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2430
  store i8 %741, i8* %744, align 1, !dbg !2430
  br label %745, !dbg !2430

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2433
  %747 = add i64 %746, 1, !dbg !2433
  store i64 %747, i64* %21, align 8, !dbg !2433
  br label %748, !dbg !2433

748:                                              ; preds = %745
  br label %749, !dbg !2434

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2435
  %751 = load i64, i64* %12, align 8, !dbg !2435
  %752 = icmp ult i64 %750, %751, !dbg !2435
  br i1 %752, label %753, label %763, !dbg !2438

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2435
  %755 = zext i8 %754 to i32, !dbg !2435
  %756 = ashr i32 %755, 3, !dbg !2435
  %757 = and i32 %756, 7, !dbg !2435
  %758 = add nsw i32 48, %757, !dbg !2435
  %759 = trunc i32 %758 to i8, !dbg !2435
  %760 = load i8*, i8** %11, align 8, !dbg !2435
  %761 = load i64, i64* %21, align 8, !dbg !2435
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2435
  store i8 %759, i8* %762, align 1, !dbg !2435
  br label %763, !dbg !2435

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2438
  %765 = add i64 %764, 1, !dbg !2438
  store i64 %765, i64* %21, align 8, !dbg !2438
  br label %766, !dbg !2438

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2439
  %768 = zext i8 %767 to i32, !dbg !2439
  %769 = and i32 %768, 7, !dbg !2440
  %770 = add nsw i32 48, %769, !dbg !2441
  %771 = trunc i32 %770 to i8, !dbg !2442
  store i8 %771, i8* %35, align 1, !dbg !2443
  br label %789, !dbg !2444

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2445
  %774 = trunc i8 %773 to i1, !dbg !2445
  br i1 %774, label %775, label %788, !dbg !2447

775:                                              ; preds = %772
  br label %776, !dbg !2448

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2450
  %778 = load i64, i64* %12, align 8, !dbg !2450
  %779 = icmp ult i64 %777, %778, !dbg !2450
  br i1 %779, label %780, label %784, !dbg !2453

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2450
  %782 = load i64, i64* %21, align 8, !dbg !2450
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2450
  store i8 92, i8* %783, align 1, !dbg !2450
  br label %784, !dbg !2450

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2453
  %786 = add i64 %785, 1, !dbg !2453
  store i64 %786, i64* %21, align 8, !dbg !2453
  br label %787, !dbg !2453

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2454
  br label %788, !dbg !2455

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2456
  %791 = load i64, i64* %31, align 8, !dbg !2458
  %792 = add i64 %791, 1, !dbg !2459
  %793 = icmp ule i64 %790, %792, !dbg !2460
  br i1 %793, label %794, label %795, !dbg !2461

794:                                              ; preds = %789
  br label %847, !dbg !2462

795:                                              ; preds = %789
  br label %796, !dbg !2463

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2464
  %798 = trunc i8 %797 to i1, !dbg !2464
  br i1 %798, label %799, label %827, !dbg !2464

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2464
  %801 = trunc i8 %800 to i1, !dbg !2464
  br i1 %801, label %827, label %802, !dbg !2467

802:                                              ; preds = %799
  br label %803, !dbg !2468

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2470
  %805 = load i64, i64* %12, align 8, !dbg !2470
  %806 = icmp ult i64 %804, %805, !dbg !2470
  br i1 %806, label %807, label %811, !dbg !2473

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2470
  %809 = load i64, i64* %21, align 8, !dbg !2470
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2470
  store i8 39, i8* %810, align 1, !dbg !2470
  br label %811, !dbg !2470

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2473
  %813 = add i64 %812, 1, !dbg !2473
  store i64 %813, i64* %21, align 8, !dbg !2473
  br label %814, !dbg !2473

814:                                              ; preds = %811
  br label %815, !dbg !2468

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2474
  %817 = load i64, i64* %12, align 8, !dbg !2474
  %818 = icmp ult i64 %816, %817, !dbg !2474
  br i1 %818, label %819, label %823, !dbg !2477

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2474
  %821 = load i64, i64* %21, align 8, !dbg !2474
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2474
  store i8 39, i8* %822, align 1, !dbg !2474
  br label %823, !dbg !2474

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2477
  %825 = add i64 %824, 1, !dbg !2477
  store i64 %825, i64* %21, align 8, !dbg !2477
  br label %826, !dbg !2477

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2468
  br label %827, !dbg !2468

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2467

828:                                              ; preds = %827
  br label %829, !dbg !2478

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2479
  %831 = load i64, i64* %12, align 8, !dbg !2479
  %832 = icmp ult i64 %830, %831, !dbg !2479
  br i1 %832, label %833, label %838, !dbg !2482

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2479
  %835 = load i8*, i8** %11, align 8, !dbg !2479
  %836 = load i64, i64* %21, align 8, !dbg !2479
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2479
  store i8 %834, i8* %837, align 1, !dbg !2479
  br label %838, !dbg !2479

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2482
  %840 = add i64 %839, 1, !dbg !2482
  store i64 %840, i64* %21, align 8, !dbg !2482
  br label %841, !dbg !2482

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2483
  %843 = load i64, i64* %31, align 8, !dbg !2484
  %844 = add i64 %843, 1, !dbg !2484
  store i64 %844, i64* %31, align 8, !dbg !2484
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2483
  %846 = load i8, i8* %845, align 1, !dbg !2483
  store i8 %846, i8* %35, align 1, !dbg !2485
  br label %664, !dbg !2486, !llvm.loop !2487

847:                                              ; preds = %794
  br label %942, !dbg !2490

848:                                              ; preds = %657, %654
  br label %849, !dbg !2491

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2492
  %851 = trunc i8 %850 to i1, !dbg !2492
  br i1 %851, label %852, label %855, !dbg !2494

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2495
  %854 = icmp ne i32 %853, 2, !dbg !2496
  br i1 %854, label %858, label %855, !dbg !2497

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2498
  %857 = trunc i8 %856 to i1, !dbg !2498
  br i1 %857, label %858, label %875, !dbg !2499

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2500
  %860 = icmp ne i32* %859, null, !dbg !2500
  br i1 %860, label %861, label %875, !dbg !2501

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2502
  %863 = load i8, i8* %35, align 1, !dbg !2503
  %864 = zext i8 %863 to i64, !dbg !2503
  %865 = udiv i64 %864, 32, !dbg !2504
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2502
  %867 = load i32, i32* %866, align 4, !dbg !2502
  %868 = load i8, i8* %35, align 1, !dbg !2505
  %869 = zext i8 %868 to i64, !dbg !2505
  %870 = urem i64 %869, 32, !dbg !2506
  %871 = trunc i64 %870 to i32, !dbg !2507
  %872 = lshr i32 %867, %871, !dbg !2507
  %873 = and i32 %872, 1, !dbg !2508
  %874 = icmp ne i32 %873, 0, !dbg !2508
  br i1 %874, label %879, label %875, !dbg !2509

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2510
  %877 = trunc i8 %876 to i1, !dbg !2510
  br i1 %877, label %879, label %878, !dbg !2511

878:                                              ; preds = %875
  br label %942, !dbg !2512

879:                                              ; preds = %875, %861
  br label %880, !dbg !2510

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2513), !dbg !2514
  br label %881, !dbg !2515

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2516
  %883 = trunc i8 %882 to i1, !dbg !2516
  br i1 %883, label %884, label %885, !dbg !2519

884:                                              ; preds = %881
  br label %1078, !dbg !2516

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2519
  %886 = load i32, i32* %15, align 4, !dbg !2520
  %887 = icmp eq i32 %886, 2, !dbg !2520
  br i1 %887, label %888, label %928, !dbg !2520

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2520
  %890 = trunc i8 %889 to i1, !dbg !2520
  br i1 %890, label %928, label %891, !dbg !2519

891:                                              ; preds = %888
  br label %892, !dbg !2522

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2524
  %894 = load i64, i64* %12, align 8, !dbg !2524
  %895 = icmp ult i64 %893, %894, !dbg !2524
  br i1 %895, label %896, label %900, !dbg !2527

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2524
  %898 = load i64, i64* %21, align 8, !dbg !2524
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2524
  store i8 39, i8* %899, align 1, !dbg !2524
  br label %900, !dbg !2524

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2527
  %902 = add i64 %901, 1, !dbg !2527
  store i64 %902, i64* %21, align 8, !dbg !2527
  br label %903, !dbg !2527

903:                                              ; preds = %900
  br label %904, !dbg !2522

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2528
  %906 = load i64, i64* %12, align 8, !dbg !2528
  %907 = icmp ult i64 %905, %906, !dbg !2528
  br i1 %907, label %908, label %912, !dbg !2531

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2528
  %910 = load i64, i64* %21, align 8, !dbg !2528
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2528
  store i8 36, i8* %911, align 1, !dbg !2528
  br label %912, !dbg !2528

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2531
  %914 = add i64 %913, 1, !dbg !2531
  store i64 %914, i64* %21, align 8, !dbg !2531
  br label %915, !dbg !2531

915:                                              ; preds = %912
  br label %916, !dbg !2522

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2532
  %918 = load i64, i64* %12, align 8, !dbg !2532
  %919 = icmp ult i64 %917, %918, !dbg !2532
  br i1 %919, label %920, label %924, !dbg !2535

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2532
  %922 = load i64, i64* %21, align 8, !dbg !2532
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2532
  store i8 39, i8* %923, align 1, !dbg !2532
  br label %924, !dbg !2532

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2535
  %926 = add i64 %925, 1, !dbg !2535
  store i64 %926, i64* %21, align 8, !dbg !2535
  br label %927, !dbg !2535

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2522
  br label %928, !dbg !2522

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2519

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2536
  %931 = load i64, i64* %12, align 8, !dbg !2536
  %932 = icmp ult i64 %930, %931, !dbg !2536
  br i1 %932, label %933, label %937, !dbg !2539

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2536
  %935 = load i64, i64* %21, align 8, !dbg !2536
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2536
  store i8 92, i8* %936, align 1, !dbg !2536
  br label %937, !dbg !2536

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2539
  %939 = add i64 %938, 1, !dbg !2539
  store i64 %939, i64* %21, align 8, !dbg !2539
  br label %940, !dbg !2539

940:                                              ; preds = %937
  br label %941, !dbg !2519

941:                                              ; preds = %940
  br label %942, !dbg !2519

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2540), !dbg !2541
  br label %943, !dbg !2542

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2543
  %945 = trunc i8 %944 to i1, !dbg !2543
  br i1 %945, label %946, label %974, !dbg !2543

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2543
  %948 = trunc i8 %947 to i1, !dbg !2543
  br i1 %948, label %974, label %949, !dbg !2546

949:                                              ; preds = %946
  br label %950, !dbg !2547

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2549
  %952 = load i64, i64* %12, align 8, !dbg !2549
  %953 = icmp ult i64 %951, %952, !dbg !2549
  br i1 %953, label %954, label %958, !dbg !2552

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2549
  %956 = load i64, i64* %21, align 8, !dbg !2549
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2549
  store i8 39, i8* %957, align 1, !dbg !2549
  br label %958, !dbg !2549

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2552
  %960 = add i64 %959, 1, !dbg !2552
  store i64 %960, i64* %21, align 8, !dbg !2552
  br label %961, !dbg !2552

961:                                              ; preds = %958
  br label %962, !dbg !2547

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2553
  %964 = load i64, i64* %12, align 8, !dbg !2553
  %965 = icmp ult i64 %963, %964, !dbg !2553
  br i1 %965, label %966, label %970, !dbg !2556

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2553
  %968 = load i64, i64* %21, align 8, !dbg !2553
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2553
  store i8 39, i8* %969, align 1, !dbg !2553
  br label %970, !dbg !2553

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2556
  %972 = add i64 %971, 1, !dbg !2556
  store i64 %972, i64* %21, align 8, !dbg !2556
  br label %973, !dbg !2556

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2547
  br label %974, !dbg !2547

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2546

975:                                              ; preds = %974
  br label %976, !dbg !2557

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2558
  %978 = load i64, i64* %12, align 8, !dbg !2558
  %979 = icmp ult i64 %977, %978, !dbg !2558
  br i1 %979, label %980, label %985, !dbg !2561

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2558
  %982 = load i8*, i8** %11, align 8, !dbg !2558
  %983 = load i64, i64* %21, align 8, !dbg !2558
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2558
  store i8 %981, i8* %984, align 1, !dbg !2558
  br label %985, !dbg !2558

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2561
  %987 = add i64 %986, 1, !dbg !2561
  store i64 %987, i64* %21, align 8, !dbg !2561
  br label %988, !dbg !2561

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2562
  %990 = trunc i8 %989 to i1, !dbg !2562
  br i1 %990, label %992, label %991, !dbg !2564

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2565
  br label %992, !dbg !2566

992:                                              ; preds = %991, %988
  br label %993, !dbg !2567

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2568
  %995 = add i64 %994, 1, !dbg !2568
  store i64 %995, i64* %31, align 8, !dbg !2568
  br label %139, !dbg !2569, !llvm.loop !2570

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2572
  %998 = icmp eq i64 %997, 0, !dbg !2574
  br i1 %998, label %999, label %1006, !dbg !2575

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2576
  %1001 = icmp eq i32 %1000, 2, !dbg !2577
  br i1 %1001, label %1002, label %1006, !dbg !2578

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2579
  %1004 = trunc i8 %1003 to i1, !dbg !2579
  br i1 %1004, label %1005, label %1006, !dbg !2580

1005:                                             ; preds = %1002
  br label %1078, !dbg !2581

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2582
  %1008 = icmp eq i32 %1007, 2, !dbg !2584
  br i1 %1008, label %1009, label %1038, !dbg !2585

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2586
  %1011 = trunc i8 %1010 to i1, !dbg !2586
  br i1 %1011, label %1038, label %1012, !dbg !2587

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2588
  %1014 = trunc i8 %1013 to i1, !dbg !2588
  br i1 %1014, label %1015, label %1038, !dbg !2589

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2590
  %1017 = trunc i8 %1016 to i1, !dbg !2590
  br i1 %1017, label %1018, label %1028, !dbg !2593

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2594
  %1020 = load i64, i64* %22, align 8, !dbg !2595
  %1021 = load i8*, i8** %13, align 8, !dbg !2596
  %1022 = load i64, i64* %14, align 8, !dbg !2597
  %1023 = load i32, i32* %16, align 4, !dbg !2598
  %1024 = load i32*, i32** %17, align 8, !dbg !2599
  %1025 = load i8*, i8** %18, align 8, !dbg !2600
  %1026 = load i8*, i8** %19, align 8, !dbg !2601
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2602
  store i64 %1027, i64* %10, align 8, !dbg !2603
  br label %1096, !dbg !2603

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2604
  %1030 = icmp ne i64 %1029, 0, !dbg !2604
  br i1 %1030, label %1036, label %1031, !dbg !2606

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2607
  %1033 = icmp ne i64 %1032, 0, !dbg !2607
  br i1 %1033, label %1034, label %1036, !dbg !2608

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2609
  store i64 %1035, i64* %12, align 8, !dbg !2611
  store i64 0, i64* %21, align 8, !dbg !2612
  br label %51, !dbg !2613

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2614

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2615
  %1040 = icmp ne i8* %1039, null, !dbg !2615
  br i1 %1040, label %1041, label %1068, !dbg !2617

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2618
  %1043 = trunc i8 %1042 to i1, !dbg !2618
  br i1 %1043, label %1068, label %1044, !dbg !2619

1044:                                             ; preds = %1041
  br label %1045, !dbg !2620

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2621
  %1047 = load i8, i8* %1046, align 1, !dbg !2624
  %1048 = icmp ne i8 %1047, 0, !dbg !2625
  br i1 %1048, label %1049, label %1067, !dbg !2625

1049:                                             ; preds = %1045
  br label %1050, !dbg !2626

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2627
  %1052 = load i64, i64* %12, align 8, !dbg !2627
  %1053 = icmp ult i64 %1051, %1052, !dbg !2627
  br i1 %1053, label %1054, label %1060, !dbg !2630

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2627
  %1056 = load i8, i8* %1055, align 1, !dbg !2627
  %1057 = load i8*, i8** %11, align 8, !dbg !2627
  %1058 = load i64, i64* %21, align 8, !dbg !2627
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2627
  store i8 %1056, i8* %1059, align 1, !dbg !2627
  br label %1060, !dbg !2627

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2630
  %1062 = add i64 %1061, 1, !dbg !2630
  store i64 %1062, i64* %21, align 8, !dbg !2630
  br label %1063, !dbg !2630

1063:                                             ; preds = %1060
  br label %1064, !dbg !2630

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2631
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2631
  store i8* %1066, i8** %23, align 8, !dbg !2631
  br label %1045, !dbg !2632, !llvm.loop !2633

1067:                                             ; preds = %1045
  br label %1068, !dbg !2634

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2635
  %1070 = load i64, i64* %12, align 8, !dbg !2637
  %1071 = icmp ult i64 %1069, %1070, !dbg !2638
  br i1 %1071, label %1072, label %1076, !dbg !2639

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2640
  %1074 = load i64, i64* %21, align 8, !dbg !2641
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2640
  store i8 0, i8* %1075, align 1, !dbg !2642
  br label %1076, !dbg !2640

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2643
  store i64 %1077, i64* %10, align 8, !dbg !2644
  br label %1096, !dbg !2644

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2645), !dbg !2646
  %1079 = load i32, i32* %15, align 4, !dbg !2647
  %1080 = icmp eq i32 %1079, 2, !dbg !2649
  br i1 %1080, label %1081, label %1085, !dbg !2650

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2651
  %1083 = trunc i8 %1082 to i1, !dbg !2651
  br i1 %1083, label %1084, label %1085, !dbg !2652

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2653
  br label %1085, !dbg !2654

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2655
  %1087 = load i64, i64* %12, align 8, !dbg !2656
  %1088 = load i8*, i8** %13, align 8, !dbg !2657
  %1089 = load i64, i64* %14, align 8, !dbg !2658
  %1090 = load i32, i32* %15, align 4, !dbg !2659
  %1091 = load i32, i32* %16, align 4, !dbg !2660
  %1092 = and i32 %1091, -3, !dbg !2661
  %1093 = load i8*, i8** %18, align 8, !dbg !2662
  %1094 = load i8*, i8** %19, align 8, !dbg !2663
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2664
  store i64 %1095, i64* %10, align 8, !dbg !2665
  br label %1096, !dbg !2665

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2666
  ret i64 %1097, !dbg !2666
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !194 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2669, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2671, metadata !DIExpression()), !dbg !2672
  %9 = load i8*, i8** %4, align 8, !dbg !2673
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.118, i64 0, i64 0), i8* noundef %9) #19, !dbg !2673
  store i8* %10, i8** %6, align 8, !dbg !2672
  %11 = load i8*, i8** %6, align 8, !dbg !2674
  %12 = load i8*, i8** %4, align 8, !dbg !2676
  %13 = icmp ne i8* %11, %12, !dbg !2677
  br i1 %13, label %14, label %16, !dbg !2678

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2679
  store i8* %15, i8** %3, align 8, !dbg !2680
  br label %37, !dbg !2680

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2681, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2685
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2686
  %18 = icmp eq i64 %17, 3, !dbg !2688
  br i1 %18, label %19, label %32, !dbg !2689

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2690
  %21 = icmp eq i32 %20, 8216, !dbg !2691
  br i1 %21, label %22, label %32, !dbg !2692

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2693
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2693
  %25 = load i8, i8* %24, align 1, !dbg !2693
  %26 = zext i8 %25 to i32, !dbg !2693
  %27 = icmp eq i32 %26, 39, !dbg !2694
  %28 = zext i1 %27 to i32, !dbg !2694
  %29 = sext i32 %28 to i64, !dbg !2695
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2695
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2695
  store i8* %31, i8** %3, align 8, !dbg !2696
  br label %37, !dbg !2696

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2697
  %34 = icmp eq i32 %33, 9, !dbg !2698
  %35 = zext i1 %34 to i64, !dbg !2697
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.115, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), !dbg !2697
  store i8* %36, i8** %3, align 8, !dbg !2699
  br label %37, !dbg !2699

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2700
  ret i8* %38, !dbg !2700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2701 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2704, metadata !DIExpression()), !dbg !2705
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2706, metadata !DIExpression()), !dbg !2707
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2708, metadata !DIExpression()), !dbg !2709
  %7 = load i8*, i8** %4, align 8, !dbg !2710
  %8 = load i64, i64* %5, align 8, !dbg !2711
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2712
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2713
  ret i8* %10, !dbg !2714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2715 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2718, metadata !DIExpression()), !dbg !2719
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2722, metadata !DIExpression()), !dbg !2723
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2724, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2726, metadata !DIExpression()), !dbg !2727
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2728
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2728
  br i1 %15, label %16, label %18, !dbg !2728

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2729
  br label %19, !dbg !2728

18:                                               ; preds = %4
  br label %19, !dbg !2728

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2728
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2730, metadata !DIExpression()), !dbg !2731
  %21 = call i32* @__errno_location() #22, !dbg !2732
  %22 = load i32, i32* %21, align 4, !dbg !2732
  store i32 %22, i32* %10, align 4, !dbg !2731
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2733, metadata !DIExpression()), !dbg !2734
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2735
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2736
  %25 = load i32, i32* %24, align 4, !dbg !2736
  %26 = load i64*, i64** %7, align 8, !dbg !2737
  %27 = icmp ne i64* %26, null, !dbg !2737
  %28 = zext i1 %27 to i64, !dbg !2737
  %29 = select i1 %27, i32 0, i32 1, !dbg !2737
  %30 = or i32 %25, %29, !dbg !2738
  store i32 %30, i32* %11, align 4, !dbg !2734
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2739, metadata !DIExpression()), !dbg !2740
  %31 = load i8*, i8** %5, align 8, !dbg !2741
  %32 = load i64, i64* %6, align 8, !dbg !2742
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2743
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2744
  %35 = load i32, i32* %34, align 8, !dbg !2744
  %36 = load i32, i32* %11, align 4, !dbg !2745
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2746
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2747
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2746
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2748
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2749
  %42 = load i8*, i8** %41, align 8, !dbg !2749
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2750
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2751
  %45 = load i8*, i8** %44, align 8, !dbg !2751
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2752
  %47 = add i64 %46, 1, !dbg !2753
  store i64 %47, i64* %12, align 8, !dbg !2740
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2754, metadata !DIExpression()), !dbg !2755
  %48 = load i64, i64* %12, align 8, !dbg !2756
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !2757
  store i8* %49, i8** %13, align 8, !dbg !2755
  %50 = load i8*, i8** %13, align 8, !dbg !2758
  %51 = load i64, i64* %12, align 8, !dbg !2759
  %52 = load i8*, i8** %5, align 8, !dbg !2760
  %53 = load i64, i64* %6, align 8, !dbg !2761
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2762
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2763
  %56 = load i32, i32* %55, align 8, !dbg !2763
  %57 = load i32, i32* %11, align 4, !dbg !2764
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2765
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2766
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2765
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2767
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2768
  %63 = load i8*, i8** %62, align 8, !dbg !2768
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2769
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2770
  %66 = load i8*, i8** %65, align 8, !dbg !2770
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2771
  %68 = load i32, i32* %10, align 4, !dbg !2772
  %69 = call i32* @__errno_location() #22, !dbg !2773
  store i32 %68, i32* %69, align 4, !dbg !2774
  %70 = load i64*, i64** %7, align 8, !dbg !2775
  %71 = icmp ne i64* %70, null, !dbg !2775
  br i1 %71, label %72, label %76, !dbg !2777

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2778
  %74 = sub i64 %73, 1, !dbg !2779
  %75 = load i64*, i64** %7, align 8, !dbg !2780
  store i64 %74, i64* %75, align 8, !dbg !2781
  br label %76, !dbg !2782

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2783
  ret i8* %77, !dbg !2784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2785 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2786, metadata !DIExpression()), !dbg !2787
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2788
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2787
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2789, metadata !DIExpression()), !dbg !2791
  store i32 1, i32* %2, align 4, !dbg !2791
  br label %4, !dbg !2792

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2793
  %6 = load i32, i32* @nslots, align 4, !dbg !2795
  %7 = icmp slt i32 %5, %6, !dbg !2796
  br i1 %7, label %8, label %18, !dbg !2797

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2798
  %10 = load i32, i32* %2, align 4, !dbg !2799
  %11 = sext i32 %10 to i64, !dbg !2798
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2798
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2800
  %14 = load i8*, i8** %13, align 8, !dbg !2800
  call void @free(i8* noundef %14) #19, !dbg !2801
  br label %15, !dbg !2801

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2802
  %17 = add nsw i32 %16, 1, !dbg !2802
  store i32 %17, i32* %2, align 4, !dbg !2802
  br label %4, !dbg !2803, !llvm.loop !2804

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2806
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2806
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2808
  %22 = load i8*, i8** %21, align 8, !dbg !2808
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2809
  br i1 %23, label %24, label %29, !dbg !2810

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2811
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2811
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2813
  %28 = load i8*, i8** %27, align 8, !dbg !2813
  call void @free(i8* noundef %28) #19, !dbg !2814
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2815
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2816
  br label %29, !dbg !2817

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2818
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2820
  br i1 %31, label %32, label %35, !dbg !2821

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2822
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2822
  call void @free(i8* noundef %34) #19, !dbg !2824
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2825
  br label %35, !dbg !2826

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2827
  ret void, !dbg !2828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2829 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2834, metadata !DIExpression()), !dbg !2835
  %5 = load i32, i32* %3, align 4, !dbg !2836
  %6 = load i8*, i8** %4, align 8, !dbg !2837
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2838
  ret i8* %7, !dbg !2839
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2840 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2843, metadata !DIExpression()), !dbg !2844
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2845, metadata !DIExpression()), !dbg !2846
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2847, metadata !DIExpression()), !dbg !2848
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2851, metadata !DIExpression()), !dbg !2852
  %18 = call i32* @__errno_location() #22, !dbg !2853
  %19 = load i32, i32* %18, align 4, !dbg !2853
  store i32 %19, i32* %9, align 4, !dbg !2852
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2854, metadata !DIExpression()), !dbg !2855
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2856
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2855
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2857, metadata !DIExpression()), !dbg !2858
  store i32 2147483647, i32* %11, align 4, !dbg !2858
  %21 = load i32, i32* %5, align 4, !dbg !2859
  %22 = icmp sle i32 0, %21, !dbg !2861
  br i1 %22, label %23, label %27, !dbg !2862

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2863
  %25 = load i32, i32* %11, align 4, !dbg !2864
  %26 = icmp slt i32 %24, %25, !dbg !2865
  br i1 %26, label %28, label %27, !dbg !2866

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !2867
  unreachable, !dbg !2867

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2868
  %30 = load i32, i32* %5, align 4, !dbg !2870
  %31 = icmp sle i32 %29, %30, !dbg !2871
  br i1 %31, label %32, label %73, !dbg !2872

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2873, metadata !DIExpression()), !dbg !2875
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2876
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2877
  %35 = zext i1 %34 to i8, !dbg !2875
  store i8 %35, i8* %12, align 1, !dbg !2875
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2878, metadata !DIExpression()), !dbg !2879
  %36 = load i32, i32* @nslots, align 4, !dbg !2880
  %37 = sext i32 %36 to i64, !dbg !2880
  store i64 %37, i64* %13, align 8, !dbg !2879
  %38 = load i8, i8* %12, align 1, !dbg !2881
  %39 = trunc i8 %38 to i1, !dbg !2881
  br i1 %39, label %40, label %41, !dbg !2881

40:                                               ; preds = %32
  br label %43, !dbg !2881

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2882
  br label %43, !dbg !2881

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2881
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2881
  %46 = load i32, i32* %5, align 4, !dbg !2883
  %47 = load i32, i32* @nslots, align 4, !dbg !2884
  %48 = sub nsw i32 %46, %47, !dbg !2885
  %49 = add nsw i32 %48, 1, !dbg !2886
  %50 = sext i32 %49 to i64, !dbg !2883
  %51 = load i32, i32* %11, align 4, !dbg !2887
  %52 = sext i32 %51 to i64, !dbg !2887
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2888
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2888
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2889
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2890
  %55 = load i8, i8* %12, align 1, !dbg !2891
  %56 = trunc i8 %55 to i1, !dbg !2891
  br i1 %56, label %57, label %60, !dbg !2893

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2894
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2895
  br label %60, !dbg !2896

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2897
  %62 = load i32, i32* @nslots, align 4, !dbg !2898
  %63 = sext i32 %62 to i64, !dbg !2899
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2899
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2900
  %66 = load i64, i64* %13, align 8, !dbg !2901
  %67 = load i32, i32* @nslots, align 4, !dbg !2902
  %68 = sext i32 %67 to i64, !dbg !2902
  %69 = sub nsw i64 %66, %68, !dbg !2903
  %70 = mul i64 %69, 16, !dbg !2904
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2900
  %71 = load i64, i64* %13, align 8, !dbg !2905
  %72 = trunc i64 %71 to i32, !dbg !2905
  store i32 %72, i32* @nslots, align 4, !dbg !2906
  br label %73, !dbg !2907

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2908, metadata !DIExpression()), !dbg !2910
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2911
  %75 = load i32, i32* %5, align 4, !dbg !2912
  %76 = sext i32 %75 to i64, !dbg !2911
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2911
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2913
  %79 = load i64, i64* %78, align 8, !dbg !2913
  store i64 %79, i64* %14, align 8, !dbg !2910
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2914, metadata !DIExpression()), !dbg !2915
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2916
  %81 = load i32, i32* %5, align 4, !dbg !2917
  %82 = sext i32 %81 to i64, !dbg !2916
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2916
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2918
  %85 = load i8*, i8** %84, align 8, !dbg !2918
  store i8* %85, i8** %15, align 8, !dbg !2915
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2919, metadata !DIExpression()), !dbg !2920
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2921
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2922
  %88 = load i32, i32* %87, align 4, !dbg !2922
  %89 = or i32 %88, 1, !dbg !2923
  store i32 %89, i32* %16, align 4, !dbg !2920
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2924, metadata !DIExpression()), !dbg !2925
  %90 = load i8*, i8** %15, align 8, !dbg !2926
  %91 = load i64, i64* %14, align 8, !dbg !2927
  %92 = load i8*, i8** %6, align 8, !dbg !2928
  %93 = load i64, i64* %7, align 8, !dbg !2929
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2930
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2931
  %96 = load i32, i32* %95, align 8, !dbg !2931
  %97 = load i32, i32* %16, align 4, !dbg !2932
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2933
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2934
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2933
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2935
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2936
  %103 = load i8*, i8** %102, align 8, !dbg !2936
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2937
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2938
  %106 = load i8*, i8** %105, align 8, !dbg !2938
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2939
  store i64 %107, i64* %17, align 8, !dbg !2925
  %108 = load i64, i64* %14, align 8, !dbg !2940
  %109 = load i64, i64* %17, align 8, !dbg !2942
  %110 = icmp ule i64 %108, %109, !dbg !2943
  br i1 %110, label %111, label %149, !dbg !2944

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2945
  %113 = add i64 %112, 1, !dbg !2947
  store i64 %113, i64* %14, align 8, !dbg !2948
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2949
  %115 = load i32, i32* %5, align 4, !dbg !2950
  %116 = sext i32 %115 to i64, !dbg !2949
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2949
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2951
  store i64 %113, i64* %118, align 8, !dbg !2952
  %119 = load i8*, i8** %15, align 8, !dbg !2953
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2955
  br i1 %120, label %121, label %123, !dbg !2956

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2957
  call void @free(i8* noundef %122) #19, !dbg !2958
  br label %123, !dbg !2958

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2959
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !2960
  store i8* %125, i8** %15, align 8, !dbg !2961
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2962
  %127 = load i32, i32* %5, align 4, !dbg !2963
  %128 = sext i32 %127 to i64, !dbg !2962
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2962
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2964
  store i8* %125, i8** %130, align 8, !dbg !2965
  %131 = load i8*, i8** %15, align 8, !dbg !2966
  %132 = load i64, i64* %14, align 8, !dbg !2967
  %133 = load i8*, i8** %6, align 8, !dbg !2968
  %134 = load i64, i64* %7, align 8, !dbg !2969
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2970
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2971
  %137 = load i32, i32* %136, align 8, !dbg !2971
  %138 = load i32, i32* %16, align 4, !dbg !2972
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2973
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2974
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2973
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2975
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2976
  %144 = load i8*, i8** %143, align 8, !dbg !2976
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2977
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2978
  %147 = load i8*, i8** %146, align 8, !dbg !2978
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2979
  br label %149, !dbg !2980

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2981
  %151 = call i32* @__errno_location() #22, !dbg !2982
  store i32 %150, i32* %151, align 4, !dbg !2983
  %152 = load i8*, i8** %15, align 8, !dbg !2984
  ret i8* %152, !dbg !2985
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2986 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2989, metadata !DIExpression()), !dbg !2990
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2991, metadata !DIExpression()), !dbg !2992
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2993, metadata !DIExpression()), !dbg !2994
  %7 = load i32, i32* %4, align 4, !dbg !2995
  %8 = load i8*, i8** %5, align 8, !dbg !2996
  %9 = load i64, i64* %6, align 8, !dbg !2997
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2998
  ret i8* %10, !dbg !2999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3000 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3003, metadata !DIExpression()), !dbg !3004
  %3 = load i8*, i8** %2, align 8, !dbg !3005
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3006
  ret i8* %4, !dbg !3007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3008 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3013, metadata !DIExpression()), !dbg !3014
  %5 = load i8*, i8** %3, align 8, !dbg !3015
  %6 = load i64, i64* %4, align 8, !dbg !3016
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3017
  ret i8* %7, !dbg !3018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3019 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3028, metadata !DIExpression()), !dbg !3029
  %8 = load i32, i32* %5, align 4, !dbg !3030
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3031
  %9 = load i32, i32* %4, align 4, !dbg !3032
  %10 = load i8*, i8** %6, align 8, !dbg !3033
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3034
  ret i8* %11, !dbg !3035
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3036 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3041, metadata !DIExpression()), !dbg !3042
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3042
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3042
  %5 = load i32, i32* %3, align 4, !dbg !3043
  %6 = icmp eq i32 %5, 10, !dbg !3045
  br i1 %6, label %7, label %8, !dbg !3046

7:                                                ; preds = %2
  call void @abort() #20, !dbg !3047
  unreachable, !dbg !3047

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3048
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3049
  store i32 %9, i32* %10, align 8, !dbg !3050
  ret void, !dbg !3051
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3052 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3055, metadata !DIExpression()), !dbg !3056
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3057, metadata !DIExpression()), !dbg !3058
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3063, metadata !DIExpression()), !dbg !3064
  %10 = load i32, i32* %6, align 4, !dbg !3065
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3066
  %11 = load i32, i32* %5, align 4, !dbg !3067
  %12 = load i8*, i8** %7, align 8, !dbg !3068
  %13 = load i64, i64* %8, align 8, !dbg !3069
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3070
  ret i8* %14, !dbg !3071
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3072 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3077, metadata !DIExpression()), !dbg !3078
  %5 = load i32, i32* %3, align 4, !dbg !3079
  %6 = load i8*, i8** %4, align 8, !dbg !3080
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3081
  ret i8* %7, !dbg !3082
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3083 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3088, metadata !DIExpression()), !dbg !3089
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3090, metadata !DIExpression()), !dbg !3091
  %7 = load i32, i32* %4, align 4, !dbg !3092
  %8 = load i8*, i8** %5, align 8, !dbg !3093
  %9 = load i64, i64* %6, align 8, !dbg !3094
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3095
  ret i8* %10, !dbg !3096
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3097 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3102, metadata !DIExpression()), !dbg !3103
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3106, metadata !DIExpression()), !dbg !3107
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3108
  %9 = load i8, i8* %6, align 1, !dbg !3109
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3110
  %11 = load i8*, i8** %4, align 8, !dbg !3111
  %12 = load i64, i64* %5, align 8, !dbg !3112
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3113
  ret i8* %13, !dbg !3114
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3115 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3120, metadata !DIExpression()), !dbg !3121
  %5 = load i8*, i8** %3, align 8, !dbg !3122
  %6 = load i8, i8* %4, align 1, !dbg !3123
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3124
  ret i8* %7, !dbg !3125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3126 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  %3 = load i8*, i8** %2, align 8, !dbg !3129
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3130
  ret i8* %4, !dbg !3131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3132 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3133, metadata !DIExpression()), !dbg !3134
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3135, metadata !DIExpression()), !dbg !3136
  %5 = load i8*, i8** %3, align 8, !dbg !3137
  %6 = load i64, i64* %4, align 8, !dbg !3138
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3139
  ret i8* %7, !dbg !3140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3141 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3142, metadata !DIExpression()), !dbg !3143
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3148, metadata !DIExpression()), !dbg !3149
  %9 = load i32, i32* %5, align 4, !dbg !3150
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3151
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3151
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3151
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3152
  %13 = load i32, i32* %4, align 4, !dbg !3153
  %14 = load i8*, i8** %6, align 8, !dbg !3154
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3155
  ret i8* %15, !dbg !3156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3157 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3166, metadata !DIExpression()), !dbg !3167
  %9 = load i32, i32* %5, align 4, !dbg !3168
  %10 = load i8*, i8** %6, align 8, !dbg !3169
  %11 = load i8*, i8** %7, align 8, !dbg !3170
  %12 = load i8*, i8** %8, align 8, !dbg !3171
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3172
  ret i8* %13, !dbg !3173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3174 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3177, metadata !DIExpression()), !dbg !3178
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3179, metadata !DIExpression()), !dbg !3180
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3187, metadata !DIExpression()), !dbg !3188
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3189
  %13 = load i8*, i8** %7, align 8, !dbg !3190
  %14 = load i8*, i8** %8, align 8, !dbg !3191
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3192
  %15 = load i32, i32* %6, align 4, !dbg !3193
  %16 = load i8*, i8** %9, align 8, !dbg !3194
  %17 = load i64, i64* %10, align 8, !dbg !3195
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3196
  ret i8* %18, !dbg !3197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3198 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3201, metadata !DIExpression()), !dbg !3202
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3205, metadata !DIExpression()), !dbg !3206
  %7 = load i8*, i8** %4, align 8, !dbg !3207
  %8 = load i8*, i8** %5, align 8, !dbg !3208
  %9 = load i8*, i8** %6, align 8, !dbg !3209
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3210
  ret i8* %10, !dbg !3211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3212 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3221, metadata !DIExpression()), !dbg !3222
  %9 = load i8*, i8** %5, align 8, !dbg !3223
  %10 = load i8*, i8** %6, align 8, !dbg !3224
  %11 = load i8*, i8** %7, align 8, !dbg !3225
  %12 = load i64, i64* %8, align 8, !dbg !3226
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3227
  ret i8* %13, !dbg !3228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3229 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3232, metadata !DIExpression()), !dbg !3233
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3236, metadata !DIExpression()), !dbg !3237
  %7 = load i32, i32* %4, align 4, !dbg !3238
  %8 = load i8*, i8** %5, align 8, !dbg !3239
  %9 = load i64, i64* %6, align 8, !dbg !3240
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3241
  ret i8* %10, !dbg !3242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3243 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3246, metadata !DIExpression()), !dbg !3247
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3248, metadata !DIExpression()), !dbg !3249
  %5 = load i8*, i8** %3, align 8, !dbg !3250
  %6 = load i64, i64* %4, align 8, !dbg !3251
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3252
  ret i8* %7, !dbg !3253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3254 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3259, metadata !DIExpression()), !dbg !3260
  %5 = load i32, i32* %3, align 4, !dbg !3261
  %6 = load i8*, i8** %4, align 8, !dbg !3262
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3263
  ret i8* %7, !dbg !3264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3265 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3268, metadata !DIExpression()), !dbg !3269
  %3 = load i8*, i8** %2, align 8, !dbg !3270
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3271
  ret i8* %4, !dbg !3272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3273 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3277, metadata !DIExpression()), !dbg !3278
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3279, metadata !DIExpression()), !dbg !3280
  %5 = load i8*, i8** %3, align 8, !dbg !3281
  %6 = load i8*, i8** %4, align 8, !dbg !3282
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3283
  %8 = icmp ne i32 %7, 0, !dbg !3284
  %9 = xor i1 %8, true, !dbg !3284
  ret i1 %9, !dbg !3285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3286 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3343, metadata !DIExpression()), !dbg !3344
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3345, metadata !DIExpression()), !dbg !3346
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3347, metadata !DIExpression()), !dbg !3348
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3351, metadata !DIExpression()), !dbg !3352
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3353, metadata !DIExpression()), !dbg !3354
  %13 = load i8*, i8** %8, align 8, !dbg !3355
  %14 = icmp ne i8* %13, null, !dbg !3355
  br i1 %14, label %15, label %21, !dbg !3357

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3358
  %17 = load i8*, i8** %8, align 8, !dbg !3359
  %18 = load i8*, i8** %9, align 8, !dbg !3360
  %19 = load i8*, i8** %10, align 8, !dbg !3361
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3362
  br label %26, !dbg !3362

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3363
  %23 = load i8*, i8** %9, align 8, !dbg !3364
  %24 = load i8*, i8** %10, align 8, !dbg !3365
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.126, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3366
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3367
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.128, i64 0, i64 0)) #19, !dbg !3368
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3369
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3370
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3370
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3371
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.130, i64 0, i64 0)) #19, !dbg !3372
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.131, i64 0, i64 0)), !dbg !3373
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3374
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3374
  %37 = load i64, i64* %12, align 8, !dbg !3375
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
  ], !dbg !3376

38:                                               ; preds = %26
  br label %241, !dbg !3377

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3379
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.132, i64 0, i64 0)) #19, !dbg !3380
  %42 = load i8**, i8*** %11, align 8, !dbg !3381
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3381
  %44 = load i8*, i8** %43, align 8, !dbg !3381
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3382
  br label %241, !dbg !3383

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3384
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.133, i64 0, i64 0)) #19, !dbg !3385
  %49 = load i8**, i8*** %11, align 8, !dbg !3386
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3386
  %51 = load i8*, i8** %50, align 8, !dbg !3386
  %52 = load i8**, i8*** %11, align 8, !dbg !3387
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3387
  %54 = load i8*, i8** %53, align 8, !dbg !3387
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3388
  br label %241, !dbg !3389

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3390
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.134, i64 0, i64 0)) #19, !dbg !3391
  %59 = load i8**, i8*** %11, align 8, !dbg !3392
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3392
  %61 = load i8*, i8** %60, align 8, !dbg !3392
  %62 = load i8**, i8*** %11, align 8, !dbg !3393
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3393
  %64 = load i8*, i8** %63, align 8, !dbg !3393
  %65 = load i8**, i8*** %11, align 8, !dbg !3394
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3394
  %67 = load i8*, i8** %66, align 8, !dbg !3394
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3395
  br label %241, !dbg !3396

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3397
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.135, i64 0, i64 0)) #19, !dbg !3398
  %72 = load i8**, i8*** %11, align 8, !dbg !3399
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3399
  %74 = load i8*, i8** %73, align 8, !dbg !3399
  %75 = load i8**, i8*** %11, align 8, !dbg !3400
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3400
  %77 = load i8*, i8** %76, align 8, !dbg !3400
  %78 = load i8**, i8*** %11, align 8, !dbg !3401
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3401
  %80 = load i8*, i8** %79, align 8, !dbg !3401
  %81 = load i8**, i8*** %11, align 8, !dbg !3402
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3402
  %83 = load i8*, i8** %82, align 8, !dbg !3402
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3403
  br label %241, !dbg !3404

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3405
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.136, i64 0, i64 0)) #19, !dbg !3406
  %88 = load i8**, i8*** %11, align 8, !dbg !3407
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3407
  %90 = load i8*, i8** %89, align 8, !dbg !3407
  %91 = load i8**, i8*** %11, align 8, !dbg !3408
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3408
  %93 = load i8*, i8** %92, align 8, !dbg !3408
  %94 = load i8**, i8*** %11, align 8, !dbg !3409
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3409
  %96 = load i8*, i8** %95, align 8, !dbg !3409
  %97 = load i8**, i8*** %11, align 8, !dbg !3410
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3410
  %99 = load i8*, i8** %98, align 8, !dbg !3410
  %100 = load i8**, i8*** %11, align 8, !dbg !3411
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3411
  %102 = load i8*, i8** %101, align 8, !dbg !3411
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3412
  br label %241, !dbg !3413

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3414
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.137, i64 0, i64 0)) #19, !dbg !3415
  %107 = load i8**, i8*** %11, align 8, !dbg !3416
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3416
  %109 = load i8*, i8** %108, align 8, !dbg !3416
  %110 = load i8**, i8*** %11, align 8, !dbg !3417
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3417
  %112 = load i8*, i8** %111, align 8, !dbg !3417
  %113 = load i8**, i8*** %11, align 8, !dbg !3418
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3418
  %115 = load i8*, i8** %114, align 8, !dbg !3418
  %116 = load i8**, i8*** %11, align 8, !dbg !3419
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3419
  %118 = load i8*, i8** %117, align 8, !dbg !3419
  %119 = load i8**, i8*** %11, align 8, !dbg !3420
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3420
  %121 = load i8*, i8** %120, align 8, !dbg !3420
  %122 = load i8**, i8*** %11, align 8, !dbg !3421
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3421
  %124 = load i8*, i8** %123, align 8, !dbg !3421
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3422
  br label %241, !dbg !3423

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3424
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.138, i64 0, i64 0)) #19, !dbg !3425
  %129 = load i8**, i8*** %11, align 8, !dbg !3426
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3426
  %131 = load i8*, i8** %130, align 8, !dbg !3426
  %132 = load i8**, i8*** %11, align 8, !dbg !3427
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3427
  %134 = load i8*, i8** %133, align 8, !dbg !3427
  %135 = load i8**, i8*** %11, align 8, !dbg !3428
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3428
  %137 = load i8*, i8** %136, align 8, !dbg !3428
  %138 = load i8**, i8*** %11, align 8, !dbg !3429
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3429
  %140 = load i8*, i8** %139, align 8, !dbg !3429
  %141 = load i8**, i8*** %11, align 8, !dbg !3430
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3430
  %143 = load i8*, i8** %142, align 8, !dbg !3430
  %144 = load i8**, i8*** %11, align 8, !dbg !3431
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3431
  %146 = load i8*, i8** %145, align 8, !dbg !3431
  %147 = load i8**, i8*** %11, align 8, !dbg !3432
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3432
  %149 = load i8*, i8** %148, align 8, !dbg !3432
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3433
  br label %241, !dbg !3434

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3435
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.139, i64 0, i64 0)) #19, !dbg !3436
  %154 = load i8**, i8*** %11, align 8, !dbg !3437
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3437
  %156 = load i8*, i8** %155, align 8, !dbg !3437
  %157 = load i8**, i8*** %11, align 8, !dbg !3438
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3438
  %159 = load i8*, i8** %158, align 8, !dbg !3438
  %160 = load i8**, i8*** %11, align 8, !dbg !3439
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3439
  %162 = load i8*, i8** %161, align 8, !dbg !3439
  %163 = load i8**, i8*** %11, align 8, !dbg !3440
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3440
  %165 = load i8*, i8** %164, align 8, !dbg !3440
  %166 = load i8**, i8*** %11, align 8, !dbg !3441
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3441
  %168 = load i8*, i8** %167, align 8, !dbg !3441
  %169 = load i8**, i8*** %11, align 8, !dbg !3442
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3442
  %171 = load i8*, i8** %170, align 8, !dbg !3442
  %172 = load i8**, i8*** %11, align 8, !dbg !3443
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3443
  %174 = load i8*, i8** %173, align 8, !dbg !3443
  %175 = load i8**, i8*** %11, align 8, !dbg !3444
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3444
  %177 = load i8*, i8** %176, align 8, !dbg !3444
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3445
  br label %241, !dbg !3446

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3447
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.140, i64 0, i64 0)) #19, !dbg !3448
  %182 = load i8**, i8*** %11, align 8, !dbg !3449
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3449
  %184 = load i8*, i8** %183, align 8, !dbg !3449
  %185 = load i8**, i8*** %11, align 8, !dbg !3450
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3450
  %187 = load i8*, i8** %186, align 8, !dbg !3450
  %188 = load i8**, i8*** %11, align 8, !dbg !3451
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3451
  %190 = load i8*, i8** %189, align 8, !dbg !3451
  %191 = load i8**, i8*** %11, align 8, !dbg !3452
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3452
  %193 = load i8*, i8** %192, align 8, !dbg !3452
  %194 = load i8**, i8*** %11, align 8, !dbg !3453
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3453
  %196 = load i8*, i8** %195, align 8, !dbg !3453
  %197 = load i8**, i8*** %11, align 8, !dbg !3454
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3454
  %199 = load i8*, i8** %198, align 8, !dbg !3454
  %200 = load i8**, i8*** %11, align 8, !dbg !3455
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3455
  %202 = load i8*, i8** %201, align 8, !dbg !3455
  %203 = load i8**, i8*** %11, align 8, !dbg !3456
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3456
  %205 = load i8*, i8** %204, align 8, !dbg !3456
  %206 = load i8**, i8*** %11, align 8, !dbg !3457
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3457
  %208 = load i8*, i8** %207, align 8, !dbg !3457
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3458
  br label %241, !dbg !3459

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3460
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.141, i64 0, i64 0)) #19, !dbg !3461
  %213 = load i8**, i8*** %11, align 8, !dbg !3462
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3462
  %215 = load i8*, i8** %214, align 8, !dbg !3462
  %216 = load i8**, i8*** %11, align 8, !dbg !3463
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3463
  %218 = load i8*, i8** %217, align 8, !dbg !3463
  %219 = load i8**, i8*** %11, align 8, !dbg !3464
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3464
  %221 = load i8*, i8** %220, align 8, !dbg !3464
  %222 = load i8**, i8*** %11, align 8, !dbg !3465
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3465
  %224 = load i8*, i8** %223, align 8, !dbg !3465
  %225 = load i8**, i8*** %11, align 8, !dbg !3466
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3466
  %227 = load i8*, i8** %226, align 8, !dbg !3466
  %228 = load i8**, i8*** %11, align 8, !dbg !3467
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3467
  %230 = load i8*, i8** %229, align 8, !dbg !3467
  %231 = load i8**, i8*** %11, align 8, !dbg !3468
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3468
  %233 = load i8*, i8** %232, align 8, !dbg !3468
  %234 = load i8**, i8*** %11, align 8, !dbg !3469
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3469
  %236 = load i8*, i8** %235, align 8, !dbg !3469
  %237 = load i8**, i8*** %11, align 8, !dbg !3470
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3470
  %239 = load i8*, i8** %238, align 8, !dbg !3470
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3471
  br label %241, !dbg !3472

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3474 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3477, metadata !DIExpression()), !dbg !3478
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3479, metadata !DIExpression()), !dbg !3480
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3481, metadata !DIExpression()), !dbg !3482
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3483, metadata !DIExpression()), !dbg !3484
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3485, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3487, metadata !DIExpression()), !dbg !3488
  store i64 0, i64* %11, align 8, !dbg !3489
  br label %12, !dbg !3491

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3492
  %14 = load i64, i64* %11, align 8, !dbg !3494
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3492
  %16 = load i8*, i8** %15, align 8, !dbg !3492
  %17 = icmp ne i8* %16, null, !dbg !3495
  br i1 %17, label %18, label %22, !dbg !3495

18:                                               ; preds = %12
  br label %19, !dbg !3495

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3496
  %21 = add i64 %20, 1, !dbg !3496
  store i64 %21, i64* %11, align 8, !dbg !3496
  br label %12, !dbg !3497, !llvm.loop !3498

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3500
  %24 = load i8*, i8** %7, align 8, !dbg !3501
  %25 = load i8*, i8** %8, align 8, !dbg !3502
  %26 = load i8*, i8** %9, align 8, !dbg !3503
  %27 = load i8**, i8*** %10, align 8, !dbg !3504
  %28 = load i64, i64* %11, align 8, !dbg !3505
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3506
  ret void, !dbg !3507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3508 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3522, metadata !DIExpression()), !dbg !3523
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3524, metadata !DIExpression()), !dbg !3525
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3526, metadata !DIExpression()), !dbg !3527
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3534, metadata !DIExpression()), !dbg !3536
  store i64 0, i64* %10, align 8, !dbg !3537
  br label %12, !dbg !3539

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3540
  %14 = icmp ult i64 %13, 10, !dbg !3542
  br i1 %14, label %15, label %38, !dbg !3543

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3544
  %17 = load i32, i32* %16, align 8, !dbg !3544
  %18 = icmp sge i32 %17, 0, !dbg !3544
  br i1 %18, label %27, label %19, !dbg !3544

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3544
  store i32 %20, i32* %16, align 8, !dbg !3544
  %21 = icmp sle i32 %20, 0, !dbg !3544
  br i1 %21, label %22, label %27, !dbg !3544

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3544
  %24 = load i8*, i8** %23, align 8, !dbg !3544
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3544
  %26 = bitcast i8* %25 to i8**, !dbg !3544
  br label %32, !dbg !3544

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3544
  %29 = load i8*, i8** %28, align 8, !dbg !3544
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3544
  store i8* %30, i8** %28, align 8, !dbg !3544
  %31 = bitcast i8* %29 to i8**, !dbg !3544
  br label %32, !dbg !3544

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3544
  %34 = load i8*, i8** %33, align 8, !dbg !3544
  %35 = load i64, i64* %10, align 8, !dbg !3545
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3546
  store i8* %34, i8** %36, align 8, !dbg !3547
  %37 = icmp ne i8* %34, null, !dbg !3548
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3549
  br i1 %39, label %40, label %44, !dbg !3550

40:                                               ; preds = %38
  br label %41, !dbg !3550

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3551
  %43 = add i64 %42, 1, !dbg !3551
  store i64 %43, i64* %10, align 8, !dbg !3551
  br label %12, !dbg !3552, !llvm.loop !3553

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3555
  %46 = load i8*, i8** %7, align 8, !dbg !3556
  %47 = load i8*, i8** %8, align 8, !dbg !3557
  %48 = load i8*, i8** %9, align 8, !dbg !3558
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3559
  %50 = load i64, i64* %10, align 8, !dbg !3560
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3561
  ret void, !dbg !3562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3563 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3570, metadata !DIExpression()), !dbg !3571
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3574, metadata !DIExpression()), !dbg !3575
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3576
  call void @llvm.va_start(i8* %11), !dbg !3576
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3577
  %13 = load i8*, i8** %6, align 8, !dbg !3578
  %14 = load i8*, i8** %7, align 8, !dbg !3579
  %15 = load i8*, i8** %8, align 8, !dbg !3580
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3581
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3581
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3581
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3582
  call void @llvm.va_end(i8* %18), !dbg !3582
  ret void, !dbg !3583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3584 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3585
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3585
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.146, i64 0, i64 0)) #19, !dbg !3586
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.147, i64 0, i64 0)), !dbg !3587
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.148, i64 0, i64 0)) #19, !dbg !3588
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.149, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.150, i64 0, i64 0)), !dbg !3589
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.151, i64 0, i64 0)) #19, !dbg !3590
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.152, i64 0, i64 0)), !dbg !3591
  ret void, !dbg !3592
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !3593 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3597, metadata !DIExpression()), !dbg !3598
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3599, metadata !DIExpression()), !dbg !3600
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3601, metadata !DIExpression()), !dbg !3602
  %7 = load i8*, i8** %4, align 8, !dbg !3603
  %8 = load i64, i64* %5, align 8, !dbg !3604
  %9 = load i64, i64* %6, align 8, !dbg !3605
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3606
  ret i8* %10, !dbg !3607
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !3608 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3609, metadata !DIExpression()), !dbg !3610
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3611, metadata !DIExpression()), !dbg !3612
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3613, metadata !DIExpression()), !dbg !3614
  %7 = load i8*, i8** %4, align 8, !dbg !3615
  %8 = load i64, i64* %5, align 8, !dbg !3616
  %9 = load i64, i64* %6, align 8, !dbg !3617
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3618
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3619
  ret i8* %11, !dbg !3620
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3621 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3624, metadata !DIExpression()), !dbg !3625
  %3 = load i8*, i8** %2, align 8, !dbg !3626
  %4 = icmp ne i8* %3, null, !dbg !3626
  br i1 %4, label %6, label %5, !dbg !3628

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !3629
  unreachable, !dbg !3629

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3630
  ret i8* %7, !dbg !3631
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #16 !dbg !3632 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3635, metadata !DIExpression()), !dbg !3636
  %3 = load i64, i64* %2, align 8, !dbg !3637
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3638
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3639
  ret i8* %5, !dbg !3640
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #16 !dbg !3641 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3644, metadata !DIExpression()), !dbg !3645
  %3 = load i64, i64* %2, align 8, !dbg !3646
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3647
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3648
  ret i8* %5, !dbg !3649
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #16 !dbg !3650 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3653, metadata !DIExpression()), !dbg !3654
  %3 = load i64, i64* %2, align 8, !dbg !3655
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !3655
  ret i8* %4, !dbg !3656
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #17 !dbg !3657 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3660, metadata !DIExpression()), !dbg !3661
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3662, metadata !DIExpression()), !dbg !3663
  %5 = load i8*, i8** %3, align 8, !dbg !3664
  %6 = load i64, i64* %4, align 8, !dbg !3665
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3666
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3667
  ret i8* %8, !dbg !3668
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #17 !dbg !3669 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3674, metadata !DIExpression()), !dbg !3675
  %5 = load i8*, i8** %3, align 8, !dbg !3676
  %6 = load i64, i64* %4, align 8, !dbg !3677
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3678
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3679
  ret i8* %8, !dbg !3680
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !3681 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3684, metadata !DIExpression()), !dbg !3685
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3686, metadata !DIExpression()), !dbg !3687
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3688, metadata !DIExpression()), !dbg !3689
  %7 = load i8*, i8** %4, align 8, !dbg !3690
  %8 = load i64, i64* %5, align 8, !dbg !3691
  %9 = load i64, i64* %6, align 8, !dbg !3692
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3693
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3694
  ret i8* %11, !dbg !3695
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3696 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3699, metadata !DIExpression()), !dbg !3700
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3701, metadata !DIExpression()), !dbg !3702
  %5 = load i64, i64* %3, align 8, !dbg !3703
  %6 = load i64, i64* %4, align 8, !dbg !3704
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3705
  ret i8* %7, !dbg !3706
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3707 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3712, metadata !DIExpression()), !dbg !3713
  %5 = load i64, i64* %3, align 8, !dbg !3714
  %6 = load i64, i64* %4, align 8, !dbg !3715
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3716
  ret i8* %7, !dbg !3717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3718 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  %5 = load i8*, i8** %3, align 8, !dbg !3725
  %6 = load i64*, i64** %4, align 8, !dbg !3726
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3727
  ret i8* %7, !dbg !3728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !270 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3729, metadata !DIExpression()), !dbg !3730
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3735, metadata !DIExpression()), !dbg !3736
  %8 = load i64*, i64** %5, align 8, !dbg !3737
  %9 = load i64, i64* %8, align 8, !dbg !3738
  store i64 %9, i64* %7, align 8, !dbg !3736
  %10 = load i8*, i8** %4, align 8, !dbg !3739
  %11 = icmp ne i8* %10, null, !dbg !3739
  br i1 %11, label %26, label %12, !dbg !3741

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3742
  %14 = icmp ne i64 %13, 0, !dbg !3742
  br i1 %14, label %25, label %15, !dbg !3745

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3746
  %17 = udiv i64 128, %16, !dbg !3748
  store i64 %17, i64* %7, align 8, !dbg !3749
  %18 = load i64, i64* %7, align 8, !dbg !3750
  %19 = icmp ne i64 %18, 0, !dbg !3751
  %20 = xor i1 %19, true, !dbg !3751
  %21 = zext i1 %20 to i32, !dbg !3751
  %22 = sext i32 %21 to i64, !dbg !3751
  %23 = load i64, i64* %7, align 8, !dbg !3752
  %24 = add i64 %23, %22, !dbg !3752
  store i64 %24, i64* %7, align 8, !dbg !3752
  br label %25, !dbg !3753

25:                                               ; preds = %15, %12
  br label %36, !dbg !3754

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3755
  %28 = load i64, i64* %7, align 8, !dbg !3755
  %29 = lshr i64 %28, 1, !dbg !3755
  %30 = add i64 %29, 1, !dbg !3755
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3755
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3755
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3755
  store i64 %33, i64* %7, align 8, !dbg !3755
  br i1 %32, label %34, label %35, !dbg !3758

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !3759
  unreachable, !dbg !3759

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3760
  %38 = load i64, i64* %7, align 8, !dbg !3761
  %39 = load i64, i64* %6, align 8, !dbg !3762
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !3763
  store i8* %40, i8** %4, align 8, !dbg !3764
  %41 = load i64, i64* %7, align 8, !dbg !3765
  %42 = load i64*, i64** %5, align 8, !dbg !3766
  store i64 %41, i64* %42, align 8, !dbg !3767
  %43 = load i8*, i8** %4, align 8, !dbg !3768
  ret i8* %43, !dbg !3769
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !277 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3772, metadata !DIExpression()), !dbg !3773
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3776, metadata !DIExpression()), !dbg !3777
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3780, metadata !DIExpression()), !dbg !3781
  %15 = load i64*, i64** %7, align 8, !dbg !3782
  %16 = load i64, i64* %15, align 8, !dbg !3783
  store i64 %16, i64* %11, align 8, !dbg !3781
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3784, metadata !DIExpression()), !dbg !3785
  %17 = load i64, i64* %11, align 8, !dbg !3786
  %18 = load i64, i64* %11, align 8, !dbg !3786
  %19 = ashr i64 %18, 1, !dbg !3786
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3786
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3786
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3786
  store i64 %22, i64* %12, align 8, !dbg !3786
  br i1 %21, label %23, label %24, !dbg !3788

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3789
  br label %24, !dbg !3790

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3791
  %26 = icmp sle i64 0, %25, !dbg !3793
  br i1 %26, label %27, label %33, !dbg !3794

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3795
  %29 = load i64, i64* %12, align 8, !dbg !3796
  %30 = icmp slt i64 %28, %29, !dbg !3797
  br i1 %30, label %31, label %33, !dbg !3798

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3799
  store i64 %32, i64* %12, align 8, !dbg !3800
  br label %33, !dbg !3801

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3804, metadata !DIExpression()), !dbg !3805
  %34 = load i64, i64* %10, align 8, !dbg !3806
  %35 = icmp slt i64 %34, 0, !dbg !3806
  br i1 %35, label %36, label %82, !dbg !3806

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3806
  %38 = icmp slt i64 %37, 0, !dbg !3806
  br i1 %38, label %39, label %62, !dbg !3806

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3806

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3806
  %42 = load i64, i64* %10, align 8, !dbg !3806
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3806
  %44 = icmp slt i64 %41, %43, !dbg !3806
  br i1 %44, label %111, label %115, !dbg !3806

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3806

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3806
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3806
  br i1 %48, label %52, label %53, !dbg !3806

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3806
  %51 = icmp slt i64 0, %50, !dbg !3806
  br i1 %51, label %52, label %53, !dbg !3806

52:                                               ; preds = %49, %46
  br label %57, !dbg !3806

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3806
  %55 = sub nsw i64 0, %54, !dbg !3806
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3806
  br label %57, !dbg !3806

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3806
  %59 = load i64, i64* %12, align 8, !dbg !3806
  %60 = sub nsw i64 -1, %59, !dbg !3806
  %61 = icmp sle i64 %58, %60, !dbg !3806
  br i1 %61, label %111, label %115, !dbg !3806

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3806
  %64 = icmp eq i64 %63, -1, !dbg !3806
  br i1 %64, label %65, label %77, !dbg !3806

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3806

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3806
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3806
  %69 = icmp slt i64 0, %68, !dbg !3806
  br i1 %69, label %111, label %115, !dbg !3806

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3806
  %72 = icmp slt i64 0, %71, !dbg !3806
  br i1 %72, label %73, label %115, !dbg !3806

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3806
  %75 = sub nsw i64 %74, 1, !dbg !3806
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3806
  br i1 %76, label %111, label %115, !dbg !3806

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3806
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3806
  %80 = load i64, i64* %12, align 8, !dbg !3806
  %81 = icmp slt i64 %79, %80, !dbg !3806
  br i1 %81, label %111, label %115, !dbg !3806

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3806
  %84 = icmp eq i64 %83, 0, !dbg !3806
  br i1 %84, label %85, label %86, !dbg !3806

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3806

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3806
  %88 = icmp slt i64 %87, 0, !dbg !3806
  br i1 %88, label %89, label %106, !dbg !3806

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3806
  %91 = icmp eq i64 %90, -1, !dbg !3806
  br i1 %91, label %92, label %101, !dbg !3806

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3806

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3806
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3806
  %96 = icmp slt i64 0, %95, !dbg !3806
  br i1 %96, label %111, label %115, !dbg !3806

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3806
  %99 = sub nsw i64 %98, 1, !dbg !3806
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3806
  br i1 %100, label %111, label %115, !dbg !3806

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3806
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3806
  %104 = load i64, i64* %10, align 8, !dbg !3806
  %105 = icmp slt i64 %103, %104, !dbg !3806
  br i1 %105, label %111, label %115, !dbg !3806

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3806
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3806
  %109 = load i64, i64* %12, align 8, !dbg !3806
  %110 = icmp slt i64 %108, %109, !dbg !3806
  br i1 %110, label %111, label %115, !dbg !3806

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3806
  %113 = load i64, i64* %10, align 8, !dbg !3806
  %114 = mul i64 %112, %113, !dbg !3806
  store i64 %114, i64* %13, align 8, !dbg !3806
  br label %119, !dbg !3806

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3806
  %117 = load i64, i64* %10, align 8, !dbg !3806
  %118 = mul i64 %116, %117, !dbg !3806
  store i64 %118, i64* %13, align 8, !dbg !3806
  br label %119, !dbg !3806

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3806
  %121 = icmp ne i32 %120, 0, !dbg !3806
  br i1 %121, label %122, label %123, !dbg !3806

122:                                              ; preds = %119
  br label %129, !dbg !3806

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3807
  %125 = icmp slt i64 %124, 128, !dbg !3808
  %126 = zext i1 %125 to i64, !dbg !3807
  %127 = select i1 %125, i32 128, i32 0, !dbg !3807
  %128 = sext i32 %127 to i64, !dbg !3807
  br label %129, !dbg !3806

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3806
  store i64 %130, i64* %14, align 8, !dbg !3805
  %131 = load i64, i64* %14, align 8, !dbg !3809
  %132 = icmp ne i64 %131, 0, !dbg !3809
  br i1 %132, label %133, label %142, !dbg !3811

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3812
  %135 = load i64, i64* %10, align 8, !dbg !3814
  %136 = sdiv i64 %134, %135, !dbg !3815
  store i64 %136, i64* %12, align 8, !dbg !3816
  %137 = load i64, i64* %14, align 8, !dbg !3817
  %138 = load i64, i64* %14, align 8, !dbg !3818
  %139 = load i64, i64* %10, align 8, !dbg !3819
  %140 = srem i64 %138, %139, !dbg !3820
  %141 = sub nsw i64 %137, %140, !dbg !3821
  store i64 %141, i64* %13, align 8, !dbg !3822
  br label %142, !dbg !3823

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3824
  %144 = icmp ne i8* %143, null, !dbg !3824
  br i1 %144, label %147, label %145, !dbg !3826

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3827
  store i64 0, i64* %146, align 8, !dbg !3828
  br label %147, !dbg !3829

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3830
  %149 = load i64, i64* %11, align 8, !dbg !3832
  %150 = sub nsw i64 %148, %149, !dbg !3833
  %151 = load i64, i64* %8, align 8, !dbg !3834
  %152 = icmp slt i64 %150, %151, !dbg !3835
  br i1 %152, label %153, label %256, !dbg !3836

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3837
  %155 = load i64, i64* %8, align 8, !dbg !3837
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3837
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3837
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3837
  store i64 %158, i64* %12, align 8, !dbg !3837
  br i1 %157, label %255, label %159, !dbg !3838

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3839
  %161 = icmp sle i64 0, %160, !dbg !3840
  br i1 %161, label %162, label %166, !dbg !3841

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3842
  %164 = load i64, i64* %12, align 8, !dbg !3843
  %165 = icmp slt i64 %163, %164, !dbg !3844
  br i1 %165, label %255, label %166, !dbg !3845

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3846
  %168 = icmp slt i64 %167, 0, !dbg !3846
  br i1 %168, label %169, label %215, !dbg !3846

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3846
  %171 = icmp slt i64 %170, 0, !dbg !3846
  br i1 %171, label %172, label %195, !dbg !3846

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3846

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3846
  %175 = load i64, i64* %10, align 8, !dbg !3846
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3846
  %177 = icmp slt i64 %174, %176, !dbg !3846
  br i1 %177, label %244, label %248, !dbg !3846

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3846

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3846
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3846
  br i1 %181, label %185, label %186, !dbg !3846

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3846
  %184 = icmp slt i64 0, %183, !dbg !3846
  br i1 %184, label %185, label %186, !dbg !3846

185:                                              ; preds = %182, %179
  br label %190, !dbg !3846

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3846
  %188 = sub nsw i64 0, %187, !dbg !3846
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3846
  br label %190, !dbg !3846

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3846
  %192 = load i64, i64* %12, align 8, !dbg !3846
  %193 = sub nsw i64 -1, %192, !dbg !3846
  %194 = icmp sle i64 %191, %193, !dbg !3846
  br i1 %194, label %244, label %248, !dbg !3846

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3846
  %197 = icmp eq i64 %196, -1, !dbg !3846
  br i1 %197, label %198, label %210, !dbg !3846

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3846

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3846
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3846
  %202 = icmp slt i64 0, %201, !dbg !3846
  br i1 %202, label %244, label %248, !dbg !3846

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3846
  %205 = icmp slt i64 0, %204, !dbg !3846
  br i1 %205, label %206, label %248, !dbg !3846

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3846
  %208 = sub nsw i64 %207, 1, !dbg !3846
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3846
  br i1 %209, label %244, label %248, !dbg !3846

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3846
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3846
  %213 = load i64, i64* %12, align 8, !dbg !3846
  %214 = icmp slt i64 %212, %213, !dbg !3846
  br i1 %214, label %244, label %248, !dbg !3846

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3846
  %217 = icmp eq i64 %216, 0, !dbg !3846
  br i1 %217, label %218, label %219, !dbg !3846

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3846

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3846
  %221 = icmp slt i64 %220, 0, !dbg !3846
  br i1 %221, label %222, label %239, !dbg !3846

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3846
  %224 = icmp eq i64 %223, -1, !dbg !3846
  br i1 %224, label %225, label %234, !dbg !3846

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3846

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3846
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3846
  %229 = icmp slt i64 0, %228, !dbg !3846
  br i1 %229, label %244, label %248, !dbg !3846

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3846
  %232 = sub nsw i64 %231, 1, !dbg !3846
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3846
  br i1 %233, label %244, label %248, !dbg !3846

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3846
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3846
  %237 = load i64, i64* %10, align 8, !dbg !3846
  %238 = icmp slt i64 %236, %237, !dbg !3846
  br i1 %238, label %244, label %248, !dbg !3846

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3846
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3846
  %242 = load i64, i64* %12, align 8, !dbg !3846
  %243 = icmp slt i64 %241, %242, !dbg !3846
  br i1 %243, label %244, label %248, !dbg !3846

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3846
  %246 = load i64, i64* %10, align 8, !dbg !3846
  %247 = mul i64 %245, %246, !dbg !3846
  store i64 %247, i64* %13, align 8, !dbg !3846
  br label %252, !dbg !3846

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3846
  %250 = load i64, i64* %10, align 8, !dbg !3846
  %251 = mul i64 %249, %250, !dbg !3846
  store i64 %251, i64* %13, align 8, !dbg !3846
  br label %252, !dbg !3846

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3846
  %254 = icmp ne i32 %253, 0, !dbg !3846
  br i1 %254, label %255, label %256, !dbg !3847

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !3848
  unreachable, !dbg !3848

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3849
  %258 = load i64, i64* %13, align 8, !dbg !3850
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !3851
  store i8* %259, i8** %6, align 8, !dbg !3852
  %260 = load i64, i64* %12, align 8, !dbg !3853
  %261 = load i64*, i64** %7, align 8, !dbg !3854
  store i64 %260, i64* %261, align 8, !dbg !3855
  %262 = load i8*, i8** %6, align 8, !dbg !3856
  ret i8* %262, !dbg !3857
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #16 !dbg !3858 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3859, metadata !DIExpression()), !dbg !3860
  %3 = load i64, i64* %2, align 8, !dbg !3861
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3862
  ret i8* %4, !dbg !3863
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3864 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3865, metadata !DIExpression()), !dbg !3866
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3867, metadata !DIExpression()), !dbg !3868
  %5 = load i64, i64* %3, align 8, !dbg !3869
  %6 = load i64, i64* %4, align 8, !dbg !3870
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !3871
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3872
  ret i8* %8, !dbg !3873
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #16 !dbg !3874 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3875, metadata !DIExpression()), !dbg !3876
  %3 = load i64, i64* %2, align 8, !dbg !3877
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3878
  ret i8* %4, !dbg !3879
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3880 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3881, metadata !DIExpression()), !dbg !3882
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3883, metadata !DIExpression()), !dbg !3884
  %5 = load i64, i64* %3, align 8, !dbg !3885
  %6 = load i64, i64* %4, align 8, !dbg !3886
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3887
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3888
  ret i8* %8, !dbg !3889
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #17 !dbg !3890 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3895, metadata !DIExpression()), !dbg !3896
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3897, metadata !DIExpression()), !dbg !3898
  %5 = load i64, i64* %4, align 8, !dbg !3899
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !3900
  %7 = load i8*, i8** %3, align 8, !dbg !3901
  %8 = load i64, i64* %4, align 8, !dbg !3902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3903
  ret i8* %6, !dbg !3904
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #17 !dbg !3905 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3908, metadata !DIExpression()), !dbg !3909
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3910, metadata !DIExpression()), !dbg !3911
  %5 = load i64, i64* %4, align 8, !dbg !3912
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !3913
  %7 = load i8*, i8** %3, align 8, !dbg !3914
  %8 = load i64, i64* %4, align 8, !dbg !3915
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3916
  ret i8* %6, !dbg !3917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3918 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3921, metadata !DIExpression()), !dbg !3922
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3925, metadata !DIExpression()), !dbg !3926
  %6 = load i64, i64* %4, align 8, !dbg !3927
  %7 = add nsw i64 %6, 1, !dbg !3928
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !3929
  store i8* %8, i8** %5, align 8, !dbg !3926
  %9 = load i8*, i8** %5, align 8, !dbg !3930
  %10 = load i64, i64* %4, align 8, !dbg !3931
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3930
  store i8 0, i8* %11, align 1, !dbg !3932
  %12 = load i8*, i8** %5, align 8, !dbg !3933
  %13 = load i8*, i8** %3, align 8, !dbg !3934
  %14 = load i64, i64* %4, align 8, !dbg !3935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3936
  ret i8* %12, !dbg !3937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3938 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3939, metadata !DIExpression()), !dbg !3940
  %3 = load i8*, i8** %2, align 8, !dbg !3941
  %4 = load i8*, i8** %2, align 8, !dbg !3942
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !3943
  %6 = add i64 %5, 1, !dbg !3944
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !3945
  ret i8* %7, !dbg !3946
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3947 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3948, metadata !DIExpression()), !dbg !3950
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3950
  store i32 %2, i32* %1, align 4, !dbg !3950
  %3 = load i32, i32* %1, align 4, !dbg !3950
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.164, i64 0, i64 0)) #19, !dbg !3950
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i64 0, i64 0), i8* noundef %4), !dbg !3950
  %5 = load i32, i32* %1, align 4, !dbg !3950
  %6 = icmp ne i32 %5, 0, !dbg !3950
  br i1 %6, label %7, label %9, !dbg !3950

7:                                                ; preds = %0
  unreachable, !dbg !3950

8:                                                ; No predecessors!
  br label %10, !dbg !3950

9:                                                ; preds = %0
  br label %10, !dbg !3950

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !3951
  unreachable, !dbg !3951
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #13 !dbg !3952 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3955, metadata !DIExpression()), !dbg !3956
  %6 = load i8*, i8** %2, align 8, !dbg !3957
  %7 = load i8*, i8** %2, align 8, !dbg !3958
  %8 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !3959
  store i8* %8, i8** %3, align 8, !dbg !3956
  br label %9, !dbg !3960

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8, !dbg !3961
  %11 = load i8, i8* %10, align 1, !dbg !3961
  %12 = zext i8 %11 to i32, !dbg !3961
  %13 = icmp eq i32 %12, 47, !dbg !3961
  br i1 %13, label %14, label %17, !dbg !3960

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !3962
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !3962
  store i8* %16, i8** %3, align 8, !dbg !3962
  br label %9, !dbg !3960, !llvm.loop !3963

17:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3964, metadata !DIExpression()), !dbg !3965
  store i8 0, i8* %4, align 1, !dbg !3965
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3966, metadata !DIExpression()), !dbg !3968
  %18 = load i8*, i8** %3, align 8, !dbg !3969
  store i8* %18, i8** %5, align 8, !dbg !3968
  br label %19, !dbg !3970

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8, !dbg !3971
  %21 = load i8, i8* %20, align 1, !dbg !3973
  %22 = icmp ne i8 %21, 0, !dbg !3974
  br i1 %22, label %23, label %39, !dbg !3974

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !3975
  %25 = load i8, i8* %24, align 1, !dbg !3975
  %26 = zext i8 %25 to i32, !dbg !3975
  %27 = icmp eq i32 %26, 47, !dbg !3975
  br i1 %27, label %28, label %29, !dbg !3978

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1, !dbg !3979
  br label %35, !dbg !3980

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !3981
  %31 = trunc i8 %30 to i1, !dbg !3981
  br i1 %31, label %32, label %34, !dbg !3983

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !3984
  store i8* %33, i8** %3, align 8, !dbg !3986
  store i8 0, i8* %4, align 1, !dbg !3987
  br label %34, !dbg !3988

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36, !dbg !3989

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !3990
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !3990
  store i8* %38, i8** %5, align 8, !dbg !3990
  br label %19, !dbg !3991, !llvm.loop !3992

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8, !dbg !3994
  ret i8* %40, !dbg !3995
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #13 !dbg !3996 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4001, metadata !DIExpression()), !dbg !4002
  %5 = load i8*, i8** %2, align 8, !dbg !4003
  %6 = call i64 @strlen(i8* noundef %5) #21, !dbg !4005
  store i64 %6, i64* %3, align 8, !dbg !4006
  br label %7, !dbg !4007

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !4008
  %9 = icmp ult i64 1, %8, !dbg !4010
  br i1 %9, label %10, label %18, !dbg !4011

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !4012
  %12 = load i64, i64* %3, align 8, !dbg !4012
  %13 = sub i64 %12, 1, !dbg !4012
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !4012
  %15 = load i8, i8* %14, align 1, !dbg !4012
  %16 = zext i8 %15 to i32, !dbg !4012
  %17 = icmp eq i32 %16, 47, !dbg !4012
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ], !dbg !4013
  br i1 %19, label %20, label %24, !dbg !4014

20:                                               ; preds = %18
  br label %21, !dbg !4015

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !4016
  %23 = add i64 %22, -1, !dbg !4016
  store i64 %23, i64* %3, align 8, !dbg !4016
  br label %7, !dbg !4017, !llvm.loop !4018

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4020, metadata !DIExpression()), !dbg !4021
  %25 = load i8*, i8** %2, align 8, !dbg !4022
  store i64 0, i64* %4, align 8, !dbg !4021
  %26 = load i64, i64* %3, align 8, !dbg !4023
  ret i64 %26, !dbg !4024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4025 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4031, metadata !DIExpression()), !dbg !4032
  %3 = load i32, i32* %2, align 4, !dbg !4033
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !4034
  ret i32 %4, !dbg !4035
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4036 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4075, metadata !DIExpression()), !dbg !4077
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4078
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !4079
  %9 = icmp ne i64 %8, 0, !dbg !4080
  %10 = zext i1 %9 to i8, !dbg !4077
  store i8 %10, i8* %4, align 1, !dbg !4077
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4081, metadata !DIExpression()), !dbg !4082
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4083
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !4083
  %13 = icmp ne i32 %12, 0, !dbg !4084
  %14 = zext i1 %13 to i8, !dbg !4082
  store i8 %14, i8* %5, align 1, !dbg !4082
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4085, metadata !DIExpression()), !dbg !4086
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4087
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4088
  %17 = icmp ne i32 %16, 0, !dbg !4089
  %18 = zext i1 %17 to i8, !dbg !4086
  store i8 %18, i8* %6, align 1, !dbg !4086
  %19 = load i8, i8* %5, align 1, !dbg !4090
  %20 = trunc i8 %19 to i1, !dbg !4090
  br i1 %20, label %31, label %21, !dbg !4092

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4093
  %23 = trunc i8 %22 to i1, !dbg !4093
  br i1 %23, label %24, label %37, !dbg !4094

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4095
  %26 = trunc i8 %25 to i1, !dbg !4095
  br i1 %26, label %31, label %27, !dbg !4096

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !4097
  %29 = load i32, i32* %28, align 4, !dbg !4097
  %30 = icmp ne i32 %29, 9, !dbg !4098
  br i1 %30, label %31, label %37, !dbg !4099

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4100
  %33 = trunc i8 %32 to i1, !dbg !4100
  br i1 %33, label %36, label %34, !dbg !4103

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !4104
  store i32 0, i32* %35, align 4, !dbg !4105
  br label %36, !dbg !4104

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4106
  br label %38, !dbg !4106

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4107
  br label %38, !dbg !4107

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4108
  ret i32 %39, !dbg !4108
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4109 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4148, metadata !DIExpression()), !dbg !4149
  store i32 0, i32* %4, align 4, !dbg !4149
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4150, metadata !DIExpression()), !dbg !4151
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4152
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !4153
  store i32 %8, i32* %5, align 4, !dbg !4151
  %9 = load i32, i32* %5, align 4, !dbg !4154
  %10 = icmp slt i32 %9, 0, !dbg !4156
  br i1 %10, label %11, label %14, !dbg !4157

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4158
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4159
  store i32 %13, i32* %2, align 4, !dbg !4160
  br label %40, !dbg !4160

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4161
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !4161
  %17 = icmp ne i32 %16, 0, !dbg !4161
  br i1 %17, label %18, label %23, !dbg !4163

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4164
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !4165
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !4166
  %22 = icmp ne i64 %21, -1, !dbg !4167
  br i1 %22, label %23, label %30, !dbg !4168

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4169
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4170
  %26 = icmp ne i32 %25, 0, !dbg !4170
  br i1 %26, label %27, label %30, !dbg !4171

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !4172
  %29 = load i32, i32* %28, align 4, !dbg !4172
  store i32 %29, i32* %4, align 4, !dbg !4173
  br label %30, !dbg !4174

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i32 0, i32* %6, align 4, !dbg !4176
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4177
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4178
  store i32 %32, i32* %6, align 4, !dbg !4179
  %33 = load i32, i32* %4, align 4, !dbg !4180
  %34 = icmp ne i32 %33, 0, !dbg !4182
  br i1 %34, label %35, label %38, !dbg !4183

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4184
  %37 = call i32* @__errno_location() #22, !dbg !4186
  store i32 %36, i32* %37, align 4, !dbg !4187
  store i32 -1, i32* %6, align 4, !dbg !4188
  br label %38, !dbg !4189

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4190
  store i32 %39, i32* %2, align 4, !dbg !4191
  br label %40, !dbg !4191

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4192
  ret i32 %41, !dbg !4192
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4193 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4230, metadata !DIExpression()), !dbg !4231
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4232
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4234
  br i1 %5, label %10, label %6, !dbg !4235

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4236
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !4236
  %9 = icmp ne i32 %8, 0, !dbg !4236
  br i1 %9, label %13, label %10, !dbg !4237

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4238
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4239
  store i32 %12, i32* %2, align 4, !dbg !4240
  br label %17, !dbg !4240

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4241
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4242
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4243
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4244
  store i32 %16, i32* %2, align 4, !dbg !4245
  br label %17, !dbg !4245

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4246
  ret i32 %18, !dbg !4246
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4247 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4250, metadata !DIExpression()), !dbg !4251
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4252
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4254
  %5 = load i32, i32* %4, align 8, !dbg !4254
  %6 = and i32 %5, 256, !dbg !4255
  %7 = icmp ne i32 %6, 0, !dbg !4255
  br i1 %7, label %8, label %11, !dbg !4256

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4257
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4258
  br label %11, !dbg !4258

11:                                               ; preds = %8, %1
  ret void, !dbg !4259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4260 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4302, metadata !DIExpression()), !dbg !4303
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4304
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4306
  %11 = load i8*, i8** %10, align 8, !dbg !4306
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4307
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4308
  %14 = load i8*, i8** %13, align 8, !dbg !4308
  %15 = icmp eq i8* %11, %14, !dbg !4309
  br i1 %15, label %16, label %46, !dbg !4310

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4311
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4312
  %19 = load i8*, i8** %18, align 8, !dbg !4312
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4313
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4314
  %22 = load i8*, i8** %21, align 8, !dbg !4314
  %23 = icmp eq i8* %19, %22, !dbg !4315
  br i1 %23, label %24, label %46, !dbg !4316

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4317
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4318
  %27 = load i8*, i8** %26, align 8, !dbg !4318
  %28 = icmp eq i8* %27, null, !dbg !4319
  br i1 %28, label %29, label %46, !dbg !4320

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4321, metadata !DIExpression()), !dbg !4323
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4324
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !4325
  %32 = load i64, i64* %6, align 8, !dbg !4326
  %33 = load i32, i32* %7, align 4, !dbg !4327
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !4328
  store i64 %34, i64* %8, align 8, !dbg !4323
  %35 = load i64, i64* %8, align 8, !dbg !4329
  %36 = icmp eq i64 %35, -1, !dbg !4331
  br i1 %36, label %37, label %38, !dbg !4332

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4333
  br label %51, !dbg !4333

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4335
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4336
  %41 = load i32, i32* %40, align 8, !dbg !4337
  %42 = and i32 %41, -17, !dbg !4337
  store i32 %42, i32* %40, align 8, !dbg !4337
  %43 = load i64, i64* %8, align 8, !dbg !4338
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4339
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4340
  store i64 %43, i64* %45, align 8, !dbg !4341
  store i32 0, i32* %4, align 4, !dbg !4342
  br label %51, !dbg !4342

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4343
  %48 = load i64, i64* %6, align 8, !dbg !4344
  %49 = load i32, i32* %7, align 4, !dbg !4345
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4346
  store i32 %50, i32* %4, align 4, !dbg !4347
  br label %51, !dbg !4347

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4348
  ret i32 %52, !dbg !4348
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !4349 {
  %1 = call i32* @__errno_location() #22, !dbg !4352
  store i32 12, i32* %1, align 4, !dbg !4353
  ret i8* null, !dbg !4354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4355 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4356, metadata !DIExpression()), !dbg !4357
  %3 = load i64, i64* %2, align 8, !dbg !4358
  %4 = icmp ule i64 %3, -1, !dbg !4359
  br i1 %4, label %5, label %8, !dbg !4358

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4360
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4361
  br label %10, !dbg !4358

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !4362
  br label %10, !dbg !4358

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4358
  ret i8* %11, !dbg !4363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4364 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4365, metadata !DIExpression()), !dbg !4366
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4367, metadata !DIExpression()), !dbg !4368
  %5 = load i64, i64* %4, align 8, !dbg !4369
  %6 = icmp ule i64 %5, -1, !dbg !4370
  br i1 %6, label %7, label %11, !dbg !4369

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4371
  %9 = load i64, i64* %4, align 8, !dbg !4372
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4373
  br label %13, !dbg !4369

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4374
  br label %13, !dbg !4369

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4369
  ret i8* %14, !dbg !4375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4376 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4379, metadata !DIExpression()), !dbg !4380
  %6 = load i64, i64* %4, align 8, !dbg !4381
  %7 = icmp ult i64 -1, %6, !dbg !4383
  br i1 %7, label %8, label %14, !dbg !4384

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4385
  %10 = icmp ne i64 %9, 0, !dbg !4388
  br i1 %10, label %11, label %13, !dbg !4389

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4390
  store i8* %12, i8** %3, align 8, !dbg !4391
  br label %27, !dbg !4391

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4392
  br label %14, !dbg !4393

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4394
  %16 = icmp ult i64 -1, %15, !dbg !4396
  br i1 %16, label %17, label %23, !dbg !4397

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4398
  %19 = icmp ne i64 %18, 0, !dbg !4401
  br i1 %19, label %20, label %22, !dbg !4402

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !4403
  store i8* %21, i8** %3, align 8, !dbg !4404
  br label %27, !dbg !4404

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4405
  br label %23, !dbg !4406

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4407
  %25 = load i64, i64* %5, align 8, !dbg !4408
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4409
  store i8* %26, i8** %3, align 8, !dbg !4410
  br label %27, !dbg !4410

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4411
  ret i8* %28, !dbg !4411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4412 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4413, metadata !DIExpression()), !dbg !4414
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4415, metadata !DIExpression()), !dbg !4416
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4417, metadata !DIExpression()), !dbg !4418
  %7 = load i64, i64* %5, align 8, !dbg !4419
  %8 = icmp ule i64 %7, -1, !dbg !4420
  br i1 %8, label %9, label %17, !dbg !4421

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4422
  %11 = icmp ule i64 %10, -1, !dbg !4423
  br i1 %11, label %12, label %17, !dbg !4419

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4424
  %14 = load i64, i64* %5, align 8, !dbg !4425
  %15 = load i64, i64* %6, align 8, !dbg !4426
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4427
  br label %19, !dbg !4419

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !4428
  br label %19, !dbg !4419

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4419
  ret i8* %20, !dbg !4429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4430 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4439, metadata !DIExpression()), !dbg !4440
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4441, metadata !DIExpression()), !dbg !4442
  %11 = load i8*, i8** %7, align 8, !dbg !4443
  %12 = icmp eq i8* %11, null, !dbg !4445
  br i1 %12, label %13, label %14, !dbg !4446

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4447
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), i8** %7, align 8, !dbg !4449
  store i64 1, i64* %8, align 8, !dbg !4450
  br label %14, !dbg !4451

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4452
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4454
  br i1 %16, label %17, label %18, !dbg !4455

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4456
  br label %18, !dbg !4457

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4458, metadata !DIExpression()), !dbg !4459
  %19 = load i32*, i32** %6, align 8, !dbg !4460
  %20 = load i8*, i8** %7, align 8, !dbg !4461
  %21 = load i64, i64* %8, align 8, !dbg !4462
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4463
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4464
  store i64 %23, i64* %10, align 8, !dbg !4459
  %24 = load i64, i64* %10, align 8, !dbg !4465
  %25 = icmp ult i64 %24, -3, !dbg !4467
  br i1 %25, label %26, label %32, !dbg !4468

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4469
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !4470
  %29 = icmp ne i32 %28, 0, !dbg !4470
  br i1 %29, label %32, label %30, !dbg !4471

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4472
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4473
  br label %32, !dbg !4473

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4474
  %34 = icmp eq i64 %33, -3, !dbg !4476
  br i1 %34, label %35, label %36, !dbg !4477

35:                                               ; preds = %32
  call void @abort() #20, !dbg !4478
  unreachable, !dbg !4478

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4479
  %38 = icmp ule i64 -2, %37, !dbg !4481
  br i1 %38, label %39, label %53, !dbg !4482

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4483
  %41 = icmp ne i64 %40, 0, !dbg !4484
  br i1 %41, label %42, label %53, !dbg !4485

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4486
  br i1 %43, label %53, label %44, !dbg !4487

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4488
  %46 = icmp ne i32* %45, null, !dbg !4491
  br i1 %46, label %47, label %52, !dbg !4492

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4493
  %49 = load i8, i8* %48, align 1, !dbg !4494
  %50 = zext i8 %49 to i32, !dbg !4495
  %51 = load i32*, i32** %6, align 8, !dbg !4496
  store i32 %50, i32* %51, align 4, !dbg !4497
  br label %52, !dbg !4498

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4499
  br label %55, !dbg !4499

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4500
  store i64 %54, i64* %5, align 8, !dbg !4501
  br label %55, !dbg !4501

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4502
  ret i64 %56, !dbg !4502
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4503 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4518, metadata !DIExpression()), !dbg !4519
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4520
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4521
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4521
  ret void, !dbg !4522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4523 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4530, metadata !DIExpression()), !dbg !4531
  %7 = load i8*, i8** %4, align 8, !dbg !4532
  %8 = load i8*, i8** %5, align 8, !dbg !4533
  %9 = load i64, i64* %6, align 8, !dbg !4534
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !4535
  %11 = icmp ne i32 %10, 0, !dbg !4536
  %12 = xor i1 %11, true, !dbg !4536
  ret i1 %12, !dbg !4537
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4538 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4540, metadata !DIExpression()), !dbg !4541
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4542, metadata !DIExpression()), !dbg !4543
  %5 = load i8*, i8** %3, align 8, !dbg !4544
  %6 = load i64, i64* %4, align 8, !dbg !4545
  %7 = icmp ne i64 %6, 0, !dbg !4545
  br i1 %7, label %8, label %10, !dbg !4545

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4546
  br label %11, !dbg !4545

10:                                               ; preds = %2
  br label %11, !dbg !4545

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4545
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4547
  ret i8* %13, !dbg !4548
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4549 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4550, metadata !DIExpression()), !dbg !4551
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4554, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4556, metadata !DIExpression()), !dbg !4557
  %9 = load i64, i64* %7, align 8, !dbg !4558
  %10 = icmp ult i64 %9, 0, !dbg !4558
  br i1 %10, label %11, label %60, !dbg !4558

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4558
  %13 = icmp ult i64 %12, 0, !dbg !4558
  br i1 %13, label %14, label %37, !dbg !4558

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4558

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4558
  %17 = load i64, i64* %7, align 8, !dbg !4558
  %18 = udiv i64 -1, %17, !dbg !4558
  %19 = icmp ult i64 %16, %18, !dbg !4558
  br i1 %19, label %92, label %96, !dbg !4558

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4558

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4558
  %23 = icmp ult i64 %22, 1, !dbg !4558
  br i1 %23, label %27, label %28, !dbg !4558

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4558
  %26 = icmp ult i64 0, %25, !dbg !4558
  br i1 %26, label %27, label %28, !dbg !4558

27:                                               ; preds = %24, %21
  br label %32, !dbg !4558

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4558
  %30 = sub i64 0, %29, !dbg !4558
  %31 = udiv i64 -1, %30, !dbg !4558
  br label %32, !dbg !4558

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4558
  %34 = load i64, i64* %6, align 8, !dbg !4558
  %35 = sub i64 -1, %34, !dbg !4558
  %36 = icmp ule i64 %33, %35, !dbg !4558
  br i1 %36, label %92, label %96, !dbg !4558

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4558

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4558

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4558

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4558
  %42 = icmp eq i64 %41, -1, !dbg !4558
  br i1 %42, label %43, label %55, !dbg !4558

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4558

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4558
  %46 = add i64 %45, 0, !dbg !4558
  %47 = icmp ult i64 0, %46, !dbg !4558
  br i1 %47, label %92, label %96, !dbg !4558

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4558
  %50 = icmp ult i64 0, %49, !dbg !4558
  br i1 %50, label %51, label %96, !dbg !4558

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4558
  %53 = sub i64 %52, 1, !dbg !4558
  %54 = icmp ult i64 -1, %53, !dbg !4558
  br i1 %54, label %92, label %96, !dbg !4558

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4558
  %57 = udiv i64 0, %56, !dbg !4558
  %58 = load i64, i64* %6, align 8, !dbg !4558
  %59 = icmp ult i64 %57, %58, !dbg !4558
  br i1 %59, label %92, label %96, !dbg !4558

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4558
  %62 = icmp eq i64 %61, 0, !dbg !4558
  br i1 %62, label %63, label %64, !dbg !4558

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4558

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4558
  %66 = icmp ult i64 %65, 0, !dbg !4558
  br i1 %66, label %67, label %87, !dbg !4558

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4558

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4558

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4558

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4558
  %72 = icmp eq i64 %71, -1, !dbg !4558
  br i1 %72, label %73, label %82, !dbg !4558

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4558

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4558
  %76 = add i64 %75, 0, !dbg !4558
  %77 = icmp ult i64 0, %76, !dbg !4558
  br i1 %77, label %92, label %96, !dbg !4558

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4558
  %80 = sub i64 %79, 1, !dbg !4558
  %81 = icmp ult i64 -1, %80, !dbg !4558
  br i1 %81, label %92, label %96, !dbg !4558

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4558
  %84 = udiv i64 0, %83, !dbg !4558
  %85 = load i64, i64* %7, align 8, !dbg !4558
  %86 = icmp ult i64 %84, %85, !dbg !4558
  br i1 %86, label %92, label %96, !dbg !4558

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4558
  %89 = udiv i64 -1, %88, !dbg !4558
  %90 = load i64, i64* %6, align 8, !dbg !4558
  %91 = icmp ult i64 %89, %90, !dbg !4558
  br i1 %91, label %92, label %96, !dbg !4558

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4558
  %94 = load i64, i64* %7, align 8, !dbg !4558
  %95 = mul i64 %93, %94, !dbg !4558
  store i64 %95, i64* %8, align 8, !dbg !4558
  br label %100, !dbg !4558

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4558
  %98 = load i64, i64* %7, align 8, !dbg !4558
  %99 = mul i64 %97, %98, !dbg !4558
  store i64 %99, i64* %8, align 8, !dbg !4558
  br label %100, !dbg !4558

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4558
  %102 = icmp ne i32 %101, 0, !dbg !4558
  br i1 %102, label %103, label %105, !dbg !4560

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !4561
  store i32 12, i32* %104, align 4, !dbg !4563
  store i8* null, i8** %4, align 8, !dbg !4564
  br label %109, !dbg !4564

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4565
  %107 = load i64, i64* %8, align 8, !dbg !4566
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4567
  store i8* %108, i8** %4, align 8, !dbg !4568
  br label %109, !dbg !4568

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4569
  ret i8* %110, !dbg !4569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4570 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4575, metadata !DIExpression()), !dbg !4579
  %5 = load i32, i32* %3, align 4, !dbg !4580
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4582
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4583
  %8 = icmp ne i32 %7, 0, !dbg !4583
  br i1 %8, label %9, label %10, !dbg !4584

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4585
  br label %18, !dbg !4585

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4586
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0)), !dbg !4588
  br i1 %12, label %17, label %13, !dbg !4589

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4590
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0)), !dbg !4591
  br i1 %15, label %17, label %16, !dbg !4592

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4593
  br label %18, !dbg !4593

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4594
  br label %18, !dbg !4594

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4595
  ret i1 %19, !dbg !4595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4596 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4599, metadata !DIExpression()), !dbg !4600
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4601, metadata !DIExpression()), !dbg !4602
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4603, metadata !DIExpression()), !dbg !4604
  %7 = load i32, i32* %4, align 4, !dbg !4605
  %8 = load i8*, i8** %5, align 8, !dbg !4606
  %9 = load i64, i64* %6, align 8, !dbg !4607
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4608
  ret i32 %10, !dbg !4609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4610 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4613, metadata !DIExpression()), !dbg !4614
  %3 = load i32, i32* %2, align 4, !dbg !4615
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4616
  ret i8* %4, !dbg !4617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4618 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4621, metadata !DIExpression()), !dbg !4622
  %4 = load i32, i32* %2, align 4, !dbg !4623
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !4624
  store i8* %5, i8** %3, align 8, !dbg !4622
  %6 = load i8*, i8** %3, align 8, !dbg !4625
  ret i8* %6, !dbg !4626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4627 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4628, metadata !DIExpression()), !dbg !4629
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4632, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4634, metadata !DIExpression()), !dbg !4635
  %10 = load i32, i32* %5, align 4, !dbg !4636
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4637
  store i8* %11, i8** %8, align 8, !dbg !4635
  %12 = load i8*, i8** %8, align 8, !dbg !4638
  %13 = icmp eq i8* %12, null, !dbg !4640
  br i1 %13, label %14, label %21, !dbg !4641

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4642
  %16 = icmp ugt i64 %15, 0, !dbg !4645
  br i1 %16, label %17, label %20, !dbg !4646

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4647
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4647
  store i8 0, i8* %19, align 1, !dbg !4648
  br label %20, !dbg !4647

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4649
  br label %45, !dbg !4649

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4650, metadata !DIExpression()), !dbg !4652
  %22 = load i8*, i8** %8, align 8, !dbg !4653
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !4654
  store i64 %23, i64* %9, align 8, !dbg !4652
  %24 = load i64, i64* %9, align 8, !dbg !4655
  %25 = load i64, i64* %7, align 8, !dbg !4657
  %26 = icmp ult i64 %24, %25, !dbg !4658
  br i1 %26, label %27, label %32, !dbg !4659

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4660
  %29 = load i8*, i8** %8, align 8, !dbg !4662
  %30 = load i64, i64* %9, align 8, !dbg !4663
  %31 = add i64 %30, 1, !dbg !4664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4665
  store i32 0, i32* %4, align 4, !dbg !4666
  br label %45, !dbg !4666

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4667
  %34 = icmp ugt i64 %33, 0, !dbg !4670
  br i1 %34, label %35, label %44, !dbg !4671

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4672
  %37 = load i8*, i8** %8, align 8, !dbg !4674
  %38 = load i64, i64* %7, align 8, !dbg !4675
  %39 = sub i64 %38, 1, !dbg !4676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4677
  %40 = load i8*, i8** %6, align 8, !dbg !4678
  %41 = load i64, i64* %7, align 8, !dbg !4679
  %42 = sub i64 %41, 1, !dbg !4680
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4678
  store i8 0, i8* %43, align 1, !dbg !4681
  br label %44, !dbg !4682

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4683
  br label %45, !dbg !4683

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4684
  ret i32 %46, !dbg !4684
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
attributes #9 = { convergent nofree nosync nounwind readnone willreturn }
attributes #10 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nofree nosync nounwind willreturn }
attributes #13 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { noinline nounwind optnone uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noinline nounwind optnone uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noinline nounwind optnone uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noinline nounwind optnone uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { noreturn }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(0) }
attributes #27 = { allocsize(1,2) }
attributes #28 = { allocsize(0,1) }

!llvm.dbg.cu = !{!9, !64, !69, !77, !225, !115, !250, !252, !254, !256, !119, !136, !147, !154, !258, !260, !217, !266, !286, !288, !290, !292, !294, !296, !298, !300, !231, !302, !304, !306, !308, !311, !313, !315}
!llvm.ident = !{!317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317, !317}
!llvm.module.flags = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !61)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !51, globals: !60, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/nohup.c", directory: "/src", checksumkind: CSK_MD5, checksum: "62665220fb9257e4a1baafbd9a0ef09b")
!11 = !{!12, !16, !22, !36}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 36, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 90, baseType: !13, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!19 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!20 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!21 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !23, line: 42, baseType: !13, size: 32, elements: !24)
!23 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!25 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!26 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!27 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!28 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!29 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!30 = !DIEnumerator(name: "c_quoting_style", value: 5)
!31 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!32 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!33 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!34 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!35 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256)
!40 = !DIEnumerator(name: "_ISlower", value: 512)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!44 = !DIEnumerator(name: "_ISspace", value: 8192)
!45 = !DIEnumerator(name: "_ISprint", value: 16384)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768)
!47 = !DIEnumerator(name: "_ISblank", value: 1)
!48 = !DIEnumerator(name: "_IScntrl", value: 2)
!49 = !DIEnumerator(name: "_ISpunct", value: 4)
!50 = !DIEnumerator(name: "_ISalnum", value: 8)
!51 = !{!6, !52, !53, !58, !59}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !{!0}
!61 = !{}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "Version", scope: !64, file: !65, line: 3, type: !6, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !66, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!66 = !{!62}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "file_name", scope: !69, file: !70, line: 45, type: !6, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !71, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!71 = !{!67, !72}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !69, file: !70, line: 55, type: !74, isLocal: true, isDefinition: true)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !77, file: !78, line: 66, type: !106, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, globals: !80, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!79 = !{!52}
!80 = !{!81, !100, !75, !102, !104}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "old_file_name", scope: !83, file: !78, line: 304, type: !6, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "verror_at_line", scope: !78, file: !78, line: 298, type: !84, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !61)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !58, !58, !6, !13, !6, !86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !87, line: 52, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !89, line: 32, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !91, baseType: !92)
!91 = !DIFile(filename: "lib/error.c", directory: "/src")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !94)
!93 = !DINamespace(name: "std", scope: null)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !92, file: !91, baseType: !52, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !92, file: !91, baseType: !52, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !92, file: !91, baseType: !52, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !92, file: !91, baseType: !58, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !92, file: !91, baseType: !58, size: 32, offset: 224)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "old_line_number", scope: !83, file: !78, line: 305, type: !13, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "error_message_count", scope: !77, file: !78, line: 69, type: !13, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !77, file: !78, line: 295, type: !58, isLocal: false, isDefinition: true)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !111, file: !112, line: 506, type: !58, isLocal: true, isDefinition: true)
!111 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !112, file: !112, line: 485, type: !113, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !61)
!112 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!113 = !DISubroutineType(types: !114)
!114 = !{!58, !58, !58}
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !116, splitDebugInlining: false, nameTableKind: None)
!116 = !{!109}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "long_options", scope: !119, file: !120, line: 34, type: !122, isLocal: true, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !121, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!121 = !{!117}
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 768, elements: !132)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !125, line: 50, size: 256, elements: !126)
!125 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!126 = !{!127, !128, !129, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !125, line: 52, baseType: !6, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !124, file: !125, line: 55, baseType: !58, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !124, file: !125, line: 56, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !125, line: 57, baseType: !58, size: 32, offset: 192)
!132 = !{!133}
!133 = !DISubrange(count: 3)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "program_name", scope: !136, file: !137, line: 31, type: !6, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !140, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!140 = !{!134}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "utf07FF", scope: !143, file: !144, line: 46, type: !149, isLocal: true, isDefinition: true)
!143 = distinct !DISubprogram(name: "proper_name_lite", scope: !144, file: !144, line: 38, type: !145, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !61)
!144 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!145 = !DISubroutineType(types: !146)
!146 = !{!6, !6, !6}
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !148, splitDebugInlining: false, nameTableKind: None)
!148 = !{!141}
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 2)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !154, file: !155, line: 76, type: !211, isLocal: false, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !156, retainedTypes: !162, globals: !166, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!156 = !{!22, !157, !36}
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !23, line: 254, baseType: !13, size: 32, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!160 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!161 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!162 = !{!58, !59, !163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !{!152, !167, !173, !185, !187, !192, !200, !207, !209}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !154, file: !155, line: 92, type: !169, isLocal: false, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 320, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!171 = !{!172}
!172 = !DISubrange(count: 10)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !154, file: !155, line: 1040, type: !175, isLocal: false, isDefinition: true)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !155, line: 56, size: 448, elements: !176)
!176 = !{!177, !178, !179, !183, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !175, file: !155, line: 59, baseType: !22, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !155, line: 62, baseType: !58, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !175, file: !155, line: 66, baseType: !180, size: 256, offset: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !175, file: !155, line: 69, baseType: !6, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !175, file: !155, line: 72, baseType: !6, size: 64, offset: 384)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !154, file: !155, line: 107, type: !175, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slot0", scope: !154, file: !155, line: 831, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "quote", scope: !194, file: !155, line: 228, type: !197, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "gettext_quote", scope: !155, file: !155, line: 197, type: !195, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !61)
!195 = !DISubroutineType(types: !196)
!196 = !{!6, !6, !22}
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !198)
!198 = !{!151, !199}
!199 = !DISubrange(count: 4)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "slotvec", scope: !154, file: !155, line: 834, type: !202, isLocal: true, isDefinition: true)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !155, line: 823, size: 128, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !155, line: 825, baseType: !163, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !203, file: !155, line: 826, baseType: !139, size: 64, offset: 64)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "nslots", scope: !154, file: !155, line: 832, type: !58, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "slotvec0", scope: !154, file: !155, line: 833, type: !203, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 704, elements: !213)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!213 = !{!214}
!214 = !DISubrange(count: 11)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !217, file: !218, line: 26, type: !220, isLocal: false, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !219, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!219 = !{!215}
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 47)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "exit_failure", scope: !225, file: !226, line: 24, type: !228, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !227, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!227 = !{!223}
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "internal_state", scope: !231, file: !232, line: 97, type: !236, isLocal: true, isDefinition: true)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !233, globals: !235, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!233 = !{!52, !163, !234}
!234 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!235 = !{!229}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !237, line: 6, baseType: !238)
!237 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !239, line: 21, baseType: !240)
!239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 13, size: 64, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !240, file: !239, line: 15, baseType: !58, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !240, file: !239, line: 20, baseType: !244, size: 32, offset: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !239, line: 16, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !244, file: !239, line: 18, baseType: !13, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !244, file: !239, line: 19, baseType: !248, size: 32)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !249)
!249 = !{!199}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !262, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!262 = !{!263}
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 40, baseType: !13, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !285, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!268 = !{!269, !276}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !270, file: !267, line: 188, baseType: !13, size: 32, elements: !274)
!270 = distinct !DISubprogram(name: "x2nrealloc", scope: !267, file: !267, line: 176, type: !271, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!271 = !DISubroutineType(types: !272)
!272 = !{!52, !52, !273, !163}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!274 = !{!275}
!275 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !277, file: !267, line: 228, baseType: !13, size: 32, elements: !274)
!277 = distinct !DISubprogram(name: "xpalloc", scope: !267, file: !267, line: 223, type: !278, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!278 = !DISubroutineType(types: !279)
!279 = !{!52, !52, !280, !281, !283, !281}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !282, line: 130, baseType: !283)
!282 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !164, line: 35, baseType: !284)
!284 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!285 = !{!139, !52, !74, !284, !165}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!310 = !{!74, !165, !52}
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!317 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!318 = !{i32 7, !"Dwarf Version", i32 5}
!319 = !{i32 2, !"Debug Info Version", i32 3}
!320 = !{i32 1, !"wchar_size", i32 4}
!321 = !{i32 1, !"branch-target-enforcement", i32 0}
!322 = !{i32 1, !"sign-return-address", i32 0}
!323 = !{i32 1, !"sign-return-address-all", i32 0}
!324 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!325 = !{i32 7, !"PIC Level", i32 2}
!326 = !{i32 7, !"PIE Level", i32 2}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 1}
!329 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 43, type: !56, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !61)
!330 = !DILocalVariable(name: "status", arg: 1, scope: !329, file: !10, line: 43, type: !58)
!331 = !DILocation(line: 43, column: 12, scope: !329)
!332 = !DILocation(line: 45, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !10, line: 45, column: 7)
!334 = !DILocation(line: 45, column: 14, scope: !333)
!335 = !DILocation(line: 45, column: 7, scope: !329)
!336 = !DILocation(line: 46, column: 5, scope: !333)
!337 = !DILocation(line: 46, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !10, line: 46, column: 5)
!339 = !DILocation(line: 49, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !10, line: 48, column: 5)
!341 = !DILocation(line: 53, column: 15, scope: !340)
!342 = !DILocation(line: 53, column: 29, scope: !340)
!343 = !DILocation(line: 49, column: 7, scope: !340)
!344 = !DILocation(line: 55, column: 7, scope: !340)
!345 = !DILocation(line: 59, column: 7, scope: !340)
!346 = !DILocation(line: 60, column: 7, scope: !340)
!347 = !DILocation(line: 61, column: 15, scope: !340)
!348 = !DILocation(line: 67, column: 15, scope: !340)
!349 = !DILocation(line: 61, column: 7, scope: !340)
!350 = !DILocation(line: 68, column: 15, scope: !340)
!351 = !DILocation(line: 68, column: 7, scope: !340)
!352 = !DILocation(line: 69, column: 7, scope: !340)
!353 = !DILocation(line: 70, column: 7, scope: !340)
!354 = !DILocation(line: 72, column: 9, scope: !329)
!355 = !DILocation(line: 72, column: 3, scope: !329)
!356 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!357 = !DILocation(line: 573, column: 34, scope: !2)
!358 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!359 = !DILocation(line: 573, column: 55, scope: !2)
!360 = !DILocation(line: 581, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!362 = !DILocation(line: 581, column: 19, scope: !361)
!363 = !DILocation(line: 581, column: 7, scope: !2)
!364 = !DILocalVariable(name: "term", scope: !365, file: !3, line: 585, type: !6)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 582, column: 5)
!366 = !DILocation(line: 585, column: 19, scope: !365)
!367 = !DILocation(line: 585, column: 26, scope: !365)
!368 = !DILocation(line: 586, column: 23, scope: !365)
!369 = !DILocation(line: 586, column: 28, scope: !365)
!370 = !DILocation(line: 586, column: 33, scope: !365)
!371 = !DILocation(line: 586, column: 32, scope: !365)
!372 = !DILocation(line: 586, column: 38, scope: !365)
!373 = !DILocation(line: 586, column: 48, scope: !365)
!374 = !DILocation(line: 586, column: 41, scope: !365)
!375 = !DILocation(line: 586, column: 19, scope: !365)
!376 = !DILocation(line: 587, column: 5, scope: !365)
!377 = !DILocation(line: 588, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!379 = !DILocation(line: 588, column: 7, scope: !2)
!380 = !DILocation(line: 590, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 589, column: 5)
!382 = !DILocation(line: 591, column: 7, scope: !381)
!383 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !74)
!384 = !DILocation(line: 594, column: 8, scope: !2)
!385 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!386 = !DILocation(line: 595, column: 15, scope: !2)
!387 = !DILocation(line: 595, column: 28, scope: !2)
!388 = !DILocation(line: 595, column: 45, scope: !2)
!389 = !DILocation(line: 595, column: 37, scope: !2)
!390 = !DILocation(line: 595, column: 35, scope: !2)
!391 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!392 = !DILocation(line: 596, column: 15, scope: !2)
!393 = !DILocation(line: 596, column: 37, scope: !2)
!394 = !DILocation(line: 596, column: 29, scope: !2)
!395 = !DILocation(line: 597, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!397 = !DILocation(line: 597, column: 7, scope: !2)
!398 = !DILocation(line: 599, column: 21, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 598, column: 5)
!400 = !DILocation(line: 599, column: 19, scope: !399)
!401 = !DILocation(line: 602, column: 20, scope: !399)
!402 = !DILocation(line: 603, column: 5, scope: !399)
!403 = !DILocation(line: 604, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !396, file: !3, line: 604, column: 12)
!405 = !DILocation(line: 604, column: 27, scope: !404)
!406 = !DILocation(line: 604, column: 24, scope: !404)
!407 = !DILocation(line: 604, column: 12, scope: !396)
!408 = !DILocalVariable(name: "s", scope: !409, file: !3, line: 608, type: !6)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 605, column: 5)
!410 = !DILocation(line: 608, column: 19, scope: !409)
!411 = !DILocation(line: 608, column: 23, scope: !409)
!412 = !DILocalVariable(name: "spaces", scope: !409, file: !3, line: 609, type: !163)
!413 = !DILocation(line: 609, column: 14, scope: !409)
!414 = !DILocation(line: 610, column: 7, scope: !409)
!415 = !DILocation(line: 610, column: 14, scope: !409)
!416 = !DILocation(line: 610, column: 18, scope: !409)
!417 = !DILocation(line: 610, column: 16, scope: !409)
!418 = !DILocation(line: 610, column: 30, scope: !409)
!419 = !DILocation(line: 610, column: 33, scope: !409)
!420 = !DILocation(line: 610, column: 40, scope: !409)
!421 = !DILocation(line: 0, scope: !409)
!422 = !DILocation(line: 611, column: 21, scope: !409)
!423 = !DILocation(line: 611, column: 20, scope: !409)
!424 = !DILocation(line: 611, column: 19, scope: !409)
!425 = !DILocation(line: 611, column: 16, scope: !409)
!426 = distinct !{!426, !414, !422, !427}
!427 = !{!"llvm.loop.mustprogress"}
!428 = !DILocation(line: 612, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !409, file: !3, line: 612, column: 11)
!430 = !DILocation(line: 612, column: 18, scope: !429)
!431 = !DILocation(line: 612, column: 11, scope: !409)
!432 = !DILocation(line: 615, column: 25, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 613, column: 9)
!434 = !DILocation(line: 615, column: 23, scope: !433)
!435 = !DILocation(line: 616, column: 24, scope: !433)
!436 = !DILocation(line: 617, column: 9, scope: !433)
!437 = !DILocation(line: 618, column: 5, scope: !409)
!438 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !163)
!439 = !DILocation(line: 620, column: 10, scope: !2)
!440 = !DILocation(line: 620, column: 32, scope: !2)
!441 = !DILocation(line: 620, column: 23, scope: !2)
!442 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!443 = !DILocation(line: 625, column: 15, scope: !2)
!444 = !DILocation(line: 625, column: 27, scope: !2)
!445 = !DILocation(line: 625, column: 41, scope: !2)
!446 = !DILocation(line: 625, column: 39, scope: !2)
!447 = !DILocation(line: 626, column: 3, scope: !2)
!448 = !DILocation(line: 626, column: 11, scope: !2)
!449 = !DILocation(line: 626, column: 10, scope: !2)
!450 = !DILocation(line: 626, column: 21, scope: !2)
!451 = !DILocation(line: 626, column: 25, scope: !2)
!452 = !DILocation(line: 626, column: 24, scope: !2)
!453 = !DILocation(line: 626, column: 35, scope: !2)
!454 = !DILocation(line: 0, scope: !2)
!455 = !DILocation(line: 628, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 628, column: 11)
!457 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!458 = !DILocation(line: 628, column: 11, scope: !456)
!459 = !DILocation(line: 628, column: 22, scope: !456)
!460 = !DILocation(line: 628, column: 29, scope: !456)
!461 = !DILocation(line: 628, column: 34, scope: !456)
!462 = !DILocation(line: 628, column: 44, scope: !456)
!463 = !DILocation(line: 628, column: 32, scope: !456)
!464 = !DILocation(line: 628, column: 49, scope: !456)
!465 = !DILocation(line: 628, column: 11, scope: !457)
!466 = !DILocation(line: 629, column: 22, scope: !456)
!467 = !DILocation(line: 629, column: 9, scope: !456)
!468 = !DILocation(line: 630, column: 11, scope: !469)
!469 = distinct !DILexicalBlock(scope: !457, file: !3, line: 630, column: 11)
!470 = !DILocation(line: 630, column: 11, scope: !457)
!471 = !DILocation(line: 632, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 632, column: 15)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 631, column: 9)
!474 = !DILocation(line: 632, column: 15, scope: !472)
!475 = !DILocation(line: 632, column: 26, scope: !472)
!476 = !DILocation(line: 632, column: 34, scope: !472)
!477 = !DILocation(line: 632, column: 37, scope: !472)
!478 = !DILocation(line: 632, column: 15, scope: !473)
!479 = !DILocation(line: 633, column: 13, scope: !472)
!480 = !DILocation(line: 636, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !3, line: 636, column: 15)
!482 = !DILocation(line: 636, column: 29, scope: !481)
!483 = !DILocation(line: 636, column: 34, scope: !481)
!484 = !DILocation(line: 636, column: 44, scope: !481)
!485 = !DILocation(line: 636, column: 32, scope: !481)
!486 = !DILocation(line: 636, column: 49, scope: !481)
!487 = !DILocation(line: 636, column: 15, scope: !473)
!488 = !DILocation(line: 637, column: 13, scope: !481)
!489 = !DILocation(line: 638, column: 9, scope: !473)
!490 = !DILocation(line: 640, column: 16, scope: !457)
!491 = distinct !{!491, !447, !492, !427}
!492 = !DILocation(line: 641, column: 5, scope: !2)
!493 = !DILocation(line: 644, column: 3, scope: !2)
!494 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!495 = !DILocation(line: 648, column: 15, scope: !2)
!496 = !DILocation(line: 648, column: 38, scope: !2)
!497 = !DILocation(line: 648, column: 31, scope: !2)
!498 = !DILocation(line: 649, column: 38, scope: !2)
!499 = !DILocation(line: 649, column: 31, scope: !2)
!500 = !DILocation(line: 650, column: 38, scope: !2)
!501 = !DILocation(line: 650, column: 31, scope: !2)
!502 = !DILocation(line: 651, column: 38, scope: !2)
!503 = !DILocation(line: 651, column: 31, scope: !2)
!504 = !DILocation(line: 652, column: 38, scope: !2)
!505 = !DILocation(line: 652, column: 31, scope: !2)
!506 = !DILocation(line: 653, column: 38, scope: !2)
!507 = !DILocation(line: 653, column: 31, scope: !2)
!508 = !DILocation(line: 654, column: 38, scope: !2)
!509 = !DILocation(line: 654, column: 31, scope: !2)
!510 = !DILocation(line: 655, column: 38, scope: !2)
!511 = !DILocation(line: 655, column: 31, scope: !2)
!512 = !DILocation(line: 656, column: 38, scope: !2)
!513 = !DILocation(line: 656, column: 31, scope: !2)
!514 = !DILocation(line: 657, column: 38, scope: !2)
!515 = !DILocation(line: 657, column: 31, scope: !2)
!516 = !DILocation(line: 658, column: 31, scope: !2)
!517 = !DILocation(line: 663, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!519 = !DILocation(line: 664, column: 7, scope: !518)
!520 = !DILocation(line: 664, column: 10, scope: !518)
!521 = !DILocation(line: 663, column: 7, scope: !2)
!522 = !DILocation(line: 670, column: 15, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 665, column: 5)
!524 = !DILocation(line: 670, column: 28, scope: !523)
!525 = !DILocation(line: 670, column: 47, scope: !523)
!526 = !DILocation(line: 670, column: 41, scope: !523)
!527 = !DILocation(line: 670, column: 59, scope: !523)
!528 = !DILocation(line: 669, column: 7, scope: !523)
!529 = !DILocation(line: 671, column: 5, scope: !523)
!530 = !DILocation(line: 676, column: 48, scope: !531)
!531 = distinct !DILexicalBlock(scope: !518, file: !3, line: 673, column: 5)
!532 = !DILocation(line: 677, column: 21, scope: !531)
!533 = !DILocation(line: 677, column: 15, scope: !531)
!534 = !DILocation(line: 677, column: 33, scope: !531)
!535 = !DILocation(line: 676, column: 7, scope: !531)
!536 = !DILocation(line: 679, column: 3, scope: !2)
!537 = !DILocation(line: 683, column: 3, scope: !2)
!538 = !DILocation(line: 686, column: 3, scope: !2)
!539 = !DILocation(line: 688, column: 3, scope: !2)
!540 = !DILocation(line: 691, column: 3, scope: !2)
!541 = !DILocation(line: 695, column: 3, scope: !2)
!542 = !DILocation(line: 696, column: 1, scope: !2)
!543 = distinct !DISubprogram(name: "emit_exec_status", scope: !3, file: !3, line: 824, type: !544, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !61)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !6}
!546 = !DILocalVariable(name: "program", arg: 1, scope: !543, file: !3, line: 824, type: !6)
!547 = !DILocation(line: 824, column: 31, scope: !543)
!548 = !DILocation(line: 826, column: 15, scope: !543)
!549 = !DILocation(line: 832, column: 5, scope: !543)
!550 = !DILocation(line: 826, column: 7, scope: !543)
!551 = !DILocation(line: 833, column: 1, scope: !543)
!552 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !544, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !61)
!553 = !DILocalVariable(name: "program", arg: 1, scope: !552, file: !3, line: 836, type: !6)
!554 = !DILocation(line: 836, column: 34, scope: !552)
!555 = !DILocalVariable(name: "infomap", scope: !552, file: !3, line: 838, type: !556)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 896, elements: !562)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !552, file: !3, line: 838, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !558, file: !3, line: 838, baseType: !6, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !558, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!562 = !{!563}
!563 = !DISubrange(count: 7)
!564 = !DILocation(line: 838, column: 67, scope: !552)
!565 = !DILocalVariable(name: "node", scope: !552, file: !3, line: 848, type: !6)
!566 = !DILocation(line: 848, column: 15, scope: !552)
!567 = !DILocation(line: 848, column: 22, scope: !552)
!568 = !DILocalVariable(name: "map_prog", scope: !552, file: !3, line: 849, type: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!570 = !DILocation(line: 849, column: 25, scope: !552)
!571 = !DILocation(line: 849, column: 36, scope: !552)
!572 = !DILocation(line: 851, column: 3, scope: !552)
!573 = !DILocation(line: 851, column: 10, scope: !552)
!574 = !DILocation(line: 851, column: 20, scope: !552)
!575 = !DILocation(line: 851, column: 28, scope: !552)
!576 = !DILocation(line: 851, column: 40, scope: !552)
!577 = !DILocation(line: 851, column: 49, scope: !552)
!578 = !DILocation(line: 851, column: 59, scope: !552)
!579 = !DILocation(line: 851, column: 33, scope: !552)
!580 = !DILocation(line: 851, column: 31, scope: !552)
!581 = !DILocation(line: 0, scope: !552)
!582 = !DILocation(line: 852, column: 13, scope: !552)
!583 = distinct !{!583, !572, !582, !427}
!584 = !DILocation(line: 854, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !552, file: !3, line: 854, column: 7)
!586 = !DILocation(line: 854, column: 17, scope: !585)
!587 = !DILocation(line: 854, column: 7, scope: !552)
!588 = !DILocation(line: 855, column: 12, scope: !585)
!589 = !DILocation(line: 855, column: 22, scope: !585)
!590 = !DILocation(line: 855, column: 10, scope: !585)
!591 = !DILocation(line: 855, column: 5, scope: !585)
!592 = !DILocation(line: 857, column: 3, scope: !552)
!593 = !DILocalVariable(name: "lc_messages", scope: !552, file: !3, line: 861, type: !6)
!594 = !DILocation(line: 861, column: 15, scope: !552)
!595 = !DILocation(line: 861, column: 29, scope: !552)
!596 = !DILocation(line: 862, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !552, file: !3, line: 862, column: 7)
!598 = !DILocation(line: 862, column: 19, scope: !597)
!599 = !DILocation(line: 862, column: 22, scope: !597)
!600 = !DILocation(line: 862, column: 7, scope: !552)
!601 = !DILocation(line: 868, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !3, line: 863, column: 5)
!603 = !DILocation(line: 870, column: 5, scope: !602)
!604 = !DILocalVariable(name: "url_program", scope: !552, file: !3, line: 874, type: !6)
!605 = !DILocation(line: 874, column: 15, scope: !552)
!606 = !DILocation(line: 874, column: 36, scope: !552)
!607 = !DILocation(line: 874, column: 29, scope: !552)
!608 = !DILocation(line: 874, column: 61, scope: !552)
!609 = !DILocation(line: 875, column: 11, scope: !552)
!610 = !DILocation(line: 876, column: 24, scope: !552)
!611 = !DILocation(line: 875, column: 3, scope: !552)
!612 = !DILocation(line: 877, column: 11, scope: !552)
!613 = !DILocation(line: 878, column: 11, scope: !552)
!614 = !DILocation(line: 878, column: 17, scope: !552)
!615 = !DILocation(line: 878, column: 25, scope: !552)
!616 = !DILocation(line: 878, column: 22, scope: !552)
!617 = !DILocation(line: 877, column: 3, scope: !552)
!618 = !DILocation(line: 879, column: 1, scope: !552)
!619 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 82, type: !620, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !61)
!620 = !DISubroutineType(types: !621)
!621 = !{!58, !58, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!623 = !DILocalVariable(name: "argc", arg: 1, scope: !619, file: !10, line: 82, type: !58)
!624 = !DILocation(line: 82, column: 11, scope: !619)
!625 = !DILocalVariable(name: "argv", arg: 2, scope: !619, file: !10, line: 82, type: !622)
!626 = !DILocation(line: 82, column: 24, scope: !619)
!627 = !DILocation(line: 85, column: 21, scope: !619)
!628 = !DILocation(line: 85, column: 3, scope: !619)
!629 = !DILocation(line: 86, column: 3, scope: !619)
!630 = !DILocation(line: 87, column: 3, scope: !619)
!631 = !DILocation(line: 88, column: 3, scope: !619)
!632 = !DILocalVariable(name: "exit_internal_failure", scope: !619, file: !10, line: 94, type: !58)
!633 = !DILocation(line: 94, column: 7, scope: !619)
!634 = !DILocation(line: 94, column: 32, scope: !619)
!635 = !DILocation(line: 96, column: 28, scope: !619)
!636 = !DILocation(line: 96, column: 3, scope: !619)
!637 = !DILocation(line: 97, column: 3, scope: !619)
!638 = !DILocation(line: 99, column: 36, scope: !619)
!639 = !DILocation(line: 99, column: 42, scope: !619)
!640 = !DILocation(line: 100, column: 36, scope: !619)
!641 = !DILocation(line: 100, column: 59, scope: !619)
!642 = !DILocation(line: 99, column: 3, scope: !619)
!643 = !DILocation(line: 103, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !619, file: !10, line: 103, column: 7)
!645 = !DILocation(line: 103, column: 15, scope: !644)
!646 = !DILocation(line: 103, column: 12, scope: !644)
!647 = !DILocation(line: 103, column: 7, scope: !619)
!648 = !DILocation(line: 105, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !10, line: 104, column: 5)
!650 = !DILocation(line: 106, column: 14, scope: !649)
!651 = !DILocation(line: 106, column: 7, scope: !649)
!652 = !DILocalVariable(name: "ignoring_input", scope: !619, file: !10, line: 109, type: !74)
!653 = !DILocation(line: 109, column: 8, scope: !619)
!654 = !DILocation(line: 109, column: 25, scope: !619)
!655 = !DILocalVariable(name: "redirecting_stdout", scope: !619, file: !10, line: 110, type: !74)
!656 = !DILocation(line: 110, column: 8, scope: !619)
!657 = !DILocation(line: 110, column: 29, scope: !619)
!658 = !DILocalVariable(name: "stdout_is_closed", scope: !619, file: !10, line: 111, type: !74)
!659 = !DILocation(line: 111, column: 8, scope: !619)
!660 = !DILocation(line: 111, column: 29, scope: !619)
!661 = !DILocation(line: 111, column: 48, scope: !619)
!662 = !DILocation(line: 111, column: 51, scope: !619)
!663 = !DILocation(line: 111, column: 57, scope: !619)
!664 = !DILocation(line: 0, scope: !619)
!665 = !DILocalVariable(name: "redirecting_stderr", scope: !619, file: !10, line: 112, type: !74)
!666 = !DILocation(line: 112, column: 8, scope: !619)
!667 = !DILocation(line: 112, column: 29, scope: !619)
!668 = !DILocation(line: 117, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !619, file: !10, line: 117, column: 7)
!670 = !DILocation(line: 117, column: 7, scope: !619)
!671 = !DILocation(line: 119, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !10, line: 119, column: 11)
!673 = distinct !DILexicalBlock(scope: !669, file: !10, line: 118, column: 5)
!674 = !DILocation(line: 119, column: 62, scope: !672)
!675 = !DILocation(line: 119, column: 11, scope: !673)
!676 = !DILocation(line: 120, column: 9, scope: !672)
!677 = !DILocalVariable(name: "__errstatus", scope: !678, file: !10, line: 120, type: !679)
!678 = distinct !DILexicalBlock(scope: !672, file: !10, line: 120, column: 9)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!680 = !DILocation(line: 120, column: 9, scope: !678)
!681 = !DILocation(line: 122, column: 12, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !10, line: 122, column: 11)
!683 = !DILocation(line: 122, column: 31, scope: !682)
!684 = !DILocation(line: 122, column: 35, scope: !682)
!685 = !DILocation(line: 122, column: 11, scope: !673)
!686 = !DILocation(line: 123, column: 9, scope: !682)
!687 = !DILocation(line: 124, column: 5, scope: !673)
!688 = !DILocalVariable(name: "out_fd", scope: !619, file: !10, line: 130, type: !58)
!689 = !DILocation(line: 130, column: 7, scope: !619)
!690 = !DILocation(line: 131, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !619, file: !10, line: 131, column: 7)
!692 = !DILocation(line: 131, column: 26, scope: !691)
!693 = !DILocation(line: 131, column: 30, scope: !691)
!694 = !DILocation(line: 131, column: 49, scope: !691)
!695 = !DILocation(line: 131, column: 52, scope: !691)
!696 = !DILocation(line: 131, column: 7, scope: !619)
!697 = !DILocalVariable(name: "in_home", scope: !698, file: !10, line: 133, type: !139)
!698 = distinct !DILexicalBlock(scope: !691, file: !10, line: 132, column: 5)
!699 = !DILocation(line: 133, column: 13, scope: !698)
!700 = !DILocalVariable(name: "file", scope: !698, file: !10, line: 134, type: !6)
!701 = !DILocation(line: 134, column: 19, scope: !698)
!702 = !DILocalVariable(name: "flags", scope: !698, file: !10, line: 135, type: !58)
!703 = !DILocation(line: 135, column: 11, scope: !698)
!704 = !DILocalVariable(name: "mode", scope: !698, file: !10, line: 136, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !706, line: 69, baseType: !707)
!706 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !708, line: 150, baseType: !13)
!708 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!709 = !DILocation(line: 136, column: 14, scope: !698)
!710 = !DILocalVariable(name: "umask_value", scope: !698, file: !10, line: 137, type: !705)
!711 = !DILocation(line: 137, column: 14, scope: !698)
!712 = !DILocation(line: 137, column: 28, scope: !698)
!713 = !DILocation(line: 138, column: 17, scope: !698)
!714 = !DILocation(line: 139, column: 45, scope: !698)
!715 = !DILocation(line: 139, column: 51, scope: !698)
!716 = !DILocation(line: 139, column: 58, scope: !698)
!717 = !DILocation(line: 139, column: 19, scope: !698)
!718 = !DILocation(line: 140, column: 25, scope: !698)
!719 = !DILocation(line: 140, column: 31, scope: !698)
!720 = !DILocation(line: 140, column: 38, scope: !698)
!721 = !DILocation(line: 140, column: 19, scope: !698)
!722 = !DILocation(line: 138, column: 14, scope: !698)
!723 = !DILocation(line: 142, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !698, file: !10, line: 142, column: 11)
!725 = !DILocation(line: 142, column: 18, scope: !724)
!726 = !DILocation(line: 142, column: 11, scope: !698)
!727 = !DILocalVariable(name: "saved_errno", scope: !728, file: !10, line: 144, type: !58)
!728 = distinct !DILexicalBlock(scope: !724, file: !10, line: 143, column: 9)
!729 = !DILocation(line: 144, column: 15, scope: !728)
!730 = !DILocation(line: 144, column: 29, scope: !728)
!731 = !DILocalVariable(name: "home", scope: !728, file: !10, line: 145, type: !6)
!732 = !DILocation(line: 145, column: 23, scope: !728)
!733 = !DILocation(line: 145, column: 30, scope: !728)
!734 = !DILocation(line: 146, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !728, file: !10, line: 146, column: 15)
!736 = !DILocation(line: 146, column: 15, scope: !728)
!737 = !DILocation(line: 148, column: 43, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !10, line: 147, column: 13)
!739 = !DILocation(line: 148, column: 49, scope: !738)
!740 = !DILocation(line: 148, column: 25, scope: !738)
!741 = !DILocation(line: 148, column: 23, scope: !738)
!742 = !DILocation(line: 149, column: 25, scope: !738)
!743 = !DILocation(line: 150, column: 53, scope: !738)
!744 = !DILocation(line: 150, column: 62, scope: !738)
!745 = !DILocation(line: 150, column: 69, scope: !738)
!746 = !DILocation(line: 150, column: 27, scope: !738)
!747 = !DILocation(line: 151, column: 33, scope: !738)
!748 = !DILocation(line: 151, column: 42, scope: !738)
!749 = !DILocation(line: 151, column: 49, scope: !738)
!750 = !DILocation(line: 151, column: 27, scope: !738)
!751 = !DILocation(line: 149, column: 22, scope: !738)
!752 = !DILocation(line: 152, column: 13, scope: !738)
!753 = !DILocation(line: 153, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !728, file: !10, line: 153, column: 15)
!755 = !DILocation(line: 153, column: 22, scope: !754)
!756 = !DILocation(line: 153, column: 15, scope: !728)
!757 = !DILocalVariable(name: "saved_errno2", scope: !758, file: !10, line: 155, type: !58)
!758 = distinct !DILexicalBlock(scope: !754, file: !10, line: 154, column: 13)
!759 = !DILocation(line: 155, column: 19, scope: !758)
!760 = !DILocation(line: 155, column: 34, scope: !758)
!761 = !DILocation(line: 156, column: 15, scope: !758)
!762 = !DILocation(line: 157, column: 19, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !10, line: 157, column: 19)
!764 = !DILocation(line: 157, column: 19, scope: !758)
!765 = !DILocation(line: 158, column: 17, scope: !763)
!766 = !DILocation(line: 160, column: 22, scope: !758)
!767 = !DILocation(line: 160, column: 15, scope: !758)
!768 = !DILocation(line: 162, column: 18, scope: !728)
!769 = !DILocation(line: 162, column: 16, scope: !728)
!770 = !DILocation(line: 163, column: 9, scope: !728)
!771 = !DILocation(line: 165, column: 14, scope: !698)
!772 = !DILocation(line: 165, column: 7, scope: !698)
!773 = !DILocation(line: 166, column: 7, scope: !698)
!774 = !DILocation(line: 171, column: 13, scope: !698)
!775 = !DILocation(line: 171, column: 7, scope: !698)
!776 = !DILocation(line: 172, column: 5, scope: !698)
!777 = !DILocalVariable(name: "saved_stderr_fd", scope: !619, file: !10, line: 175, type: !58)
!778 = !DILocation(line: 175, column: 7, scope: !619)
!779 = !DILocation(line: 176, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !619, file: !10, line: 176, column: 7)
!781 = !DILocation(line: 176, column: 7, scope: !619)
!782 = !DILocation(line: 182, column: 25, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !10, line: 177, column: 5)
!784 = !DILocation(line: 182, column: 23, scope: !783)
!785 = !DILocation(line: 185, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !10, line: 185, column: 11)
!787 = !DILocation(line: 185, column: 11, scope: !783)
!788 = !DILocation(line: 186, column: 9, scope: !786)
!789 = !DILocation(line: 192, column: 17, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !10, line: 192, column: 11)
!791 = !DILocation(line: 192, column: 11, scope: !790)
!792 = !DILocation(line: 192, column: 40, scope: !790)
!793 = !DILocation(line: 192, column: 11, scope: !783)
!794 = !DILocation(line: 193, column: 9, scope: !790)
!795 = !DILocalVariable(name: "__errstatus", scope: !796, file: !10, line: 193, type: !679)
!796 = distinct !DILexicalBlock(scope: !790, file: !10, line: 193, column: 9)
!797 = !DILocation(line: 193, column: 9, scope: !796)
!798 = !DILocation(line: 196, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !783, file: !10, line: 196, column: 11)
!800 = !DILocation(line: 196, column: 11, scope: !783)
!801 = !DILocation(line: 197, column: 16, scope: !799)
!802 = !DILocation(line: 197, column: 9, scope: !799)
!803 = !DILocation(line: 198, column: 5, scope: !783)
!804 = !DILocation(line: 206, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !619, file: !10, line: 206, column: 7)
!806 = !DILocation(line: 206, column: 7, scope: !619)
!807 = !DILocation(line: 207, column: 12, scope: !805)
!808 = !DILocation(line: 207, column: 5, scope: !805)
!809 = !DILocation(line: 209, column: 3, scope: !619)
!810 = !DILocalVariable(name: "cmd", scope: !619, file: !10, line: 211, type: !622)
!811 = !DILocation(line: 211, column: 10, scope: !619)
!812 = !DILocation(line: 211, column: 16, scope: !619)
!813 = !DILocation(line: 211, column: 23, scope: !619)
!814 = !DILocation(line: 211, column: 21, scope: !619)
!815 = !DILocation(line: 212, column: 12, scope: !619)
!816 = !DILocation(line: 212, column: 11, scope: !619)
!817 = !DILocation(line: 212, column: 17, scope: !619)
!818 = !DILocation(line: 212, column: 3, scope: !619)
!819 = !DILocalVariable(name: "exit_status", scope: !619, file: !10, line: 213, type: !58)
!820 = !DILocation(line: 213, column: 7, scope: !619)
!821 = !DILocation(line: 213, column: 21, scope: !619)
!822 = !DILocation(line: 213, column: 27, scope: !619)
!823 = !DILocalVariable(name: "saved_errno", scope: !619, file: !10, line: 214, type: !58)
!824 = !DILocation(line: 214, column: 7, scope: !619)
!825 = !DILocation(line: 214, column: 21, scope: !619)
!826 = !DILocation(line: 222, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !619, file: !10, line: 222, column: 7)
!828 = !DILocation(line: 222, column: 7, scope: !827)
!829 = !DILocation(line: 222, column: 45, scope: !827)
!830 = !DILocation(line: 222, column: 7, scope: !619)
!831 = !DILocation(line: 223, column: 5, scope: !827)
!832 = !DILocation(line: 225, column: 10, scope: !619)
!833 = !DILocation(line: 225, column: 3, scope: !619)
!834 = !DILocation(line: 226, column: 1, scope: !619)
!835 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !3, file: !3, line: 102, type: !56, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !61)
!836 = !DILocalVariable(name: "status", arg: 1, scope: !835, file: !3, line: 102, type: !58)
!837 = !DILocation(line: 102, column: 30, scope: !835)
!838 = !DILocation(line: 104, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 104, column: 7)
!840 = !DILocation(line: 104, column: 14, scope: !839)
!841 = !DILocation(line: 104, column: 7, scope: !835)
!842 = !DILocation(line: 105, column: 20, scope: !839)
!843 = !DILocation(line: 105, column: 18, scope: !839)
!844 = !DILocation(line: 105, column: 5, scope: !839)
!845 = !DILocation(line: 106, column: 1, scope: !835)
!846 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !70, file: !70, line: 50, type: !544, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !61)
!847 = !DILocalVariable(name: "file", arg: 1, scope: !846, file: !70, line: 50, type: !6)
!848 = !DILocation(line: 50, column: 41, scope: !846)
!849 = !DILocation(line: 52, column: 15, scope: !846)
!850 = !DILocation(line: 52, column: 13, scope: !846)
!851 = !DILocation(line: 53, column: 1, scope: !846)
!852 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !70, file: !70, line: 87, type: !853, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !61)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !74}
!855 = !DILocalVariable(name: "ignore", arg: 1, scope: !852, file: !70, line: 87, type: !74)
!856 = !DILocation(line: 87, column: 37, scope: !852)
!857 = !DILocation(line: 89, column: 18, scope: !852)
!858 = !DILocation(line: 89, column: 16, scope: !852)
!859 = !DILocation(line: 90, column: 1, scope: !852)
!860 = distinct !DISubprogram(name: "close_stdout", scope: !70, file: !70, line: 116, type: !107, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !61)
!861 = !DILocation(line: 118, column: 21, scope: !862)
!862 = distinct !DILexicalBlock(scope: !860, file: !70, line: 118, column: 7)
!863 = !DILocation(line: 118, column: 7, scope: !862)
!864 = !DILocation(line: 118, column: 29, scope: !862)
!865 = !DILocation(line: 119, column: 7, scope: !862)
!866 = !DILocation(line: 119, column: 12, scope: !862)
!867 = !DILocation(line: 119, column: 25, scope: !862)
!868 = !DILocation(line: 119, column: 28, scope: !862)
!869 = !DILocation(line: 119, column: 34, scope: !862)
!870 = !DILocation(line: 118, column: 7, scope: !860)
!871 = !DILocalVariable(name: "write_error", scope: !872, file: !70, line: 121, type: !6)
!872 = distinct !DILexicalBlock(scope: !862, file: !70, line: 120, column: 5)
!873 = !DILocation(line: 121, column: 19, scope: !872)
!874 = !DILocation(line: 121, column: 33, scope: !872)
!875 = !DILocation(line: 122, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !70, line: 122, column: 11)
!877 = !DILocation(line: 122, column: 11, scope: !872)
!878 = !DILocation(line: 123, column: 9, scope: !876)
!879 = !DILocation(line: 126, column: 9, scope: !876)
!880 = !DILocation(line: 128, column: 14, scope: !872)
!881 = !DILocation(line: 128, column: 7, scope: !872)
!882 = !DILocation(line: 133, column: 42, scope: !883)
!883 = distinct !DILexicalBlock(scope: !860, file: !70, line: 133, column: 7)
!884 = !DILocation(line: 133, column: 28, scope: !883)
!885 = !DILocation(line: 133, column: 50, scope: !883)
!886 = !DILocation(line: 133, column: 7, scope: !860)
!887 = !DILocation(line: 134, column: 12, scope: !883)
!888 = !DILocation(line: 134, column: 5, scope: !883)
!889 = !DILocation(line: 135, column: 1, scope: !860)
!890 = distinct !DISubprogram(name: "verror", scope: !78, file: !78, line: 251, type: !891, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !61)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !58, !58, !6, !86}
!893 = !DILocalVariable(name: "status", arg: 1, scope: !890, file: !78, line: 251, type: !58)
!894 = !DILocation(line: 251, column: 1, scope: !890)
!895 = !DILocalVariable(name: "errnum", arg: 2, scope: !890, file: !78, line: 251, type: !58)
!896 = !DILocalVariable(name: "message", arg: 3, scope: !890, file: !78, line: 251, type: !6)
!897 = !DILocalVariable(name: "args", arg: 4, scope: !890, file: !78, line: 251, type: !86)
!898 = !DILocation(line: 261, column: 3, scope: !890)
!899 = !DILocation(line: 265, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !890, file: !78, line: 265, column: 7)
!901 = !DILocation(line: 265, column: 7, scope: !890)
!902 = !DILocation(line: 266, column: 7, scope: !900)
!903 = !DILocation(line: 266, column: 5, scope: !900)
!904 = !DILocation(line: 272, column: 16, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !78, line: 268, column: 5)
!906 = !DILocation(line: 272, column: 32, scope: !905)
!907 = !DILocation(line: 272, column: 7, scope: !905)
!908 = !DILocation(line: 276, column: 3, scope: !890)
!909 = !DILocation(line: 282, column: 1, scope: !890)
!910 = distinct !DISubprogram(name: "flush_stdout", scope: !78, file: !78, line: 163, type: !107, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !61)
!911 = !DILocalVariable(name: "stdout_fd", scope: !910, file: !78, line: 166, type: !58)
!912 = !DILocation(line: 166, column: 7, scope: !910)
!913 = !DILocation(line: 172, column: 13, scope: !910)
!914 = !DILocation(line: 182, column: 12, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !78, line: 182, column: 7)
!916 = !DILocation(line: 182, column: 9, scope: !915)
!917 = !DILocation(line: 182, column: 22, scope: !915)
!918 = !DILocation(line: 182, column: 34, scope: !915)
!919 = !DILocation(line: 182, column: 25, scope: !915)
!920 = !DILocation(line: 182, column: 7, scope: !910)
!921 = !DILocation(line: 184, column: 5, scope: !915)
!922 = !DILocation(line: 185, column: 1, scope: !910)
!923 = distinct !DISubprogram(name: "error_tail", scope: !78, file: !78, line: 219, type: !891, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !61)
!924 = !DILocalVariable(name: "status", arg: 1, scope: !923, file: !78, line: 219, type: !58)
!925 = !DILocation(line: 219, column: 1, scope: !923)
!926 = !DILocalVariable(name: "errnum", arg: 2, scope: !923, file: !78, line: 219, type: !58)
!927 = !DILocalVariable(name: "message", arg: 3, scope: !923, file: !78, line: 219, type: !6)
!928 = !DILocalVariable(name: "args", arg: 4, scope: !923, file: !78, line: 219, type: !86)
!929 = !DILocation(line: 229, column: 13, scope: !923)
!930 = !DILocation(line: 229, column: 21, scope: !923)
!931 = !DILocation(line: 229, column: 3, scope: !923)
!932 = !DILocation(line: 232, column: 3, scope: !923)
!933 = !DILocation(line: 233, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !923, file: !78, line: 233, column: 7)
!935 = !DILocation(line: 233, column: 7, scope: !923)
!936 = !DILocation(line: 234, column: 26, scope: !934)
!937 = !DILocation(line: 234, column: 5, scope: !934)
!938 = !DILocation(line: 238, column: 3, scope: !923)
!939 = !DILocation(line: 240, column: 3, scope: !923)
!940 = !DILocation(line: 241, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !923, file: !78, line: 241, column: 7)
!942 = !DILocation(line: 241, column: 7, scope: !923)
!943 = !DILocation(line: 242, column: 11, scope: !941)
!944 = !DILocation(line: 242, column: 5, scope: !941)
!945 = !DILocation(line: 243, column: 1, scope: !923)
!946 = distinct !DISubprogram(name: "print_errno_message", scope: !78, file: !78, line: 188, type: !56, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !61)
!947 = !DILocalVariable(name: "errnum", arg: 1, scope: !946, file: !78, line: 188, type: !58)
!948 = !DILocation(line: 188, column: 26, scope: !946)
!949 = !DILocalVariable(name: "s", scope: !946, file: !78, line: 190, type: !6)
!950 = !DILocation(line: 190, column: 15, scope: !946)
!951 = !DILocalVariable(name: "errbuf", scope: !946, file: !78, line: 193, type: !952)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 1024)
!955 = !DILocation(line: 193, column: 8, scope: !946)
!956 = !DILocation(line: 195, column: 21, scope: !946)
!957 = !DILocation(line: 195, column: 29, scope: !946)
!958 = !DILocation(line: 195, column: 7, scope: !946)
!959 = !DILocation(line: 195, column: 5, scope: !946)
!960 = !DILocation(line: 207, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !946, file: !78, line: 207, column: 7)
!962 = !DILocation(line: 207, column: 7, scope: !946)
!963 = !DILocation(line: 208, column: 9, scope: !961)
!964 = !DILocation(line: 208, column: 7, scope: !961)
!965 = !DILocation(line: 208, column: 5, scope: !961)
!966 = !DILocation(line: 214, column: 12, scope: !946)
!967 = !DILocation(line: 214, column: 28, scope: !946)
!968 = !DILocation(line: 214, column: 3, scope: !946)
!969 = !DILocation(line: 216, column: 1, scope: !946)
!970 = distinct !DISubprogram(name: "is_open", scope: !78, file: !78, line: 145, type: !971, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !61)
!971 = !DISubroutineType(types: !972)
!972 = !{!58, !58}
!973 = !DILocalVariable(name: "fd", arg: 1, scope: !970, file: !78, line: 145, type: !58)
!974 = !DILocation(line: 145, column: 14, scope: !970)
!975 = !DILocation(line: 157, column: 22, scope: !970)
!976 = !DILocation(line: 157, column: 15, scope: !970)
!977 = !DILocation(line: 157, column: 12, scope: !970)
!978 = !DILocation(line: 157, column: 3, scope: !970)
!979 = distinct !DISubprogram(name: "error", scope: !78, file: !78, line: 285, type: !980, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !61)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !58, !58, !6, null}
!982 = !DILocalVariable(name: "status", arg: 1, scope: !979, file: !78, line: 285, type: !58)
!983 = !DILocation(line: 285, column: 12, scope: !979)
!984 = !DILocalVariable(name: "errnum", arg: 2, scope: !979, file: !78, line: 285, type: !58)
!985 = !DILocation(line: 285, column: 24, scope: !979)
!986 = !DILocalVariable(name: "message", arg: 3, scope: !979, file: !78, line: 285, type: !6)
!987 = !DILocation(line: 285, column: 44, scope: !979)
!988 = !DILocalVariable(name: "ap", scope: !979, file: !78, line: 287, type: !86)
!989 = !DILocation(line: 287, column: 11, scope: !979)
!990 = !DILocation(line: 288, column: 3, scope: !979)
!991 = !DILocation(line: 289, column: 3, scope: !979)
!992 = !DILocation(line: 290, column: 3, scope: !979)
!993 = !DILocation(line: 291, column: 1, scope: !979)
!994 = !DILocalVariable(name: "status", arg: 1, scope: !83, file: !78, line: 298, type: !58)
!995 = !DILocation(line: 298, column: 1, scope: !83)
!996 = !DILocalVariable(name: "errnum", arg: 2, scope: !83, file: !78, line: 298, type: !58)
!997 = !DILocalVariable(name: "file_name", arg: 3, scope: !83, file: !78, line: 298, type: !6)
!998 = !DILocalVariable(name: "line_number", arg: 4, scope: !83, file: !78, line: 298, type: !13)
!999 = !DILocalVariable(name: "message", arg: 5, scope: !83, file: !78, line: 298, type: !6)
!1000 = !DILocalVariable(name: "args", arg: 6, scope: !83, file: !78, line: 298, type: !86)
!1001 = !DILocation(line: 302, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !83, file: !78, line: 302, column: 7)
!1003 = !DILocation(line: 302, column: 7, scope: !83)
!1004 = !DILocation(line: 307, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !78, line: 307, column: 11)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !78, line: 303, column: 5)
!1007 = !DILocation(line: 307, column: 30, scope: !1005)
!1008 = !DILocation(line: 307, column: 27, scope: !1005)
!1009 = !DILocation(line: 308, column: 11, scope: !1005)
!1010 = !DILocation(line: 308, column: 15, scope: !1005)
!1011 = !DILocation(line: 308, column: 28, scope: !1005)
!1012 = !DILocation(line: 308, column: 25, scope: !1005)
!1013 = !DILocation(line: 309, column: 15, scope: !1005)
!1014 = !DILocation(line: 309, column: 19, scope: !1005)
!1015 = !DILocation(line: 309, column: 33, scope: !1005)
!1016 = !DILocation(line: 310, column: 19, scope: !1005)
!1017 = !DILocation(line: 310, column: 22, scope: !1005)
!1018 = !DILocation(line: 310, column: 32, scope: !1005)
!1019 = !DILocation(line: 311, column: 19, scope: !1005)
!1020 = !DILocation(line: 311, column: 30, scope: !1005)
!1021 = !DILocation(line: 311, column: 45, scope: !1005)
!1022 = !DILocation(line: 311, column: 22, scope: !1005)
!1023 = !DILocation(line: 311, column: 56, scope: !1005)
!1024 = !DILocation(line: 307, column: 11, scope: !1006)
!1025 = !DILocation(line: 314, column: 9, scope: !1005)
!1026 = !DILocation(line: 316, column: 23, scope: !1006)
!1027 = !DILocation(line: 316, column: 21, scope: !1006)
!1028 = !DILocation(line: 317, column: 25, scope: !1006)
!1029 = !DILocation(line: 317, column: 23, scope: !1006)
!1030 = !DILocation(line: 318, column: 5, scope: !1006)
!1031 = !DILocation(line: 327, column: 3, scope: !83)
!1032 = !DILocation(line: 331, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !83, file: !78, line: 331, column: 7)
!1034 = !DILocation(line: 331, column: 7, scope: !83)
!1035 = !DILocation(line: 332, column: 7, scope: !1033)
!1036 = !DILocation(line: 332, column: 5, scope: !1033)
!1037 = !DILocation(line: 338, column: 16, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !78, line: 334, column: 5)
!1039 = !DILocation(line: 338, column: 31, scope: !1038)
!1040 = !DILocation(line: 338, column: 7, scope: !1038)
!1041 = !DILocation(line: 346, column: 12, scope: !83)
!1042 = !DILocation(line: 346, column: 20, scope: !83)
!1043 = !DILocation(line: 346, column: 30, scope: !83)
!1044 = !DILocation(line: 347, column: 12, scope: !83)
!1045 = !DILocation(line: 347, column: 23, scope: !83)
!1046 = !DILocation(line: 346, column: 3, scope: !83)
!1047 = !DILocation(line: 350, column: 3, scope: !83)
!1048 = !DILocation(line: 356, column: 1, scope: !83)
!1049 = distinct !DISubprogram(name: "error_at_line", scope: !78, file: !78, line: 359, type: !1050, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !61)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !58, !58, !6, !13, !6, null}
!1052 = !DILocalVariable(name: "status", arg: 1, scope: !1049, file: !78, line: 359, type: !58)
!1053 = !DILocation(line: 359, column: 20, scope: !1049)
!1054 = !DILocalVariable(name: "errnum", arg: 2, scope: !1049, file: !78, line: 359, type: !58)
!1055 = !DILocation(line: 359, column: 32, scope: !1049)
!1056 = !DILocalVariable(name: "file_name", arg: 3, scope: !1049, file: !78, line: 359, type: !6)
!1057 = !DILocation(line: 359, column: 52, scope: !1049)
!1058 = !DILocalVariable(name: "line_number", arg: 4, scope: !1049, file: !78, line: 360, type: !13)
!1059 = !DILocation(line: 360, column: 29, scope: !1049)
!1060 = !DILocalVariable(name: "message", arg: 5, scope: !1049, file: !78, line: 360, type: !6)
!1061 = !DILocation(line: 360, column: 54, scope: !1049)
!1062 = !DILocalVariable(name: "ap", scope: !1049, file: !78, line: 362, type: !86)
!1063 = !DILocation(line: 362, column: 11, scope: !1049)
!1064 = !DILocation(line: 363, column: 3, scope: !1049)
!1065 = !DILocation(line: 364, column: 3, scope: !1049)
!1066 = !DILocation(line: 366, column: 3, scope: !1049)
!1067 = !DILocation(line: 367, column: 1, scope: !1049)
!1068 = distinct !DISubprogram(name: "rpl_fcntl", scope: !112, file: !112, line: 202, type: !1069, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !61)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!58, !58, !58, null}
!1071 = !DILocalVariable(name: "fd", arg: 1, scope: !1068, file: !112, line: 202, type: !58)
!1072 = !DILocation(line: 202, column: 12, scope: !1068)
!1073 = !DILocalVariable(name: "action", arg: 2, scope: !1068, file: !112, line: 202, type: !58)
!1074 = !DILocation(line: 202, column: 20, scope: !1068)
!1075 = !DILocalVariable(name: "arg", scope: !1068, file: !112, line: 208, type: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !89, line: 14, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1078, baseType: !1079)
!1078 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1079, file: !1078, line: 208, baseType: !52, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1079, file: !1078, line: 208, baseType: !52, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1079, file: !1078, line: 208, baseType: !52, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1079, file: !1078, line: 208, baseType: !58, size: 32, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1079, file: !1078, line: 208, baseType: !58, size: 32, offset: 224)
!1086 = !DILocation(line: 208, column: 11, scope: !1068)
!1087 = !DILocation(line: 209, column: 3, scope: !1068)
!1088 = !DILocalVariable(name: "result", scope: !1068, file: !112, line: 211, type: !58)
!1089 = !DILocation(line: 211, column: 7, scope: !1068)
!1090 = !DILocation(line: 212, column: 11, scope: !1068)
!1091 = !DILocation(line: 212, column: 3, scope: !1068)
!1092 = !DILocalVariable(name: "target", scope: !1093, file: !112, line: 216, type: !58)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !112, line: 215, column: 7)
!1094 = distinct !DILexicalBlock(scope: !1068, file: !112, line: 213, column: 5)
!1095 = !DILocation(line: 216, column: 13, scope: !1093)
!1096 = !DILocation(line: 216, column: 22, scope: !1093)
!1097 = !DILocation(line: 217, column: 35, scope: !1093)
!1098 = !DILocation(line: 217, column: 39, scope: !1093)
!1099 = !DILocation(line: 217, column: 18, scope: !1093)
!1100 = !DILocation(line: 217, column: 16, scope: !1093)
!1101 = !DILocation(line: 218, column: 9, scope: !1093)
!1102 = !DILocalVariable(name: "target", scope: !1103, file: !112, line: 223, type: !58)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !112, line: 222, column: 7)
!1104 = !DILocation(line: 223, column: 13, scope: !1103)
!1105 = !DILocation(line: 223, column: 22, scope: !1103)
!1106 = !DILocation(line: 224, column: 43, scope: !1103)
!1107 = !DILocation(line: 224, column: 47, scope: !1103)
!1108 = !DILocation(line: 224, column: 18, scope: !1103)
!1109 = !DILocation(line: 224, column: 16, scope: !1103)
!1110 = !DILocation(line: 225, column: 9, scope: !1103)
!1111 = !DILocation(line: 260, column: 17, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1094, file: !112, line: 258, column: 7)
!1113 = !DILocation(line: 260, column: 9, scope: !1112)
!1114 = !DILocation(line: 329, column: 29, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !112, line: 261, column: 11)
!1116 = !DILocation(line: 329, column: 33, scope: !1115)
!1117 = !DILocation(line: 329, column: 22, scope: !1115)
!1118 = !DILocation(line: 329, column: 20, scope: !1115)
!1119 = !DILocation(line: 330, column: 13, scope: !1115)
!1120 = !DILocalVariable(name: "x", scope: !1121, file: !112, line: 418, type: !58)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !112, line: 417, column: 13)
!1122 = !DILocation(line: 418, column: 19, scope: !1121)
!1123 = !DILocation(line: 418, column: 23, scope: !1121)
!1124 = !DILocation(line: 419, column: 31, scope: !1121)
!1125 = !DILocation(line: 419, column: 35, scope: !1121)
!1126 = !DILocation(line: 419, column: 43, scope: !1121)
!1127 = !DILocation(line: 419, column: 24, scope: !1121)
!1128 = !DILocation(line: 419, column: 22, scope: !1121)
!1129 = !DILocation(line: 421, column: 13, scope: !1115)
!1130 = !DILocalVariable(name: "p", scope: !1131, file: !112, line: 426, type: !52)
!1131 = distinct !DILexicalBlock(scope: !1115, file: !112, line: 425, column: 13)
!1132 = !DILocation(line: 426, column: 21, scope: !1131)
!1133 = !DILocation(line: 426, column: 25, scope: !1131)
!1134 = !DILocation(line: 427, column: 31, scope: !1131)
!1135 = !DILocation(line: 427, column: 35, scope: !1131)
!1136 = !DILocation(line: 427, column: 43, scope: !1131)
!1137 = !DILocation(line: 427, column: 24, scope: !1131)
!1138 = !DILocation(line: 427, column: 22, scope: !1131)
!1139 = !DILocation(line: 429, column: 13, scope: !1115)
!1140 = !DILocation(line: 434, column: 9, scope: !1112)
!1141 = !DILocation(line: 438, column: 3, scope: !1068)
!1142 = !DILocation(line: 440, column: 10, scope: !1068)
!1143 = !DILocation(line: 440, column: 3, scope: !1068)
!1144 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !112, file: !112, line: 444, type: !113, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !61)
!1145 = !DILocalVariable(name: "fd", arg: 1, scope: !1144, file: !112, line: 444, type: !58)
!1146 = !DILocation(line: 444, column: 22, scope: !1144)
!1147 = !DILocalVariable(name: "target", arg: 2, scope: !1144, file: !112, line: 444, type: !58)
!1148 = !DILocation(line: 444, column: 30, scope: !1144)
!1149 = !DILocalVariable(name: "result", scope: !1144, file: !112, line: 446, type: !58)
!1150 = !DILocation(line: 446, column: 7, scope: !1144)
!1151 = !DILocation(line: 479, column: 19, scope: !1144)
!1152 = !DILocation(line: 479, column: 32, scope: !1144)
!1153 = !DILocation(line: 479, column: 12, scope: !1144)
!1154 = !DILocation(line: 479, column: 10, scope: !1144)
!1155 = !DILocation(line: 481, column: 10, scope: !1144)
!1156 = !DILocation(line: 481, column: 3, scope: !1144)
!1157 = !DILocalVariable(name: "fd", arg: 1, scope: !111, file: !112, line: 485, type: !58)
!1158 = !DILocation(line: 485, column: 30, scope: !111)
!1159 = !DILocalVariable(name: "target", arg: 2, scope: !111, file: !112, line: 485, type: !58)
!1160 = !DILocation(line: 485, column: 38, scope: !111)
!1161 = !DILocalVariable(name: "result", scope: !111, file: !112, line: 487, type: !58)
!1162 = !DILocation(line: 487, column: 7, scope: !111)
!1163 = !DILocation(line: 507, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !111, file: !112, line: 507, column: 7)
!1165 = !DILocation(line: 507, column: 9, scope: !1164)
!1166 = !DILocation(line: 507, column: 7, scope: !111)
!1167 = !DILocation(line: 509, column: 23, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !112, line: 508, column: 5)
!1169 = !DILocation(line: 509, column: 44, scope: !1168)
!1170 = !DILocation(line: 509, column: 16, scope: !1168)
!1171 = !DILocation(line: 509, column: 14, scope: !1168)
!1172 = !DILocation(line: 510, column: 16, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !112, line: 510, column: 11)
!1174 = !DILocation(line: 510, column: 13, scope: !1173)
!1175 = !DILocation(line: 510, column: 23, scope: !1173)
!1176 = !DILocation(line: 510, column: 26, scope: !1173)
!1177 = !DILocation(line: 510, column: 32, scope: !1173)
!1178 = !DILocation(line: 510, column: 11, scope: !1168)
!1179 = !DILocation(line: 512, column: 30, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1173, file: !112, line: 511, column: 9)
!1181 = !DILocation(line: 517, column: 9, scope: !1180)
!1182 = !DILocation(line: 520, column: 37, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1173, file: !112, line: 519, column: 9)
!1184 = !DILocation(line: 520, column: 41, scope: !1183)
!1185 = !DILocation(line: 520, column: 20, scope: !1183)
!1186 = !DILocation(line: 520, column: 18, scope: !1183)
!1187 = !DILocation(line: 521, column: 15, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !112, line: 521, column: 15)
!1189 = !DILocation(line: 521, column: 22, scope: !1188)
!1190 = !DILocation(line: 521, column: 15, scope: !1183)
!1191 = !DILocation(line: 522, column: 32, scope: !1188)
!1192 = !DILocation(line: 522, column: 13, scope: !1188)
!1193 = !DILocation(line: 524, column: 5, scope: !1168)
!1194 = !DILocation(line: 527, column: 31, scope: !1164)
!1195 = !DILocation(line: 527, column: 35, scope: !1164)
!1196 = !DILocation(line: 527, column: 14, scope: !1164)
!1197 = !DILocation(line: 527, column: 12, scope: !1164)
!1198 = !DILocation(line: 528, column: 12, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !111, file: !112, line: 528, column: 7)
!1200 = !DILocation(line: 528, column: 9, scope: !1199)
!1201 = !DILocation(line: 528, column: 19, scope: !1199)
!1202 = !DILocation(line: 528, column: 22, scope: !1199)
!1203 = !DILocation(line: 528, column: 41, scope: !1199)
!1204 = !DILocation(line: 528, column: 7, scope: !111)
!1205 = !DILocalVariable(name: "flags", scope: !1206, file: !112, line: 530, type: !58)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !112, line: 529, column: 5)
!1207 = !DILocation(line: 530, column: 11, scope: !1206)
!1208 = !DILocation(line: 530, column: 26, scope: !1206)
!1209 = !DILocation(line: 530, column: 19, scope: !1206)
!1210 = !DILocation(line: 531, column: 11, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !112, line: 531, column: 11)
!1212 = !DILocation(line: 531, column: 17, scope: !1211)
!1213 = !DILocation(line: 531, column: 21, scope: !1211)
!1214 = !DILocation(line: 531, column: 31, scope: !1211)
!1215 = !DILocation(line: 531, column: 48, scope: !1211)
!1216 = !DILocation(line: 531, column: 54, scope: !1211)
!1217 = !DILocation(line: 531, column: 24, scope: !1211)
!1218 = !DILocation(line: 531, column: 68, scope: !1211)
!1219 = !DILocation(line: 531, column: 11, scope: !1206)
!1220 = !DILocalVariable(name: "saved_errno", scope: !1221, file: !112, line: 533, type: !58)
!1221 = distinct !DILexicalBlock(scope: !1211, file: !112, line: 532, column: 9)
!1222 = !DILocation(line: 533, column: 15, scope: !1221)
!1223 = !DILocation(line: 533, column: 29, scope: !1221)
!1224 = !DILocation(line: 534, column: 18, scope: !1221)
!1225 = !DILocation(line: 534, column: 11, scope: !1221)
!1226 = !DILocation(line: 535, column: 19, scope: !1221)
!1227 = !DILocation(line: 535, column: 11, scope: !1221)
!1228 = !DILocation(line: 535, column: 17, scope: !1221)
!1229 = !DILocation(line: 536, column: 18, scope: !1221)
!1230 = !DILocation(line: 537, column: 9, scope: !1221)
!1231 = !DILocation(line: 538, column: 5, scope: !1206)
!1232 = !DILocation(line: 540, column: 10, scope: !111)
!1233 = !DILocation(line: 540, column: 3, scope: !111)
!1234 = distinct !DISubprogram(name: "fd_reopen", scope: !251, file: !251, line: 32, type: !1235, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !61)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!58, !58, !6, !58, !705}
!1237 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1234, file: !251, line: 32, type: !58)
!1238 = !DILocation(line: 32, column: 16, scope: !1234)
!1239 = !DILocalVariable(name: "file", arg: 2, scope: !1234, file: !251, line: 32, type: !6)
!1240 = !DILocation(line: 32, column: 40, scope: !1234)
!1241 = !DILocalVariable(name: "flags", arg: 3, scope: !1234, file: !251, line: 32, type: !58)
!1242 = !DILocation(line: 32, column: 50, scope: !1234)
!1243 = !DILocalVariable(name: "mode", arg: 4, scope: !1234, file: !251, line: 32, type: !705)
!1244 = !DILocation(line: 32, column: 64, scope: !1234)
!1245 = !DILocalVariable(name: "fd", scope: !1234, file: !251, line: 34, type: !58)
!1246 = !DILocation(line: 34, column: 7, scope: !1234)
!1247 = !DILocation(line: 34, column: 18, scope: !1234)
!1248 = !DILocation(line: 34, column: 24, scope: !1234)
!1249 = !DILocation(line: 34, column: 31, scope: !1234)
!1250 = !DILocation(line: 34, column: 12, scope: !1234)
!1251 = !DILocation(line: 36, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1234, file: !251, line: 36, column: 7)
!1253 = !DILocation(line: 36, column: 13, scope: !1252)
!1254 = !DILocation(line: 36, column: 10, scope: !1252)
!1255 = !DILocation(line: 36, column: 24, scope: !1252)
!1256 = !DILocation(line: 36, column: 27, scope: !1252)
!1257 = !DILocation(line: 36, column: 30, scope: !1252)
!1258 = !DILocation(line: 36, column: 7, scope: !1234)
!1259 = !DILocation(line: 37, column: 12, scope: !1252)
!1260 = !DILocation(line: 37, column: 5, scope: !1252)
!1261 = !DILocalVariable(name: "fd2", scope: !1262, file: !251, line: 40, type: !58)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !251, line: 39, column: 5)
!1263 = !DILocation(line: 40, column: 11, scope: !1262)
!1264 = !DILocation(line: 40, column: 23, scope: !1262)
!1265 = !DILocation(line: 40, column: 27, scope: !1262)
!1266 = !DILocation(line: 40, column: 17, scope: !1262)
!1267 = !DILocalVariable(name: "saved_errno", scope: !1262, file: !251, line: 41, type: !58)
!1268 = !DILocation(line: 41, column: 11, scope: !1262)
!1269 = !DILocation(line: 41, column: 25, scope: !1262)
!1270 = !DILocation(line: 42, column: 14, scope: !1262)
!1271 = !DILocation(line: 42, column: 7, scope: !1262)
!1272 = !DILocation(line: 43, column: 15, scope: !1262)
!1273 = !DILocation(line: 43, column: 7, scope: !1262)
!1274 = !DILocation(line: 43, column: 13, scope: !1262)
!1275 = !DILocation(line: 44, column: 14, scope: !1262)
!1276 = !DILocation(line: 44, column: 7, scope: !1262)
!1277 = !DILocation(line: 46, column: 1, scope: !1234)
!1278 = distinct !DISubprogram(name: "file_name_concat", scope: !253, file: !253, line: 35, type: !1279, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !61)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!139, !6, !6, !622}
!1281 = !DILocalVariable(name: "dir", arg: 1, scope: !1278, file: !253, line: 35, type: !6)
!1282 = !DILocation(line: 35, column: 31, scope: !1278)
!1283 = !DILocalVariable(name: "base", arg: 2, scope: !1278, file: !253, line: 35, type: !6)
!1284 = !DILocation(line: 35, column: 48, scope: !1278)
!1285 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1278, file: !253, line: 35, type: !622)
!1286 = !DILocation(line: 35, column: 61, scope: !1278)
!1287 = !DILocalVariable(name: "p", scope: !1278, file: !253, line: 37, type: !139)
!1288 = !DILocation(line: 37, column: 9, scope: !1278)
!1289 = !DILocation(line: 37, column: 32, scope: !1278)
!1290 = !DILocation(line: 37, column: 37, scope: !1278)
!1291 = !DILocation(line: 37, column: 43, scope: !1278)
!1292 = !DILocation(line: 37, column: 13, scope: !1278)
!1293 = !DILocation(line: 38, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1278, file: !253, line: 38, column: 7)
!1295 = !DILocation(line: 38, column: 9, scope: !1294)
!1296 = !DILocation(line: 38, column: 7, scope: !1278)
!1297 = !DILocation(line: 39, column: 5, scope: !1294)
!1298 = !DILocation(line: 40, column: 10, scope: !1278)
!1299 = !DILocation(line: 40, column: 3, scope: !1278)
!1300 = distinct !DISubprogram(name: "mfile_name_concat", scope: !255, file: !255, line: 48, type: !1279, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !254, retainedNodes: !61)
!1301 = !DILocalVariable(name: "dir", arg: 1, scope: !1300, file: !255, line: 48, type: !6)
!1302 = !DILocation(line: 48, column: 32, scope: !1300)
!1303 = !DILocalVariable(name: "base", arg: 2, scope: !1300, file: !255, line: 48, type: !6)
!1304 = !DILocation(line: 48, column: 49, scope: !1300)
!1305 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1300, file: !255, line: 48, type: !622)
!1306 = !DILocation(line: 48, column: 62, scope: !1300)
!1307 = !DILocalVariable(name: "dirbase", scope: !1300, file: !255, line: 50, type: !6)
!1308 = !DILocation(line: 50, column: 15, scope: !1300)
!1309 = !DILocation(line: 50, column: 41, scope: !1300)
!1310 = !DILocation(line: 50, column: 25, scope: !1300)
!1311 = !DILocalVariable(name: "dirbaselen", scope: !1300, file: !255, line: 51, type: !163)
!1312 = !DILocation(line: 51, column: 10, scope: !1300)
!1313 = !DILocation(line: 51, column: 33, scope: !1300)
!1314 = !DILocation(line: 51, column: 23, scope: !1300)
!1315 = !DILocalVariable(name: "dirlen", scope: !1300, file: !255, line: 52, type: !163)
!1316 = !DILocation(line: 52, column: 10, scope: !1300)
!1317 = !DILocation(line: 52, column: 19, scope: !1300)
!1318 = !DILocation(line: 52, column: 29, scope: !1300)
!1319 = !DILocation(line: 52, column: 27, scope: !1300)
!1320 = !DILocation(line: 52, column: 35, scope: !1300)
!1321 = !DILocation(line: 52, column: 33, scope: !1300)
!1322 = !DILocalVariable(name: "baselen", scope: !1300, file: !255, line: 53, type: !163)
!1323 = !DILocation(line: 53, column: 10, scope: !1300)
!1324 = !DILocation(line: 53, column: 28, scope: !1300)
!1325 = !DILocation(line: 53, column: 20, scope: !1300)
!1326 = !DILocalVariable(name: "sep", scope: !1300, file: !255, line: 54, type: !8)
!1327 = !DILocation(line: 54, column: 8, scope: !1300)
!1328 = !DILocation(line: 55, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1300, file: !255, line: 55, column: 7)
!1330 = !DILocation(line: 55, column: 7, scope: !1300)
!1331 = !DILocation(line: 58, column: 13, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !255, line: 58, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !255, line: 56, column: 5)
!1334 = !DILocation(line: 58, column: 39, scope: !1332)
!1335 = !DILocation(line: 58, column: 44, scope: !1332)
!1336 = !DILocation(line: 58, column: 11, scope: !1333)
!1337 = !DILocation(line: 59, column: 13, scope: !1332)
!1338 = !DILocation(line: 59, column: 9, scope: !1332)
!1339 = !DILocation(line: 60, column: 5, scope: !1333)
!1340 = !DILocation(line: 61, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1329, file: !255, line: 61, column: 12)
!1342 = !DILocation(line: 61, column: 12, scope: !1329)
!1343 = !DILocation(line: 68, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !255, line: 62, column: 5)
!1345 = !DILocation(line: 69, column: 5, scope: !1344)
!1346 = !DILocalVariable(name: "p_concat", scope: !1300, file: !255, line: 71, type: !139)
!1347 = !DILocation(line: 71, column: 9, scope: !1300)
!1348 = !DILocation(line: 71, column: 28, scope: !1300)
!1349 = !DILocation(line: 71, column: 38, scope: !1300)
!1350 = !DILocation(line: 71, column: 42, scope: !1300)
!1351 = !DILocation(line: 71, column: 37, scope: !1300)
!1352 = !DILocation(line: 71, column: 35, scope: !1300)
!1353 = !DILocation(line: 71, column: 54, scope: !1300)
!1354 = !DILocation(line: 71, column: 52, scope: !1300)
!1355 = !DILocation(line: 71, column: 62, scope: !1300)
!1356 = !DILocation(line: 71, column: 20, scope: !1300)
!1357 = !DILocation(line: 72, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1300, file: !255, line: 72, column: 7)
!1359 = !DILocation(line: 72, column: 16, scope: !1358)
!1360 = !DILocation(line: 72, column: 7, scope: !1300)
!1361 = !DILocation(line: 73, column: 5, scope: !1358)
!1362 = !DILocalVariable(name: "p", scope: !1363, file: !255, line: 76, type: !139)
!1363 = distinct !DILexicalBlock(scope: !1300, file: !255, line: 75, column: 3)
!1364 = !DILocation(line: 76, column: 11, scope: !1363)
!1365 = !DILocation(line: 78, column: 18, scope: !1363)
!1366 = !DILocation(line: 78, column: 28, scope: !1363)
!1367 = !DILocation(line: 78, column: 33, scope: !1363)
!1368 = !DILocation(line: 78, column: 9, scope: !1363)
!1369 = !DILocation(line: 78, column: 7, scope: !1363)
!1370 = !DILocation(line: 79, column: 10, scope: !1363)
!1371 = !DILocation(line: 79, column: 6, scope: !1363)
!1372 = !DILocation(line: 79, column: 8, scope: !1363)
!1373 = !DILocation(line: 80, column: 10, scope: !1363)
!1374 = !DILocation(line: 80, column: 14, scope: !1363)
!1375 = !DILocation(line: 80, column: 7, scope: !1363)
!1376 = !DILocation(line: 82, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1363, file: !255, line: 82, column: 9)
!1378 = !DILocation(line: 82, column: 9, scope: !1363)
!1379 = !DILocation(line: 83, column: 25, scope: !1377)
!1380 = !DILocation(line: 83, column: 8, scope: !1377)
!1381 = !DILocation(line: 83, column: 23, scope: !1377)
!1382 = !DILocation(line: 83, column: 7, scope: !1377)
!1383 = !DILocation(line: 85, column: 18, scope: !1363)
!1384 = !DILocation(line: 85, column: 21, scope: !1363)
!1385 = !DILocation(line: 85, column: 27, scope: !1363)
!1386 = !DILocation(line: 85, column: 9, scope: !1363)
!1387 = !DILocation(line: 85, column: 7, scope: !1363)
!1388 = !DILocation(line: 86, column: 6, scope: !1363)
!1389 = !DILocation(line: 86, column: 8, scope: !1363)
!1390 = !DILocation(line: 89, column: 10, scope: !1300)
!1391 = !DILocation(line: 89, column: 3, scope: !1300)
!1392 = !DILocation(line: 90, column: 1, scope: !1300)
!1393 = distinct !DISubprogram(name: "getprogname", scope: !257, file: !257, line: 54, type: !1394, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !61)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!6}
!1396 = !DILocation(line: 58, column: 10, scope: !1393)
!1397 = !DILocation(line: 58, column: 3, scope: !1393)
!1398 = distinct !DISubprogram(name: "parse_long_options", scope: !120, file: !120, line: 45, type: !1399, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !61)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{null, !58, !622, !6, !6, !6, !55, null}
!1401 = !DILocalVariable(name: "argc", arg: 1, scope: !1398, file: !120, line: 45, type: !58)
!1402 = !DILocation(line: 45, column: 25, scope: !1398)
!1403 = !DILocalVariable(name: "argv", arg: 2, scope: !1398, file: !120, line: 46, type: !622)
!1404 = !DILocation(line: 46, column: 28, scope: !1398)
!1405 = !DILocalVariable(name: "command_name", arg: 3, scope: !1398, file: !120, line: 47, type: !6)
!1406 = !DILocation(line: 47, column: 33, scope: !1398)
!1407 = !DILocalVariable(name: "package", arg: 4, scope: !1398, file: !120, line: 48, type: !6)
!1408 = !DILocation(line: 48, column: 33, scope: !1398)
!1409 = !DILocalVariable(name: "version", arg: 5, scope: !1398, file: !120, line: 49, type: !6)
!1410 = !DILocation(line: 49, column: 33, scope: !1398)
!1411 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1398, file: !120, line: 50, type: !55)
!1412 = !DILocation(line: 50, column: 28, scope: !1398)
!1413 = !DILocalVariable(name: "saved_opterr", scope: !1398, file: !120, line: 53, type: !58)
!1414 = !DILocation(line: 53, column: 7, scope: !1398)
!1415 = !DILocation(line: 53, column: 22, scope: !1398)
!1416 = !DILocation(line: 56, column: 10, scope: !1398)
!1417 = !DILocation(line: 58, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !120, line: 58, column: 7)
!1419 = !DILocation(line: 58, column: 12, scope: !1418)
!1420 = !DILocation(line: 58, column: 7, scope: !1398)
!1421 = !DILocalVariable(name: "c", scope: !1422, file: !120, line: 60, type: !58)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !120, line: 59, column: 5)
!1423 = !DILocation(line: 60, column: 11, scope: !1422)
!1424 = !DILocation(line: 60, column: 28, scope: !1422)
!1425 = !DILocation(line: 60, column: 34, scope: !1422)
!1426 = !DILocation(line: 60, column: 15, scope: !1422)
!1427 = !DILocation(line: 61, column: 11, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !120, line: 61, column: 11)
!1429 = !DILocation(line: 61, column: 13, scope: !1428)
!1430 = !DILocation(line: 61, column: 11, scope: !1422)
!1431 = !DILocation(line: 63, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !120, line: 62, column: 9)
!1433 = !DILocation(line: 63, column: 11, scope: !1432)
!1434 = !DILocation(line: 66, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !120, line: 64, column: 13)
!1436 = !DILocation(line: 66, column: 15, scope: !1435)
!1437 = !DILocation(line: 67, column: 15, scope: !1435)
!1438 = !DILocalVariable(name: "authors", scope: !1439, file: !120, line: 71, type: !1440)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !120, line: 70, column: 15)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !87, line: 52, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !89, line: 32, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1443, baseType: !1444)
!1443 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1444, file: !1443, line: 71, baseType: !52, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1444, file: !1443, line: 71, baseType: !52, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1444, file: !1443, line: 71, baseType: !52, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1444, file: !1443, line: 71, baseType: !58, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1444, file: !1443, line: 71, baseType: !58, size: 32, offset: 224)
!1451 = !DILocation(line: 71, column: 25, scope: !1439)
!1452 = !DILocation(line: 72, column: 17, scope: !1439)
!1453 = !DILocation(line: 73, column: 33, scope: !1439)
!1454 = !DILocation(line: 73, column: 41, scope: !1439)
!1455 = !DILocation(line: 73, column: 55, scope: !1439)
!1456 = !DILocation(line: 73, column: 64, scope: !1439)
!1457 = !DILocation(line: 73, column: 17, scope: !1439)
!1458 = !DILocation(line: 74, column: 17, scope: !1439)
!1459 = !DILocation(line: 79, column: 15, scope: !1435)
!1460 = !DILocation(line: 81, column: 9, scope: !1432)
!1461 = !DILocation(line: 82, column: 5, scope: !1422)
!1462 = !DILocation(line: 85, column: 12, scope: !1398)
!1463 = !DILocation(line: 85, column: 10, scope: !1398)
!1464 = !DILocation(line: 89, column: 10, scope: !1398)
!1465 = !DILocation(line: 90, column: 1, scope: !1398)
!1466 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !120, file: !120, line: 98, type: !1467, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !61)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !58, !622, !6, !6, !6, !74, !55, null}
!1469 = !DILocalVariable(name: "argc", arg: 1, scope: !1466, file: !120, line: 98, type: !58)
!1470 = !DILocation(line: 98, column: 38, scope: !1466)
!1471 = !DILocalVariable(name: "argv", arg: 2, scope: !1466, file: !120, line: 99, type: !622)
!1472 = !DILocation(line: 99, column: 41, scope: !1466)
!1473 = !DILocalVariable(name: "command_name", arg: 3, scope: !1466, file: !120, line: 100, type: !6)
!1474 = !DILocation(line: 100, column: 46, scope: !1466)
!1475 = !DILocalVariable(name: "package", arg: 4, scope: !1466, file: !120, line: 101, type: !6)
!1476 = !DILocation(line: 101, column: 46, scope: !1466)
!1477 = !DILocalVariable(name: "version", arg: 5, scope: !1466, file: !120, line: 102, type: !6)
!1478 = !DILocation(line: 102, column: 46, scope: !1466)
!1479 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1466, file: !120, line: 103, type: !74)
!1480 = !DILocation(line: 103, column: 39, scope: !1466)
!1481 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1466, file: !120, line: 104, type: !55)
!1482 = !DILocation(line: 104, column: 41, scope: !1466)
!1483 = !DILocalVariable(name: "saved_opterr", scope: !1466, file: !120, line: 107, type: !58)
!1484 = !DILocation(line: 107, column: 7, scope: !1466)
!1485 = !DILocation(line: 107, column: 22, scope: !1466)
!1486 = !DILocation(line: 110, column: 10, scope: !1466)
!1487 = !DILocalVariable(name: "optstring", scope: !1466, file: !120, line: 112, type: !6)
!1488 = !DILocation(line: 112, column: 15, scope: !1466)
!1489 = !DILocation(line: 112, column: 27, scope: !1466)
!1490 = !DILocalVariable(name: "c", scope: !1466, file: !120, line: 114, type: !58)
!1491 = !DILocation(line: 114, column: 7, scope: !1466)
!1492 = !DILocation(line: 114, column: 24, scope: !1466)
!1493 = !DILocation(line: 114, column: 30, scope: !1466)
!1494 = !DILocation(line: 114, column: 36, scope: !1466)
!1495 = !DILocation(line: 114, column: 11, scope: !1466)
!1496 = !DILocation(line: 115, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1466, file: !120, line: 115, column: 7)
!1498 = !DILocation(line: 115, column: 9, scope: !1497)
!1499 = !DILocation(line: 115, column: 7, scope: !1466)
!1500 = !DILocation(line: 117, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !120, line: 116, column: 5)
!1502 = !DILocation(line: 117, column: 7, scope: !1501)
!1503 = !DILocation(line: 120, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !120, line: 118, column: 9)
!1505 = !DILocation(line: 120, column: 11, scope: !1504)
!1506 = !DILocation(line: 121, column: 11, scope: !1504)
!1507 = !DILocalVariable(name: "authors", scope: !1508, file: !120, line: 125, type: !1440)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !120, line: 124, column: 11)
!1509 = !DILocation(line: 125, column: 21, scope: !1508)
!1510 = !DILocation(line: 126, column: 13, scope: !1508)
!1511 = !DILocation(line: 127, column: 29, scope: !1508)
!1512 = !DILocation(line: 127, column: 37, scope: !1508)
!1513 = !DILocation(line: 127, column: 51, scope: !1508)
!1514 = !DILocation(line: 127, column: 60, scope: !1508)
!1515 = !DILocation(line: 127, column: 13, scope: !1508)
!1516 = !DILocation(line: 128, column: 13, scope: !1508)
!1517 = !DILocation(line: 132, column: 13, scope: !1504)
!1518 = !DILocation(line: 132, column: 26, scope: !1504)
!1519 = !DILocation(line: 132, column: 11, scope: !1504)
!1520 = !DILocation(line: 133, column: 11, scope: !1504)
!1521 = !DILocation(line: 135, column: 5, scope: !1501)
!1522 = !DILocation(line: 138, column: 12, scope: !1466)
!1523 = !DILocation(line: 138, column: 10, scope: !1466)
!1524 = !DILocation(line: 139, column: 1, scope: !1466)
!1525 = distinct !DISubprogram(name: "set_program_name", scope: !137, file: !137, line: 37, type: !544, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !61)
!1526 = !DILocalVariable(name: "argv0", arg: 1, scope: !1525, file: !137, line: 37, type: !6)
!1527 = !DILocation(line: 37, column: 31, scope: !1525)
!1528 = !DILocalVariable(name: "slash", scope: !1525, file: !137, line: 44, type: !6)
!1529 = !DILocation(line: 44, column: 15, scope: !1525)
!1530 = !DILocation(line: 44, column: 32, scope: !1525)
!1531 = !DILocation(line: 44, column: 23, scope: !1525)
!1532 = !DILocalVariable(name: "base", scope: !1525, file: !137, line: 45, type: !6)
!1533 = !DILocation(line: 45, column: 15, scope: !1525)
!1534 = !DILocation(line: 45, column: 22, scope: !1525)
!1535 = !DILocation(line: 45, column: 30, scope: !1525)
!1536 = !DILocation(line: 45, column: 36, scope: !1525)
!1537 = !DILocation(line: 45, column: 42, scope: !1525)
!1538 = !DILocation(line: 46, column: 12, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1525, file: !137, line: 46, column: 7)
!1540 = !DILocation(line: 46, column: 19, scope: !1539)
!1541 = !DILocation(line: 46, column: 17, scope: !1539)
!1542 = !DILocation(line: 46, column: 9, scope: !1539)
!1543 = !DILocation(line: 46, column: 25, scope: !1539)
!1544 = !DILocation(line: 46, column: 35, scope: !1539)
!1545 = !DILocation(line: 46, column: 40, scope: !1539)
!1546 = !DILocation(line: 46, column: 28, scope: !1539)
!1547 = !DILocation(line: 46, column: 7, scope: !1525)
!1548 = !DILocation(line: 48, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1539, file: !137, line: 47, column: 5)
!1550 = !DILocation(line: 48, column: 13, scope: !1549)
!1551 = !DILocation(line: 49, column: 20, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !137, line: 49, column: 11)
!1553 = !DILocation(line: 49, column: 11, scope: !1552)
!1554 = !DILocation(line: 49, column: 36, scope: !1552)
!1555 = !DILocation(line: 49, column: 11, scope: !1549)
!1556 = !DILocation(line: 51, column: 16, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !137, line: 50, column: 9)
!1558 = !DILocation(line: 52, column: 19, scope: !1557)
!1559 = !DILocation(line: 52, column: 17, scope: !1557)
!1560 = !DILocation(line: 53, column: 9, scope: !1557)
!1561 = !DILocation(line: 54, column: 5, scope: !1549)
!1562 = !DILocation(line: 65, column: 18, scope: !1525)
!1563 = !DILocation(line: 65, column: 16, scope: !1525)
!1564 = !DILocation(line: 71, column: 38, scope: !1525)
!1565 = !DILocation(line: 71, column: 27, scope: !1525)
!1566 = !DILocation(line: 74, column: 44, scope: !1525)
!1567 = !DILocation(line: 74, column: 33, scope: !1525)
!1568 = !DILocation(line: 76, column: 1, scope: !1525)
!1569 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !143, file: !144, line: 38, type: !6)
!1570 = !DILocation(line: 38, column: 31, scope: !143)
!1571 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !143, file: !144, line: 38, type: !6)
!1572 = !DILocation(line: 38, column: 66, scope: !143)
!1573 = !DILocalVariable(name: "translation", scope: !143, file: !144, line: 40, type: !6)
!1574 = !DILocation(line: 40, column: 15, scope: !143)
!1575 = !DILocation(line: 40, column: 38, scope: !143)
!1576 = !DILocation(line: 40, column: 29, scope: !143)
!1577 = !DILocation(line: 41, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !143, file: !144, line: 41, column: 7)
!1579 = !DILocation(line: 41, column: 22, scope: !1578)
!1580 = !DILocation(line: 41, column: 19, scope: !1578)
!1581 = !DILocation(line: 41, column: 7, scope: !143)
!1582 = !DILocation(line: 42, column: 12, scope: !1578)
!1583 = !DILocation(line: 42, column: 5, scope: !1578)
!1584 = !DILocalVariable(name: "w", scope: !143, file: !144, line: 47, type: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1586, line: 37, baseType: !1587)
!1586 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !708, line: 57, baseType: !1588)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !708, line: 42, baseType: !13)
!1589 = !DILocation(line: 47, column: 12, scope: !143)
!1590 = !DILocalVariable(name: "mbs", scope: !143, file: !144, line: 48, type: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !237, line: 6, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !239, line: 21, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 13, size: 64, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1593, file: !239, line: 15, baseType: !58, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1593, file: !239, line: 20, baseType: !1597, size: 32, offset: 32)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !239, line: 16, size: 32, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1597, file: !239, line: 18, baseType: !13, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1597, file: !239, line: 19, baseType: !248, size: 32)
!1601 = !DILocation(line: 48, column: 13, scope: !143)
!1602 = !DILocation(line: 48, column: 18, scope: !143)
!1603 = !DILocation(line: 49, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !143, file: !144, line: 49, column: 7)
!1605 = !DILocation(line: 49, column: 39, scope: !1604)
!1606 = !DILocation(line: 49, column: 44, scope: !1604)
!1607 = !DILocation(line: 49, column: 47, scope: !1604)
!1608 = !DILocation(line: 49, column: 49, scope: !1604)
!1609 = !DILocation(line: 49, column: 7, scope: !143)
!1610 = !DILocation(line: 50, column: 12, scope: !1604)
!1611 = !DILocation(line: 50, column: 5, scope: !1604)
!1612 = !DILocation(line: 53, column: 10, scope: !143)
!1613 = !DILocation(line: 53, column: 3, scope: !143)
!1614 = !DILocation(line: 54, column: 1, scope: !143)
!1615 = distinct !DISubprogram(name: "clone_quoting_options", scope: !155, file: !155, line: 113, type: !1616, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1618, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1619 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !155, line: 113, type: !1618)
!1620 = !DILocation(line: 113, column: 48, scope: !1615)
!1621 = !DILocalVariable(name: "saved_errno", scope: !1615, file: !155, line: 115, type: !58)
!1622 = !DILocation(line: 115, column: 7, scope: !1615)
!1623 = !DILocation(line: 115, column: 21, scope: !1615)
!1624 = !DILocalVariable(name: "p", scope: !1615, file: !155, line: 116, type: !1618)
!1625 = !DILocation(line: 116, column: 27, scope: !1615)
!1626 = !DILocation(line: 116, column: 40, scope: !1615)
!1627 = !DILocation(line: 116, column: 44, scope: !1615)
!1628 = !DILocation(line: 116, column: 31, scope: !1615)
!1629 = !DILocation(line: 118, column: 11, scope: !1615)
!1630 = !DILocation(line: 118, column: 3, scope: !1615)
!1631 = !DILocation(line: 118, column: 9, scope: !1615)
!1632 = !DILocation(line: 119, column: 10, scope: !1615)
!1633 = !DILocation(line: 119, column: 3, scope: !1615)
!1634 = distinct !DISubprogram(name: "get_quoting_style", scope: !155, file: !155, line: 124, type: !1635, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!22, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1634, file: !155, line: 124, type: !1637)
!1640 = !DILocation(line: 124, column: 50, scope: !1634)
!1641 = !DILocation(line: 126, column: 11, scope: !1634)
!1642 = !DILocation(line: 126, column: 15, scope: !1634)
!1643 = !DILocation(line: 126, column: 46, scope: !1634)
!1644 = !DILocation(line: 126, column: 3, scope: !1634)
!1645 = distinct !DISubprogram(name: "set_quoting_style", scope: !155, file: !155, line: 132, type: !1646, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1618, !22}
!1648 = !DILocalVariable(name: "o", arg: 1, scope: !1645, file: !155, line: 132, type: !1618)
!1649 = !DILocation(line: 132, column: 44, scope: !1645)
!1650 = !DILocalVariable(name: "s", arg: 2, scope: !1645, file: !155, line: 132, type: !22)
!1651 = !DILocation(line: 132, column: 66, scope: !1645)
!1652 = !DILocation(line: 134, column: 47, scope: !1645)
!1653 = !DILocation(line: 134, column: 4, scope: !1645)
!1654 = !DILocation(line: 134, column: 8, scope: !1645)
!1655 = !DILocation(line: 134, column: 39, scope: !1645)
!1656 = !DILocation(line: 134, column: 45, scope: !1645)
!1657 = !DILocation(line: 135, column: 1, scope: !1645)
!1658 = distinct !DISubprogram(name: "set_char_quoting", scope: !155, file: !155, line: 143, type: !1659, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!58, !1618, !8, !58}
!1661 = !DILocalVariable(name: "o", arg: 1, scope: !1658, file: !155, line: 143, type: !1618)
!1662 = !DILocation(line: 143, column: 43, scope: !1658)
!1663 = !DILocalVariable(name: "c", arg: 2, scope: !1658, file: !155, line: 143, type: !8)
!1664 = !DILocation(line: 143, column: 51, scope: !1658)
!1665 = !DILocalVariable(name: "i", arg: 3, scope: !1658, file: !155, line: 143, type: !58)
!1666 = !DILocation(line: 143, column: 58, scope: !1658)
!1667 = !DILocalVariable(name: "uc", scope: !1658, file: !155, line: 145, type: !234)
!1668 = !DILocation(line: 145, column: 17, scope: !1658)
!1669 = !DILocation(line: 145, column: 22, scope: !1658)
!1670 = !DILocalVariable(name: "p", scope: !1658, file: !155, line: 146, type: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1672 = !DILocation(line: 146, column: 17, scope: !1658)
!1673 = !DILocation(line: 147, column: 6, scope: !1658)
!1674 = !DILocation(line: 147, column: 10, scope: !1658)
!1675 = !DILocation(line: 147, column: 41, scope: !1658)
!1676 = !DILocation(line: 147, column: 5, scope: !1658)
!1677 = !DILocation(line: 147, column: 59, scope: !1658)
!1678 = !DILocation(line: 147, column: 62, scope: !1658)
!1679 = !DILocation(line: 147, column: 57, scope: !1658)
!1680 = !DILocalVariable(name: "shift", scope: !1658, file: !155, line: 148, type: !58)
!1681 = !DILocation(line: 148, column: 7, scope: !1658)
!1682 = !DILocation(line: 148, column: 15, scope: !1658)
!1683 = !DILocation(line: 148, column: 18, scope: !1658)
!1684 = !DILocalVariable(name: "r", scope: !1658, file: !155, line: 149, type: !13)
!1685 = !DILocation(line: 149, column: 16, scope: !1658)
!1686 = !DILocation(line: 149, column: 22, scope: !1658)
!1687 = !DILocation(line: 149, column: 21, scope: !1658)
!1688 = !DILocation(line: 149, column: 27, scope: !1658)
!1689 = !DILocation(line: 149, column: 24, scope: !1658)
!1690 = !DILocation(line: 149, column: 34, scope: !1658)
!1691 = !DILocation(line: 150, column: 11, scope: !1658)
!1692 = !DILocation(line: 150, column: 13, scope: !1658)
!1693 = !DILocation(line: 150, column: 21, scope: !1658)
!1694 = !DILocation(line: 150, column: 19, scope: !1658)
!1695 = !DILocation(line: 150, column: 27, scope: !1658)
!1696 = !DILocation(line: 150, column: 24, scope: !1658)
!1697 = !DILocation(line: 150, column: 4, scope: !1658)
!1698 = !DILocation(line: 150, column: 6, scope: !1658)
!1699 = !DILocation(line: 151, column: 10, scope: !1658)
!1700 = !DILocation(line: 151, column: 3, scope: !1658)
!1701 = distinct !DISubprogram(name: "set_quoting_flags", scope: !155, file: !155, line: 159, type: !1702, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!58, !1618, !58}
!1704 = !DILocalVariable(name: "o", arg: 1, scope: !1701, file: !155, line: 159, type: !1618)
!1705 = !DILocation(line: 159, column: 44, scope: !1701)
!1706 = !DILocalVariable(name: "i", arg: 2, scope: !1701, file: !155, line: 159, type: !58)
!1707 = !DILocation(line: 159, column: 51, scope: !1701)
!1708 = !DILocation(line: 161, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !155, line: 161, column: 7)
!1710 = !DILocation(line: 161, column: 7, scope: !1701)
!1711 = !DILocation(line: 162, column: 7, scope: !1709)
!1712 = !DILocation(line: 162, column: 5, scope: !1709)
!1713 = !DILocalVariable(name: "r", scope: !1701, file: !155, line: 163, type: !58)
!1714 = !DILocation(line: 163, column: 7, scope: !1701)
!1715 = !DILocation(line: 163, column: 11, scope: !1701)
!1716 = !DILocation(line: 163, column: 14, scope: !1701)
!1717 = !DILocation(line: 164, column: 14, scope: !1701)
!1718 = !DILocation(line: 164, column: 3, scope: !1701)
!1719 = !DILocation(line: 164, column: 6, scope: !1701)
!1720 = !DILocation(line: 164, column: 12, scope: !1701)
!1721 = !DILocation(line: 165, column: 10, scope: !1701)
!1722 = !DILocation(line: 165, column: 3, scope: !1701)
!1723 = distinct !DISubprogram(name: "set_custom_quoting", scope: !155, file: !155, line: 169, type: !1724, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1618, !6, !6}
!1726 = !DILocalVariable(name: "o", arg: 1, scope: !1723, file: !155, line: 169, type: !1618)
!1727 = !DILocation(line: 169, column: 45, scope: !1723)
!1728 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1723, file: !155, line: 170, type: !6)
!1729 = !DILocation(line: 170, column: 33, scope: !1723)
!1730 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1723, file: !155, line: 170, type: !6)
!1731 = !DILocation(line: 170, column: 57, scope: !1723)
!1732 = !DILocation(line: 172, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1723, file: !155, line: 172, column: 7)
!1734 = !DILocation(line: 172, column: 7, scope: !1723)
!1735 = !DILocation(line: 173, column: 7, scope: !1733)
!1736 = !DILocation(line: 173, column: 5, scope: !1733)
!1737 = !DILocation(line: 174, column: 3, scope: !1723)
!1738 = !DILocation(line: 174, column: 6, scope: !1723)
!1739 = !DILocation(line: 174, column: 12, scope: !1723)
!1740 = !DILocation(line: 175, column: 8, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1723, file: !155, line: 175, column: 7)
!1742 = !DILocation(line: 175, column: 19, scope: !1741)
!1743 = !DILocation(line: 175, column: 23, scope: !1741)
!1744 = !DILocation(line: 175, column: 7, scope: !1723)
!1745 = !DILocation(line: 176, column: 5, scope: !1741)
!1746 = !DILocation(line: 177, column: 19, scope: !1723)
!1747 = !DILocation(line: 177, column: 3, scope: !1723)
!1748 = !DILocation(line: 177, column: 6, scope: !1723)
!1749 = !DILocation(line: 177, column: 17, scope: !1723)
!1750 = !DILocation(line: 178, column: 20, scope: !1723)
!1751 = !DILocation(line: 178, column: 3, scope: !1723)
!1752 = !DILocation(line: 178, column: 6, scope: !1723)
!1753 = !DILocation(line: 178, column: 18, scope: !1723)
!1754 = !DILocation(line: 179, column: 1, scope: !1723)
!1755 = distinct !DISubprogram(name: "quotearg_buffer", scope: !155, file: !155, line: 774, type: !1756, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!163, !139, !163, !6, !163, !1637}
!1758 = !DILocalVariable(name: "buffer", arg: 1, scope: !1755, file: !155, line: 774, type: !139)
!1759 = !DILocation(line: 774, column: 24, scope: !1755)
!1760 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1755, file: !155, line: 774, type: !163)
!1761 = !DILocation(line: 774, column: 39, scope: !1755)
!1762 = !DILocalVariable(name: "arg", arg: 3, scope: !1755, file: !155, line: 775, type: !6)
!1763 = !DILocation(line: 775, column: 30, scope: !1755)
!1764 = !DILocalVariable(name: "argsize", arg: 4, scope: !1755, file: !155, line: 775, type: !163)
!1765 = !DILocation(line: 775, column: 42, scope: !1755)
!1766 = !DILocalVariable(name: "o", arg: 5, scope: !1755, file: !155, line: 776, type: !1637)
!1767 = !DILocation(line: 776, column: 48, scope: !1755)
!1768 = !DILocalVariable(name: "p", scope: !1755, file: !155, line: 778, type: !1637)
!1769 = !DILocation(line: 778, column: 33, scope: !1755)
!1770 = !DILocation(line: 778, column: 37, scope: !1755)
!1771 = !DILocation(line: 778, column: 41, scope: !1755)
!1772 = !DILocalVariable(name: "saved_errno", scope: !1755, file: !155, line: 779, type: !58)
!1773 = !DILocation(line: 779, column: 7, scope: !1755)
!1774 = !DILocation(line: 779, column: 21, scope: !1755)
!1775 = !DILocalVariable(name: "r", scope: !1755, file: !155, line: 780, type: !163)
!1776 = !DILocation(line: 780, column: 10, scope: !1755)
!1777 = !DILocation(line: 780, column: 40, scope: !1755)
!1778 = !DILocation(line: 780, column: 48, scope: !1755)
!1779 = !DILocation(line: 780, column: 60, scope: !1755)
!1780 = !DILocation(line: 780, column: 65, scope: !1755)
!1781 = !DILocation(line: 781, column: 40, scope: !1755)
!1782 = !DILocation(line: 781, column: 43, scope: !1755)
!1783 = !DILocation(line: 781, column: 50, scope: !1755)
!1784 = !DILocation(line: 781, column: 53, scope: !1755)
!1785 = !DILocation(line: 781, column: 60, scope: !1755)
!1786 = !DILocation(line: 781, column: 63, scope: !1755)
!1787 = !DILocation(line: 782, column: 40, scope: !1755)
!1788 = !DILocation(line: 782, column: 43, scope: !1755)
!1789 = !DILocation(line: 782, column: 55, scope: !1755)
!1790 = !DILocation(line: 782, column: 58, scope: !1755)
!1791 = !DILocation(line: 780, column: 14, scope: !1755)
!1792 = !DILocation(line: 783, column: 11, scope: !1755)
!1793 = !DILocation(line: 783, column: 3, scope: !1755)
!1794 = !DILocation(line: 783, column: 9, scope: !1755)
!1795 = !DILocation(line: 784, column: 10, scope: !1755)
!1796 = !DILocation(line: 784, column: 3, scope: !1755)
!1797 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !155, file: !155, line: 251, type: !1798, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !61)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!163, !139, !163, !6, !163, !22, !58, !1800, !6, !6}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1802 = !DILocalVariable(name: "buffer", arg: 1, scope: !1797, file: !155, line: 251, type: !139)
!1803 = !DILocation(line: 251, column: 33, scope: !1797)
!1804 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1797, file: !155, line: 251, type: !163)
!1805 = !DILocation(line: 251, column: 48, scope: !1797)
!1806 = !DILocalVariable(name: "arg", arg: 3, scope: !1797, file: !155, line: 252, type: !6)
!1807 = !DILocation(line: 252, column: 39, scope: !1797)
!1808 = !DILocalVariable(name: "argsize", arg: 4, scope: !1797, file: !155, line: 252, type: !163)
!1809 = !DILocation(line: 252, column: 51, scope: !1797)
!1810 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1797, file: !155, line: 253, type: !22)
!1811 = !DILocation(line: 253, column: 46, scope: !1797)
!1812 = !DILocalVariable(name: "flags", arg: 6, scope: !1797, file: !155, line: 253, type: !58)
!1813 = !DILocation(line: 253, column: 65, scope: !1797)
!1814 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1797, file: !155, line: 254, type: !1800)
!1815 = !DILocation(line: 254, column: 47, scope: !1797)
!1816 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1797, file: !155, line: 255, type: !6)
!1817 = !DILocation(line: 255, column: 39, scope: !1797)
!1818 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1797, file: !155, line: 256, type: !6)
!1819 = !DILocation(line: 256, column: 39, scope: !1797)
!1820 = !DILocalVariable(name: "unibyte_locale", scope: !1797, file: !155, line: 258, type: !74)
!1821 = !DILocation(line: 258, column: 8, scope: !1797)
!1822 = !DILocation(line: 258, column: 25, scope: !1797)
!1823 = !DILocation(line: 258, column: 36, scope: !1797)
!1824 = !DILocalVariable(name: "len", scope: !1797, file: !155, line: 260, type: !163)
!1825 = !DILocation(line: 260, column: 10, scope: !1797)
!1826 = !DILocalVariable(name: "orig_buffersize", scope: !1797, file: !155, line: 261, type: !163)
!1827 = !DILocation(line: 261, column: 10, scope: !1797)
!1828 = !DILocalVariable(name: "quote_string", scope: !1797, file: !155, line: 262, type: !6)
!1829 = !DILocation(line: 262, column: 15, scope: !1797)
!1830 = !DILocalVariable(name: "quote_string_len", scope: !1797, file: !155, line: 263, type: !163)
!1831 = !DILocation(line: 263, column: 10, scope: !1797)
!1832 = !DILocalVariable(name: "backslash_escapes", scope: !1797, file: !155, line: 264, type: !74)
!1833 = !DILocation(line: 264, column: 8, scope: !1797)
!1834 = !DILocalVariable(name: "elide_outer_quotes", scope: !1797, file: !155, line: 265, type: !74)
!1835 = !DILocation(line: 265, column: 8, scope: !1797)
!1836 = !DILocation(line: 265, column: 30, scope: !1797)
!1837 = !DILocation(line: 265, column: 36, scope: !1797)
!1838 = !DILocation(line: 265, column: 61, scope: !1797)
!1839 = !DILocalVariable(name: "encountered_single_quote", scope: !1797, file: !155, line: 266, type: !74)
!1840 = !DILocation(line: 266, column: 8, scope: !1797)
!1841 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1797, file: !155, line: 267, type: !74)
!1842 = !DILocation(line: 267, column: 8, scope: !1797)
!1843 = !DILocation(line: 267, column: 3, scope: !1797)
!1844 = !DILabel(scope: !1797, name: "process_input", file: !155, line: 308)
!1845 = !DILocation(line: 308, column: 2, scope: !1797)
!1846 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1797, file: !155, line: 309, type: !74)
!1847 = !DILocation(line: 309, column: 8, scope: !1797)
!1848 = !DILocation(line: 311, column: 11, scope: !1797)
!1849 = !DILocation(line: 311, column: 3, scope: !1797)
!1850 = !DILocation(line: 314, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 312, column: 5)
!1852 = !DILocation(line: 315, column: 26, scope: !1851)
!1853 = !DILocation(line: 315, column: 7, scope: !1851)
!1854 = !DILocation(line: 318, column: 12, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !155, line: 318, column: 11)
!1856 = !DILocation(line: 318, column: 11, scope: !1851)
!1857 = !DILocation(line: 319, column: 9, scope: !1855)
!1858 = !DILocation(line: 319, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !155, line: 319, column: 9)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !155, line: 319, column: 9)
!1861 = !DILocation(line: 319, column: 9, scope: !1860)
!1862 = !DILocation(line: 320, column: 25, scope: !1851)
!1863 = !DILocation(line: 321, column: 20, scope: !1851)
!1864 = !DILocation(line: 322, column: 24, scope: !1851)
!1865 = !DILocation(line: 323, column: 7, scope: !1851)
!1866 = !DILocation(line: 326, column: 25, scope: !1851)
!1867 = !DILocation(line: 327, column: 26, scope: !1851)
!1868 = !DILocation(line: 328, column: 7, scope: !1851)
!1869 = !DILocation(line: 334, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !155, line: 334, column: 13)
!1871 = distinct !DILexicalBlock(scope: !1851, file: !155, line: 333, column: 7)
!1872 = !DILocation(line: 334, column: 27, scope: !1870)
!1873 = !DILocation(line: 334, column: 13, scope: !1871)
!1874 = !DILocation(line: 357, column: 50, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !155, line: 335, column: 11)
!1876 = !DILocation(line: 357, column: 26, scope: !1875)
!1877 = !DILocation(line: 357, column: 24, scope: !1875)
!1878 = !DILocation(line: 358, column: 51, scope: !1875)
!1879 = !DILocation(line: 358, column: 27, scope: !1875)
!1880 = !DILocation(line: 358, column: 25, scope: !1875)
!1881 = !DILocation(line: 359, column: 11, scope: !1875)
!1882 = !DILocation(line: 360, column: 14, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1871, file: !155, line: 360, column: 13)
!1884 = !DILocation(line: 360, column: 13, scope: !1871)
!1885 = !DILocalVariable(name: "lq", scope: !1886, file: !155, line: 361, type: !6)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !155, line: 361, column: 11)
!1887 = !DILocation(line: 361, column: 28, scope: !1886)
!1888 = !DILocation(line: 361, column: 33, scope: !1886)
!1889 = !DILocation(line: 361, column: 16, scope: !1886)
!1890 = !DILocation(line: 361, column: 46, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !155, line: 361, column: 11)
!1892 = !DILocation(line: 361, column: 45, scope: !1891)
!1893 = !DILocation(line: 361, column: 11, scope: !1886)
!1894 = !DILocation(line: 362, column: 13, scope: !1891)
!1895 = !DILocation(line: 362, column: 13, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !155, line: 362, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !155, line: 362, column: 13)
!1898 = !DILocation(line: 362, column: 13, scope: !1897)
!1899 = !DILocation(line: 361, column: 52, scope: !1891)
!1900 = !DILocation(line: 361, column: 11, scope: !1891)
!1901 = distinct !{!1901, !1893, !1902, !427}
!1902 = !DILocation(line: 362, column: 13, scope: !1886)
!1903 = !DILocation(line: 363, column: 27, scope: !1871)
!1904 = !DILocation(line: 364, column: 24, scope: !1871)
!1905 = !DILocation(line: 364, column: 22, scope: !1871)
!1906 = !DILocation(line: 365, column: 36, scope: !1871)
!1907 = !DILocation(line: 365, column: 28, scope: !1871)
!1908 = !DILocation(line: 365, column: 26, scope: !1871)
!1909 = !DILocation(line: 367, column: 7, scope: !1851)
!1910 = !DILocation(line: 370, column: 25, scope: !1851)
!1911 = !DILocation(line: 370, column: 7, scope: !1851)
!1912 = !DILocation(line: 373, column: 26, scope: !1851)
!1913 = !DILocation(line: 373, column: 7, scope: !1851)
!1914 = !DILocation(line: 376, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1851, file: !155, line: 376, column: 11)
!1916 = !DILocation(line: 376, column: 11, scope: !1851)
!1917 = !DILocation(line: 377, column: 27, scope: !1915)
!1918 = !DILocation(line: 377, column: 9, scope: !1915)
!1919 = !DILocation(line: 380, column: 21, scope: !1851)
!1920 = !DILocation(line: 381, column: 12, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1851, file: !155, line: 381, column: 11)
!1922 = !DILocation(line: 381, column: 11, scope: !1851)
!1923 = !DILocation(line: 382, column: 9, scope: !1921)
!1924 = !DILocation(line: 382, column: 9, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !155, line: 382, column: 9)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !155, line: 382, column: 9)
!1927 = !DILocation(line: 382, column: 9, scope: !1926)
!1928 = !DILocation(line: 383, column: 20, scope: !1851)
!1929 = !DILocation(line: 384, column: 24, scope: !1851)
!1930 = !DILocation(line: 385, column: 7, scope: !1851)
!1931 = !DILocation(line: 388, column: 26, scope: !1851)
!1932 = !DILocation(line: 389, column: 7, scope: !1851)
!1933 = !DILocation(line: 392, column: 7, scope: !1851)
!1934 = !DILocalVariable(name: "i", scope: !1935, file: !155, line: 395, type: !163)
!1935 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 395, column: 3)
!1936 = !DILocation(line: 395, column: 15, scope: !1935)
!1937 = !DILocation(line: 395, column: 8, scope: !1935)
!1938 = !DILocation(line: 395, column: 26, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !155, line: 395, column: 3)
!1940 = !DILocation(line: 395, column: 34, scope: !1939)
!1941 = !DILocation(line: 395, column: 48, scope: !1939)
!1942 = !DILocation(line: 395, column: 52, scope: !1939)
!1943 = !DILocation(line: 395, column: 55, scope: !1939)
!1944 = !DILocation(line: 395, column: 65, scope: !1939)
!1945 = !DILocation(line: 395, column: 70, scope: !1939)
!1946 = !DILocation(line: 395, column: 67, scope: !1939)
!1947 = !DILocation(line: 395, column: 23, scope: !1939)
!1948 = !DILocation(line: 395, column: 3, scope: !1935)
!1949 = !DILocalVariable(name: "is_right_quote", scope: !1950, file: !155, line: 397, type: !74)
!1950 = distinct !DILexicalBlock(scope: !1939, file: !155, line: 396, column: 5)
!1951 = !DILocation(line: 397, column: 12, scope: !1950)
!1952 = !DILocalVariable(name: "escaping", scope: !1950, file: !155, line: 398, type: !74)
!1953 = !DILocation(line: 398, column: 12, scope: !1950)
!1954 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1950, file: !155, line: 399, type: !74)
!1955 = !DILocation(line: 399, column: 12, scope: !1950)
!1956 = !DILocation(line: 401, column: 11, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 401, column: 11)
!1958 = !DILocation(line: 402, column: 11, scope: !1957)
!1959 = !DILocation(line: 402, column: 14, scope: !1957)
!1960 = !DILocation(line: 402, column: 28, scope: !1957)
!1961 = !DILocation(line: 403, column: 11, scope: !1957)
!1962 = !DILocation(line: 403, column: 14, scope: !1957)
!1963 = !DILocation(line: 404, column: 11, scope: !1957)
!1964 = !DILocation(line: 404, column: 15, scope: !1957)
!1965 = !DILocation(line: 404, column: 19, scope: !1957)
!1966 = !DILocation(line: 404, column: 17, scope: !1957)
!1967 = !DILocation(line: 405, column: 19, scope: !1957)
!1968 = !DILocation(line: 405, column: 27, scope: !1957)
!1969 = !DILocation(line: 405, column: 39, scope: !1957)
!1970 = !DILocation(line: 405, column: 46, scope: !1957)
!1971 = !DILocation(line: 405, column: 44, scope: !1957)
!1972 = !DILocation(line: 409, column: 40, scope: !1957)
!1973 = !DILocation(line: 409, column: 32, scope: !1957)
!1974 = !DILocation(line: 409, column: 30, scope: !1957)
!1975 = !DILocation(line: 409, column: 48, scope: !1957)
!1976 = !DILocation(line: 405, column: 15, scope: !1957)
!1977 = !DILocation(line: 410, column: 11, scope: !1957)
!1978 = !DILocation(line: 410, column: 21, scope: !1957)
!1979 = !DILocation(line: 410, column: 27, scope: !1957)
!1980 = !DILocation(line: 410, column: 25, scope: !1957)
!1981 = !DILocation(line: 410, column: 30, scope: !1957)
!1982 = !DILocation(line: 410, column: 44, scope: !1957)
!1983 = !DILocation(line: 410, column: 14, scope: !1957)
!1984 = !DILocation(line: 401, column: 11, scope: !1950)
!1985 = !DILocation(line: 412, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !155, line: 412, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1957, file: !155, line: 411, column: 9)
!1988 = !DILocation(line: 412, column: 15, scope: !1987)
!1989 = !DILocation(line: 413, column: 13, scope: !1986)
!1990 = !DILocation(line: 414, column: 26, scope: !1987)
!1991 = !DILocation(line: 415, column: 9, scope: !1987)
!1992 = !DILocalVariable(name: "c", scope: !1950, file: !155, line: 417, type: !234)
!1993 = !DILocation(line: 417, column: 21, scope: !1950)
!1994 = !DILocation(line: 417, column: 25, scope: !1950)
!1995 = !DILocation(line: 417, column: 29, scope: !1950)
!1996 = !DILocation(line: 418, column: 15, scope: !1950)
!1997 = !DILocation(line: 418, column: 7, scope: !1950)
!1998 = !DILocation(line: 421, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 421, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 419, column: 9)
!2001 = !DILocation(line: 421, column: 15, scope: !2000)
!2002 = !DILocation(line: 423, column: 15, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !155, line: 422, column: 13)
!2004 = !DILocation(line: 423, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !155, line: 423, column: 15)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !155, line: 423, column: 15)
!2007 = !DILocation(line: 423, column: 15, scope: !2006)
!2008 = !DILocation(line: 423, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !155, line: 423, column: 15)
!2010 = !DILocation(line: 423, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2009, file: !155, line: 423, column: 15)
!2012 = !DILocation(line: 423, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !155, line: 423, column: 15)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !155, line: 423, column: 15)
!2015 = !DILocation(line: 423, column: 15, scope: !2014)
!2016 = !DILocation(line: 423, column: 15, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !155, line: 423, column: 15)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !155, line: 423, column: 15)
!2019 = !DILocation(line: 423, column: 15, scope: !2018)
!2020 = !DILocation(line: 423, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !155, line: 423, column: 15)
!2022 = distinct !DILexicalBlock(scope: !2011, file: !155, line: 423, column: 15)
!2023 = !DILocation(line: 423, column: 15, scope: !2022)
!2024 = !DILocation(line: 423, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !155, line: 423, column: 15)
!2026 = distinct !DILexicalBlock(scope: !2006, file: !155, line: 423, column: 15)
!2027 = !DILocation(line: 423, column: 15, scope: !2026)
!2028 = !DILocation(line: 430, column: 19, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2003, file: !155, line: 430, column: 19)
!2030 = !DILocation(line: 430, column: 33, scope: !2029)
!2031 = !DILocation(line: 431, column: 19, scope: !2029)
!2032 = !DILocation(line: 431, column: 22, scope: !2029)
!2033 = !DILocation(line: 431, column: 24, scope: !2029)
!2034 = !DILocation(line: 431, column: 30, scope: !2029)
!2035 = !DILocation(line: 431, column: 28, scope: !2029)
!2036 = !DILocation(line: 431, column: 38, scope: !2029)
!2037 = !DILocation(line: 431, column: 48, scope: !2029)
!2038 = !DILocation(line: 431, column: 52, scope: !2029)
!2039 = !DILocation(line: 431, column: 54, scope: !2029)
!2040 = !DILocation(line: 431, column: 45, scope: !2029)
!2041 = !DILocation(line: 431, column: 59, scope: !2029)
!2042 = !DILocation(line: 431, column: 62, scope: !2029)
!2043 = !DILocation(line: 431, column: 66, scope: !2029)
!2044 = !DILocation(line: 431, column: 68, scope: !2029)
!2045 = !DILocation(line: 431, column: 73, scope: !2029)
!2046 = !DILocation(line: 430, column: 19, scope: !2003)
!2047 = !DILocation(line: 433, column: 19, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2029, file: !155, line: 432, column: 17)
!2049 = !DILocation(line: 433, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !155, line: 433, column: 19)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !155, line: 433, column: 19)
!2052 = !DILocation(line: 433, column: 19, scope: !2051)
!2053 = !DILocation(line: 434, column: 19, scope: !2048)
!2054 = !DILocation(line: 434, column: 19, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !155, line: 434, column: 19)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !155, line: 434, column: 19)
!2057 = !DILocation(line: 434, column: 19, scope: !2056)
!2058 = !DILocation(line: 435, column: 17, scope: !2048)
!2059 = !DILocation(line: 436, column: 17, scope: !2003)
!2060 = !DILocation(line: 441, column: 13, scope: !2003)
!2061 = !DILocation(line: 442, column: 20, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1999, file: !155, line: 442, column: 20)
!2063 = !DILocation(line: 442, column: 26, scope: !2062)
!2064 = !DILocation(line: 442, column: 20, scope: !1999)
!2065 = !DILocation(line: 443, column: 13, scope: !2062)
!2066 = !DILocation(line: 444, column: 11, scope: !2000)
!2067 = !DILocation(line: 447, column: 20, scope: !2000)
!2068 = !DILocation(line: 447, column: 11, scope: !2000)
!2069 = !DILocation(line: 450, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !155, line: 450, column: 19)
!2071 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 448, column: 13)
!2072 = !DILocation(line: 450, column: 19, scope: !2071)
!2073 = !DILocation(line: 451, column: 17, scope: !2070)
!2074 = !DILocation(line: 452, column: 15, scope: !2071)
!2075 = !DILocation(line: 455, column: 20, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !155, line: 455, column: 19)
!2077 = !DILocation(line: 455, column: 26, scope: !2076)
!2078 = !DILocation(line: 456, column: 19, scope: !2076)
!2079 = !DILocation(line: 456, column: 22, scope: !2076)
!2080 = !DILocation(line: 456, column: 24, scope: !2076)
!2081 = !DILocation(line: 456, column: 30, scope: !2076)
!2082 = !DILocation(line: 456, column: 28, scope: !2076)
!2083 = !DILocation(line: 456, column: 38, scope: !2076)
!2084 = !DILocation(line: 456, column: 41, scope: !2076)
!2085 = !DILocation(line: 456, column: 45, scope: !2076)
!2086 = !DILocation(line: 456, column: 47, scope: !2076)
!2087 = !DILocation(line: 456, column: 52, scope: !2076)
!2088 = !DILocation(line: 455, column: 19, scope: !2071)
!2089 = !DILocation(line: 457, column: 25, scope: !2076)
!2090 = !DILocation(line: 457, column: 29, scope: !2076)
!2091 = !DILocation(line: 457, column: 31, scope: !2076)
!2092 = !DILocation(line: 457, column: 17, scope: !2076)
!2093 = !DILocation(line: 464, column: 25, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !155, line: 464, column: 25)
!2095 = distinct !DILexicalBlock(scope: !2076, file: !155, line: 458, column: 19)
!2096 = !DILocation(line: 464, column: 25, scope: !2095)
!2097 = !DILocation(line: 465, column: 23, scope: !2094)
!2098 = !DILocation(line: 466, column: 25, scope: !2095)
!2099 = !DILocation(line: 466, column: 29, scope: !2095)
!2100 = !DILocation(line: 466, column: 31, scope: !2095)
!2101 = !DILocation(line: 466, column: 23, scope: !2095)
!2102 = !DILocation(line: 467, column: 23, scope: !2095)
!2103 = !DILocation(line: 468, column: 21, scope: !2095)
!2104 = !DILocation(line: 468, column: 21, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !155, line: 468, column: 21)
!2106 = distinct !DILexicalBlock(scope: !2095, file: !155, line: 468, column: 21)
!2107 = !DILocation(line: 468, column: 21, scope: !2106)
!2108 = !DILocation(line: 469, column: 21, scope: !2095)
!2109 = !DILocation(line: 469, column: 21, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !155, line: 469, column: 21)
!2111 = distinct !DILexicalBlock(scope: !2095, file: !155, line: 469, column: 21)
!2112 = !DILocation(line: 469, column: 21, scope: !2111)
!2113 = !DILocation(line: 470, column: 21, scope: !2095)
!2114 = !DILocation(line: 470, column: 21, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !155, line: 470, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2095, file: !155, line: 470, column: 21)
!2117 = !DILocation(line: 470, column: 21, scope: !2116)
!2118 = !DILocation(line: 471, column: 21, scope: !2095)
!2119 = !DILocation(line: 471, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !155, line: 471, column: 21)
!2121 = distinct !DILexicalBlock(scope: !2095, file: !155, line: 471, column: 21)
!2122 = !DILocation(line: 471, column: 21, scope: !2121)
!2123 = !DILocation(line: 472, column: 21, scope: !2095)
!2124 = !DILocation(line: 473, column: 19, scope: !2095)
!2125 = !DILocation(line: 474, column: 15, scope: !2071)
!2126 = !DILocation(line: 476, column: 11, scope: !2000)
!2127 = !DILocation(line: 481, column: 26, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 478, column: 9)
!2129 = !DILocation(line: 481, column: 33, scope: !2128)
!2130 = !DILocation(line: 482, column: 26, scope: !2128)
!2131 = !DILocation(line: 482, column: 33, scope: !2128)
!2132 = !DILocation(line: 483, column: 26, scope: !2128)
!2133 = !DILocation(line: 483, column: 33, scope: !2128)
!2134 = !DILocation(line: 484, column: 26, scope: !2128)
!2135 = !DILocation(line: 484, column: 33, scope: !2128)
!2136 = !DILocation(line: 485, column: 26, scope: !2128)
!2137 = !DILocation(line: 485, column: 33, scope: !2128)
!2138 = !DILocation(line: 486, column: 26, scope: !2128)
!2139 = !DILocation(line: 486, column: 33, scope: !2128)
!2140 = !DILocation(line: 487, column: 26, scope: !2128)
!2141 = !DILocation(line: 487, column: 33, scope: !2128)
!2142 = !DILocation(line: 488, column: 28, scope: !2128)
!2143 = !DILocation(line: 488, column: 26, scope: !2128)
!2144 = !DILocation(line: 490, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2128, file: !155, line: 490, column: 17)
!2146 = !DILocation(line: 490, column: 31, scope: !2145)
!2147 = !DILocation(line: 490, column: 17, scope: !2128)
!2148 = !DILocation(line: 492, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !155, line: 492, column: 21)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !155, line: 491, column: 15)
!2151 = !DILocation(line: 492, column: 21, scope: !2150)
!2152 = !DILocation(line: 493, column: 19, scope: !2149)
!2153 = !DILocation(line: 494, column: 17, scope: !2150)
!2154 = !DILocation(line: 499, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2128, file: !155, line: 499, column: 17)
!2156 = !DILocation(line: 499, column: 35, scope: !2155)
!2157 = !DILocation(line: 499, column: 38, scope: !2155)
!2158 = !DILocation(line: 499, column: 57, scope: !2155)
!2159 = !DILocation(line: 499, column: 60, scope: !2155)
!2160 = !DILocation(line: 499, column: 17, scope: !2128)
!2161 = !DILocation(line: 500, column: 15, scope: !2155)
!2162 = !DILabel(scope: !2128, name: "c_and_shell_escape", file: !155, line: 502)
!2163 = !DILocation(line: 502, column: 11, scope: !2128)
!2164 = !DILocation(line: 503, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2128, file: !155, line: 503, column: 17)
!2166 = !DILocation(line: 503, column: 31, scope: !2165)
!2167 = !DILocation(line: 504, column: 17, scope: !2165)
!2168 = !DILocation(line: 504, column: 20, scope: !2165)
!2169 = !DILocation(line: 503, column: 17, scope: !2128)
!2170 = !DILocation(line: 505, column: 15, scope: !2165)
!2171 = !DILabel(scope: !2128, name: "c_escape", file: !155, line: 507)
!2172 = !DILocation(line: 507, column: 11, scope: !2128)
!2173 = !DILocation(line: 508, column: 17, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2128, file: !155, line: 508, column: 17)
!2175 = !DILocation(line: 508, column: 17, scope: !2128)
!2176 = !DILocation(line: 510, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !155, line: 509, column: 15)
!2178 = !DILocation(line: 510, column: 19, scope: !2177)
!2179 = !DILocation(line: 511, column: 17, scope: !2177)
!2180 = !DILocation(line: 513, column: 13, scope: !2128)
!2181 = !DILocation(line: 517, column: 18, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 517, column: 15)
!2183 = !DILocation(line: 517, column: 26, scope: !2182)
!2184 = !DILocation(line: 517, column: 15, scope: !2000)
!2185 = !DILocation(line: 517, column: 40, scope: !2182)
!2186 = !DILocation(line: 517, column: 47, scope: !2182)
!2187 = !DILocation(line: 517, column: 57, scope: !2182)
!2188 = !DILocation(line: 517, column: 65, scope: !2182)
!2189 = !DILocation(line: 518, column: 13, scope: !2182)
!2190 = !DILocation(line: 517, column: 69, scope: !2182)
!2191 = !DILocation(line: 521, column: 15, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 521, column: 15)
!2193 = !DILocation(line: 521, column: 17, scope: !2192)
!2194 = !DILocation(line: 521, column: 15, scope: !2000)
!2195 = !DILocation(line: 522, column: 13, scope: !2192)
!2196 = !DILocation(line: 521, column: 20, scope: !2192)
!2197 = !DILocation(line: 525, column: 36, scope: !2000)
!2198 = !DILocation(line: 525, column: 11, scope: !2000)
!2199 = !DILocation(line: 536, column: 15, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 536, column: 15)
!2201 = !DILocation(line: 536, column: 29, scope: !2200)
!2202 = !DILocation(line: 537, column: 15, scope: !2200)
!2203 = !DILocation(line: 537, column: 18, scope: !2200)
!2204 = !DILocation(line: 536, column: 15, scope: !2000)
!2205 = !DILocation(line: 538, column: 13, scope: !2200)
!2206 = !DILocation(line: 539, column: 11, scope: !2000)
!2207 = !DILocation(line: 542, column: 36, scope: !2000)
!2208 = !DILocation(line: 543, column: 36, scope: !2000)
!2209 = !DILocation(line: 544, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 544, column: 15)
!2211 = !DILocation(line: 544, column: 29, scope: !2210)
!2212 = !DILocation(line: 544, column: 15, scope: !2000)
!2213 = !DILocation(line: 546, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !155, line: 546, column: 19)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !155, line: 545, column: 13)
!2216 = !DILocation(line: 546, column: 19, scope: !2215)
!2217 = !DILocation(line: 547, column: 17, scope: !2214)
!2218 = !DILocation(line: 549, column: 19, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !155, line: 549, column: 19)
!2220 = !DILocation(line: 549, column: 30, scope: !2219)
!2221 = !DILocation(line: 549, column: 35, scope: !2219)
!2222 = !DILocation(line: 549, column: 19, scope: !2215)
!2223 = !DILocation(line: 554, column: 37, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !155, line: 550, column: 17)
!2225 = !DILocation(line: 554, column: 35, scope: !2224)
!2226 = !DILocation(line: 555, column: 30, scope: !2224)
!2227 = !DILocation(line: 556, column: 17, scope: !2224)
!2228 = !DILocation(line: 558, column: 15, scope: !2215)
!2229 = !DILocation(line: 558, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !155, line: 558, column: 15)
!2231 = distinct !DILexicalBlock(scope: !2215, file: !155, line: 558, column: 15)
!2232 = !DILocation(line: 558, column: 15, scope: !2231)
!2233 = !DILocation(line: 559, column: 15, scope: !2215)
!2234 = !DILocation(line: 559, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !155, line: 559, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2215, file: !155, line: 559, column: 15)
!2237 = !DILocation(line: 559, column: 15, scope: !2236)
!2238 = !DILocation(line: 560, column: 15, scope: !2215)
!2239 = !DILocation(line: 560, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !155, line: 560, column: 15)
!2241 = distinct !DILexicalBlock(scope: !2215, file: !155, line: 560, column: 15)
!2242 = !DILocation(line: 560, column: 15, scope: !2241)
!2243 = !DILocation(line: 561, column: 40, scope: !2215)
!2244 = !DILocation(line: 562, column: 13, scope: !2215)
!2245 = !DILocation(line: 563, column: 11, scope: !2000)
!2246 = !DILocation(line: 587, column: 36, scope: !2000)
!2247 = !DILocation(line: 588, column: 11, scope: !2000)
!2248 = !DILocalVariable(name: "m", scope: !2249, file: !155, line: 598, type: !163)
!2249 = distinct !DILexicalBlock(scope: !2000, file: !155, line: 596, column: 11)
!2250 = !DILocation(line: 598, column: 20, scope: !2249)
!2251 = !DILocalVariable(name: "printable", scope: !2249, file: !155, line: 600, type: !74)
!2252 = !DILocation(line: 600, column: 18, scope: !2249)
!2253 = !DILocation(line: 602, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !155, line: 602, column: 17)
!2255 = !DILocation(line: 602, column: 17, scope: !2249)
!2256 = !DILocation(line: 604, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !155, line: 603, column: 15)
!2258 = !DILocation(line: 605, column: 29, scope: !2257)
!2259 = !DILocation(line: 605, column: 41, scope: !2257)
!2260 = !DILocation(line: 605, column: 27, scope: !2257)
!2261 = !DILocation(line: 606, column: 15, scope: !2257)
!2262 = !DILocalVariable(name: "mbs", scope: !2263, file: !155, line: 609, type: !2264)
!2263 = distinct !DILexicalBlock(scope: !2254, file: !155, line: 608, column: 15)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !237, line: 6, baseType: !2265)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !239, line: 21, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 13, size: 64, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2266, file: !239, line: 15, baseType: !58, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2266, file: !239, line: 20, baseType: !2270, size: 32, offset: 32)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !239, line: 16, size: 32, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2270, file: !239, line: 18, baseType: !13, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2270, file: !239, line: 19, baseType: !248, size: 32)
!2274 = !DILocation(line: 609, column: 27, scope: !2263)
!2275 = !DILocation(line: 609, column: 32, scope: !2263)
!2276 = !DILocation(line: 611, column: 19, scope: !2263)
!2277 = !DILocation(line: 612, column: 27, scope: !2263)
!2278 = !DILocation(line: 613, column: 21, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2263, file: !155, line: 613, column: 21)
!2280 = !DILocation(line: 613, column: 29, scope: !2279)
!2281 = !DILocation(line: 613, column: 21, scope: !2263)
!2282 = !DILocation(line: 614, column: 37, scope: !2279)
!2283 = !DILocation(line: 614, column: 29, scope: !2279)
!2284 = !DILocation(line: 614, column: 27, scope: !2279)
!2285 = !DILocation(line: 614, column: 19, scope: !2279)
!2286 = !DILocation(line: 616, column: 17, scope: !2263)
!2287 = !DILocalVariable(name: "w", scope: !2288, file: !155, line: 618, type: !1585)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !155, line: 617, column: 19)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !155, line: 616, column: 17)
!2290 = distinct !DILexicalBlock(scope: !2263, file: !155, line: 616, column: 17)
!2291 = !DILocation(line: 618, column: 30, scope: !2288)
!2292 = !DILocalVariable(name: "bytes", scope: !2288, file: !155, line: 619, type: !163)
!2293 = !DILocation(line: 619, column: 28, scope: !2288)
!2294 = !DILocation(line: 619, column: 51, scope: !2288)
!2295 = !DILocation(line: 619, column: 55, scope: !2288)
!2296 = !DILocation(line: 619, column: 59, scope: !2288)
!2297 = !DILocation(line: 619, column: 57, scope: !2288)
!2298 = !DILocation(line: 620, column: 46, scope: !2288)
!2299 = !DILocation(line: 620, column: 57, scope: !2288)
!2300 = !DILocation(line: 620, column: 61, scope: !2288)
!2301 = !DILocation(line: 620, column: 59, scope: !2288)
!2302 = !DILocation(line: 620, column: 54, scope: !2288)
!2303 = !DILocation(line: 619, column: 36, scope: !2288)
!2304 = !DILocation(line: 621, column: 25, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2288, file: !155, line: 621, column: 25)
!2306 = !DILocation(line: 621, column: 31, scope: !2305)
!2307 = !DILocation(line: 621, column: 25, scope: !2288)
!2308 = !DILocation(line: 622, column: 23, scope: !2305)
!2309 = !DILocation(line: 623, column: 30, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !155, line: 623, column: 30)
!2311 = !DILocation(line: 623, column: 36, scope: !2310)
!2312 = !DILocation(line: 623, column: 30, scope: !2305)
!2313 = !DILocation(line: 625, column: 35, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !155, line: 624, column: 23)
!2315 = !DILocation(line: 626, column: 25, scope: !2314)
!2316 = !DILocation(line: 628, column: 30, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2310, file: !155, line: 628, column: 30)
!2318 = !DILocation(line: 628, column: 36, scope: !2317)
!2319 = !DILocation(line: 628, column: 30, scope: !2310)
!2320 = !DILocation(line: 630, column: 35, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !155, line: 629, column: 23)
!2322 = !DILocation(line: 631, column: 25, scope: !2321)
!2323 = !DILocation(line: 631, column: 32, scope: !2321)
!2324 = !DILocation(line: 631, column: 36, scope: !2321)
!2325 = !DILocation(line: 631, column: 34, scope: !2321)
!2326 = !DILocation(line: 631, column: 40, scope: !2321)
!2327 = !DILocation(line: 631, column: 38, scope: !2321)
!2328 = !DILocation(line: 631, column: 48, scope: !2321)
!2329 = !DILocation(line: 631, column: 51, scope: !2321)
!2330 = !DILocation(line: 631, column: 55, scope: !2321)
!2331 = !DILocation(line: 631, column: 59, scope: !2321)
!2332 = !DILocation(line: 631, column: 57, scope: !2321)
!2333 = !DILocation(line: 0, scope: !2321)
!2334 = !DILocation(line: 632, column: 28, scope: !2321)
!2335 = distinct !{!2335, !2322, !2334, !427}
!2336 = !DILocation(line: 633, column: 25, scope: !2321)
!2337 = !DILocation(line: 645, column: 44, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !155, line: 645, column: 29)
!2339 = distinct !DILexicalBlock(scope: !2317, file: !155, line: 636, column: 23)
!2340 = !DILocation(line: 646, column: 29, scope: !2338)
!2341 = !DILocation(line: 646, column: 32, scope: !2338)
!2342 = !DILocation(line: 646, column: 46, scope: !2338)
!2343 = !DILocation(line: 645, column: 29, scope: !2339)
!2344 = !DILocalVariable(name: "j", scope: !2345, file: !155, line: 648, type: !163)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !155, line: 648, column: 29)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !155, line: 647, column: 27)
!2347 = !DILocation(line: 648, column: 41, scope: !2345)
!2348 = !DILocation(line: 648, column: 34, scope: !2345)
!2349 = !DILocation(line: 648, column: 48, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !155, line: 648, column: 29)
!2351 = !DILocation(line: 648, column: 52, scope: !2350)
!2352 = !DILocation(line: 648, column: 50, scope: !2350)
!2353 = !DILocation(line: 648, column: 29, scope: !2345)
!2354 = !DILocation(line: 649, column: 39, scope: !2350)
!2355 = !DILocation(line: 649, column: 43, scope: !2350)
!2356 = !DILocation(line: 649, column: 47, scope: !2350)
!2357 = !DILocation(line: 649, column: 45, scope: !2350)
!2358 = !DILocation(line: 649, column: 51, scope: !2350)
!2359 = !DILocation(line: 649, column: 49, scope: !2350)
!2360 = !DILocation(line: 649, column: 31, scope: !2350)
!2361 = !DILocation(line: 653, column: 35, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2350, file: !155, line: 650, column: 33)
!2363 = !DILocation(line: 654, column: 33, scope: !2362)
!2364 = !DILocation(line: 648, column: 60, scope: !2350)
!2365 = !DILocation(line: 648, column: 29, scope: !2350)
!2366 = distinct !{!2366, !2353, !2367, !427}
!2367 = !DILocation(line: 654, column: 33, scope: !2345)
!2368 = !DILocation(line: 655, column: 27, scope: !2346)
!2369 = !DILocation(line: 657, column: 43, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2339, file: !155, line: 657, column: 29)
!2371 = !DILocation(line: 657, column: 31, scope: !2370)
!2372 = !DILocation(line: 657, column: 29, scope: !2339)
!2373 = !DILocation(line: 658, column: 37, scope: !2370)
!2374 = !DILocation(line: 658, column: 27, scope: !2370)
!2375 = !DILocation(line: 659, column: 30, scope: !2339)
!2376 = !DILocation(line: 659, column: 27, scope: !2339)
!2377 = !DILocation(line: 664, column: 23, scope: !2288)
!2378 = !DILocation(line: 668, column: 40, scope: !2249)
!2379 = !DILocation(line: 668, column: 38, scope: !2249)
!2380 = !DILocation(line: 670, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2249, file: !155, line: 670, column: 17)
!2382 = !DILocation(line: 670, column: 19, scope: !2381)
!2383 = !DILocation(line: 670, column: 23, scope: !2381)
!2384 = !DILocation(line: 670, column: 27, scope: !2381)
!2385 = !DILocation(line: 670, column: 45, scope: !2381)
!2386 = !DILocation(line: 670, column: 50, scope: !2381)
!2387 = !DILocation(line: 670, column: 17, scope: !2249)
!2388 = !DILocalVariable(name: "ilim", scope: !2389, file: !155, line: 674, type: !163)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !155, line: 671, column: 15)
!2390 = !DILocation(line: 674, column: 24, scope: !2389)
!2391 = !DILocation(line: 674, column: 31, scope: !2389)
!2392 = !DILocation(line: 674, column: 35, scope: !2389)
!2393 = !DILocation(line: 674, column: 33, scope: !2389)
!2394 = !DILocation(line: 676, column: 17, scope: !2389)
!2395 = !DILocation(line: 678, column: 25, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !155, line: 678, column: 25)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !155, line: 677, column: 19)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !155, line: 676, column: 17)
!2399 = distinct !DILexicalBlock(scope: !2389, file: !155, line: 676, column: 17)
!2400 = !DILocation(line: 678, column: 43, scope: !2396)
!2401 = !DILocation(line: 678, column: 48, scope: !2396)
!2402 = !DILocation(line: 678, column: 25, scope: !2397)
!2403 = !DILocation(line: 680, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2396, file: !155, line: 679, column: 23)
!2405 = !DILocation(line: 680, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !155, line: 680, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !155, line: 680, column: 25)
!2408 = !DILocation(line: 680, column: 25, scope: !2407)
!2409 = !DILocation(line: 680, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !155, line: 680, column: 25)
!2411 = !DILocation(line: 680, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2410, file: !155, line: 680, column: 25)
!2413 = !DILocation(line: 680, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !155, line: 680, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !155, line: 680, column: 25)
!2416 = !DILocation(line: 680, column: 25, scope: !2415)
!2417 = !DILocation(line: 680, column: 25, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !155, line: 680, column: 25)
!2419 = distinct !DILexicalBlock(scope: !2412, file: !155, line: 680, column: 25)
!2420 = !DILocation(line: 680, column: 25, scope: !2419)
!2421 = !DILocation(line: 680, column: 25, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !155, line: 680, column: 25)
!2423 = distinct !DILexicalBlock(scope: !2412, file: !155, line: 680, column: 25)
!2424 = !DILocation(line: 680, column: 25, scope: !2423)
!2425 = !DILocation(line: 680, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !155, line: 680, column: 25)
!2427 = distinct !DILexicalBlock(scope: !2407, file: !155, line: 680, column: 25)
!2428 = !DILocation(line: 680, column: 25, scope: !2427)
!2429 = !DILocation(line: 681, column: 25, scope: !2404)
!2430 = !DILocation(line: 681, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !155, line: 681, column: 25)
!2432 = distinct !DILexicalBlock(scope: !2404, file: !155, line: 681, column: 25)
!2433 = !DILocation(line: 681, column: 25, scope: !2432)
!2434 = !DILocation(line: 682, column: 25, scope: !2404)
!2435 = !DILocation(line: 682, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !155, line: 682, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2404, file: !155, line: 682, column: 25)
!2438 = !DILocation(line: 682, column: 25, scope: !2437)
!2439 = !DILocation(line: 683, column: 36, scope: !2404)
!2440 = !DILocation(line: 683, column: 38, scope: !2404)
!2441 = !DILocation(line: 683, column: 33, scope: !2404)
!2442 = !DILocation(line: 683, column: 29, scope: !2404)
!2443 = !DILocation(line: 683, column: 27, scope: !2404)
!2444 = !DILocation(line: 684, column: 23, scope: !2404)
!2445 = !DILocation(line: 685, column: 30, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2396, file: !155, line: 685, column: 30)
!2447 = !DILocation(line: 685, column: 30, scope: !2396)
!2448 = !DILocation(line: 687, column: 25, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !155, line: 686, column: 23)
!2450 = !DILocation(line: 687, column: 25, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !155, line: 687, column: 25)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !155, line: 687, column: 25)
!2453 = !DILocation(line: 687, column: 25, scope: !2452)
!2454 = !DILocation(line: 688, column: 40, scope: !2449)
!2455 = !DILocation(line: 689, column: 23, scope: !2449)
!2456 = !DILocation(line: 690, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2397, file: !155, line: 690, column: 25)
!2458 = !DILocation(line: 690, column: 33, scope: !2457)
!2459 = !DILocation(line: 690, column: 35, scope: !2457)
!2460 = !DILocation(line: 690, column: 30, scope: !2457)
!2461 = !DILocation(line: 690, column: 25, scope: !2397)
!2462 = !DILocation(line: 691, column: 23, scope: !2457)
!2463 = !DILocation(line: 692, column: 21, scope: !2397)
!2464 = !DILocation(line: 692, column: 21, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !155, line: 692, column: 21)
!2466 = distinct !DILexicalBlock(scope: !2397, file: !155, line: 692, column: 21)
!2467 = !DILocation(line: 692, column: 21, scope: !2466)
!2468 = !DILocation(line: 692, column: 21, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !155, line: 692, column: 21)
!2470 = !DILocation(line: 692, column: 21, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !155, line: 692, column: 21)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !155, line: 692, column: 21)
!2473 = !DILocation(line: 692, column: 21, scope: !2472)
!2474 = !DILocation(line: 692, column: 21, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !155, line: 692, column: 21)
!2476 = distinct !DILexicalBlock(scope: !2469, file: !155, line: 692, column: 21)
!2477 = !DILocation(line: 692, column: 21, scope: !2476)
!2478 = !DILocation(line: 693, column: 21, scope: !2397)
!2479 = !DILocation(line: 693, column: 21, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !155, line: 693, column: 21)
!2481 = distinct !DILexicalBlock(scope: !2397, file: !155, line: 693, column: 21)
!2482 = !DILocation(line: 693, column: 21, scope: !2481)
!2483 = !DILocation(line: 694, column: 25, scope: !2397)
!2484 = !DILocation(line: 694, column: 29, scope: !2397)
!2485 = !DILocation(line: 694, column: 23, scope: !2397)
!2486 = !DILocation(line: 676, column: 17, scope: !2398)
!2487 = distinct !{!2487, !2488, !2489}
!2488 = !DILocation(line: 676, column: 17, scope: !2399)
!2489 = !DILocation(line: 695, column: 19, scope: !2399)
!2490 = !DILocation(line: 697, column: 17, scope: !2389)
!2491 = !DILocation(line: 700, column: 9, scope: !2000)
!2492 = !DILocation(line: 702, column: 16, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 702, column: 11)
!2494 = !DILocation(line: 702, column: 34, scope: !2493)
!2495 = !DILocation(line: 702, column: 37, scope: !2493)
!2496 = !DILocation(line: 702, column: 51, scope: !2493)
!2497 = !DILocation(line: 703, column: 15, scope: !2493)
!2498 = !DILocation(line: 703, column: 18, scope: !2493)
!2499 = !DILocation(line: 704, column: 14, scope: !2493)
!2500 = !DILocation(line: 704, column: 17, scope: !2493)
!2501 = !DILocation(line: 705, column: 14, scope: !2493)
!2502 = !DILocation(line: 705, column: 17, scope: !2493)
!2503 = !DILocation(line: 705, column: 33, scope: !2493)
!2504 = !DILocation(line: 705, column: 35, scope: !2493)
!2505 = !DILocation(line: 705, column: 51, scope: !2493)
!2506 = !DILocation(line: 705, column: 53, scope: !2493)
!2507 = !DILocation(line: 705, column: 47, scope: !2493)
!2508 = !DILocation(line: 705, column: 65, scope: !2493)
!2509 = !DILocation(line: 706, column: 11, scope: !2493)
!2510 = !DILocation(line: 706, column: 15, scope: !2493)
!2511 = !DILocation(line: 702, column: 11, scope: !1950)
!2512 = !DILocation(line: 707, column: 9, scope: !2493)
!2513 = !DILabel(scope: !1950, name: "store_escape", file: !155, line: 709)
!2514 = !DILocation(line: 709, column: 5, scope: !1950)
!2515 = !DILocation(line: 710, column: 7, scope: !1950)
!2516 = !DILocation(line: 710, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !155, line: 710, column: 7)
!2518 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 710, column: 7)
!2519 = !DILocation(line: 710, column: 7, scope: !2518)
!2520 = !DILocation(line: 710, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !155, line: 710, column: 7)
!2522 = !DILocation(line: 710, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2521, file: !155, line: 710, column: 7)
!2524 = !DILocation(line: 710, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !155, line: 710, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !155, line: 710, column: 7)
!2527 = !DILocation(line: 710, column: 7, scope: !2526)
!2528 = !DILocation(line: 710, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !155, line: 710, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2523, file: !155, line: 710, column: 7)
!2531 = !DILocation(line: 710, column: 7, scope: !2530)
!2532 = !DILocation(line: 710, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !155, line: 710, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2523, file: !155, line: 710, column: 7)
!2535 = !DILocation(line: 710, column: 7, scope: !2534)
!2536 = !DILocation(line: 710, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !155, line: 710, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2518, file: !155, line: 710, column: 7)
!2539 = !DILocation(line: 710, column: 7, scope: !2538)
!2540 = !DILabel(scope: !1950, name: "store_c", file: !155, line: 712)
!2541 = !DILocation(line: 712, column: 5, scope: !1950)
!2542 = !DILocation(line: 713, column: 7, scope: !1950)
!2543 = !DILocation(line: 713, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !155, line: 713, column: 7)
!2545 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 713, column: 7)
!2546 = !DILocation(line: 713, column: 7, scope: !2545)
!2547 = !DILocation(line: 713, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !155, line: 713, column: 7)
!2549 = !DILocation(line: 713, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !155, line: 713, column: 7)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !155, line: 713, column: 7)
!2552 = !DILocation(line: 713, column: 7, scope: !2551)
!2553 = !DILocation(line: 713, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !155, line: 713, column: 7)
!2555 = distinct !DILexicalBlock(scope: !2548, file: !155, line: 713, column: 7)
!2556 = !DILocation(line: 713, column: 7, scope: !2555)
!2557 = !DILocation(line: 714, column: 7, scope: !1950)
!2558 = !DILocation(line: 714, column: 7, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !155, line: 714, column: 7)
!2560 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 714, column: 7)
!2561 = !DILocation(line: 714, column: 7, scope: !2560)
!2562 = !DILocation(line: 716, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !1950, file: !155, line: 716, column: 11)
!2564 = !DILocation(line: 716, column: 11, scope: !1950)
!2565 = !DILocation(line: 717, column: 38, scope: !2563)
!2566 = !DILocation(line: 717, column: 9, scope: !2563)
!2567 = !DILocation(line: 718, column: 5, scope: !1950)
!2568 = !DILocation(line: 395, column: 82, scope: !1939)
!2569 = !DILocation(line: 395, column: 3, scope: !1939)
!2570 = distinct !{!2570, !1948, !2571, !427}
!2571 = !DILocation(line: 718, column: 5, scope: !1935)
!2572 = !DILocation(line: 720, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 720, column: 7)
!2574 = !DILocation(line: 720, column: 11, scope: !2573)
!2575 = !DILocation(line: 720, column: 16, scope: !2573)
!2576 = !DILocation(line: 720, column: 19, scope: !2573)
!2577 = !DILocation(line: 720, column: 33, scope: !2573)
!2578 = !DILocation(line: 721, column: 7, scope: !2573)
!2579 = !DILocation(line: 721, column: 10, scope: !2573)
!2580 = !DILocation(line: 720, column: 7, scope: !1797)
!2581 = !DILocation(line: 722, column: 5, scope: !2573)
!2582 = !DILocation(line: 728, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 728, column: 7)
!2584 = !DILocation(line: 728, column: 21, scope: !2583)
!2585 = !DILocation(line: 728, column: 51, scope: !2583)
!2586 = !DILocation(line: 728, column: 56, scope: !2583)
!2587 = !DILocation(line: 729, column: 7, scope: !2583)
!2588 = !DILocation(line: 729, column: 10, scope: !2583)
!2589 = !DILocation(line: 728, column: 7, scope: !1797)
!2590 = !DILocation(line: 731, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !155, line: 731, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2583, file: !155, line: 730, column: 5)
!2593 = !DILocation(line: 731, column: 11, scope: !2592)
!2594 = !DILocation(line: 732, column: 42, scope: !2591)
!2595 = !DILocation(line: 732, column: 50, scope: !2591)
!2596 = !DILocation(line: 732, column: 67, scope: !2591)
!2597 = !DILocation(line: 732, column: 72, scope: !2591)
!2598 = !DILocation(line: 734, column: 42, scope: !2591)
!2599 = !DILocation(line: 734, column: 49, scope: !2591)
!2600 = !DILocation(line: 735, column: 42, scope: !2591)
!2601 = !DILocation(line: 735, column: 54, scope: !2591)
!2602 = !DILocation(line: 732, column: 16, scope: !2591)
!2603 = !DILocation(line: 732, column: 9, scope: !2591)
!2604 = !DILocation(line: 736, column: 18, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2591, file: !155, line: 736, column: 16)
!2606 = !DILocation(line: 736, column: 29, scope: !2605)
!2607 = !DILocation(line: 736, column: 32, scope: !2605)
!2608 = !DILocation(line: 736, column: 16, scope: !2591)
!2609 = !DILocation(line: 739, column: 24, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !155, line: 737, column: 9)
!2611 = !DILocation(line: 739, column: 22, scope: !2610)
!2612 = !DILocation(line: 740, column: 15, scope: !2610)
!2613 = !DILocation(line: 741, column: 11, scope: !2610)
!2614 = !DILocation(line: 743, column: 5, scope: !2592)
!2615 = !DILocation(line: 745, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 745, column: 7)
!2617 = !DILocation(line: 745, column: 20, scope: !2616)
!2618 = !DILocation(line: 745, column: 24, scope: !2616)
!2619 = !DILocation(line: 745, column: 7, scope: !1797)
!2620 = !DILocation(line: 746, column: 5, scope: !2616)
!2621 = !DILocation(line: 746, column: 13, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !155, line: 746, column: 5)
!2623 = distinct !DILexicalBlock(scope: !2616, file: !155, line: 746, column: 5)
!2624 = !DILocation(line: 746, column: 12, scope: !2622)
!2625 = !DILocation(line: 746, column: 5, scope: !2623)
!2626 = !DILocation(line: 747, column: 7, scope: !2622)
!2627 = !DILocation(line: 747, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !155, line: 747, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2622, file: !155, line: 747, column: 7)
!2630 = !DILocation(line: 747, column: 7, scope: !2629)
!2631 = !DILocation(line: 746, column: 39, scope: !2622)
!2632 = !DILocation(line: 746, column: 5, scope: !2622)
!2633 = distinct !{!2633, !2625, !2634, !427}
!2634 = !DILocation(line: 747, column: 7, scope: !2623)
!2635 = !DILocation(line: 749, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 749, column: 7)
!2637 = !DILocation(line: 749, column: 13, scope: !2636)
!2638 = !DILocation(line: 749, column: 11, scope: !2636)
!2639 = !DILocation(line: 749, column: 7, scope: !1797)
!2640 = !DILocation(line: 750, column: 5, scope: !2636)
!2641 = !DILocation(line: 750, column: 12, scope: !2636)
!2642 = !DILocation(line: 750, column: 17, scope: !2636)
!2643 = !DILocation(line: 751, column: 10, scope: !1797)
!2644 = !DILocation(line: 751, column: 3, scope: !1797)
!2645 = !DILabel(scope: !1797, name: "force_outer_quoting_style", file: !155, line: 753)
!2646 = !DILocation(line: 753, column: 2, scope: !1797)
!2647 = !DILocation(line: 756, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !1797, file: !155, line: 756, column: 7)
!2649 = !DILocation(line: 756, column: 21, scope: !2648)
!2650 = !DILocation(line: 756, column: 51, scope: !2648)
!2651 = !DILocation(line: 756, column: 54, scope: !2648)
!2652 = !DILocation(line: 756, column: 7, scope: !1797)
!2653 = !DILocation(line: 757, column: 19, scope: !2648)
!2654 = !DILocation(line: 757, column: 5, scope: !2648)
!2655 = !DILocation(line: 758, column: 36, scope: !1797)
!2656 = !DILocation(line: 758, column: 44, scope: !1797)
!2657 = !DILocation(line: 758, column: 56, scope: !1797)
!2658 = !DILocation(line: 758, column: 61, scope: !1797)
!2659 = !DILocation(line: 759, column: 36, scope: !1797)
!2660 = !DILocation(line: 760, column: 36, scope: !1797)
!2661 = !DILocation(line: 760, column: 42, scope: !1797)
!2662 = !DILocation(line: 761, column: 36, scope: !1797)
!2663 = !DILocation(line: 761, column: 48, scope: !1797)
!2664 = !DILocation(line: 758, column: 10, scope: !1797)
!2665 = !DILocation(line: 758, column: 3, scope: !1797)
!2666 = !DILocation(line: 762, column: 1, scope: !1797)
!2667 = !DILocalVariable(name: "msgid", arg: 1, scope: !194, file: !155, line: 197, type: !6)
!2668 = !DILocation(line: 197, column: 28, scope: !194)
!2669 = !DILocalVariable(name: "s", arg: 2, scope: !194, file: !155, line: 197, type: !22)
!2670 = !DILocation(line: 197, column: 54, scope: !194)
!2671 = !DILocalVariable(name: "translation", scope: !194, file: !155, line: 199, type: !6)
!2672 = !DILocation(line: 199, column: 15, scope: !194)
!2673 = !DILocation(line: 199, column: 29, scope: !194)
!2674 = !DILocation(line: 201, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !194, file: !155, line: 201, column: 7)
!2676 = !DILocation(line: 201, column: 22, scope: !2675)
!2677 = !DILocation(line: 201, column: 19, scope: !2675)
!2678 = !DILocation(line: 201, column: 7, scope: !194)
!2679 = !DILocation(line: 202, column: 12, scope: !2675)
!2680 = !DILocation(line: 202, column: 5, scope: !2675)
!2681 = !DILocalVariable(name: "w", scope: !194, file: !155, line: 229, type: !1585)
!2682 = !DILocation(line: 229, column: 12, scope: !194)
!2683 = !DILocalVariable(name: "mbs", scope: !194, file: !155, line: 230, type: !2264)
!2684 = !DILocation(line: 230, column: 13, scope: !194)
!2685 = !DILocation(line: 230, column: 18, scope: !194)
!2686 = !DILocation(line: 231, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !194, file: !155, line: 231, column: 7)
!2688 = !DILocation(line: 231, column: 40, scope: !2687)
!2689 = !DILocation(line: 231, column: 45, scope: !2687)
!2690 = !DILocation(line: 231, column: 48, scope: !2687)
!2691 = !DILocation(line: 231, column: 50, scope: !2687)
!2692 = !DILocation(line: 231, column: 7, scope: !194)
!2693 = !DILocation(line: 232, column: 18, scope: !2687)
!2694 = !DILocation(line: 232, column: 27, scope: !2687)
!2695 = !DILocation(line: 232, column: 12, scope: !2687)
!2696 = !DILocation(line: 232, column: 5, scope: !2687)
!2697 = !DILocation(line: 234, column: 11, scope: !194)
!2698 = !DILocation(line: 234, column: 13, scope: !194)
!2699 = !DILocation(line: 234, column: 3, scope: !194)
!2700 = !DILocation(line: 235, column: 1, scope: !194)
!2701 = distinct !DISubprogram(name: "quotearg_alloc", scope: !155, file: !155, line: 788, type: !2702, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!139, !6, !163, !1637}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2701, file: !155, line: 788, type: !6)
!2705 = !DILocation(line: 788, column: 29, scope: !2701)
!2706 = !DILocalVariable(name: "argsize", arg: 2, scope: !2701, file: !155, line: 788, type: !163)
!2707 = !DILocation(line: 788, column: 41, scope: !2701)
!2708 = !DILocalVariable(name: "o", arg: 3, scope: !2701, file: !155, line: 789, type: !1637)
!2709 = !DILocation(line: 789, column: 47, scope: !2701)
!2710 = !DILocation(line: 791, column: 30, scope: !2701)
!2711 = !DILocation(line: 791, column: 35, scope: !2701)
!2712 = !DILocation(line: 791, column: 50, scope: !2701)
!2713 = !DILocation(line: 791, column: 10, scope: !2701)
!2714 = !DILocation(line: 791, column: 3, scope: !2701)
!2715 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !155, file: !155, line: 801, type: !2716, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!139, !6, !163, !273, !1637}
!2718 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !155, line: 801, type: !6)
!2719 = !DILocation(line: 801, column: 33, scope: !2715)
!2720 = !DILocalVariable(name: "argsize", arg: 2, scope: !2715, file: !155, line: 801, type: !163)
!2721 = !DILocation(line: 801, column: 45, scope: !2715)
!2722 = !DILocalVariable(name: "size", arg: 3, scope: !2715, file: !155, line: 801, type: !273)
!2723 = !DILocation(line: 801, column: 62, scope: !2715)
!2724 = !DILocalVariable(name: "o", arg: 4, scope: !2715, file: !155, line: 802, type: !1637)
!2725 = !DILocation(line: 802, column: 51, scope: !2715)
!2726 = !DILocalVariable(name: "p", scope: !2715, file: !155, line: 804, type: !1637)
!2727 = !DILocation(line: 804, column: 33, scope: !2715)
!2728 = !DILocation(line: 804, column: 37, scope: !2715)
!2729 = !DILocation(line: 804, column: 41, scope: !2715)
!2730 = !DILocalVariable(name: "saved_errno", scope: !2715, file: !155, line: 805, type: !58)
!2731 = !DILocation(line: 805, column: 7, scope: !2715)
!2732 = !DILocation(line: 805, column: 21, scope: !2715)
!2733 = !DILocalVariable(name: "flags", scope: !2715, file: !155, line: 807, type: !58)
!2734 = !DILocation(line: 807, column: 7, scope: !2715)
!2735 = !DILocation(line: 807, column: 15, scope: !2715)
!2736 = !DILocation(line: 807, column: 18, scope: !2715)
!2737 = !DILocation(line: 807, column: 27, scope: !2715)
!2738 = !DILocation(line: 807, column: 24, scope: !2715)
!2739 = !DILocalVariable(name: "bufsize", scope: !2715, file: !155, line: 808, type: !163)
!2740 = !DILocation(line: 808, column: 10, scope: !2715)
!2741 = !DILocation(line: 808, column: 55, scope: !2715)
!2742 = !DILocation(line: 808, column: 60, scope: !2715)
!2743 = !DILocation(line: 808, column: 69, scope: !2715)
!2744 = !DILocation(line: 808, column: 72, scope: !2715)
!2745 = !DILocation(line: 809, column: 46, scope: !2715)
!2746 = !DILocation(line: 809, column: 53, scope: !2715)
!2747 = !DILocation(line: 809, column: 56, scope: !2715)
!2748 = !DILocation(line: 810, column: 46, scope: !2715)
!2749 = !DILocation(line: 810, column: 49, scope: !2715)
!2750 = !DILocation(line: 811, column: 46, scope: !2715)
!2751 = !DILocation(line: 811, column: 49, scope: !2715)
!2752 = !DILocation(line: 808, column: 20, scope: !2715)
!2753 = !DILocation(line: 811, column: 62, scope: !2715)
!2754 = !DILocalVariable(name: "buf", scope: !2715, file: !155, line: 812, type: !139)
!2755 = !DILocation(line: 812, column: 9, scope: !2715)
!2756 = !DILocation(line: 812, column: 27, scope: !2715)
!2757 = !DILocation(line: 812, column: 15, scope: !2715)
!2758 = !DILocation(line: 813, column: 29, scope: !2715)
!2759 = !DILocation(line: 813, column: 34, scope: !2715)
!2760 = !DILocation(line: 813, column: 43, scope: !2715)
!2761 = !DILocation(line: 813, column: 48, scope: !2715)
!2762 = !DILocation(line: 813, column: 57, scope: !2715)
!2763 = !DILocation(line: 813, column: 60, scope: !2715)
!2764 = !DILocation(line: 813, column: 67, scope: !2715)
!2765 = !DILocation(line: 814, column: 29, scope: !2715)
!2766 = !DILocation(line: 814, column: 32, scope: !2715)
!2767 = !DILocation(line: 815, column: 29, scope: !2715)
!2768 = !DILocation(line: 815, column: 32, scope: !2715)
!2769 = !DILocation(line: 815, column: 44, scope: !2715)
!2770 = !DILocation(line: 815, column: 47, scope: !2715)
!2771 = !DILocation(line: 813, column: 3, scope: !2715)
!2772 = !DILocation(line: 816, column: 11, scope: !2715)
!2773 = !DILocation(line: 816, column: 3, scope: !2715)
!2774 = !DILocation(line: 816, column: 9, scope: !2715)
!2775 = !DILocation(line: 817, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2715, file: !155, line: 817, column: 7)
!2777 = !DILocation(line: 817, column: 7, scope: !2715)
!2778 = !DILocation(line: 818, column: 13, scope: !2776)
!2779 = !DILocation(line: 818, column: 21, scope: !2776)
!2780 = !DILocation(line: 818, column: 6, scope: !2776)
!2781 = !DILocation(line: 818, column: 11, scope: !2776)
!2782 = !DILocation(line: 818, column: 5, scope: !2776)
!2783 = !DILocation(line: 819, column: 10, scope: !2715)
!2784 = !DILocation(line: 819, column: 3, scope: !2715)
!2785 = distinct !DISubprogram(name: "quotearg_free", scope: !155, file: !155, line: 837, type: !107, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2786 = !DILocalVariable(name: "sv", scope: !2785, file: !155, line: 839, type: !202)
!2787 = !DILocation(line: 839, column: 19, scope: !2785)
!2788 = !DILocation(line: 839, column: 24, scope: !2785)
!2789 = !DILocalVariable(name: "i", scope: !2790, file: !155, line: 840, type: !58)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !155, line: 840, column: 3)
!2791 = !DILocation(line: 840, column: 12, scope: !2790)
!2792 = !DILocation(line: 840, column: 8, scope: !2790)
!2793 = !DILocation(line: 840, column: 19, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !155, line: 840, column: 3)
!2795 = !DILocation(line: 840, column: 23, scope: !2794)
!2796 = !DILocation(line: 840, column: 21, scope: !2794)
!2797 = !DILocation(line: 840, column: 3, scope: !2790)
!2798 = !DILocation(line: 841, column: 11, scope: !2794)
!2799 = !DILocation(line: 841, column: 14, scope: !2794)
!2800 = !DILocation(line: 841, column: 17, scope: !2794)
!2801 = !DILocation(line: 841, column: 5, scope: !2794)
!2802 = !DILocation(line: 840, column: 32, scope: !2794)
!2803 = !DILocation(line: 840, column: 3, scope: !2794)
!2804 = distinct !{!2804, !2797, !2805, !427}
!2805 = !DILocation(line: 841, column: 20, scope: !2790)
!2806 = !DILocation(line: 842, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2785, file: !155, line: 842, column: 7)
!2808 = !DILocation(line: 842, column: 13, scope: !2807)
!2809 = !DILocation(line: 842, column: 17, scope: !2807)
!2810 = !DILocation(line: 842, column: 7, scope: !2785)
!2811 = !DILocation(line: 844, column: 13, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !155, line: 843, column: 5)
!2813 = !DILocation(line: 844, column: 19, scope: !2812)
!2814 = !DILocation(line: 844, column: 7, scope: !2812)
!2815 = !DILocation(line: 845, column: 21, scope: !2812)
!2816 = !DILocation(line: 846, column: 20, scope: !2812)
!2817 = !DILocation(line: 847, column: 5, scope: !2812)
!2818 = !DILocation(line: 848, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2785, file: !155, line: 848, column: 7)
!2820 = !DILocation(line: 848, column: 10, scope: !2819)
!2821 = !DILocation(line: 848, column: 7, scope: !2785)
!2822 = !DILocation(line: 850, column: 13, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !155, line: 849, column: 5)
!2824 = !DILocation(line: 850, column: 7, scope: !2823)
!2825 = !DILocation(line: 851, column: 15, scope: !2823)
!2826 = !DILocation(line: 852, column: 5, scope: !2823)
!2827 = !DILocation(line: 853, column: 10, scope: !2785)
!2828 = !DILocation(line: 854, column: 1, scope: !2785)
!2829 = distinct !DISubprogram(name: "quotearg_n", scope: !155, file: !155, line: 919, type: !2830, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!139, !58, !6}
!2832 = !DILocalVariable(name: "n", arg: 1, scope: !2829, file: !155, line: 919, type: !58)
!2833 = !DILocation(line: 919, column: 17, scope: !2829)
!2834 = !DILocalVariable(name: "arg", arg: 2, scope: !2829, file: !155, line: 919, type: !6)
!2835 = !DILocation(line: 919, column: 32, scope: !2829)
!2836 = !DILocation(line: 921, column: 30, scope: !2829)
!2837 = !DILocation(line: 921, column: 33, scope: !2829)
!2838 = !DILocation(line: 921, column: 10, scope: !2829)
!2839 = !DILocation(line: 921, column: 3, scope: !2829)
!2840 = distinct !DISubprogram(name: "quotearg_n_options", scope: !155, file: !155, line: 866, type: !2841, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!139, !58, !6, !163, !1637}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2840, file: !155, line: 866, type: !58)
!2844 = !DILocation(line: 866, column: 25, scope: !2840)
!2845 = !DILocalVariable(name: "arg", arg: 2, scope: !2840, file: !155, line: 866, type: !6)
!2846 = !DILocation(line: 866, column: 40, scope: !2840)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2840, file: !155, line: 866, type: !163)
!2848 = !DILocation(line: 866, column: 52, scope: !2840)
!2849 = !DILocalVariable(name: "options", arg: 4, scope: !2840, file: !155, line: 867, type: !1637)
!2850 = !DILocation(line: 867, column: 51, scope: !2840)
!2851 = !DILocalVariable(name: "saved_errno", scope: !2840, file: !155, line: 869, type: !58)
!2852 = !DILocation(line: 869, column: 7, scope: !2840)
!2853 = !DILocation(line: 869, column: 21, scope: !2840)
!2854 = !DILocalVariable(name: "sv", scope: !2840, file: !155, line: 871, type: !202)
!2855 = !DILocation(line: 871, column: 19, scope: !2840)
!2856 = !DILocation(line: 871, column: 24, scope: !2840)
!2857 = !DILocalVariable(name: "nslots_max", scope: !2840, file: !155, line: 873, type: !58)
!2858 = !DILocation(line: 873, column: 7, scope: !2840)
!2859 = !DILocation(line: 874, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2840, file: !155, line: 874, column: 7)
!2861 = !DILocation(line: 874, column: 12, scope: !2860)
!2862 = !DILocation(line: 874, column: 17, scope: !2860)
!2863 = !DILocation(line: 874, column: 20, scope: !2860)
!2864 = !DILocation(line: 874, column: 24, scope: !2860)
!2865 = !DILocation(line: 874, column: 22, scope: !2860)
!2866 = !DILocation(line: 874, column: 7, scope: !2840)
!2867 = !DILocation(line: 875, column: 5, scope: !2860)
!2868 = !DILocation(line: 877, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2840, file: !155, line: 877, column: 7)
!2870 = !DILocation(line: 877, column: 17, scope: !2869)
!2871 = !DILocation(line: 877, column: 14, scope: !2869)
!2872 = !DILocation(line: 877, column: 7, scope: !2840)
!2873 = !DILocalVariable(name: "preallocated", scope: !2874, file: !155, line: 879, type: !74)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !155, line: 878, column: 5)
!2875 = !DILocation(line: 879, column: 12, scope: !2874)
!2876 = !DILocation(line: 879, column: 28, scope: !2874)
!2877 = !DILocation(line: 879, column: 31, scope: !2874)
!2878 = !DILocalVariable(name: "new_nslots", scope: !2874, file: !155, line: 880, type: !281)
!2879 = !DILocation(line: 880, column: 13, scope: !2874)
!2880 = !DILocation(line: 880, column: 26, scope: !2874)
!2881 = !DILocation(line: 882, column: 31, scope: !2874)
!2882 = !DILocation(line: 882, column: 53, scope: !2874)
!2883 = !DILocation(line: 883, column: 31, scope: !2874)
!2884 = !DILocation(line: 883, column: 35, scope: !2874)
!2885 = !DILocation(line: 883, column: 33, scope: !2874)
!2886 = !DILocation(line: 883, column: 42, scope: !2874)
!2887 = !DILocation(line: 883, column: 47, scope: !2874)
!2888 = !DILocation(line: 882, column: 22, scope: !2874)
!2889 = !DILocation(line: 882, column: 20, scope: !2874)
!2890 = !DILocation(line: 882, column: 15, scope: !2874)
!2891 = !DILocation(line: 884, column: 11, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2874, file: !155, line: 884, column: 11)
!2893 = !DILocation(line: 884, column: 11, scope: !2874)
!2894 = !DILocation(line: 885, column: 10, scope: !2892)
!2895 = !DILocation(line: 885, column: 15, scope: !2892)
!2896 = !DILocation(line: 885, column: 9, scope: !2892)
!2897 = !DILocation(line: 886, column: 15, scope: !2874)
!2898 = !DILocation(line: 886, column: 20, scope: !2874)
!2899 = !DILocation(line: 886, column: 18, scope: !2874)
!2900 = !DILocation(line: 886, column: 7, scope: !2874)
!2901 = !DILocation(line: 886, column: 32, scope: !2874)
!2902 = !DILocation(line: 886, column: 45, scope: !2874)
!2903 = !DILocation(line: 886, column: 43, scope: !2874)
!2904 = !DILocation(line: 886, column: 53, scope: !2874)
!2905 = !DILocation(line: 887, column: 16, scope: !2874)
!2906 = !DILocation(line: 887, column: 14, scope: !2874)
!2907 = !DILocation(line: 888, column: 5, scope: !2874)
!2908 = !DILocalVariable(name: "size", scope: !2909, file: !155, line: 891, type: !163)
!2909 = distinct !DILexicalBlock(scope: !2840, file: !155, line: 890, column: 3)
!2910 = !DILocation(line: 891, column: 12, scope: !2909)
!2911 = !DILocation(line: 891, column: 19, scope: !2909)
!2912 = !DILocation(line: 891, column: 22, scope: !2909)
!2913 = !DILocation(line: 891, column: 25, scope: !2909)
!2914 = !DILocalVariable(name: "val", scope: !2909, file: !155, line: 892, type: !139)
!2915 = !DILocation(line: 892, column: 11, scope: !2909)
!2916 = !DILocation(line: 892, column: 17, scope: !2909)
!2917 = !DILocation(line: 892, column: 20, scope: !2909)
!2918 = !DILocation(line: 892, column: 23, scope: !2909)
!2919 = !DILocalVariable(name: "flags", scope: !2909, file: !155, line: 894, type: !58)
!2920 = !DILocation(line: 894, column: 9, scope: !2909)
!2921 = !DILocation(line: 894, column: 17, scope: !2909)
!2922 = !DILocation(line: 894, column: 26, scope: !2909)
!2923 = !DILocation(line: 894, column: 32, scope: !2909)
!2924 = !DILocalVariable(name: "qsize", scope: !2909, file: !155, line: 895, type: !163)
!2925 = !DILocation(line: 895, column: 12, scope: !2909)
!2926 = !DILocation(line: 895, column: 46, scope: !2909)
!2927 = !DILocation(line: 895, column: 51, scope: !2909)
!2928 = !DILocation(line: 895, column: 57, scope: !2909)
!2929 = !DILocation(line: 895, column: 62, scope: !2909)
!2930 = !DILocation(line: 896, column: 46, scope: !2909)
!2931 = !DILocation(line: 896, column: 55, scope: !2909)
!2932 = !DILocation(line: 896, column: 62, scope: !2909)
!2933 = !DILocation(line: 897, column: 46, scope: !2909)
!2934 = !DILocation(line: 897, column: 55, scope: !2909)
!2935 = !DILocation(line: 898, column: 46, scope: !2909)
!2936 = !DILocation(line: 898, column: 55, scope: !2909)
!2937 = !DILocation(line: 899, column: 46, scope: !2909)
!2938 = !DILocation(line: 899, column: 55, scope: !2909)
!2939 = !DILocation(line: 895, column: 20, scope: !2909)
!2940 = !DILocation(line: 901, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2909, file: !155, line: 901, column: 9)
!2942 = !DILocation(line: 901, column: 17, scope: !2941)
!2943 = !DILocation(line: 901, column: 14, scope: !2941)
!2944 = !DILocation(line: 901, column: 9, scope: !2909)
!2945 = !DILocation(line: 903, column: 29, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !155, line: 902, column: 7)
!2947 = !DILocation(line: 903, column: 35, scope: !2946)
!2948 = !DILocation(line: 903, column: 27, scope: !2946)
!2949 = !DILocation(line: 903, column: 9, scope: !2946)
!2950 = !DILocation(line: 903, column: 12, scope: !2946)
!2951 = !DILocation(line: 903, column: 15, scope: !2946)
!2952 = !DILocation(line: 903, column: 20, scope: !2946)
!2953 = !DILocation(line: 904, column: 13, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2946, file: !155, line: 904, column: 13)
!2955 = !DILocation(line: 904, column: 17, scope: !2954)
!2956 = !DILocation(line: 904, column: 13, scope: !2946)
!2957 = !DILocation(line: 905, column: 17, scope: !2954)
!2958 = !DILocation(line: 905, column: 11, scope: !2954)
!2959 = !DILocation(line: 906, column: 39, scope: !2946)
!2960 = !DILocation(line: 906, column: 27, scope: !2946)
!2961 = !DILocation(line: 906, column: 25, scope: !2946)
!2962 = !DILocation(line: 906, column: 9, scope: !2946)
!2963 = !DILocation(line: 906, column: 12, scope: !2946)
!2964 = !DILocation(line: 906, column: 15, scope: !2946)
!2965 = !DILocation(line: 906, column: 19, scope: !2946)
!2966 = !DILocation(line: 907, column: 35, scope: !2946)
!2967 = !DILocation(line: 907, column: 40, scope: !2946)
!2968 = !DILocation(line: 907, column: 46, scope: !2946)
!2969 = !DILocation(line: 907, column: 51, scope: !2946)
!2970 = !DILocation(line: 907, column: 60, scope: !2946)
!2971 = !DILocation(line: 907, column: 69, scope: !2946)
!2972 = !DILocation(line: 908, column: 35, scope: !2946)
!2973 = !DILocation(line: 908, column: 42, scope: !2946)
!2974 = !DILocation(line: 908, column: 51, scope: !2946)
!2975 = !DILocation(line: 909, column: 35, scope: !2946)
!2976 = !DILocation(line: 909, column: 44, scope: !2946)
!2977 = !DILocation(line: 910, column: 35, scope: !2946)
!2978 = !DILocation(line: 910, column: 44, scope: !2946)
!2979 = !DILocation(line: 907, column: 9, scope: !2946)
!2980 = !DILocation(line: 911, column: 7, scope: !2946)
!2981 = !DILocation(line: 913, column: 13, scope: !2909)
!2982 = !DILocation(line: 913, column: 5, scope: !2909)
!2983 = !DILocation(line: 913, column: 11, scope: !2909)
!2984 = !DILocation(line: 914, column: 12, scope: !2909)
!2985 = !DILocation(line: 914, column: 5, scope: !2909)
!2986 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !155, file: !155, line: 925, type: !2987, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!139, !58, !6, !163}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !155, line: 925, type: !58)
!2990 = !DILocation(line: 925, column: 21, scope: !2986)
!2991 = !DILocalVariable(name: "arg", arg: 2, scope: !2986, file: !155, line: 925, type: !6)
!2992 = !DILocation(line: 925, column: 36, scope: !2986)
!2993 = !DILocalVariable(name: "argsize", arg: 3, scope: !2986, file: !155, line: 925, type: !163)
!2994 = !DILocation(line: 925, column: 48, scope: !2986)
!2995 = !DILocation(line: 927, column: 30, scope: !2986)
!2996 = !DILocation(line: 927, column: 33, scope: !2986)
!2997 = !DILocation(line: 927, column: 38, scope: !2986)
!2998 = !DILocation(line: 927, column: 10, scope: !2986)
!2999 = !DILocation(line: 927, column: 3, scope: !2986)
!3000 = distinct !DISubprogram(name: "quotearg", scope: !155, file: !155, line: 931, type: !3001, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!139, !6}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !3000, file: !155, line: 931, type: !6)
!3004 = !DILocation(line: 931, column: 23, scope: !3000)
!3005 = !DILocation(line: 933, column: 25, scope: !3000)
!3006 = !DILocation(line: 933, column: 10, scope: !3000)
!3007 = !DILocation(line: 933, column: 3, scope: !3000)
!3008 = distinct !DISubprogram(name: "quotearg_mem", scope: !155, file: !155, line: 937, type: !3009, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!139, !6, !163}
!3011 = !DILocalVariable(name: "arg", arg: 1, scope: !3008, file: !155, line: 937, type: !6)
!3012 = !DILocation(line: 937, column: 27, scope: !3008)
!3013 = !DILocalVariable(name: "argsize", arg: 2, scope: !3008, file: !155, line: 937, type: !163)
!3014 = !DILocation(line: 937, column: 39, scope: !3008)
!3015 = !DILocation(line: 939, column: 29, scope: !3008)
!3016 = !DILocation(line: 939, column: 34, scope: !3008)
!3017 = !DILocation(line: 939, column: 10, scope: !3008)
!3018 = !DILocation(line: 939, column: 3, scope: !3008)
!3019 = distinct !DISubprogram(name: "quotearg_n_style", scope: !155, file: !155, line: 943, type: !3020, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!139, !58, !22, !6}
!3022 = !DILocalVariable(name: "n", arg: 1, scope: !3019, file: !155, line: 943, type: !58)
!3023 = !DILocation(line: 943, column: 23, scope: !3019)
!3024 = !DILocalVariable(name: "s", arg: 2, scope: !3019, file: !155, line: 943, type: !22)
!3025 = !DILocation(line: 943, column: 45, scope: !3019)
!3026 = !DILocalVariable(name: "arg", arg: 3, scope: !3019, file: !155, line: 943, type: !6)
!3027 = !DILocation(line: 943, column: 60, scope: !3019)
!3028 = !DILocalVariable(name: "o", scope: !3019, file: !155, line: 945, type: !1638)
!3029 = !DILocation(line: 945, column: 32, scope: !3019)
!3030 = !DILocation(line: 945, column: 64, scope: !3019)
!3031 = !DILocation(line: 945, column: 36, scope: !3019)
!3032 = !DILocation(line: 946, column: 30, scope: !3019)
!3033 = !DILocation(line: 946, column: 33, scope: !3019)
!3034 = !DILocation(line: 946, column: 10, scope: !3019)
!3035 = !DILocation(line: 946, column: 3, scope: !3019)
!3036 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !155, file: !155, line: 183, type: !3037, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!175, !22}
!3039 = !DILocalVariable(name: "style", arg: 1, scope: !3036, file: !155, line: 183, type: !22)
!3040 = !DILocation(line: 183, column: 48, scope: !3036)
!3041 = !DILocalVariable(name: "o", scope: !3036, file: !155, line: 185, type: !175)
!3042 = !DILocation(line: 185, column: 26, scope: !3036)
!3043 = !DILocation(line: 186, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !155, line: 186, column: 7)
!3045 = !DILocation(line: 186, column: 13, scope: !3044)
!3046 = !DILocation(line: 186, column: 7, scope: !3036)
!3047 = !DILocation(line: 187, column: 5, scope: !3044)
!3048 = !DILocation(line: 188, column: 13, scope: !3036)
!3049 = !DILocation(line: 188, column: 5, scope: !3036)
!3050 = !DILocation(line: 188, column: 11, scope: !3036)
!3051 = !DILocation(line: 189, column: 3, scope: !3036)
!3052 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !155, file: !155, line: 950, type: !3053, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!139, !58, !22, !6, !163}
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !155, line: 950, type: !58)
!3056 = !DILocation(line: 950, column: 27, scope: !3052)
!3057 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !155, line: 950, type: !22)
!3058 = !DILocation(line: 950, column: 49, scope: !3052)
!3059 = !DILocalVariable(name: "arg", arg: 3, scope: !3052, file: !155, line: 951, type: !6)
!3060 = !DILocation(line: 951, column: 35, scope: !3052)
!3061 = !DILocalVariable(name: "argsize", arg: 4, scope: !3052, file: !155, line: 951, type: !163)
!3062 = !DILocation(line: 951, column: 47, scope: !3052)
!3063 = !DILocalVariable(name: "o", scope: !3052, file: !155, line: 953, type: !1638)
!3064 = !DILocation(line: 953, column: 32, scope: !3052)
!3065 = !DILocation(line: 953, column: 64, scope: !3052)
!3066 = !DILocation(line: 953, column: 36, scope: !3052)
!3067 = !DILocation(line: 954, column: 30, scope: !3052)
!3068 = !DILocation(line: 954, column: 33, scope: !3052)
!3069 = !DILocation(line: 954, column: 38, scope: !3052)
!3070 = !DILocation(line: 954, column: 10, scope: !3052)
!3071 = !DILocation(line: 954, column: 3, scope: !3052)
!3072 = distinct !DISubprogram(name: "quotearg_style", scope: !155, file: !155, line: 958, type: !3073, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!139, !22, !6}
!3075 = !DILocalVariable(name: "s", arg: 1, scope: !3072, file: !155, line: 958, type: !22)
!3076 = !DILocation(line: 958, column: 36, scope: !3072)
!3077 = !DILocalVariable(name: "arg", arg: 2, scope: !3072, file: !155, line: 958, type: !6)
!3078 = !DILocation(line: 958, column: 51, scope: !3072)
!3079 = !DILocation(line: 960, column: 31, scope: !3072)
!3080 = !DILocation(line: 960, column: 34, scope: !3072)
!3081 = !DILocation(line: 960, column: 10, scope: !3072)
!3082 = !DILocation(line: 960, column: 3, scope: !3072)
!3083 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !155, file: !155, line: 964, type: !3084, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!139, !22, !6, !163}
!3086 = !DILocalVariable(name: "s", arg: 1, scope: !3083, file: !155, line: 964, type: !22)
!3087 = !DILocation(line: 964, column: 40, scope: !3083)
!3088 = !DILocalVariable(name: "arg", arg: 2, scope: !3083, file: !155, line: 964, type: !6)
!3089 = !DILocation(line: 964, column: 55, scope: !3083)
!3090 = !DILocalVariable(name: "argsize", arg: 3, scope: !3083, file: !155, line: 964, type: !163)
!3091 = !DILocation(line: 964, column: 67, scope: !3083)
!3092 = !DILocation(line: 966, column: 35, scope: !3083)
!3093 = !DILocation(line: 966, column: 38, scope: !3083)
!3094 = !DILocation(line: 966, column: 43, scope: !3083)
!3095 = !DILocation(line: 966, column: 10, scope: !3083)
!3096 = !DILocation(line: 966, column: 3, scope: !3083)
!3097 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !155, file: !155, line: 970, type: !3098, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!139, !6, !163, !8}
!3100 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !155, line: 970, type: !6)
!3101 = !DILocation(line: 970, column: 32, scope: !3097)
!3102 = !DILocalVariable(name: "argsize", arg: 2, scope: !3097, file: !155, line: 970, type: !163)
!3103 = !DILocation(line: 970, column: 44, scope: !3097)
!3104 = !DILocalVariable(name: "ch", arg: 3, scope: !3097, file: !155, line: 970, type: !8)
!3105 = !DILocation(line: 970, column: 58, scope: !3097)
!3106 = !DILocalVariable(name: "options", scope: !3097, file: !155, line: 972, type: !175)
!3107 = !DILocation(line: 972, column: 26, scope: !3097)
!3108 = !DILocation(line: 973, column: 13, scope: !3097)
!3109 = !DILocation(line: 974, column: 31, scope: !3097)
!3110 = !DILocation(line: 974, column: 3, scope: !3097)
!3111 = !DILocation(line: 975, column: 33, scope: !3097)
!3112 = !DILocation(line: 975, column: 38, scope: !3097)
!3113 = !DILocation(line: 975, column: 10, scope: !3097)
!3114 = !DILocation(line: 975, column: 3, scope: !3097)
!3115 = distinct !DISubprogram(name: "quotearg_char", scope: !155, file: !155, line: 979, type: !3116, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!139, !6, !8}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3115, file: !155, line: 979, type: !6)
!3119 = !DILocation(line: 979, column: 28, scope: !3115)
!3120 = !DILocalVariable(name: "ch", arg: 2, scope: !3115, file: !155, line: 979, type: !8)
!3121 = !DILocation(line: 979, column: 38, scope: !3115)
!3122 = !DILocation(line: 981, column: 29, scope: !3115)
!3123 = !DILocation(line: 981, column: 44, scope: !3115)
!3124 = !DILocation(line: 981, column: 10, scope: !3115)
!3125 = !DILocation(line: 981, column: 3, scope: !3115)
!3126 = distinct !DISubprogram(name: "quotearg_colon", scope: !155, file: !155, line: 985, type: !3001, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3127 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !155, line: 985, type: !6)
!3128 = !DILocation(line: 985, column: 29, scope: !3126)
!3129 = !DILocation(line: 987, column: 25, scope: !3126)
!3130 = !DILocation(line: 987, column: 10, scope: !3126)
!3131 = !DILocation(line: 987, column: 3, scope: !3126)
!3132 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !155, file: !155, line: 991, type: !3009, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3133 = !DILocalVariable(name: "arg", arg: 1, scope: !3132, file: !155, line: 991, type: !6)
!3134 = !DILocation(line: 991, column: 33, scope: !3132)
!3135 = !DILocalVariable(name: "argsize", arg: 2, scope: !3132, file: !155, line: 991, type: !163)
!3136 = !DILocation(line: 991, column: 45, scope: !3132)
!3137 = !DILocation(line: 993, column: 29, scope: !3132)
!3138 = !DILocation(line: 993, column: 34, scope: !3132)
!3139 = !DILocation(line: 993, column: 10, scope: !3132)
!3140 = !DILocation(line: 993, column: 3, scope: !3132)
!3141 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !155, file: !155, line: 997, type: !3020, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !155, line: 997, type: !58)
!3143 = !DILocation(line: 997, column: 29, scope: !3141)
!3144 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !155, line: 997, type: !22)
!3145 = !DILocation(line: 997, column: 51, scope: !3141)
!3146 = !DILocalVariable(name: "arg", arg: 3, scope: !3141, file: !155, line: 997, type: !6)
!3147 = !DILocation(line: 997, column: 66, scope: !3141)
!3148 = !DILocalVariable(name: "options", scope: !3141, file: !155, line: 999, type: !175)
!3149 = !DILocation(line: 999, column: 26, scope: !3141)
!3150 = !DILocation(line: 1000, column: 41, scope: !3141)
!3151 = !DILocation(line: 1000, column: 13, scope: !3141)
!3152 = !DILocation(line: 1001, column: 3, scope: !3141)
!3153 = !DILocation(line: 1002, column: 30, scope: !3141)
!3154 = !DILocation(line: 1002, column: 33, scope: !3141)
!3155 = !DILocation(line: 1002, column: 10, scope: !3141)
!3156 = !DILocation(line: 1002, column: 3, scope: !3141)
!3157 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !155, file: !155, line: 1006, type: !3158, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!139, !58, !6, !6, !6}
!3160 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !155, line: 1006, type: !58)
!3161 = !DILocation(line: 1006, column: 24, scope: !3157)
!3162 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3157, file: !155, line: 1006, type: !6)
!3163 = !DILocation(line: 1006, column: 39, scope: !3157)
!3164 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3157, file: !155, line: 1007, type: !6)
!3165 = !DILocation(line: 1007, column: 32, scope: !3157)
!3166 = !DILocalVariable(name: "arg", arg: 4, scope: !3157, file: !155, line: 1007, type: !6)
!3167 = !DILocation(line: 1007, column: 57, scope: !3157)
!3168 = !DILocation(line: 1009, column: 33, scope: !3157)
!3169 = !DILocation(line: 1009, column: 36, scope: !3157)
!3170 = !DILocation(line: 1009, column: 48, scope: !3157)
!3171 = !DILocation(line: 1009, column: 61, scope: !3157)
!3172 = !DILocation(line: 1009, column: 10, scope: !3157)
!3173 = !DILocation(line: 1009, column: 3, scope: !3157)
!3174 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !155, file: !155, line: 1014, type: !3175, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!139, !58, !6, !6, !6, !163}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !155, line: 1014, type: !58)
!3178 = !DILocation(line: 1014, column: 28, scope: !3174)
!3179 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3174, file: !155, line: 1014, type: !6)
!3180 = !DILocation(line: 1014, column: 43, scope: !3174)
!3181 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3174, file: !155, line: 1015, type: !6)
!3182 = !DILocation(line: 1015, column: 36, scope: !3174)
!3183 = !DILocalVariable(name: "arg", arg: 4, scope: !3174, file: !155, line: 1016, type: !6)
!3184 = !DILocation(line: 1016, column: 36, scope: !3174)
!3185 = !DILocalVariable(name: "argsize", arg: 5, scope: !3174, file: !155, line: 1016, type: !163)
!3186 = !DILocation(line: 1016, column: 48, scope: !3174)
!3187 = !DILocalVariable(name: "o", scope: !3174, file: !155, line: 1018, type: !175)
!3188 = !DILocation(line: 1018, column: 26, scope: !3174)
!3189 = !DILocation(line: 1018, column: 30, scope: !3174)
!3190 = !DILocation(line: 1019, column: 27, scope: !3174)
!3191 = !DILocation(line: 1019, column: 39, scope: !3174)
!3192 = !DILocation(line: 1019, column: 3, scope: !3174)
!3193 = !DILocation(line: 1020, column: 30, scope: !3174)
!3194 = !DILocation(line: 1020, column: 33, scope: !3174)
!3195 = !DILocation(line: 1020, column: 38, scope: !3174)
!3196 = !DILocation(line: 1020, column: 10, scope: !3174)
!3197 = !DILocation(line: 1020, column: 3, scope: !3174)
!3198 = distinct !DISubprogram(name: "quotearg_custom", scope: !155, file: !155, line: 1024, type: !3199, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!139, !6, !6, !6}
!3201 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3198, file: !155, line: 1024, type: !6)
!3202 = !DILocation(line: 1024, column: 30, scope: !3198)
!3203 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3198, file: !155, line: 1024, type: !6)
!3204 = !DILocation(line: 1024, column: 54, scope: !3198)
!3205 = !DILocalVariable(name: "arg", arg: 3, scope: !3198, file: !155, line: 1025, type: !6)
!3206 = !DILocation(line: 1025, column: 30, scope: !3198)
!3207 = !DILocation(line: 1027, column: 32, scope: !3198)
!3208 = !DILocation(line: 1027, column: 44, scope: !3198)
!3209 = !DILocation(line: 1027, column: 57, scope: !3198)
!3210 = !DILocation(line: 1027, column: 10, scope: !3198)
!3211 = !DILocation(line: 1027, column: 3, scope: !3198)
!3212 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !155, file: !155, line: 1031, type: !3213, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!139, !6, !6, !6, !163}
!3215 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3212, file: !155, line: 1031, type: !6)
!3216 = !DILocation(line: 1031, column: 34, scope: !3212)
!3217 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3212, file: !155, line: 1031, type: !6)
!3218 = !DILocation(line: 1031, column: 58, scope: !3212)
!3219 = !DILocalVariable(name: "arg", arg: 3, scope: !3212, file: !155, line: 1032, type: !6)
!3220 = !DILocation(line: 1032, column: 34, scope: !3212)
!3221 = !DILocalVariable(name: "argsize", arg: 4, scope: !3212, file: !155, line: 1032, type: !163)
!3222 = !DILocation(line: 1032, column: 46, scope: !3212)
!3223 = !DILocation(line: 1034, column: 36, scope: !3212)
!3224 = !DILocation(line: 1034, column: 48, scope: !3212)
!3225 = !DILocation(line: 1034, column: 61, scope: !3212)
!3226 = !DILocation(line: 1035, column: 33, scope: !3212)
!3227 = !DILocation(line: 1034, column: 10, scope: !3212)
!3228 = !DILocation(line: 1034, column: 3, scope: !3212)
!3229 = distinct !DISubprogram(name: "quote_n_mem", scope: !155, file: !155, line: 1049, type: !3230, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!6, !58, !6, !163}
!3232 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !155, line: 1049, type: !58)
!3233 = !DILocation(line: 1049, column: 18, scope: !3229)
!3234 = !DILocalVariable(name: "arg", arg: 2, scope: !3229, file: !155, line: 1049, type: !6)
!3235 = !DILocation(line: 1049, column: 33, scope: !3229)
!3236 = !DILocalVariable(name: "argsize", arg: 3, scope: !3229, file: !155, line: 1049, type: !163)
!3237 = !DILocation(line: 1049, column: 45, scope: !3229)
!3238 = !DILocation(line: 1051, column: 30, scope: !3229)
!3239 = !DILocation(line: 1051, column: 33, scope: !3229)
!3240 = !DILocation(line: 1051, column: 38, scope: !3229)
!3241 = !DILocation(line: 1051, column: 10, scope: !3229)
!3242 = !DILocation(line: 1051, column: 3, scope: !3229)
!3243 = distinct !DISubprogram(name: "quote_mem", scope: !155, file: !155, line: 1055, type: !3244, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!6, !6, !163}
!3246 = !DILocalVariable(name: "arg", arg: 1, scope: !3243, file: !155, line: 1055, type: !6)
!3247 = !DILocation(line: 1055, column: 24, scope: !3243)
!3248 = !DILocalVariable(name: "argsize", arg: 2, scope: !3243, file: !155, line: 1055, type: !163)
!3249 = !DILocation(line: 1055, column: 36, scope: !3243)
!3250 = !DILocation(line: 1057, column: 26, scope: !3243)
!3251 = !DILocation(line: 1057, column: 31, scope: !3243)
!3252 = !DILocation(line: 1057, column: 10, scope: !3243)
!3253 = !DILocation(line: 1057, column: 3, scope: !3243)
!3254 = distinct !DISubprogram(name: "quote_n", scope: !155, file: !155, line: 1061, type: !3255, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!6, !58, !6}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !155, line: 1061, type: !58)
!3258 = !DILocation(line: 1061, column: 14, scope: !3254)
!3259 = !DILocalVariable(name: "arg", arg: 2, scope: !3254, file: !155, line: 1061, type: !6)
!3260 = !DILocation(line: 1061, column: 29, scope: !3254)
!3261 = !DILocation(line: 1063, column: 23, scope: !3254)
!3262 = !DILocation(line: 1063, column: 26, scope: !3254)
!3263 = !DILocation(line: 1063, column: 10, scope: !3254)
!3264 = !DILocation(line: 1063, column: 3, scope: !3254)
!3265 = distinct !DISubprogram(name: "quote", scope: !155, file: !155, line: 1067, type: !3266, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !61)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!6, !6}
!3268 = !DILocalVariable(name: "arg", arg: 1, scope: !3265, file: !155, line: 1067, type: !6)
!3269 = !DILocation(line: 1067, column: 20, scope: !3265)
!3270 = !DILocation(line: 1069, column: 22, scope: !3265)
!3271 = !DILocation(line: 1069, column: 10, scope: !3265)
!3272 = !DILocation(line: 1069, column: 3, scope: !3265)
!3273 = distinct !DISubprogram(name: "streq", scope: !3274, file: !3274, line: 1359, type: !3275, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !61)
!3274 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!74, !6, !6}
!3277 = !DILocalVariable(name: "__s1", arg: 1, scope: !3273, file: !3274, line: 1359, type: !6)
!3278 = !DILocation(line: 1359, column: 20, scope: !3273)
!3279 = !DILocalVariable(name: "__s2", arg: 2, scope: !3273, file: !3274, line: 1359, type: !6)
!3280 = !DILocation(line: 1359, column: 38, scope: !3273)
!3281 = !DILocation(line: 1361, column: 19, scope: !3273)
!3282 = !DILocation(line: 1361, column: 25, scope: !3273)
!3283 = !DILocation(line: 1361, column: 11, scope: !3273)
!3284 = !DILocation(line: 1361, column: 10, scope: !3273)
!3285 = !DILocation(line: 1361, column: 3, scope: !3273)
!3286 = distinct !DISubprogram(name: "version_etc_arn", scope: !261, file: !261, line: 61, type: !3287, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !61)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !3289, !6, !6, !6, !3342, !163}
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3291, line: 7, baseType: !3292)
!3291 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3293, line: 49, size: 1728, elements: !3294)
!3293 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3310, !3312, !3313, !3314, !3316, !3317, !3319, !3323, !3326, !3328, !3331, !3334, !3335, !3336, !3337, !3338}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3292, file: !3293, line: 51, baseType: !58, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3292, file: !3293, line: 54, baseType: !139, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3292, file: !3293, line: 55, baseType: !139, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3292, file: !3293, line: 56, baseType: !139, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3292, file: !3293, line: 57, baseType: !139, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3292, file: !3293, line: 58, baseType: !139, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3292, file: !3293, line: 59, baseType: !139, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3292, file: !3293, line: 60, baseType: !139, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3292, file: !3293, line: 61, baseType: !139, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3292, file: !3293, line: 64, baseType: !139, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3292, file: !3293, line: 65, baseType: !139, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3292, file: !3293, line: 66, baseType: !139, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3292, file: !3293, line: 68, baseType: !3308, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3293, line: 36, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3292, file: !3293, line: 70, baseType: !3311, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3292, file: !3293, line: 72, baseType: !58, size: 32, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3292, file: !3293, line: 73, baseType: !58, size: 32, offset: 928)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3292, file: !3293, line: 74, baseType: !3315, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !708, line: 152, baseType: !284)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3292, file: !3293, line: 77, baseType: !59, size: 16, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3292, file: !3293, line: 78, baseType: !3318, size: 8, offset: 1040)
!3318 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3292, file: !3293, line: 79, baseType: !3320, size: 8, offset: 1048)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3321)
!3321 = !{!3322}
!3322 = !DISubrange(count: 1)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3292, file: !3293, line: 81, baseType: !3324, size: 64, offset: 1088)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3293, line: 43, baseType: null)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3292, file: !3293, line: 89, baseType: !3327, size: 64, offset: 1152)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !708, line: 153, baseType: !284)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3292, file: !3293, line: 91, baseType: !3329, size: 64, offset: 1216)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3293, line: 37, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3292, file: !3293, line: 92, baseType: !3332, size: 64, offset: 1280)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3293, line: 38, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3292, file: !3293, line: 93, baseType: !3311, size: 64, offset: 1344)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3292, file: !3293, line: 94, baseType: !52, size: 64, offset: 1408)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3292, file: !3293, line: 95, baseType: !163, size: 64, offset: 1472)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3292, file: !3293, line: 96, baseType: !58, size: 32, offset: 1536)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3292, file: !3293, line: 98, baseType: !3339, size: 160, offset: 1568)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3340)
!3340 = !{!3341}
!3341 = !DISubrange(count: 20)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!3343 = !DILocalVariable(name: "stream", arg: 1, scope: !3286, file: !261, line: 61, type: !3289)
!3344 = !DILocation(line: 61, column: 24, scope: !3286)
!3345 = !DILocalVariable(name: "command_name", arg: 2, scope: !3286, file: !261, line: 62, type: !6)
!3346 = !DILocation(line: 62, column: 30, scope: !3286)
!3347 = !DILocalVariable(name: "package", arg: 3, scope: !3286, file: !261, line: 62, type: !6)
!3348 = !DILocation(line: 62, column: 56, scope: !3286)
!3349 = !DILocalVariable(name: "version", arg: 4, scope: !3286, file: !261, line: 63, type: !6)
!3350 = !DILocation(line: 63, column: 30, scope: !3286)
!3351 = !DILocalVariable(name: "authors", arg: 5, scope: !3286, file: !261, line: 64, type: !3342)
!3352 = !DILocation(line: 64, column: 39, scope: !3286)
!3353 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3286, file: !261, line: 64, type: !163)
!3354 = !DILocation(line: 64, column: 55, scope: !3286)
!3355 = !DILocation(line: 66, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3286, file: !261, line: 66, column: 7)
!3357 = !DILocation(line: 66, column: 7, scope: !3286)
!3358 = !DILocation(line: 67, column: 14, scope: !3356)
!3359 = !DILocation(line: 67, column: 38, scope: !3356)
!3360 = !DILocation(line: 67, column: 52, scope: !3356)
!3361 = !DILocation(line: 67, column: 61, scope: !3356)
!3362 = !DILocation(line: 67, column: 5, scope: !3356)
!3363 = !DILocation(line: 69, column: 14, scope: !3356)
!3364 = !DILocation(line: 69, column: 33, scope: !3356)
!3365 = !DILocation(line: 69, column: 42, scope: !3356)
!3366 = !DILocation(line: 69, column: 5, scope: !3356)
!3367 = !DILocation(line: 83, column: 12, scope: !3286)
!3368 = !DILocation(line: 83, column: 43, scope: !3286)
!3369 = !DILocation(line: 83, column: 3, scope: !3286)
!3370 = !DILocation(line: 85, column: 3, scope: !3286)
!3371 = !DILocation(line: 88, column: 12, scope: !3286)
!3372 = !DILocation(line: 88, column: 20, scope: !3286)
!3373 = !DILocation(line: 88, column: 3, scope: !3286)
!3374 = !DILocation(line: 95, column: 3, scope: !3286)
!3375 = !DILocation(line: 97, column: 11, scope: !3286)
!3376 = !DILocation(line: 97, column: 3, scope: !3286)
!3377 = !DILocation(line: 102, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3286, file: !261, line: 98, column: 5)
!3379 = !DILocation(line: 105, column: 16, scope: !3378)
!3380 = !DILocation(line: 105, column: 24, scope: !3378)
!3381 = !DILocation(line: 105, column: 47, scope: !3378)
!3382 = !DILocation(line: 105, column: 7, scope: !3378)
!3383 = !DILocation(line: 106, column: 7, scope: !3378)
!3384 = !DILocation(line: 109, column: 16, scope: !3378)
!3385 = !DILocation(line: 109, column: 24, scope: !3378)
!3386 = !DILocation(line: 109, column: 54, scope: !3378)
!3387 = !DILocation(line: 109, column: 66, scope: !3378)
!3388 = !DILocation(line: 109, column: 7, scope: !3378)
!3389 = !DILocation(line: 110, column: 7, scope: !3378)
!3390 = !DILocation(line: 113, column: 16, scope: !3378)
!3391 = !DILocation(line: 113, column: 24, scope: !3378)
!3392 = !DILocation(line: 114, column: 16, scope: !3378)
!3393 = !DILocation(line: 114, column: 28, scope: !3378)
!3394 = !DILocation(line: 114, column: 40, scope: !3378)
!3395 = !DILocation(line: 113, column: 7, scope: !3378)
!3396 = !DILocation(line: 115, column: 7, scope: !3378)
!3397 = !DILocation(line: 120, column: 16, scope: !3378)
!3398 = !DILocation(line: 120, column: 24, scope: !3378)
!3399 = !DILocation(line: 121, column: 16, scope: !3378)
!3400 = !DILocation(line: 121, column: 28, scope: !3378)
!3401 = !DILocation(line: 121, column: 40, scope: !3378)
!3402 = !DILocation(line: 121, column: 52, scope: !3378)
!3403 = !DILocation(line: 120, column: 7, scope: !3378)
!3404 = !DILocation(line: 122, column: 7, scope: !3378)
!3405 = !DILocation(line: 127, column: 16, scope: !3378)
!3406 = !DILocation(line: 127, column: 24, scope: !3378)
!3407 = !DILocation(line: 128, column: 16, scope: !3378)
!3408 = !DILocation(line: 128, column: 28, scope: !3378)
!3409 = !DILocation(line: 128, column: 40, scope: !3378)
!3410 = !DILocation(line: 128, column: 52, scope: !3378)
!3411 = !DILocation(line: 128, column: 64, scope: !3378)
!3412 = !DILocation(line: 127, column: 7, scope: !3378)
!3413 = !DILocation(line: 129, column: 7, scope: !3378)
!3414 = !DILocation(line: 134, column: 16, scope: !3378)
!3415 = !DILocation(line: 134, column: 24, scope: !3378)
!3416 = !DILocation(line: 135, column: 16, scope: !3378)
!3417 = !DILocation(line: 135, column: 28, scope: !3378)
!3418 = !DILocation(line: 135, column: 40, scope: !3378)
!3419 = !DILocation(line: 135, column: 52, scope: !3378)
!3420 = !DILocation(line: 135, column: 64, scope: !3378)
!3421 = !DILocation(line: 136, column: 16, scope: !3378)
!3422 = !DILocation(line: 134, column: 7, scope: !3378)
!3423 = !DILocation(line: 137, column: 7, scope: !3378)
!3424 = !DILocation(line: 142, column: 16, scope: !3378)
!3425 = !DILocation(line: 142, column: 24, scope: !3378)
!3426 = !DILocation(line: 143, column: 16, scope: !3378)
!3427 = !DILocation(line: 143, column: 28, scope: !3378)
!3428 = !DILocation(line: 143, column: 40, scope: !3378)
!3429 = !DILocation(line: 143, column: 52, scope: !3378)
!3430 = !DILocation(line: 143, column: 64, scope: !3378)
!3431 = !DILocation(line: 144, column: 16, scope: !3378)
!3432 = !DILocation(line: 144, column: 28, scope: !3378)
!3433 = !DILocation(line: 142, column: 7, scope: !3378)
!3434 = !DILocation(line: 145, column: 7, scope: !3378)
!3435 = !DILocation(line: 150, column: 16, scope: !3378)
!3436 = !DILocation(line: 150, column: 24, scope: !3378)
!3437 = !DILocation(line: 152, column: 17, scope: !3378)
!3438 = !DILocation(line: 152, column: 29, scope: !3378)
!3439 = !DILocation(line: 152, column: 41, scope: !3378)
!3440 = !DILocation(line: 152, column: 53, scope: !3378)
!3441 = !DILocation(line: 152, column: 65, scope: !3378)
!3442 = !DILocation(line: 153, column: 17, scope: !3378)
!3443 = !DILocation(line: 153, column: 29, scope: !3378)
!3444 = !DILocation(line: 153, column: 41, scope: !3378)
!3445 = !DILocation(line: 150, column: 7, scope: !3378)
!3446 = !DILocation(line: 154, column: 7, scope: !3378)
!3447 = !DILocation(line: 159, column: 16, scope: !3378)
!3448 = !DILocation(line: 159, column: 24, scope: !3378)
!3449 = !DILocation(line: 161, column: 16, scope: !3378)
!3450 = !DILocation(line: 161, column: 28, scope: !3378)
!3451 = !DILocation(line: 161, column: 40, scope: !3378)
!3452 = !DILocation(line: 161, column: 52, scope: !3378)
!3453 = !DILocation(line: 161, column: 64, scope: !3378)
!3454 = !DILocation(line: 162, column: 16, scope: !3378)
!3455 = !DILocation(line: 162, column: 28, scope: !3378)
!3456 = !DILocation(line: 162, column: 40, scope: !3378)
!3457 = !DILocation(line: 162, column: 52, scope: !3378)
!3458 = !DILocation(line: 159, column: 7, scope: !3378)
!3459 = !DILocation(line: 163, column: 7, scope: !3378)
!3460 = !DILocation(line: 170, column: 16, scope: !3378)
!3461 = !DILocation(line: 170, column: 24, scope: !3378)
!3462 = !DILocation(line: 172, column: 17, scope: !3378)
!3463 = !DILocation(line: 172, column: 29, scope: !3378)
!3464 = !DILocation(line: 172, column: 41, scope: !3378)
!3465 = !DILocation(line: 172, column: 53, scope: !3378)
!3466 = !DILocation(line: 172, column: 65, scope: !3378)
!3467 = !DILocation(line: 173, column: 17, scope: !3378)
!3468 = !DILocation(line: 173, column: 29, scope: !3378)
!3469 = !DILocation(line: 173, column: 41, scope: !3378)
!3470 = !DILocation(line: 173, column: 53, scope: !3378)
!3471 = !DILocation(line: 170, column: 7, scope: !3378)
!3472 = !DILocation(line: 174, column: 7, scope: !3378)
!3473 = !DILocation(line: 176, column: 1, scope: !3286)
!3474 = distinct !DISubprogram(name: "version_etc_ar", scope: !261, file: !261, line: 183, type: !3475, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !61)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3289, !6, !6, !6, !3342}
!3477 = !DILocalVariable(name: "stream", arg: 1, scope: !3474, file: !261, line: 183, type: !3289)
!3478 = !DILocation(line: 183, column: 23, scope: !3474)
!3479 = !DILocalVariable(name: "command_name", arg: 2, scope: !3474, file: !261, line: 184, type: !6)
!3480 = !DILocation(line: 184, column: 29, scope: !3474)
!3481 = !DILocalVariable(name: "package", arg: 3, scope: !3474, file: !261, line: 184, type: !6)
!3482 = !DILocation(line: 184, column: 55, scope: !3474)
!3483 = !DILocalVariable(name: "version", arg: 4, scope: !3474, file: !261, line: 185, type: !6)
!3484 = !DILocation(line: 185, column: 29, scope: !3474)
!3485 = !DILocalVariable(name: "authors", arg: 5, scope: !3474, file: !261, line: 185, type: !3342)
!3486 = !DILocation(line: 185, column: 59, scope: !3474)
!3487 = !DILocalVariable(name: "n_authors", scope: !3474, file: !261, line: 187, type: !163)
!3488 = !DILocation(line: 187, column: 10, scope: !3474)
!3489 = !DILocation(line: 189, column: 18, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3474, file: !261, line: 189, column: 3)
!3491 = !DILocation(line: 189, column: 8, scope: !3490)
!3492 = !DILocation(line: 189, column: 23, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3490, file: !261, line: 189, column: 3)
!3494 = !DILocation(line: 189, column: 31, scope: !3493)
!3495 = !DILocation(line: 189, column: 3, scope: !3490)
!3496 = !DILocation(line: 189, column: 52, scope: !3493)
!3497 = !DILocation(line: 189, column: 3, scope: !3493)
!3498 = distinct !{!3498, !3495, !3499, !427}
!3499 = !DILocation(line: 190, column: 5, scope: !3490)
!3500 = !DILocation(line: 191, column: 20, scope: !3474)
!3501 = !DILocation(line: 191, column: 28, scope: !3474)
!3502 = !DILocation(line: 191, column: 42, scope: !3474)
!3503 = !DILocation(line: 191, column: 51, scope: !3474)
!3504 = !DILocation(line: 191, column: 60, scope: !3474)
!3505 = !DILocation(line: 191, column: 69, scope: !3474)
!3506 = !DILocation(line: 191, column: 3, scope: !3474)
!3507 = !DILocation(line: 192, column: 1, scope: !3474)
!3508 = distinct !DISubprogram(name: "version_etc_va", scope: !261, file: !261, line: 199, type: !3509, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !61)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3289, !6, !6, !6, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !87, line: 52, baseType: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !89, line: 32, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3514, baseType: !3515)
!3514 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3515, file: !3514, line: 192, baseType: !52, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3515, file: !3514, line: 192, baseType: !52, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3515, file: !3514, line: 192, baseType: !52, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3515, file: !3514, line: 192, baseType: !58, size: 32, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3515, file: !3514, line: 192, baseType: !58, size: 32, offset: 224)
!3522 = !DILocalVariable(name: "stream", arg: 1, scope: !3508, file: !261, line: 199, type: !3289)
!3523 = !DILocation(line: 199, column: 23, scope: !3508)
!3524 = !DILocalVariable(name: "command_name", arg: 2, scope: !3508, file: !261, line: 200, type: !6)
!3525 = !DILocation(line: 200, column: 29, scope: !3508)
!3526 = !DILocalVariable(name: "package", arg: 3, scope: !3508, file: !261, line: 200, type: !6)
!3527 = !DILocation(line: 200, column: 55, scope: !3508)
!3528 = !DILocalVariable(name: "version", arg: 4, scope: !3508, file: !261, line: 201, type: !6)
!3529 = !DILocation(line: 201, column: 29, scope: !3508)
!3530 = !DILocalVariable(name: "authors", arg: 5, scope: !3508, file: !261, line: 201, type: !3511)
!3531 = !DILocation(line: 201, column: 46, scope: !3508)
!3532 = !DILocalVariable(name: "n_authors", scope: !3508, file: !261, line: 203, type: !163)
!3533 = !DILocation(line: 203, column: 10, scope: !3508)
!3534 = !DILocalVariable(name: "authtab", scope: !3508, file: !261, line: 204, type: !3535)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !171)
!3536 = !DILocation(line: 204, column: 15, scope: !3508)
!3537 = !DILocation(line: 206, column: 18, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3508, file: !261, line: 206, column: 3)
!3539 = !DILocation(line: 206, column: 8, scope: !3538)
!3540 = !DILocation(line: 207, column: 8, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !261, line: 206, column: 3)
!3542 = !DILocation(line: 207, column: 18, scope: !3541)
!3543 = !DILocation(line: 208, column: 10, scope: !3541)
!3544 = !DILocation(line: 208, column: 35, scope: !3541)
!3545 = !DILocation(line: 208, column: 22, scope: !3541)
!3546 = !DILocation(line: 208, column: 14, scope: !3541)
!3547 = !DILocation(line: 208, column: 33, scope: !3541)
!3548 = !DILocation(line: 208, column: 67, scope: !3541)
!3549 = !DILocation(line: 0, scope: !3541)
!3550 = !DILocation(line: 206, column: 3, scope: !3538)
!3551 = !DILocation(line: 209, column: 17, scope: !3541)
!3552 = !DILocation(line: 206, column: 3, scope: !3541)
!3553 = distinct !{!3553, !3550, !3554, !427}
!3554 = !DILocation(line: 210, column: 5, scope: !3538)
!3555 = !DILocation(line: 211, column: 20, scope: !3508)
!3556 = !DILocation(line: 211, column: 28, scope: !3508)
!3557 = !DILocation(line: 211, column: 42, scope: !3508)
!3558 = !DILocation(line: 211, column: 51, scope: !3508)
!3559 = !DILocation(line: 212, column: 20, scope: !3508)
!3560 = !DILocation(line: 212, column: 29, scope: !3508)
!3561 = !DILocation(line: 211, column: 3, scope: !3508)
!3562 = !DILocation(line: 213, column: 1, scope: !3508)
!3563 = distinct !DISubprogram(name: "version_etc", scope: !261, file: !261, line: 230, type: !3564, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !61)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3289, !6, !6, !6, null}
!3566 = !DILocalVariable(name: "stream", arg: 1, scope: !3563, file: !261, line: 230, type: !3289)
!3567 = !DILocation(line: 230, column: 20, scope: !3563)
!3568 = !DILocalVariable(name: "command_name", arg: 2, scope: !3563, file: !261, line: 231, type: !6)
!3569 = !DILocation(line: 231, column: 26, scope: !3563)
!3570 = !DILocalVariable(name: "package", arg: 3, scope: !3563, file: !261, line: 231, type: !6)
!3571 = !DILocation(line: 231, column: 52, scope: !3563)
!3572 = !DILocalVariable(name: "version", arg: 4, scope: !3563, file: !261, line: 232, type: !6)
!3573 = !DILocation(line: 232, column: 26, scope: !3563)
!3574 = !DILocalVariable(name: "authors", scope: !3563, file: !261, line: 234, type: !3511)
!3575 = !DILocation(line: 234, column: 11, scope: !3563)
!3576 = !DILocation(line: 235, column: 3, scope: !3563)
!3577 = !DILocation(line: 236, column: 19, scope: !3563)
!3578 = !DILocation(line: 236, column: 27, scope: !3563)
!3579 = !DILocation(line: 236, column: 41, scope: !3563)
!3580 = !DILocation(line: 236, column: 50, scope: !3563)
!3581 = !DILocation(line: 236, column: 3, scope: !3563)
!3582 = !DILocation(line: 237, column: 3, scope: !3563)
!3583 = !DILocation(line: 238, column: 1, scope: !3563)
!3584 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !261, file: !261, line: 241, type: !107, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !61)
!3585 = !DILocation(line: 243, column: 3, scope: !3584)
!3586 = !DILocation(line: 248, column: 11, scope: !3584)
!3587 = !DILocation(line: 248, column: 3, scope: !3584)
!3588 = !DILocation(line: 254, column: 11, scope: !3584)
!3589 = !DILocation(line: 254, column: 3, scope: !3584)
!3590 = !DILocation(line: 259, column: 11, scope: !3584)
!3591 = !DILocation(line: 259, column: 3, scope: !3584)
!3592 = !DILocation(line: 261, column: 1, scope: !3584)
!3593 = distinct !DISubprogram(name: "xnrealloc", scope: !3594, file: !3594, line: 147, type: !3595, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3594 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!52, !52, !163, !163}
!3597 = !DILocalVariable(name: "p", arg: 1, scope: !3593, file: !3594, line: 147, type: !52)
!3598 = !DILocation(line: 147, column: 18, scope: !3593)
!3599 = !DILocalVariable(name: "n", arg: 2, scope: !3593, file: !3594, line: 147, type: !163)
!3600 = !DILocation(line: 147, column: 28, scope: !3593)
!3601 = !DILocalVariable(name: "s", arg: 3, scope: !3593, file: !3594, line: 147, type: !163)
!3602 = !DILocation(line: 147, column: 38, scope: !3593)
!3603 = !DILocation(line: 149, column: 25, scope: !3593)
!3604 = !DILocation(line: 149, column: 28, scope: !3593)
!3605 = !DILocation(line: 149, column: 31, scope: !3593)
!3606 = !DILocation(line: 149, column: 10, scope: !3593)
!3607 = !DILocation(line: 149, column: 3, scope: !3593)
!3608 = distinct !DISubprogram(name: "xreallocarray", scope: !267, file: !267, line: 83, type: !3595, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3608, file: !267, line: 83, type: !52)
!3610 = !DILocation(line: 83, column: 22, scope: !3608)
!3611 = !DILocalVariable(name: "n", arg: 2, scope: !3608, file: !267, line: 83, type: !163)
!3612 = !DILocation(line: 83, column: 32, scope: !3608)
!3613 = !DILocalVariable(name: "s", arg: 3, scope: !3608, file: !267, line: 83, type: !163)
!3614 = !DILocation(line: 83, column: 42, scope: !3608)
!3615 = !DILocation(line: 85, column: 39, scope: !3608)
!3616 = !DILocation(line: 85, column: 42, scope: !3608)
!3617 = !DILocation(line: 85, column: 45, scope: !3608)
!3618 = !DILocation(line: 85, column: 25, scope: !3608)
!3619 = !DILocation(line: 85, column: 10, scope: !3608)
!3620 = !DILocation(line: 85, column: 3, scope: !3608)
!3621 = distinct !DISubprogram(name: "check_nonnull", scope: !267, file: !267, line: 37, type: !3622, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!52, !52}
!3624 = !DILocalVariable(name: "p", arg: 1, scope: !3621, file: !267, line: 37, type: !52)
!3625 = !DILocation(line: 37, column: 22, scope: !3621)
!3626 = !DILocation(line: 39, column: 8, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !267, line: 39, column: 7)
!3628 = !DILocation(line: 39, column: 7, scope: !3621)
!3629 = !DILocation(line: 40, column: 5, scope: !3627)
!3630 = !DILocation(line: 41, column: 10, scope: !3621)
!3631 = !DILocation(line: 41, column: 3, scope: !3621)
!3632 = distinct !DISubprogram(name: "xmalloc", scope: !267, file: !267, line: 47, type: !3633, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!52, !163}
!3635 = !DILocalVariable(name: "s", arg: 1, scope: !3632, file: !267, line: 47, type: !163)
!3636 = !DILocation(line: 47, column: 17, scope: !3632)
!3637 = !DILocation(line: 49, column: 33, scope: !3632)
!3638 = !DILocation(line: 49, column: 25, scope: !3632)
!3639 = !DILocation(line: 49, column: 10, scope: !3632)
!3640 = !DILocation(line: 49, column: 3, scope: !3632)
!3641 = distinct !DISubprogram(name: "ximalloc", scope: !267, file: !267, line: 53, type: !3642, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!52, !281}
!3644 = !DILocalVariable(name: "s", arg: 1, scope: !3641, file: !267, line: 53, type: !281)
!3645 = !DILocation(line: 53, column: 17, scope: !3641)
!3646 = !DILocation(line: 55, column: 34, scope: !3641)
!3647 = !DILocation(line: 55, column: 25, scope: !3641)
!3648 = !DILocation(line: 55, column: 10, scope: !3641)
!3649 = !DILocation(line: 55, column: 3, scope: !3641)
!3650 = distinct !DISubprogram(name: "xcharalloc", scope: !267, file: !267, line: 59, type: !3651, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!139, !163}
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !267, line: 59, type: !163)
!3654 = !DILocation(line: 59, column: 20, scope: !3650)
!3655 = !DILocation(line: 61, column: 10, scope: !3650)
!3656 = !DILocation(line: 61, column: 3, scope: !3650)
!3657 = distinct !DISubprogram(name: "xrealloc", scope: !267, file: !267, line: 68, type: !3658, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!52, !52, !163}
!3660 = !DILocalVariable(name: "p", arg: 1, scope: !3657, file: !267, line: 68, type: !52)
!3661 = !DILocation(line: 68, column: 17, scope: !3657)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3657, file: !267, line: 68, type: !163)
!3663 = !DILocation(line: 68, column: 27, scope: !3657)
!3664 = !DILocation(line: 70, column: 34, scope: !3657)
!3665 = !DILocation(line: 70, column: 37, scope: !3657)
!3666 = !DILocation(line: 70, column: 25, scope: !3657)
!3667 = !DILocation(line: 70, column: 10, scope: !3657)
!3668 = !DILocation(line: 70, column: 3, scope: !3657)
!3669 = distinct !DISubprogram(name: "xirealloc", scope: !267, file: !267, line: 74, type: !3670, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!52, !52, !281}
!3672 = !DILocalVariable(name: "p", arg: 1, scope: !3669, file: !267, line: 74, type: !52)
!3673 = !DILocation(line: 74, column: 18, scope: !3669)
!3674 = !DILocalVariable(name: "s", arg: 2, scope: !3669, file: !267, line: 74, type: !281)
!3675 = !DILocation(line: 74, column: 27, scope: !3669)
!3676 = !DILocation(line: 76, column: 35, scope: !3669)
!3677 = !DILocation(line: 76, column: 38, scope: !3669)
!3678 = !DILocation(line: 76, column: 25, scope: !3669)
!3679 = !DILocation(line: 76, column: 10, scope: !3669)
!3680 = !DILocation(line: 76, column: 3, scope: !3669)
!3681 = distinct !DISubprogram(name: "xireallocarray", scope: !267, file: !267, line: 89, type: !3682, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!52, !52, !281, !281}
!3684 = !DILocalVariable(name: "p", arg: 1, scope: !3681, file: !267, line: 89, type: !52)
!3685 = !DILocation(line: 89, column: 23, scope: !3681)
!3686 = !DILocalVariable(name: "n", arg: 2, scope: !3681, file: !267, line: 89, type: !281)
!3687 = !DILocation(line: 89, column: 32, scope: !3681)
!3688 = !DILocalVariable(name: "s", arg: 3, scope: !3681, file: !267, line: 89, type: !281)
!3689 = !DILocation(line: 89, column: 41, scope: !3681)
!3690 = !DILocation(line: 91, column: 40, scope: !3681)
!3691 = !DILocation(line: 91, column: 43, scope: !3681)
!3692 = !DILocation(line: 91, column: 46, scope: !3681)
!3693 = !DILocation(line: 91, column: 25, scope: !3681)
!3694 = !DILocation(line: 91, column: 10, scope: !3681)
!3695 = !DILocation(line: 91, column: 3, scope: !3681)
!3696 = distinct !DISubprogram(name: "xnmalloc", scope: !267, file: !267, line: 98, type: !3697, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!52, !163, !163}
!3699 = !DILocalVariable(name: "n", arg: 1, scope: !3696, file: !267, line: 98, type: !163)
!3700 = !DILocation(line: 98, column: 18, scope: !3696)
!3701 = !DILocalVariable(name: "s", arg: 2, scope: !3696, file: !267, line: 98, type: !163)
!3702 = !DILocation(line: 98, column: 28, scope: !3696)
!3703 = !DILocation(line: 100, column: 31, scope: !3696)
!3704 = !DILocation(line: 100, column: 34, scope: !3696)
!3705 = !DILocation(line: 100, column: 10, scope: !3696)
!3706 = !DILocation(line: 100, column: 3, scope: !3696)
!3707 = distinct !DISubprogram(name: "xinmalloc", scope: !267, file: !267, line: 104, type: !3708, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!52, !281, !281}
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3707, file: !267, line: 104, type: !281)
!3711 = !DILocation(line: 104, column: 18, scope: !3707)
!3712 = !DILocalVariable(name: "s", arg: 2, scope: !3707, file: !267, line: 104, type: !281)
!3713 = !DILocation(line: 104, column: 27, scope: !3707)
!3714 = !DILocation(line: 106, column: 32, scope: !3707)
!3715 = !DILocation(line: 106, column: 35, scope: !3707)
!3716 = !DILocation(line: 106, column: 10, scope: !3707)
!3717 = !DILocation(line: 106, column: 3, scope: !3707)
!3718 = distinct !DISubprogram(name: "x2realloc", scope: !267, file: !267, line: 116, type: !3719, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!52, !52, !273}
!3721 = !DILocalVariable(name: "p", arg: 1, scope: !3718, file: !267, line: 116, type: !52)
!3722 = !DILocation(line: 116, column: 18, scope: !3718)
!3723 = !DILocalVariable(name: "ps", arg: 2, scope: !3718, file: !267, line: 116, type: !273)
!3724 = !DILocation(line: 116, column: 29, scope: !3718)
!3725 = !DILocation(line: 118, column: 22, scope: !3718)
!3726 = !DILocation(line: 118, column: 25, scope: !3718)
!3727 = !DILocation(line: 118, column: 10, scope: !3718)
!3728 = !DILocation(line: 118, column: 3, scope: !3718)
!3729 = !DILocalVariable(name: "p", arg: 1, scope: !270, file: !267, line: 176, type: !52)
!3730 = !DILocation(line: 176, column: 19, scope: !270)
!3731 = !DILocalVariable(name: "pn", arg: 2, scope: !270, file: !267, line: 176, type: !273)
!3732 = !DILocation(line: 176, column: 30, scope: !270)
!3733 = !DILocalVariable(name: "s", arg: 3, scope: !270, file: !267, line: 176, type: !163)
!3734 = !DILocation(line: 176, column: 41, scope: !270)
!3735 = !DILocalVariable(name: "n", scope: !270, file: !267, line: 178, type: !163)
!3736 = !DILocation(line: 178, column: 10, scope: !270)
!3737 = !DILocation(line: 178, column: 15, scope: !270)
!3738 = !DILocation(line: 178, column: 14, scope: !270)
!3739 = !DILocation(line: 180, column: 9, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !270, file: !267, line: 180, column: 7)
!3741 = !DILocation(line: 180, column: 7, scope: !270)
!3742 = !DILocation(line: 182, column: 13, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !267, line: 182, column: 11)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !267, line: 181, column: 5)
!3745 = !DILocation(line: 182, column: 11, scope: !3744)
!3746 = !DILocation(line: 190, column: 32, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3743, file: !267, line: 183, column: 9)
!3748 = !DILocation(line: 190, column: 30, scope: !3747)
!3749 = !DILocation(line: 190, column: 13, scope: !3747)
!3750 = !DILocation(line: 191, column: 17, scope: !3747)
!3751 = !DILocation(line: 191, column: 16, scope: !3747)
!3752 = !DILocation(line: 191, column: 13, scope: !3747)
!3753 = !DILocation(line: 192, column: 9, scope: !3747)
!3754 = !DILocation(line: 193, column: 5, scope: !3744)
!3755 = !DILocation(line: 197, column: 11, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !267, line: 197, column: 11)
!3757 = distinct !DILexicalBlock(scope: !3740, file: !267, line: 195, column: 5)
!3758 = !DILocation(line: 197, column: 11, scope: !3757)
!3759 = !DILocation(line: 198, column: 9, scope: !3756)
!3760 = !DILocation(line: 201, column: 22, scope: !270)
!3761 = !DILocation(line: 201, column: 25, scope: !270)
!3762 = !DILocation(line: 201, column: 28, scope: !270)
!3763 = !DILocation(line: 201, column: 7, scope: !270)
!3764 = !DILocation(line: 201, column: 5, scope: !270)
!3765 = !DILocation(line: 202, column: 9, scope: !270)
!3766 = !DILocation(line: 202, column: 4, scope: !270)
!3767 = !DILocation(line: 202, column: 7, scope: !270)
!3768 = !DILocation(line: 203, column: 10, scope: !270)
!3769 = !DILocation(line: 203, column: 3, scope: !270)
!3770 = !DILocalVariable(name: "pa", arg: 1, scope: !277, file: !267, line: 223, type: !52)
!3771 = !DILocation(line: 223, column: 16, scope: !277)
!3772 = !DILocalVariable(name: "pn", arg: 2, scope: !277, file: !267, line: 223, type: !280)
!3773 = !DILocation(line: 223, column: 27, scope: !277)
!3774 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !277, file: !267, line: 223, type: !281)
!3775 = !DILocation(line: 223, column: 37, scope: !277)
!3776 = !DILocalVariable(name: "n_max", arg: 4, scope: !277, file: !267, line: 223, type: !283)
!3777 = !DILocation(line: 223, column: 59, scope: !277)
!3778 = !DILocalVariable(name: "s", arg: 5, scope: !277, file: !267, line: 223, type: !281)
!3779 = !DILocation(line: 223, column: 72, scope: !277)
!3780 = !DILocalVariable(name: "n0", scope: !277, file: !267, line: 230, type: !281)
!3781 = !DILocation(line: 230, column: 9, scope: !277)
!3782 = !DILocation(line: 230, column: 15, scope: !277)
!3783 = !DILocation(line: 230, column: 14, scope: !277)
!3784 = !DILocalVariable(name: "n", scope: !277, file: !267, line: 237, type: !281)
!3785 = !DILocation(line: 237, column: 9, scope: !277)
!3786 = !DILocation(line: 238, column: 7, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !277, file: !267, line: 238, column: 7)
!3788 = !DILocation(line: 238, column: 7, scope: !277)
!3789 = !DILocation(line: 239, column: 7, scope: !3787)
!3790 = !DILocation(line: 239, column: 5, scope: !3787)
!3791 = !DILocation(line: 240, column: 12, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !277, file: !267, line: 240, column: 7)
!3793 = !DILocation(line: 240, column: 9, scope: !3792)
!3794 = !DILocation(line: 240, column: 18, scope: !3792)
!3795 = !DILocation(line: 240, column: 21, scope: !3792)
!3796 = !DILocation(line: 240, column: 29, scope: !3792)
!3797 = !DILocation(line: 240, column: 27, scope: !3792)
!3798 = !DILocation(line: 240, column: 7, scope: !277)
!3799 = !DILocation(line: 241, column: 9, scope: !3792)
!3800 = !DILocation(line: 241, column: 7, scope: !3792)
!3801 = !DILocation(line: 241, column: 5, scope: !3792)
!3802 = !DILocalVariable(name: "nbytes", scope: !277, file: !267, line: 248, type: !281)
!3803 = !DILocation(line: 248, column: 9, scope: !277)
!3804 = !DILocalVariable(name: "adjusted_nbytes", scope: !277, file: !267, line: 252, type: !281)
!3805 = !DILocation(line: 252, column: 9, scope: !277)
!3806 = !DILocation(line: 253, column: 8, scope: !277)
!3807 = !DILocation(line: 255, column: 10, scope: !277)
!3808 = !DILocation(line: 255, column: 17, scope: !277)
!3809 = !DILocation(line: 256, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !277, file: !267, line: 256, column: 7)
!3811 = !DILocation(line: 256, column: 7, scope: !277)
!3812 = !DILocation(line: 258, column: 11, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3810, file: !267, line: 257, column: 5)
!3814 = !DILocation(line: 258, column: 29, scope: !3813)
!3815 = !DILocation(line: 258, column: 27, scope: !3813)
!3816 = !DILocation(line: 258, column: 9, scope: !3813)
!3817 = !DILocation(line: 259, column: 16, scope: !3813)
!3818 = !DILocation(line: 259, column: 34, scope: !3813)
!3819 = !DILocation(line: 259, column: 52, scope: !3813)
!3820 = !DILocation(line: 259, column: 50, scope: !3813)
!3821 = !DILocation(line: 259, column: 32, scope: !3813)
!3822 = !DILocation(line: 259, column: 14, scope: !3813)
!3823 = !DILocation(line: 260, column: 5, scope: !3813)
!3824 = !DILocation(line: 262, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !277, file: !267, line: 262, column: 7)
!3826 = !DILocation(line: 262, column: 7, scope: !277)
!3827 = !DILocation(line: 263, column: 6, scope: !3825)
!3828 = !DILocation(line: 263, column: 9, scope: !3825)
!3829 = !DILocation(line: 263, column: 5, scope: !3825)
!3830 = !DILocation(line: 264, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !277, file: !267, line: 264, column: 7)
!3832 = !DILocation(line: 264, column: 11, scope: !3831)
!3833 = !DILocation(line: 264, column: 9, scope: !3831)
!3834 = !DILocation(line: 264, column: 16, scope: !3831)
!3835 = !DILocation(line: 264, column: 14, scope: !3831)
!3836 = !DILocation(line: 265, column: 7, scope: !3831)
!3837 = !DILocation(line: 265, column: 11, scope: !3831)
!3838 = !DILocation(line: 266, column: 11, scope: !3831)
!3839 = !DILocation(line: 266, column: 20, scope: !3831)
!3840 = !DILocation(line: 266, column: 17, scope: !3831)
!3841 = !DILocation(line: 266, column: 26, scope: !3831)
!3842 = !DILocation(line: 266, column: 29, scope: !3831)
!3843 = !DILocation(line: 266, column: 37, scope: !3831)
!3844 = !DILocation(line: 266, column: 35, scope: !3831)
!3845 = !DILocation(line: 267, column: 11, scope: !3831)
!3846 = !DILocation(line: 267, column: 14, scope: !3831)
!3847 = !DILocation(line: 264, column: 7, scope: !277)
!3848 = !DILocation(line: 268, column: 5, scope: !3831)
!3849 = !DILocation(line: 269, column: 18, scope: !277)
!3850 = !DILocation(line: 269, column: 22, scope: !277)
!3851 = !DILocation(line: 269, column: 8, scope: !277)
!3852 = !DILocation(line: 269, column: 6, scope: !277)
!3853 = !DILocation(line: 270, column: 9, scope: !277)
!3854 = !DILocation(line: 270, column: 4, scope: !277)
!3855 = !DILocation(line: 270, column: 7, scope: !277)
!3856 = !DILocation(line: 271, column: 10, scope: !277)
!3857 = !DILocation(line: 271, column: 3, scope: !277)
!3858 = distinct !DISubprogram(name: "xzalloc", scope: !267, file: !267, line: 279, type: !3633, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3859 = !DILocalVariable(name: "s", arg: 1, scope: !3858, file: !267, line: 279, type: !163)
!3860 = !DILocation(line: 279, column: 17, scope: !3858)
!3861 = !DILocation(line: 281, column: 19, scope: !3858)
!3862 = !DILocation(line: 281, column: 10, scope: !3858)
!3863 = !DILocation(line: 281, column: 3, scope: !3858)
!3864 = distinct !DISubprogram(name: "xcalloc", scope: !267, file: !267, line: 294, type: !3697, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3865 = !DILocalVariable(name: "n", arg: 1, scope: !3864, file: !267, line: 294, type: !163)
!3866 = !DILocation(line: 294, column: 17, scope: !3864)
!3867 = !DILocalVariable(name: "s", arg: 2, scope: !3864, file: !267, line: 294, type: !163)
!3868 = !DILocation(line: 294, column: 27, scope: !3864)
!3869 = !DILocation(line: 296, column: 33, scope: !3864)
!3870 = !DILocation(line: 296, column: 36, scope: !3864)
!3871 = !DILocation(line: 296, column: 25, scope: !3864)
!3872 = !DILocation(line: 296, column: 10, scope: !3864)
!3873 = !DILocation(line: 296, column: 3, scope: !3864)
!3874 = distinct !DISubprogram(name: "xizalloc", scope: !267, file: !267, line: 285, type: !3642, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3875 = !DILocalVariable(name: "s", arg: 1, scope: !3874, file: !267, line: 285, type: !281)
!3876 = !DILocation(line: 285, column: 17, scope: !3874)
!3877 = !DILocation(line: 287, column: 20, scope: !3874)
!3878 = !DILocation(line: 287, column: 10, scope: !3874)
!3879 = !DILocation(line: 287, column: 3, scope: !3874)
!3880 = distinct !DISubprogram(name: "xicalloc", scope: !267, file: !267, line: 300, type: !3708, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3881 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !267, line: 300, type: !281)
!3882 = !DILocation(line: 300, column: 17, scope: !3880)
!3883 = !DILocalVariable(name: "s", arg: 2, scope: !3880, file: !267, line: 300, type: !281)
!3884 = !DILocation(line: 300, column: 26, scope: !3880)
!3885 = !DILocation(line: 302, column: 34, scope: !3880)
!3886 = !DILocation(line: 302, column: 37, scope: !3880)
!3887 = !DILocation(line: 302, column: 25, scope: !3880)
!3888 = !DILocation(line: 302, column: 10, scope: !3880)
!3889 = !DILocation(line: 302, column: 3, scope: !3880)
!3890 = distinct !DISubprogram(name: "xmemdup", scope: !267, file: !267, line: 310, type: !3891, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!52, !3893, !163}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3895 = !DILocalVariable(name: "p", arg: 1, scope: !3890, file: !267, line: 310, type: !3893)
!3896 = !DILocation(line: 310, column: 22, scope: !3890)
!3897 = !DILocalVariable(name: "s", arg: 2, scope: !3890, file: !267, line: 310, type: !163)
!3898 = !DILocation(line: 310, column: 32, scope: !3890)
!3899 = !DILocation(line: 312, column: 27, scope: !3890)
!3900 = !DILocation(line: 312, column: 18, scope: !3890)
!3901 = !DILocation(line: 312, column: 31, scope: !3890)
!3902 = !DILocation(line: 312, column: 34, scope: !3890)
!3903 = !DILocation(line: 312, column: 10, scope: !3890)
!3904 = !DILocation(line: 312, column: 3, scope: !3890)
!3905 = distinct !DISubprogram(name: "ximemdup", scope: !267, file: !267, line: 316, type: !3906, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!52, !3893, !281}
!3908 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !267, line: 316, type: !3893)
!3909 = !DILocation(line: 316, column: 23, scope: !3905)
!3910 = !DILocalVariable(name: "s", arg: 2, scope: !3905, file: !267, line: 316, type: !281)
!3911 = !DILocation(line: 316, column: 32, scope: !3905)
!3912 = !DILocation(line: 318, column: 28, scope: !3905)
!3913 = !DILocation(line: 318, column: 18, scope: !3905)
!3914 = !DILocation(line: 318, column: 32, scope: !3905)
!3915 = !DILocation(line: 318, column: 35, scope: !3905)
!3916 = !DILocation(line: 318, column: 10, scope: !3905)
!3917 = !DILocation(line: 318, column: 3, scope: !3905)
!3918 = distinct !DISubprogram(name: "ximemdup0", scope: !267, file: !267, line: 325, type: !3919, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!139, !3893, !281}
!3921 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !267, line: 325, type: !3893)
!3922 = !DILocation(line: 325, column: 24, scope: !3918)
!3923 = !DILocalVariable(name: "s", arg: 2, scope: !3918, file: !267, line: 325, type: !281)
!3924 = !DILocation(line: 325, column: 33, scope: !3918)
!3925 = !DILocalVariable(name: "result", scope: !3918, file: !267, line: 327, type: !139)
!3926 = !DILocation(line: 327, column: 9, scope: !3918)
!3927 = !DILocation(line: 327, column: 28, scope: !3918)
!3928 = !DILocation(line: 327, column: 30, scope: !3918)
!3929 = !DILocation(line: 327, column: 18, scope: !3918)
!3930 = !DILocation(line: 328, column: 3, scope: !3918)
!3931 = !DILocation(line: 328, column: 10, scope: !3918)
!3932 = !DILocation(line: 328, column: 13, scope: !3918)
!3933 = !DILocation(line: 329, column: 18, scope: !3918)
!3934 = !DILocation(line: 329, column: 26, scope: !3918)
!3935 = !DILocation(line: 329, column: 29, scope: !3918)
!3936 = !DILocation(line: 329, column: 10, scope: !3918)
!3937 = !DILocation(line: 329, column: 3, scope: !3918)
!3938 = distinct !DISubprogram(name: "xstrdup", scope: !267, file: !267, line: 335, type: !3001, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !61)
!3939 = !DILocalVariable(name: "string", arg: 1, scope: !3938, file: !267, line: 335, type: !6)
!3940 = !DILocation(line: 335, column: 22, scope: !3938)
!3941 = !DILocation(line: 337, column: 19, scope: !3938)
!3942 = !DILocation(line: 337, column: 35, scope: !3938)
!3943 = !DILocation(line: 337, column: 27, scope: !3938)
!3944 = !DILocation(line: 337, column: 43, scope: !3938)
!3945 = !DILocation(line: 337, column: 10, scope: !3938)
!3946 = !DILocation(line: 337, column: 3, scope: !3938)
!3947 = distinct !DISubprogram(name: "xalloc_die", scope: !287, file: !287, line: 32, type: !107, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !61)
!3948 = !DILocalVariable(name: "__errstatus", scope: !3949, file: !287, line: 34, type: !679)
!3949 = distinct !DILexicalBlock(scope: !3947, file: !287, line: 34, column: 3)
!3950 = !DILocation(line: 34, column: 3, scope: !3949)
!3951 = !DILocation(line: 40, column: 3, scope: !3947)
!3952 = distinct !DISubprogram(name: "last_component", scope: !289, file: !289, line: 29, type: !3001, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !61)
!3953 = !DILocalVariable(name: "name", arg: 1, scope: !3952, file: !289, line: 29, type: !6)
!3954 = !DILocation(line: 29, column: 29, scope: !3952)
!3955 = !DILocalVariable(name: "base", scope: !3952, file: !289, line: 31, type: !6)
!3956 = !DILocation(line: 31, column: 15, scope: !3952)
!3957 = !DILocation(line: 31, column: 22, scope: !3952)
!3958 = !DILocation(line: 31, column: 29, scope: !3952)
!3959 = !DILocation(line: 31, column: 27, scope: !3952)
!3960 = !DILocation(line: 32, column: 3, scope: !3952)
!3961 = !DILocation(line: 32, column: 10, scope: !3952)
!3962 = !DILocation(line: 33, column: 9, scope: !3952)
!3963 = distinct !{!3963, !3960, !3962, !427}
!3964 = !DILocalVariable(name: "last_was_slash", scope: !3952, file: !289, line: 35, type: !74)
!3965 = !DILocation(line: 35, column: 8, scope: !3952)
!3966 = !DILocalVariable(name: "p", scope: !3967, file: !289, line: 36, type: !6)
!3967 = distinct !DILexicalBlock(scope: !3952, file: !289, line: 36, column: 3)
!3968 = !DILocation(line: 36, column: 20, scope: !3967)
!3969 = !DILocation(line: 36, column: 24, scope: !3967)
!3970 = !DILocation(line: 36, column: 8, scope: !3967)
!3971 = !DILocation(line: 36, column: 31, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3967, file: !289, line: 36, column: 3)
!3973 = !DILocation(line: 36, column: 30, scope: !3972)
!3974 = !DILocation(line: 36, column: 3, scope: !3967)
!3975 = !DILocation(line: 38, column: 11, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !289, line: 38, column: 11)
!3977 = distinct !DILexicalBlock(scope: !3972, file: !289, line: 37, column: 5)
!3978 = !DILocation(line: 38, column: 11, scope: !3977)
!3979 = !DILocation(line: 39, column: 24, scope: !3976)
!3980 = !DILocation(line: 39, column: 9, scope: !3976)
!3981 = !DILocation(line: 40, column: 16, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3976, file: !289, line: 40, column: 16)
!3983 = !DILocation(line: 40, column: 16, scope: !3976)
!3984 = !DILocation(line: 42, column: 18, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3982, file: !289, line: 41, column: 9)
!3986 = !DILocation(line: 42, column: 16, scope: !3985)
!3987 = !DILocation(line: 43, column: 26, scope: !3985)
!3988 = !DILocation(line: 44, column: 9, scope: !3985)
!3989 = !DILocation(line: 45, column: 5, scope: !3977)
!3990 = !DILocation(line: 36, column: 35, scope: !3972)
!3991 = !DILocation(line: 36, column: 3, scope: !3972)
!3992 = distinct !{!3992, !3974, !3993, !427}
!3993 = !DILocation(line: 45, column: 5, scope: !3967)
!3994 = !DILocation(line: 47, column: 19, scope: !3952)
!3995 = !DILocation(line: 47, column: 3, scope: !3952)
!3996 = distinct !DISubprogram(name: "base_len", scope: !289, file: !289, line: 51, type: !3997, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !61)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!163, !6}
!3999 = !DILocalVariable(name: "name", arg: 1, scope: !3996, file: !289, line: 51, type: !6)
!4000 = !DILocation(line: 51, column: 23, scope: !3996)
!4001 = !DILocalVariable(name: "len", scope: !3996, file: !289, line: 53, type: !163)
!4002 = !DILocation(line: 53, column: 10, scope: !3996)
!4003 = !DILocation(line: 54, column: 22, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3996, file: !289, line: 54, column: 3)
!4005 = !DILocation(line: 54, column: 14, scope: !4004)
!4006 = !DILocation(line: 54, column: 12, scope: !4004)
!4007 = !DILocation(line: 54, column: 8, scope: !4004)
!4008 = !DILocation(line: 54, column: 34, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4004, file: !289, line: 54, column: 3)
!4010 = !DILocation(line: 54, column: 32, scope: !4009)
!4011 = !DILocation(line: 54, column: 38, scope: !4009)
!4012 = !DILocation(line: 54, column: 41, scope: !4009)
!4013 = !DILocation(line: 0, scope: !4009)
!4014 = !DILocation(line: 54, column: 3, scope: !4004)
!4015 = !DILocation(line: 55, column: 5, scope: !4009)
!4016 = !DILocation(line: 54, column: 70, scope: !4009)
!4017 = !DILocation(line: 54, column: 3, scope: !4009)
!4018 = distinct !{!4018, !4014, !4019, !427}
!4019 = !DILocation(line: 55, column: 5, scope: !4004)
!4020 = !DILocalVariable(name: "prefix_len", scope: !3996, file: !289, line: 61, type: !163)
!4021 = !DILocation(line: 61, column: 10, scope: !3996)
!4022 = !DILocation(line: 61, column: 23, scope: !3996)
!4023 = !DILocation(line: 66, column: 10, scope: !3996)
!4024 = !DILocation(line: 66, column: 3, scope: !3996)
!4025 = distinct !DISubprogram(name: "c32isprint", scope: !4026, file: !4026, line: 41, type: !4027, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !61)
!4026 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!58, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4030, line: 20, baseType: !13)
!4030 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4031 = !DILocalVariable(name: "wc", arg: 1, scope: !4025, file: !4026, line: 41, type: !4029)
!4032 = !DILocation(line: 41, column: 14, scope: !4025)
!4033 = !DILocation(line: 66, column: 22, scope: !4025)
!4034 = !DILocation(line: 66, column: 10, scope: !4025)
!4035 = !DILocation(line: 66, column: 3, scope: !4025)
!4036 = distinct !DISubprogram(name: "close_stream", scope: !293, file: !293, line: 55, type: !4037, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !292, retainedNodes: !61)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!58, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3291, line: 7, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3293, line: 49, size: 1728, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4041, file: !3293, line: 51, baseType: !58, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4041, file: !3293, line: 54, baseType: !139, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4041, file: !3293, line: 55, baseType: !139, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4041, file: !3293, line: 56, baseType: !139, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4041, file: !3293, line: 57, baseType: !139, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4041, file: !3293, line: 58, baseType: !139, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4041, file: !3293, line: 59, baseType: !139, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4041, file: !3293, line: 60, baseType: !139, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4041, file: !3293, line: 61, baseType: !139, size: 64, offset: 512)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4041, file: !3293, line: 64, baseType: !139, size: 64, offset: 576)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4041, file: !3293, line: 65, baseType: !139, size: 64, offset: 640)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4041, file: !3293, line: 66, baseType: !139, size: 64, offset: 704)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4041, file: !3293, line: 68, baseType: !3308, size: 64, offset: 768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4041, file: !3293, line: 70, baseType: !4057, size: 64, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4041, file: !3293, line: 72, baseType: !58, size: 32, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4041, file: !3293, line: 73, baseType: !58, size: 32, offset: 928)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4041, file: !3293, line: 74, baseType: !3315, size: 64, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4041, file: !3293, line: 77, baseType: !59, size: 16, offset: 1024)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4041, file: !3293, line: 78, baseType: !3318, size: 8, offset: 1040)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4041, file: !3293, line: 79, baseType: !3320, size: 8, offset: 1048)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4041, file: !3293, line: 81, baseType: !3324, size: 64, offset: 1088)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4041, file: !3293, line: 89, baseType: !3327, size: 64, offset: 1152)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4041, file: !3293, line: 91, baseType: !3329, size: 64, offset: 1216)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4041, file: !3293, line: 92, baseType: !3332, size: 64, offset: 1280)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4041, file: !3293, line: 93, baseType: !4057, size: 64, offset: 1344)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4041, file: !3293, line: 94, baseType: !52, size: 64, offset: 1408)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4041, file: !3293, line: 95, baseType: !163, size: 64, offset: 1472)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4041, file: !3293, line: 96, baseType: !58, size: 32, offset: 1536)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4041, file: !3293, line: 98, baseType: !3339, size: 160, offset: 1568)
!4073 = !DILocalVariable(name: "stream", arg: 1, scope: !4036, file: !293, line: 55, type: !4039)
!4074 = !DILocation(line: 55, column: 21, scope: !4036)
!4075 = !DILocalVariable(name: "some_pending", scope: !4036, file: !293, line: 57, type: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4077 = !DILocation(line: 57, column: 14, scope: !4036)
!4078 = !DILocation(line: 57, column: 42, scope: !4036)
!4079 = !DILocation(line: 57, column: 30, scope: !4036)
!4080 = !DILocation(line: 57, column: 50, scope: !4036)
!4081 = !DILocalVariable(name: "prev_fail", scope: !4036, file: !293, line: 58, type: !4076)
!4082 = !DILocation(line: 58, column: 14, scope: !4036)
!4083 = !DILocation(line: 58, column: 27, scope: !4036)
!4084 = !DILocation(line: 58, column: 43, scope: !4036)
!4085 = !DILocalVariable(name: "fclose_fail", scope: !4036, file: !293, line: 59, type: !4076)
!4086 = !DILocation(line: 59, column: 14, scope: !4036)
!4087 = !DILocation(line: 59, column: 37, scope: !4036)
!4088 = !DILocation(line: 59, column: 29, scope: !4036)
!4089 = !DILocation(line: 59, column: 45, scope: !4036)
!4090 = !DILocation(line: 69, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4036, file: !293, line: 69, column: 7)
!4092 = !DILocation(line: 69, column: 17, scope: !4091)
!4093 = !DILocation(line: 69, column: 21, scope: !4091)
!4094 = !DILocation(line: 69, column: 33, scope: !4091)
!4095 = !DILocation(line: 69, column: 37, scope: !4091)
!4096 = !DILocation(line: 69, column: 50, scope: !4091)
!4097 = !DILocation(line: 69, column: 53, scope: !4091)
!4098 = !DILocation(line: 69, column: 59, scope: !4091)
!4099 = !DILocation(line: 69, column: 7, scope: !4036)
!4100 = !DILocation(line: 71, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !293, line: 71, column: 11)
!4102 = distinct !DILexicalBlock(scope: !4091, file: !293, line: 70, column: 5)
!4103 = !DILocation(line: 71, column: 11, scope: !4102)
!4104 = !DILocation(line: 72, column: 9, scope: !4101)
!4105 = !DILocation(line: 72, column: 15, scope: !4101)
!4106 = !DILocation(line: 73, column: 7, scope: !4102)
!4107 = !DILocation(line: 76, column: 3, scope: !4036)
!4108 = !DILocation(line: 77, column: 1, scope: !4036)
!4109 = distinct !DISubprogram(name: "rpl_fclose", scope: !295, file: !295, line: 58, type: !4110, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !61)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!58, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3291, line: 7, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3293, line: 49, size: 1728, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4114, file: !3293, line: 51, baseType: !58, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4114, file: !3293, line: 54, baseType: !139, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4114, file: !3293, line: 55, baseType: !139, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4114, file: !3293, line: 56, baseType: !139, size: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4114, file: !3293, line: 57, baseType: !139, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4114, file: !3293, line: 58, baseType: !139, size: 64, offset: 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4114, file: !3293, line: 59, baseType: !139, size: 64, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4114, file: !3293, line: 60, baseType: !139, size: 64, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4114, file: !3293, line: 61, baseType: !139, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4114, file: !3293, line: 64, baseType: !139, size: 64, offset: 576)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4114, file: !3293, line: 65, baseType: !139, size: 64, offset: 640)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4114, file: !3293, line: 66, baseType: !139, size: 64, offset: 704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4114, file: !3293, line: 68, baseType: !3308, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4114, file: !3293, line: 70, baseType: !4130, size: 64, offset: 832)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4114, file: !3293, line: 72, baseType: !58, size: 32, offset: 896)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4114, file: !3293, line: 73, baseType: !58, size: 32, offset: 928)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4114, file: !3293, line: 74, baseType: !3315, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4114, file: !3293, line: 77, baseType: !59, size: 16, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4114, file: !3293, line: 78, baseType: !3318, size: 8, offset: 1040)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4114, file: !3293, line: 79, baseType: !3320, size: 8, offset: 1048)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4114, file: !3293, line: 81, baseType: !3324, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4114, file: !3293, line: 89, baseType: !3327, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4114, file: !3293, line: 91, baseType: !3329, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4114, file: !3293, line: 92, baseType: !3332, size: 64, offset: 1280)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4114, file: !3293, line: 93, baseType: !4130, size: 64, offset: 1344)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4114, file: !3293, line: 94, baseType: !52, size: 64, offset: 1408)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4114, file: !3293, line: 95, baseType: !163, size: 64, offset: 1472)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4114, file: !3293, line: 96, baseType: !58, size: 32, offset: 1536)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4114, file: !3293, line: 98, baseType: !3339, size: 160, offset: 1568)
!4146 = !DILocalVariable(name: "fp", arg: 1, scope: !4109, file: !295, line: 58, type: !4112)
!4147 = !DILocation(line: 58, column: 19, scope: !4109)
!4148 = !DILocalVariable(name: "saved_errno", scope: !4109, file: !295, line: 60, type: !58)
!4149 = !DILocation(line: 60, column: 7, scope: !4109)
!4150 = !DILocalVariable(name: "fd", scope: !4109, file: !295, line: 63, type: !58)
!4151 = !DILocation(line: 63, column: 7, scope: !4109)
!4152 = !DILocation(line: 63, column: 20, scope: !4109)
!4153 = !DILocation(line: 63, column: 12, scope: !4109)
!4154 = !DILocation(line: 64, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4109, file: !295, line: 64, column: 7)
!4156 = !DILocation(line: 64, column: 10, scope: !4155)
!4157 = !DILocation(line: 64, column: 7, scope: !4109)
!4158 = !DILocation(line: 65, column: 28, scope: !4155)
!4159 = !DILocation(line: 65, column: 12, scope: !4155)
!4160 = !DILocation(line: 65, column: 5, scope: !4155)
!4161 = !DILocation(line: 70, column: 9, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4109, file: !295, line: 70, column: 7)
!4163 = !DILocation(line: 70, column: 23, scope: !4162)
!4164 = !DILocation(line: 70, column: 41, scope: !4162)
!4165 = !DILocation(line: 70, column: 33, scope: !4162)
!4166 = !DILocation(line: 70, column: 26, scope: !4162)
!4167 = !DILocation(line: 70, column: 59, scope: !4162)
!4168 = !DILocation(line: 71, column: 7, scope: !4162)
!4169 = !DILocation(line: 71, column: 18, scope: !4162)
!4170 = !DILocation(line: 71, column: 10, scope: !4162)
!4171 = !DILocation(line: 70, column: 7, scope: !4109)
!4172 = !DILocation(line: 72, column: 19, scope: !4162)
!4173 = !DILocation(line: 72, column: 17, scope: !4162)
!4174 = !DILocation(line: 72, column: 5, scope: !4162)
!4175 = !DILocalVariable(name: "result", scope: !4109, file: !295, line: 74, type: !58)
!4176 = !DILocation(line: 74, column: 7, scope: !4109)
!4177 = !DILocation(line: 100, column: 28, scope: !4109)
!4178 = !DILocation(line: 100, column: 12, scope: !4109)
!4179 = !DILocation(line: 100, column: 10, scope: !4109)
!4180 = !DILocation(line: 105, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4109, file: !295, line: 105, column: 7)
!4182 = !DILocation(line: 105, column: 19, scope: !4181)
!4183 = !DILocation(line: 105, column: 7, scope: !4109)
!4184 = !DILocation(line: 107, column: 15, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !295, line: 106, column: 5)
!4186 = !DILocation(line: 107, column: 7, scope: !4185)
!4187 = !DILocation(line: 107, column: 13, scope: !4185)
!4188 = !DILocation(line: 108, column: 14, scope: !4185)
!4189 = !DILocation(line: 109, column: 5, scope: !4185)
!4190 = !DILocation(line: 111, column: 10, scope: !4109)
!4191 = !DILocation(line: 111, column: 3, scope: !4109)
!4192 = !DILocation(line: 112, column: 1, scope: !4109)
!4193 = distinct !DISubprogram(name: "rpl_fflush", scope: !297, file: !297, line: 130, type: !4194, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !296, retainedNodes: !61)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!58, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3291, line: 7, baseType: !4198)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3293, line: 49, size: 1728, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4198, file: !3293, line: 51, baseType: !58, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4198, file: !3293, line: 54, baseType: !139, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4198, file: !3293, line: 55, baseType: !139, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4198, file: !3293, line: 56, baseType: !139, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4198, file: !3293, line: 57, baseType: !139, size: 64, offset: 256)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4198, file: !3293, line: 58, baseType: !139, size: 64, offset: 320)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4198, file: !3293, line: 59, baseType: !139, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4198, file: !3293, line: 60, baseType: !139, size: 64, offset: 448)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4198, file: !3293, line: 61, baseType: !139, size: 64, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4198, file: !3293, line: 64, baseType: !139, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4198, file: !3293, line: 65, baseType: !139, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4198, file: !3293, line: 66, baseType: !139, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4198, file: !3293, line: 68, baseType: !3308, size: 64, offset: 768)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4198, file: !3293, line: 70, baseType: !4214, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4198, file: !3293, line: 72, baseType: !58, size: 32, offset: 896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4198, file: !3293, line: 73, baseType: !58, size: 32, offset: 928)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4198, file: !3293, line: 74, baseType: !3315, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4198, file: !3293, line: 77, baseType: !59, size: 16, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4198, file: !3293, line: 78, baseType: !3318, size: 8, offset: 1040)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4198, file: !3293, line: 79, baseType: !3320, size: 8, offset: 1048)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4198, file: !3293, line: 81, baseType: !3324, size: 64, offset: 1088)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4198, file: !3293, line: 89, baseType: !3327, size: 64, offset: 1152)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4198, file: !3293, line: 91, baseType: !3329, size: 64, offset: 1216)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4198, file: !3293, line: 92, baseType: !3332, size: 64, offset: 1280)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4198, file: !3293, line: 93, baseType: !4214, size: 64, offset: 1344)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4198, file: !3293, line: 94, baseType: !52, size: 64, offset: 1408)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4198, file: !3293, line: 95, baseType: !163, size: 64, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4198, file: !3293, line: 96, baseType: !58, size: 32, offset: 1536)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4198, file: !3293, line: 98, baseType: !3339, size: 160, offset: 1568)
!4230 = !DILocalVariable(name: "stream", arg: 1, scope: !4193, file: !297, line: 130, type: !4196)
!4231 = !DILocation(line: 130, column: 19, scope: !4193)
!4232 = !DILocation(line: 151, column: 7, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4193, file: !297, line: 151, column: 7)
!4234 = !DILocation(line: 151, column: 14, scope: !4233)
!4235 = !DILocation(line: 151, column: 22, scope: !4233)
!4236 = !DILocation(line: 151, column: 27, scope: !4233)
!4237 = !DILocation(line: 151, column: 7, scope: !4193)
!4238 = !DILocation(line: 152, column: 20, scope: !4233)
!4239 = !DILocation(line: 152, column: 12, scope: !4233)
!4240 = !DILocation(line: 152, column: 5, scope: !4233)
!4241 = !DILocation(line: 157, column: 44, scope: !4193)
!4242 = !DILocation(line: 157, column: 3, scope: !4193)
!4243 = !DILocation(line: 159, column: 18, scope: !4193)
!4244 = !DILocation(line: 159, column: 10, scope: !4193)
!4245 = !DILocation(line: 159, column: 3, scope: !4193)
!4246 = !DILocation(line: 236, column: 1, scope: !4193)
!4247 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !297, file: !297, line: 42, type: !4248, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !296, retainedNodes: !61)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4196}
!4250 = !DILocalVariable(name: "fp", arg: 1, scope: !4247, file: !297, line: 42, type: !4196)
!4251 = !DILocation(line: 42, column: 48, scope: !4247)
!4252 = !DILocation(line: 44, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4247, file: !297, line: 44, column: 7)
!4254 = !DILocation(line: 44, column: 12, scope: !4253)
!4255 = !DILocation(line: 44, column: 19, scope: !4253)
!4256 = !DILocation(line: 44, column: 7, scope: !4247)
!4257 = !DILocation(line: 46, column: 13, scope: !4253)
!4258 = !DILocation(line: 46, column: 5, scope: !4253)
!4259 = !DILocation(line: 47, column: 1, scope: !4247)
!4260 = distinct !DISubprogram(name: "rpl_fseeko", scope: !299, file: !299, line: 28, type: !4261, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !298, retainedNodes: !61)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!58, !4263, !4297, !58}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3291, line: 7, baseType: !4265)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3293, line: 49, size: 1728, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4265, file: !3293, line: 51, baseType: !58, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4265, file: !3293, line: 54, baseType: !139, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4265, file: !3293, line: 55, baseType: !139, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4265, file: !3293, line: 56, baseType: !139, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4265, file: !3293, line: 57, baseType: !139, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4265, file: !3293, line: 58, baseType: !139, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4265, file: !3293, line: 59, baseType: !139, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4265, file: !3293, line: 60, baseType: !139, size: 64, offset: 448)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4265, file: !3293, line: 61, baseType: !139, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4265, file: !3293, line: 64, baseType: !139, size: 64, offset: 576)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4265, file: !3293, line: 65, baseType: !139, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4265, file: !3293, line: 66, baseType: !139, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4265, file: !3293, line: 68, baseType: !3308, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4265, file: !3293, line: 70, baseType: !4281, size: 64, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4265, file: !3293, line: 72, baseType: !58, size: 32, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4265, file: !3293, line: 73, baseType: !58, size: 32, offset: 928)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4265, file: !3293, line: 74, baseType: !3315, size: 64, offset: 960)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4265, file: !3293, line: 77, baseType: !59, size: 16, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4265, file: !3293, line: 78, baseType: !3318, size: 8, offset: 1040)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4265, file: !3293, line: 79, baseType: !3320, size: 8, offset: 1048)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4265, file: !3293, line: 81, baseType: !3324, size: 64, offset: 1088)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4265, file: !3293, line: 89, baseType: !3327, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4265, file: !3293, line: 91, baseType: !3329, size: 64, offset: 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4265, file: !3293, line: 92, baseType: !3332, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4265, file: !3293, line: 93, baseType: !4281, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4265, file: !3293, line: 94, baseType: !52, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4265, file: !3293, line: 95, baseType: !163, size: 64, offset: 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4265, file: !3293, line: 96, baseType: !58, size: 32, offset: 1536)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4265, file: !3293, line: 98, baseType: !3339, size: 160, offset: 1568)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !87, line: 63, baseType: !3315)
!4298 = !DILocalVariable(name: "fp", arg: 1, scope: !4260, file: !299, line: 28, type: !4263)
!4299 = !DILocation(line: 28, column: 15, scope: !4260)
!4300 = !DILocalVariable(name: "offset", arg: 2, scope: !4260, file: !299, line: 28, type: !4297)
!4301 = !DILocation(line: 28, column: 25, scope: !4260)
!4302 = !DILocalVariable(name: "whence", arg: 3, scope: !4260, file: !299, line: 28, type: !58)
!4303 = !DILocation(line: 28, column: 37, scope: !4260)
!4304 = !DILocation(line: 55, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4260, file: !299, line: 55, column: 7)
!4306 = !DILocation(line: 55, column: 12, scope: !4305)
!4307 = !DILocation(line: 55, column: 28, scope: !4305)
!4308 = !DILocation(line: 55, column: 33, scope: !4305)
!4309 = !DILocation(line: 55, column: 25, scope: !4305)
!4310 = !DILocation(line: 56, column: 7, scope: !4305)
!4311 = !DILocation(line: 56, column: 10, scope: !4305)
!4312 = !DILocation(line: 56, column: 15, scope: !4305)
!4313 = !DILocation(line: 56, column: 32, scope: !4305)
!4314 = !DILocation(line: 56, column: 37, scope: !4305)
!4315 = !DILocation(line: 56, column: 29, scope: !4305)
!4316 = !DILocation(line: 57, column: 7, scope: !4305)
!4317 = !DILocation(line: 57, column: 10, scope: !4305)
!4318 = !DILocation(line: 57, column: 15, scope: !4305)
!4319 = !DILocation(line: 57, column: 29, scope: !4305)
!4320 = !DILocation(line: 55, column: 7, scope: !4260)
!4321 = !DILocalVariable(name: "pos", scope: !4322, file: !299, line: 123, type: !4297)
!4322 = distinct !DILexicalBlock(scope: !4305, file: !299, line: 119, column: 5)
!4323 = !DILocation(line: 123, column: 13, scope: !4322)
!4324 = !DILocation(line: 123, column: 34, scope: !4322)
!4325 = !DILocation(line: 123, column: 26, scope: !4322)
!4326 = !DILocation(line: 123, column: 39, scope: !4322)
!4327 = !DILocation(line: 123, column: 47, scope: !4322)
!4328 = !DILocation(line: 123, column: 19, scope: !4322)
!4329 = !DILocation(line: 124, column: 11, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4322, file: !299, line: 124, column: 11)
!4331 = !DILocation(line: 124, column: 15, scope: !4330)
!4332 = !DILocation(line: 124, column: 11, scope: !4322)
!4333 = !DILocation(line: 130, column: 11, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4330, file: !299, line: 125, column: 9)
!4335 = !DILocation(line: 135, column: 7, scope: !4322)
!4336 = !DILocation(line: 135, column: 12, scope: !4322)
!4337 = !DILocation(line: 135, column: 19, scope: !4322)
!4338 = !DILocation(line: 136, column: 22, scope: !4322)
!4339 = !DILocation(line: 136, column: 7, scope: !4322)
!4340 = !DILocation(line: 136, column: 12, scope: !4322)
!4341 = !DILocation(line: 136, column: 20, scope: !4322)
!4342 = !DILocation(line: 167, column: 7, scope: !4322)
!4343 = !DILocation(line: 169, column: 18, scope: !4260)
!4344 = !DILocation(line: 169, column: 22, scope: !4260)
!4345 = !DILocation(line: 169, column: 30, scope: !4260)
!4346 = !DILocation(line: 169, column: 10, scope: !4260)
!4347 = !DILocation(line: 169, column: 3, scope: !4260)
!4348 = !DILocation(line: 170, column: 1, scope: !4260)
!4349 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4350, file: !4350, line: 43, type: !4351, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !61)
!4350 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4351 = !DISubroutineType(types: !79)
!4352 = !DILocation(line: 45, column: 3, scope: !4349)
!4353 = !DILocation(line: 45, column: 9, scope: !4349)
!4354 = !DILocation(line: 46, column: 3, scope: !4349)
!4355 = distinct !DISubprogram(name: "imalloc", scope: !4350, file: !4350, line: 55, type: !3642, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !61)
!4356 = !DILocalVariable(name: "s", arg: 1, scope: !4355, file: !4350, line: 55, type: !281)
!4357 = !DILocation(line: 55, column: 16, scope: !4355)
!4358 = !DILocation(line: 57, column: 10, scope: !4355)
!4359 = !DILocation(line: 57, column: 12, scope: !4355)
!4360 = !DILocation(line: 57, column: 34, scope: !4355)
!4361 = !DILocation(line: 57, column: 26, scope: !4355)
!4362 = !DILocation(line: 57, column: 39, scope: !4355)
!4363 = !DILocation(line: 57, column: 3, scope: !4355)
!4364 = distinct !DISubprogram(name: "irealloc", scope: !4350, file: !4350, line: 66, type: !3670, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !61)
!4365 = !DILocalVariable(name: "p", arg: 1, scope: !4364, file: !4350, line: 66, type: !52)
!4366 = !DILocation(line: 66, column: 17, scope: !4364)
!4367 = !DILocalVariable(name: "s", arg: 2, scope: !4364, file: !4350, line: 66, type: !281)
!4368 = !DILocation(line: 66, column: 26, scope: !4364)
!4369 = !DILocation(line: 68, column: 10, scope: !4364)
!4370 = !DILocation(line: 68, column: 12, scope: !4364)
!4371 = !DILocation(line: 68, column: 35, scope: !4364)
!4372 = !DILocation(line: 68, column: 38, scope: !4364)
!4373 = !DILocation(line: 68, column: 26, scope: !4364)
!4374 = !DILocation(line: 68, column: 43, scope: !4364)
!4375 = !DILocation(line: 68, column: 3, scope: !4364)
!4376 = distinct !DISubprogram(name: "icalloc", scope: !4350, file: !4350, line: 77, type: !3708, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !61)
!4377 = !DILocalVariable(name: "n", arg: 1, scope: !4376, file: !4350, line: 77, type: !281)
!4378 = !DILocation(line: 77, column: 16, scope: !4376)
!4379 = !DILocalVariable(name: "s", arg: 2, scope: !4376, file: !4350, line: 77, type: !281)
!4380 = !DILocation(line: 77, column: 25, scope: !4376)
!4381 = !DILocation(line: 79, column: 18, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4376, file: !4350, line: 79, column: 7)
!4383 = !DILocation(line: 79, column: 16, scope: !4382)
!4384 = !DILocation(line: 79, column: 7, scope: !4376)
!4385 = !DILocation(line: 81, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !4350, line: 81, column: 11)
!4387 = distinct !DILexicalBlock(scope: !4382, file: !4350, line: 80, column: 5)
!4388 = !DILocation(line: 81, column: 13, scope: !4386)
!4389 = !DILocation(line: 81, column: 11, scope: !4387)
!4390 = !DILocation(line: 82, column: 16, scope: !4386)
!4391 = !DILocation(line: 82, column: 9, scope: !4386)
!4392 = !DILocation(line: 83, column: 9, scope: !4387)
!4393 = !DILocation(line: 84, column: 5, scope: !4387)
!4394 = !DILocation(line: 85, column: 18, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4376, file: !4350, line: 85, column: 7)
!4396 = !DILocation(line: 85, column: 16, scope: !4395)
!4397 = !DILocation(line: 85, column: 7, scope: !4376)
!4398 = !DILocation(line: 87, column: 11, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !4350, line: 87, column: 11)
!4400 = distinct !DILexicalBlock(scope: !4395, file: !4350, line: 86, column: 5)
!4401 = !DILocation(line: 87, column: 13, scope: !4399)
!4402 = !DILocation(line: 87, column: 11, scope: !4400)
!4403 = !DILocation(line: 88, column: 16, scope: !4399)
!4404 = !DILocation(line: 88, column: 9, scope: !4399)
!4405 = !DILocation(line: 89, column: 9, scope: !4400)
!4406 = !DILocation(line: 90, column: 5, scope: !4400)
!4407 = !DILocation(line: 91, column: 18, scope: !4376)
!4408 = !DILocation(line: 91, column: 21, scope: !4376)
!4409 = !DILocation(line: 91, column: 10, scope: !4376)
!4410 = !DILocation(line: 91, column: 3, scope: !4376)
!4411 = !DILocation(line: 92, column: 1, scope: !4376)
!4412 = distinct !DISubprogram(name: "ireallocarray", scope: !4350, file: !4350, line: 98, type: !3682, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !61)
!4413 = !DILocalVariable(name: "p", arg: 1, scope: !4412, file: !4350, line: 98, type: !52)
!4414 = !DILocation(line: 98, column: 22, scope: !4412)
!4415 = !DILocalVariable(name: "n", arg: 2, scope: !4412, file: !4350, line: 98, type: !281)
!4416 = !DILocation(line: 98, column: 31, scope: !4412)
!4417 = !DILocalVariable(name: "s", arg: 3, scope: !4412, file: !4350, line: 98, type: !281)
!4418 = !DILocation(line: 98, column: 40, scope: !4412)
!4419 = !DILocation(line: 100, column: 11, scope: !4412)
!4420 = !DILocation(line: 100, column: 13, scope: !4412)
!4421 = !DILocation(line: 100, column: 25, scope: !4412)
!4422 = !DILocation(line: 100, column: 28, scope: !4412)
!4423 = !DILocation(line: 100, column: 30, scope: !4412)
!4424 = !DILocation(line: 101, column: 27, scope: !4412)
!4425 = !DILocation(line: 101, column: 30, scope: !4412)
!4426 = !DILocation(line: 101, column: 33, scope: !4412)
!4427 = !DILocation(line: 101, column: 13, scope: !4412)
!4428 = !DILocation(line: 102, column: 13, scope: !4412)
!4429 = !DILocation(line: 100, column: 3, scope: !4412)
!4430 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !232, file: !232, line: 100, type: !4431, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !231, retainedNodes: !61)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!163, !4433, !6, !163, !4434}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!4435 = !DILocalVariable(name: "pwc", arg: 1, scope: !4430, file: !232, line: 100, type: !4433)
!4436 = !DILocation(line: 100, column: 21, scope: !4430)
!4437 = !DILocalVariable(name: "s", arg: 2, scope: !4430, file: !232, line: 100, type: !6)
!4438 = !DILocation(line: 100, column: 38, scope: !4430)
!4439 = !DILocalVariable(name: "n", arg: 3, scope: !4430, file: !232, line: 100, type: !163)
!4440 = !DILocation(line: 100, column: 48, scope: !4430)
!4441 = !DILocalVariable(name: "ps", arg: 4, scope: !4430, file: !232, line: 100, type: !4434)
!4442 = !DILocation(line: 100, column: 62, scope: !4430)
!4443 = !DILocation(line: 105, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4430, file: !232, line: 105, column: 7)
!4445 = !DILocation(line: 105, column: 9, scope: !4444)
!4446 = !DILocation(line: 105, column: 7, scope: !4430)
!4447 = !DILocation(line: 107, column: 11, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4444, file: !232, line: 106, column: 5)
!4449 = !DILocation(line: 108, column: 9, scope: !4448)
!4450 = !DILocation(line: 109, column: 9, scope: !4448)
!4451 = !DILocation(line: 110, column: 5, scope: !4448)
!4452 = !DILocation(line: 117, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4430, file: !232, line: 117, column: 7)
!4454 = !DILocation(line: 117, column: 10, scope: !4453)
!4455 = !DILocation(line: 117, column: 7, scope: !4430)
!4456 = !DILocation(line: 118, column: 8, scope: !4453)
!4457 = !DILocation(line: 118, column: 5, scope: !4453)
!4458 = !DILocalVariable(name: "ret", scope: !4430, file: !232, line: 130, type: !163)
!4459 = !DILocation(line: 130, column: 10, scope: !4430)
!4460 = !DILocation(line: 130, column: 26, scope: !4430)
!4461 = !DILocation(line: 130, column: 31, scope: !4430)
!4462 = !DILocation(line: 130, column: 34, scope: !4430)
!4463 = !DILocation(line: 130, column: 37, scope: !4430)
!4464 = !DILocation(line: 130, column: 16, scope: !4430)
!4465 = !DILocation(line: 135, column: 7, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4430, file: !232, line: 135, column: 7)
!4467 = !DILocation(line: 135, column: 11, scope: !4466)
!4468 = !DILocation(line: 135, column: 25, scope: !4466)
!4469 = !DILocation(line: 135, column: 39, scope: !4466)
!4470 = !DILocation(line: 135, column: 30, scope: !4466)
!4471 = !DILocation(line: 135, column: 7, scope: !4430)
!4472 = !DILocation(line: 137, column: 14, scope: !4466)
!4473 = !DILocation(line: 137, column: 5, scope: !4466)
!4474 = !DILocation(line: 138, column: 7, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4430, file: !232, line: 138, column: 7)
!4476 = !DILocation(line: 138, column: 11, scope: !4475)
!4477 = !DILocation(line: 138, column: 7, scope: !4430)
!4478 = !DILocation(line: 139, column: 5, scope: !4475)
!4479 = !DILocation(line: 143, column: 22, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4430, file: !232, line: 143, column: 7)
!4481 = !DILocation(line: 143, column: 19, scope: !4480)
!4482 = !DILocation(line: 143, column: 26, scope: !4480)
!4483 = !DILocation(line: 143, column: 29, scope: !4480)
!4484 = !DILocation(line: 143, column: 31, scope: !4480)
!4485 = !DILocation(line: 143, column: 36, scope: !4480)
!4486 = !DILocation(line: 143, column: 41, scope: !4480)
!4487 = !DILocation(line: 143, column: 7, scope: !4430)
!4488 = !DILocation(line: 145, column: 11, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !232, line: 145, column: 11)
!4490 = distinct !DILexicalBlock(scope: !4480, file: !232, line: 144, column: 5)
!4491 = !DILocation(line: 145, column: 15, scope: !4489)
!4492 = !DILocation(line: 145, column: 11, scope: !4490)
!4493 = !DILocation(line: 146, column: 33, scope: !4489)
!4494 = !DILocation(line: 146, column: 32, scope: !4489)
!4495 = !DILocation(line: 146, column: 16, scope: !4489)
!4496 = !DILocation(line: 146, column: 10, scope: !4489)
!4497 = !DILocation(line: 146, column: 14, scope: !4489)
!4498 = !DILocation(line: 146, column: 9, scope: !4489)
!4499 = !DILocation(line: 147, column: 7, scope: !4490)
!4500 = !DILocation(line: 151, column: 10, scope: !4430)
!4501 = !DILocation(line: 151, column: 3, scope: !4430)
!4502 = !DILocation(line: 286, column: 1, scope: !4430)
!4503 = distinct !DISubprogram(name: "mbszero", scope: !4504, file: !4504, line: 1135, type: !4505, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !302, retainedNodes: !61)
!4504 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4505 = !DISubroutineType(types: !4506)
!4506 = !{null, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !237, line: 6, baseType: !4509)
!4509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !239, line: 21, baseType: !4510)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 13, size: 64, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4510, file: !239, line: 15, baseType: !58, size: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4510, file: !239, line: 20, baseType: !4514, size: 32, offset: 32)
!4514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4510, file: !239, line: 16, size: 32, elements: !4515)
!4515 = !{!4516, !4517}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4514, file: !239, line: 18, baseType: !13, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4514, file: !239, line: 19, baseType: !248, size: 32)
!4518 = !DILocalVariable(name: "ps", arg: 1, scope: !4503, file: !4504, line: 1135, type: !4507)
!4519 = !DILocation(line: 1135, column: 21, scope: !4503)
!4520 = !DILocation(line: 1137, column: 11, scope: !4503)
!4521 = !DILocation(line: 1137, column: 3, scope: !4503)
!4522 = !DILocation(line: 1138, column: 1, scope: !4503)
!4523 = distinct !DISubprogram(name: "memeq", scope: !3274, file: !3274, line: 974, type: !4524, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !304, retainedNodes: !61)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!74, !3893, !3893, !163}
!4526 = !DILocalVariable(name: "__s1", arg: 1, scope: !4523, file: !3274, line: 974, type: !3893)
!4527 = !DILocation(line: 974, column: 20, scope: !4523)
!4528 = !DILocalVariable(name: "__s2", arg: 2, scope: !4523, file: !3274, line: 974, type: !3893)
!4529 = !DILocation(line: 974, column: 38, scope: !4523)
!4530 = !DILocalVariable(name: "__n", arg: 3, scope: !4523, file: !3274, line: 974, type: !163)
!4531 = !DILocation(line: 974, column: 51, scope: !4523)
!4532 = !DILocation(line: 976, column: 19, scope: !4523)
!4533 = !DILocation(line: 976, column: 25, scope: !4523)
!4534 = !DILocation(line: 976, column: 31, scope: !4523)
!4535 = !DILocation(line: 976, column: 11, scope: !4523)
!4536 = !DILocation(line: 976, column: 10, scope: !4523)
!4537 = !DILocation(line: 976, column: 3, scope: !4523)
!4538 = distinct !DISubprogram(name: "rpl_realloc", scope: !4539, file: !4539, line: 2057, type: !3658, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !306, retainedNodes: !61)
!4539 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4540 = !DILocalVariable(name: "ptr", arg: 1, scope: !4538, file: !4539, line: 2057, type: !52)
!4541 = !DILocation(line: 2057, column: 20, scope: !4538)
!4542 = !DILocalVariable(name: "size", arg: 2, scope: !4538, file: !4539, line: 2057, type: !163)
!4543 = !DILocation(line: 2057, column: 32, scope: !4538)
!4544 = !DILocation(line: 2059, column: 19, scope: !4538)
!4545 = !DILocation(line: 2059, column: 24, scope: !4538)
!4546 = !DILocation(line: 2059, column: 31, scope: !4538)
!4547 = !DILocation(line: 2059, column: 10, scope: !4538)
!4548 = !DILocation(line: 2059, column: 3, scope: !4538)
!4549 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !309, file: !309, line: 27, type: !3595, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !61)
!4550 = !DILocalVariable(name: "ptr", arg: 1, scope: !4549, file: !309, line: 27, type: !52)
!4551 = !DILocation(line: 27, column: 21, scope: !4549)
!4552 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4549, file: !309, line: 27, type: !163)
!4553 = !DILocation(line: 27, column: 33, scope: !4549)
!4554 = !DILocalVariable(name: "size", arg: 3, scope: !4549, file: !309, line: 27, type: !163)
!4555 = !DILocation(line: 27, column: 47, scope: !4549)
!4556 = !DILocalVariable(name: "nbytes", scope: !4549, file: !309, line: 29, type: !163)
!4557 = !DILocation(line: 29, column: 10, scope: !4549)
!4558 = !DILocation(line: 30, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4549, file: !309, line: 30, column: 7)
!4560 = !DILocation(line: 30, column: 7, scope: !4549)
!4561 = !DILocation(line: 32, column: 7, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !309, line: 31, column: 5)
!4563 = !DILocation(line: 32, column: 13, scope: !4562)
!4564 = !DILocation(line: 33, column: 7, scope: !4562)
!4565 = !DILocation(line: 37, column: 19, scope: !4549)
!4566 = !DILocation(line: 37, column: 24, scope: !4549)
!4567 = !DILocation(line: 37, column: 10, scope: !4549)
!4568 = !DILocation(line: 37, column: 3, scope: !4549)
!4569 = !DILocation(line: 38, column: 1, scope: !4549)
!4570 = distinct !DISubprogram(name: "hard_locale", scope: !312, file: !312, line: 28, type: !4571, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !61)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!74, !58}
!4573 = !DILocalVariable(name: "category", arg: 1, scope: !4570, file: !312, line: 28, type: !58)
!4574 = !DILocation(line: 28, column: 18, scope: !4570)
!4575 = !DILocalVariable(name: "locale", scope: !4570, file: !312, line: 30, type: !4576)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4577)
!4577 = !{!4578}
!4578 = !DISubrange(count: 257)
!4579 = !DILocation(line: 30, column: 8, scope: !4570)
!4580 = !DILocation(line: 32, column: 25, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4570, file: !312, line: 32, column: 7)
!4582 = !DILocation(line: 32, column: 35, scope: !4581)
!4583 = !DILocation(line: 32, column: 7, scope: !4581)
!4584 = !DILocation(line: 32, column: 7, scope: !4570)
!4585 = !DILocation(line: 33, column: 5, scope: !4581)
!4586 = !DILocation(line: 35, column: 16, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4570, file: !312, line: 35, column: 7)
!4588 = !DILocation(line: 35, column: 9, scope: !4587)
!4589 = !DILocation(line: 35, column: 29, scope: !4587)
!4590 = !DILocation(line: 35, column: 39, scope: !4587)
!4591 = !DILocation(line: 35, column: 32, scope: !4587)
!4592 = !DILocation(line: 35, column: 7, scope: !4570)
!4593 = !DILocation(line: 36, column: 5, scope: !4587)
!4594 = !DILocation(line: 46, column: 3, scope: !4570)
!4595 = !DILocation(line: 47, column: 1, scope: !4570)
!4596 = distinct !DISubprogram(name: "setlocale_null_r", scope: !314, file: !314, line: 154, type: !4597, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !61)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!58, !58, !139, !163}
!4599 = !DILocalVariable(name: "category", arg: 1, scope: !4596, file: !314, line: 154, type: !58)
!4600 = !DILocation(line: 154, column: 23, scope: !4596)
!4601 = !DILocalVariable(name: "buf", arg: 2, scope: !4596, file: !314, line: 154, type: !139)
!4602 = !DILocation(line: 154, column: 39, scope: !4596)
!4603 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4596, file: !314, line: 154, type: !163)
!4604 = !DILocation(line: 154, column: 51, scope: !4596)
!4605 = !DILocation(line: 159, column: 37, scope: !4596)
!4606 = !DILocation(line: 159, column: 47, scope: !4596)
!4607 = !DILocation(line: 159, column: 52, scope: !4596)
!4608 = !DILocation(line: 159, column: 10, scope: !4596)
!4609 = !DILocation(line: 159, column: 3, scope: !4596)
!4610 = distinct !DISubprogram(name: "setlocale_null", scope: !314, file: !314, line: 186, type: !4611, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !61)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!6, !58}
!4613 = !DILocalVariable(name: "category", arg: 1, scope: !4610, file: !314, line: 186, type: !58)
!4614 = !DILocation(line: 186, column: 21, scope: !4610)
!4615 = !DILocation(line: 189, column: 35, scope: !4610)
!4616 = !DILocation(line: 189, column: 10, scope: !4610)
!4617 = !DILocation(line: 189, column: 3, scope: !4610)
!4618 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !316, file: !316, line: 35, type: !4611, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !61)
!4619 = !DILocalVariable(name: "category", arg: 1, scope: !4618, file: !316, line: 35, type: !58)
!4620 = !DILocation(line: 35, column: 30, scope: !4618)
!4621 = !DILocalVariable(name: "result", scope: !4618, file: !316, line: 37, type: !6)
!4622 = !DILocation(line: 37, column: 15, scope: !4618)
!4623 = !DILocation(line: 37, column: 35, scope: !4618)
!4624 = !DILocation(line: 37, column: 24, scope: !4618)
!4625 = !DILocation(line: 62, column: 10, scope: !4618)
!4626 = !DILocation(line: 62, column: 3, scope: !4618)
!4627 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !316, file: !316, line: 66, type: !4597, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !61)
!4628 = !DILocalVariable(name: "category", arg: 1, scope: !4627, file: !316, line: 66, type: !58)
!4629 = !DILocation(line: 66, column: 32, scope: !4627)
!4630 = !DILocalVariable(name: "buf", arg: 2, scope: !4627, file: !316, line: 66, type: !139)
!4631 = !DILocation(line: 66, column: 48, scope: !4627)
!4632 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4627, file: !316, line: 66, type: !163)
!4633 = !DILocation(line: 66, column: 60, scope: !4627)
!4634 = !DILocalVariable(name: "result", scope: !4627, file: !316, line: 111, type: !6)
!4635 = !DILocation(line: 111, column: 15, scope: !4627)
!4636 = !DILocation(line: 111, column: 49, scope: !4627)
!4637 = !DILocation(line: 111, column: 24, scope: !4627)
!4638 = !DILocation(line: 113, column: 7, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4627, file: !316, line: 113, column: 7)
!4640 = !DILocation(line: 113, column: 14, scope: !4639)
!4641 = !DILocation(line: 113, column: 7, scope: !4627)
!4642 = !DILocation(line: 116, column: 11, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !316, line: 116, column: 11)
!4644 = distinct !DILexicalBlock(scope: !4639, file: !316, line: 114, column: 5)
!4645 = !DILocation(line: 116, column: 19, scope: !4643)
!4646 = !DILocation(line: 116, column: 11, scope: !4644)
!4647 = !DILocation(line: 120, column: 9, scope: !4643)
!4648 = !DILocation(line: 120, column: 16, scope: !4643)
!4649 = !DILocation(line: 121, column: 7, scope: !4644)
!4650 = !DILocalVariable(name: "length", scope: !4651, file: !316, line: 125, type: !163)
!4651 = distinct !DILexicalBlock(scope: !4639, file: !316, line: 124, column: 5)
!4652 = !DILocation(line: 125, column: 14, scope: !4651)
!4653 = !DILocation(line: 125, column: 31, scope: !4651)
!4654 = !DILocation(line: 125, column: 23, scope: !4651)
!4655 = !DILocation(line: 126, column: 11, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4651, file: !316, line: 126, column: 11)
!4657 = !DILocation(line: 126, column: 20, scope: !4656)
!4658 = !DILocation(line: 126, column: 18, scope: !4656)
!4659 = !DILocation(line: 126, column: 11, scope: !4651)
!4660 = !DILocation(line: 128, column: 19, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4656, file: !316, line: 127, column: 9)
!4662 = !DILocation(line: 128, column: 24, scope: !4661)
!4663 = !DILocation(line: 128, column: 32, scope: !4661)
!4664 = !DILocation(line: 128, column: 39, scope: !4661)
!4665 = !DILocation(line: 128, column: 11, scope: !4661)
!4666 = !DILocation(line: 129, column: 11, scope: !4661)
!4667 = !DILocation(line: 133, column: 15, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !316, line: 133, column: 15)
!4669 = distinct !DILexicalBlock(scope: !4656, file: !316, line: 132, column: 9)
!4670 = !DILocation(line: 133, column: 23, scope: !4668)
!4671 = !DILocation(line: 133, column: 15, scope: !4669)
!4672 = !DILocation(line: 138, column: 23, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4668, file: !316, line: 134, column: 13)
!4674 = !DILocation(line: 138, column: 28, scope: !4673)
!4675 = !DILocation(line: 138, column: 36, scope: !4673)
!4676 = !DILocation(line: 138, column: 44, scope: !4673)
!4677 = !DILocation(line: 138, column: 15, scope: !4673)
!4678 = !DILocation(line: 139, column: 15, scope: !4673)
!4679 = !DILocation(line: 139, column: 19, scope: !4673)
!4680 = !DILocation(line: 139, column: 27, scope: !4673)
!4681 = !DILocation(line: 139, column: 32, scope: !4673)
!4682 = !DILocation(line: 140, column: 13, scope: !4673)
!4683 = !DILocation(line: 141, column: 11, scope: !4669)
!4684 = !DILocation(line: 145, column: 1, scope: !4627)
