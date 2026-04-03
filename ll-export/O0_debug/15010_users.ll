; ModuleID = 'src/users.bc'
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
%struct.gl_utmp = type { i8*, i8*, i8*, i8*, %struct.timespec, i32, i32, i16, %struct.anon }
%struct.timespec = type { i64, i64 }
%struct.anon = type { i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.utmp_alloc = type { %struct.gl_utmp*, i64, i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i64, %struct.timespec, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), align 8, !dbg !57
@file_name = internal global i8* null, align 8, !dbg !62
@ignore_EPIPE = internal global i8 0, align 1, !dbg !67
@.str.54 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !70
@stderr = external global %struct._IO_FILE*, align 8
@.str.58 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !99
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !76
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !95
@.str.1.64 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.65 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.66 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !97
@.str.4.59 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.60 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.61 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.71 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.72, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.73, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !104
@optind = external global i32, align 4
@.str.1.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !121
@.str.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !127
@.str.85 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.87 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.88 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.89 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.91 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.92 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.93 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.94 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 8, !dbg !138
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !153
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !171
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !186
@nslots = internal global i32 1, align 4, !dbg !193
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !173
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !195
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.96 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.97 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !178
@.str.109 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.1.110 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.2.111 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.3.112 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.4.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5.116 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1
@.str.6.117 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1
@.str.7.118 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1
@__const.get_linux_boot_time_fallback.boot_touched_files = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5.116, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6.117, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0)], align 8
@.str.8.114 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.9.115 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.124 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.125 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.126 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.127 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.128 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.129 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.130 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.131 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.132 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.133 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.134 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.135 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.136 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.137 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.138 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.139 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.144 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.145 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.146 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.147 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.148 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.149 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.150 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !201
@exit_failure = dso_local global i32 1, align 4, !dbg !209
@.str.167 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.165 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.166 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.190 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !215
@.str.201 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.202 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !355 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !358, metadata !DIExpression()), !dbg !359
  %3 = load i32, i32* %2, align 4, !dbg !360
  %4 = icmp ne i32 %3, 0, !dbg !362
  br i1 %4, label %5, label %12, !dbg !363

5:                                                ; preds = %1
  br label %6, !dbg !364

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !365
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !365
  %9 = load i8*, i8** @program_name, align 8, !dbg !365
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !365
  br label %11, !dbg !365

11:                                               ; preds = %6
  br label %20, !dbg !365

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !367
  %14 = load i8*, i8** @program_name, align 8, !dbg !369
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !370
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !371
  %17 = call i32 (i8*, ...) @printf(i8* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)), !dbg !372
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !373
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef %18), !dbg !373
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !374
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef %19), !dbg !374
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !375
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %2, align 4, !dbg !376
  call void @exit(i32 noundef %21) #19, !dbg !377
  unreachable, !dbg !377
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !378, metadata !DIExpression()), !dbg !379
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !380, metadata !DIExpression()), !dbg !381
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !382
  %15 = icmp eq i32 %14, -1, !dbg !384
  br i1 %15, label %16, label %30, !dbg !385

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !386, metadata !DIExpression()), !dbg !388
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !389
  store i8* %17, i8** %5, align 8, !dbg !388
  %18 = load i8*, i8** %5, align 8, !dbg !390
  %19 = icmp ne i8* %18, null, !dbg !390
  br i1 %19, label %20, label %27, !dbg !391

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !392
  %22 = load i8, i8* %21, align 1, !dbg !393
  %23 = icmp ne i8 %22, 0, !dbg !393
  br i1 %23, label %24, label %27, !dbg !394

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !395
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)), !dbg !396
  br label %27, !dbg !394

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !394
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !397
  br label %30, !dbg !398

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !399
  %32 = icmp ne i32 %31, 0, !dbg !399
  br i1 %32, label %33, label %37, !dbg !401

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !402
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !402
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !402
  br label %274, !dbg !404

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !405, metadata !DIExpression()), !dbg !406
  store i8 1, i8* %6, align 1, !dbg !406
  call void @llvm.dbg.declare(metadata i8** %7, metadata !407, metadata !DIExpression()), !dbg !408
  %38 = load i8*, i8** %4, align 8, !dbg !409
  %39 = load i8*, i8** %4, align 8, !dbg !410
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !411
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !412
  store i8* %41, i8** %7, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i8** %8, metadata !413, metadata !DIExpression()), !dbg !414
  %42 = load i8*, i8** %4, align 8, !dbg !415
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !416
  store i8* %43, i8** %8, align 8, !dbg !414
  %44 = load i8*, i8** %8, align 8, !dbg !417
  %45 = icmp ne i8* %44, null, !dbg !417
  br i1 %45, label %48, label %46, !dbg !419

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !420
  store i8* %47, i8** %8, align 8, !dbg !422
  store i8 0, i8* %6, align 1, !dbg !423
  br label %89, !dbg !424

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !425
  %50 = load i8*, i8** %7, align 8, !dbg !427
  %51 = icmp ne i8* %49, %50, !dbg !428
  br i1 %51, label %52, label %88, !dbg !429

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !430, metadata !DIExpression()), !dbg !432
  %53 = load i8*, i8** %7, align 8, !dbg !433
  store i8* %53, i8** %9, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i64* %10, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 0, i64* %10, align 8, !dbg !435
  br label %54, !dbg !436

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !437
  %56 = load i8*, i8** %8, align 8, !dbg !438
  %57 = icmp ult i8* %55, %56, !dbg !439
  br i1 %57, label %58, label %61, !dbg !440

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !441
  %60 = icmp ult i64 %59, 2, !dbg !442
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !443
  br i1 %62, label %63, label %82, !dbg !436

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !444
  %65 = load i16*, i16** %64, align 8, !dbg !444
  %66 = load i8*, i8** %9, align 8, !dbg !444
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !444
  store i8* %67, i8** %9, align 8, !dbg !444
  %68 = load i8, i8* %66, align 1, !dbg !444
  %69 = zext i8 %68 to i32, !dbg !444
  %70 = sext i32 %69 to i64, !dbg !444
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !444
  %72 = load i16, i16* %71, align 2, !dbg !444
  %73 = zext i16 %72 to i32, !dbg !444
  %74 = and i32 %73, 8192, !dbg !444
  %75 = icmp ne i32 %74, 0, !dbg !445
  %76 = xor i1 %75, true, !dbg !445
  %77 = xor i1 %76, true, !dbg !446
  %78 = zext i1 %77 to i32, !dbg !446
  %79 = sext i32 %78 to i64, !dbg !446
  %80 = load i64, i64* %10, align 8, !dbg !447
  %81 = add i64 %80, %79, !dbg !447
  store i64 %81, i64* %10, align 8, !dbg !447
  br label %54, !dbg !436, !llvm.loop !448

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !450
  %84 = icmp eq i64 %83, 2, !dbg !452
  br i1 %84, label %85, label %87, !dbg !453

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !454
  store i8* %86, i8** %8, align 8, !dbg !456
  store i8 0, i8* %6, align 1, !dbg !457
  br label %87, !dbg !458

87:                                               ; preds = %85, %82
  br label %88, !dbg !459

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !460, metadata !DIExpression()), !dbg !461
  %90 = load i8*, i8** %8, align 8, !dbg !462
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !463
  store i64 %91, i64* %11, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i8** %12, metadata !464, metadata !DIExpression()), !dbg !465
  %92 = load i8*, i8** %8, align 8, !dbg !466
  %93 = load i64, i64* %11, align 8, !dbg !467
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !468
  store i8* %94, i8** %12, align 8, !dbg !465
  br label %95, !dbg !469

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !470
  %97 = load i8, i8* %96, align 1, !dbg !471
  %98 = zext i8 %97 to i32, !dbg !471
  %99 = icmp ne i32 %98, 0, !dbg !471
  br i1 %99, label %100, label %105, !dbg !472

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !473
  %102 = load i8, i8* %101, align 1, !dbg !474
  %103 = zext i8 %102 to i32, !dbg !474
  %104 = icmp ne i32 %103, 10, !dbg !475
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !476
  br i1 %106, label %107, label %164, !dbg !469

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !477
  %109 = load i8, i8* %108, align 1, !dbg !480
  %110 = zext i8 %109 to i32, !dbg !480
  %111 = icmp eq i32 %110, 45, !dbg !481
  br i1 %111, label %112, label %119, !dbg !482

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !483
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !484
  %115 = load i8, i8* %114, align 1, !dbg !485
  %116 = zext i8 %115 to i32, !dbg !485
  %117 = icmp eq i32 %116, 45, !dbg !486
  br i1 %117, label %118, label %119, !dbg !487

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !488
  br label %119, !dbg !489

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !490
  %121 = load i16*, i16** %120, align 8, !dbg !490
  %122 = load i8*, i8** %12, align 8, !dbg !490
  %123 = load i8, i8* %122, align 1, !dbg !490
  %124 = zext i8 %123 to i32, !dbg !490
  %125 = sext i32 %124 to i64, !dbg !490
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !490
  %127 = load i16, i16* %126, align 2, !dbg !490
  %128 = zext i16 %127 to i32, !dbg !490
  %129 = and i32 %128, 8192, !dbg !490
  %130 = icmp ne i32 %129, 0, !dbg !490
  br i1 %130, label %131, label %161, !dbg !492

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !493
  %133 = load i8, i8* %132, align 1, !dbg !496
  %134 = zext i8 %133 to i32, !dbg !496
  %135 = icmp eq i32 %134, 9, !dbg !497
  br i1 %135, label %149, label %136, !dbg !498

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !499
  %138 = load i16*, i16** %137, align 8, !dbg !499
  %139 = load i8*, i8** %12, align 8, !dbg !499
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !499
  %141 = load i8, i8* %140, align 1, !dbg !499
  %142 = zext i8 %141 to i32, !dbg !499
  %143 = sext i32 %142 to i64, !dbg !499
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !499
  %145 = load i16, i16* %144, align 2, !dbg !499
  %146 = zext i16 %145 to i32, !dbg !499
  %147 = and i32 %146, 8192, !dbg !499
  %148 = icmp ne i32 %147, 0, !dbg !499
  br i1 %148, label %149, label %150, !dbg !500

149:                                              ; preds = %136, %131
  br label %164, !dbg !501

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !502
  %152 = trunc i8 %151 to i1, !dbg !502
  br i1 %152, label %160, label %153, !dbg !504

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !505
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !506
  %156 = load i8, i8* %155, align 1, !dbg !507
  %157 = zext i8 %156 to i32, !dbg !507
  %158 = icmp ne i32 %157, 45, !dbg !508
  br i1 %158, label %159, label %160, !dbg !509

159:                                              ; preds = %153
  br label %164, !dbg !510

160:                                              ; preds = %153, %150
  br label %161, !dbg !511

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !512
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !512
  store i8* %163, i8** %12, align 8, !dbg !512
  br label %95, !dbg !469, !llvm.loop !513

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !515
  %166 = load i8*, i8** %7, align 8, !dbg !515
  %167 = load i8*, i8** %4, align 8, !dbg !515
  %168 = ptrtoint i8* %166 to i64, !dbg !515
  %169 = ptrtoint i8* %167 to i64, !dbg !515
  %170 = sub i64 %168, %169, !dbg !515
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !515
  call void @llvm.dbg.declare(metadata i8** %13, metadata !516, metadata !DIExpression()), !dbg !517
  %173 = load i8*, i8** %3, align 8, !dbg !518
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !519
  br i1 %174, label %175, label %176, !dbg !519

175:                                              ; preds = %164
  br label %232, !dbg !519

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !520
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)), !dbg !521
  br i1 %178, label %179, label %180, !dbg !521

179:                                              ; preds = %176
  br label %230, !dbg !521

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !522
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)), !dbg !523
  br i1 %182, label %183, label %184, !dbg !523

183:                                              ; preds = %180
  br label %228, !dbg !523

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !524
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)), !dbg !525
  br i1 %186, label %187, label %188, !dbg !525

187:                                              ; preds = %184
  br label %226, !dbg !525

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !526
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)), !dbg !527
  br i1 %190, label %191, label %192, !dbg !527

191:                                              ; preds = %188
  br label %224, !dbg !527

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !528
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)), !dbg !529
  br i1 %194, label %195, label %196, !dbg !529

195:                                              ; preds = %192
  br label %222, !dbg !529

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !530
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !531
  br i1 %198, label %199, label %200, !dbg !531

199:                                              ; preds = %196
  br label %220, !dbg !531

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !532
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !533
  br i1 %202, label %203, label %204, !dbg !533

203:                                              ; preds = %200
  br label %218, !dbg !533

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !534
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !535
  br i1 %206, label %207, label %208, !dbg !535

207:                                              ; preds = %204
  br label %216, !dbg !535

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !536
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !537
  br i1 %210, label %211, label %212, !dbg !537

211:                                              ; preds = %208
  br label %214, !dbg !537

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !538
  br label %214, !dbg !537

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !537
  br label %216, !dbg !535

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !535
  br label %218, !dbg !533

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !533
  br label %220, !dbg !531

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !531
  br label %222, !dbg !529

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !529
  br label %224, !dbg !527

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !527
  br label %226, !dbg !525

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !525
  br label %228, !dbg !523

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !523
  br label %230, !dbg !521

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !521
  br label %232, !dbg !519

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !519
  store i8* %233, i8** %13, align 8, !dbg !517
  %234 = load i8*, i8** %8, align 8, !dbg !539
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #20, !dbg !539
  %236 = icmp eq i32 %235, 0, !dbg !539
  br i1 %236, label %241, label %237, !dbg !541

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !542
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #20, !dbg !542
  %240 = icmp eq i32 %239, 0, !dbg !542
  br i1 %240, label %241, label %248, !dbg !543

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !544
  %243 = load i8*, i8** %13, align 8, !dbg !546
  %244 = load i64, i64* %11, align 8, !dbg !547
  %245 = trunc i64 %244 to i32, !dbg !548
  %246 = load i8*, i8** %8, align 8, !dbg !549
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !550
  br label %254, !dbg !551

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !552
  %250 = load i64, i64* %11, align 8, !dbg !554
  %251 = trunc i64 %250 to i32, !dbg !555
  %252 = load i8*, i8** %8, align 8, !dbg !556
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !557
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !558
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !559
  %259 = load i8*, i8** %7, align 8, !dbg !560
  %260 = load i8*, i8** %12, align 8, !dbg !560
  %261 = load i8*, i8** %7, align 8, !dbg !560
  %262 = ptrtoint i8* %260 to i64, !dbg !560
  %263 = ptrtoint i8* %261 to i64, !dbg !560
  %264 = sub i64 %262, %263, !dbg !560
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !560
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !561
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !562
  %271 = load i8*, i8** %12, align 8, !dbg !563
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !563
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !563
  br label %274, !dbg !564

274:                                              ; preds = %254, %33
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !565 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !570, metadata !DIExpression()), !dbg !579
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !579
  call void @llvm.dbg.declare(metadata i8** %4, metadata !580, metadata !DIExpression()), !dbg !581
  %9 = load i8*, i8** %2, align 8, !dbg !582
  store i8* %9, i8** %4, align 8, !dbg !581
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !583, metadata !DIExpression()), !dbg !585
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !586
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !585
  br label %11, !dbg !587

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !588
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !589
  %14 = load i8*, i8** %13, align 8, !dbg !589
  %15 = icmp ne i8* %14, null, !dbg !588
  br i1 %15, label %16, label %23, !dbg !590

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !591
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !592
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !593
  %20 = load i8*, i8** %19, align 8, !dbg !593
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !594
  %22 = xor i1 %21, true, !dbg !595
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !596
  br i1 %24, label %25, label %28, !dbg !587

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !597
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !597
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !597
  br label %11, !dbg !587, !llvm.loop !598

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !599
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !601
  %31 = load i8*, i8** %30, align 8, !dbg !601
  %32 = icmp ne i8* %31, null, !dbg !599
  br i1 %32, label %33, label %37, !dbg !602

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !603
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !604
  %36 = load i8*, i8** %35, align 8, !dbg !604
  store i8* %36, i8** %4, align 8, !dbg !605
  br label %37, !dbg !606

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !607
  call void @llvm.dbg.declare(metadata i8** %6, metadata !608, metadata !DIExpression()), !dbg !609
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !610
  store i8* %38, i8** %6, align 8, !dbg !609
  %39 = load i8*, i8** %6, align 8, !dbg !611
  %40 = icmp ne i8* %39, null, !dbg !611
  br i1 %40, label %41, label %49, !dbg !613

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !614
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #20, !dbg !614
  %44 = icmp ne i32 %43, 0, !dbg !614
  br i1 %44, label %45, label %49, !dbg !615

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !616
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !616
  br label %49, !dbg !618

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !619, metadata !DIExpression()), !dbg !620
  %50 = load i8*, i8** %2, align 8, !dbg !621
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !622
  br i1 %51, label %52, label %53, !dbg !622

52:                                               ; preds = %49
  br label %55, !dbg !622

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !623
  br label %55, !dbg !622

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !622
  store i8* %56, i8** %7, align 8, !dbg !620
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !624
  %58 = load i8*, i8** %7, align 8, !dbg !625
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %58), !dbg !626
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !627
  %61 = load i8*, i8** %4, align 8, !dbg !628
  %62 = load i8*, i8** %4, align 8, !dbg !629
  %63 = load i8*, i8** %2, align 8, !dbg !630
  %64 = icmp eq i8* %62, %63, !dbg !631
  %65 = zext i1 %64 to i64, !dbg !629
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !629
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !632
  ret void, !dbg !633
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !634 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !637, metadata !DIExpression()), !dbg !638
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !639, metadata !DIExpression()), !dbg !640
  %6 = load i8**, i8*** %5, align 8, !dbg !641
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !641
  %8 = load i8*, i8** %7, align 8, !dbg !641
  call void @set_program_name(i8* noundef %8), !dbg !642
  %9 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !643
  %10 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !644
  %11 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !645
  %12 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !646
  %13 = load i32, i32* %4, align 4, !dbg !647
  %14 = load i8**, i8*** %5, align 8, !dbg !648
  %15 = load i8*, i8** @Version, align 8, !dbg !649
  %16 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)), !dbg !650
  %17 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)), !dbg !650
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %13, i8** noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %15, i1 noundef true, void (i32)* noundef @usage, i8* noundef %16, i8* noundef %17, i8* noundef null), !dbg !651
  %18 = load i32, i32* %4, align 4, !dbg !652
  %19 = load i32, i32* @optind, align 4, !dbg !653
  %20 = sub nsw i32 %18, %19, !dbg !654
  switch i32 %20, label %28 [
    i32 0, label %21
    i32 1, label %22
  ], !dbg !655

21:                                               ; preds = %2
  call void @users(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1), !dbg !656
  br label %37, !dbg !658

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8, !dbg !659
  %24 = load i32, i32* @optind, align 4, !dbg !660
  %25 = sext i32 %24 to i64, !dbg !659
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25, !dbg !659
  %27 = load i8*, i8** %26, align 8, !dbg !659
  call void @users(i8* noundef %27, i32 noundef 0), !dbg !661
  br label %37, !dbg !662

28:                                               ; preds = %2
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !663
  %30 = load i8**, i8*** %5, align 8, !dbg !663
  %31 = load i32, i32* @optind, align 4, !dbg !663
  %32 = add nsw i32 %31, 1, !dbg !663
  %33 = sext i32 %32 to i64, !dbg !663
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33, !dbg !663
  %35 = load i8*, i8** %34, align 8, !dbg !663
  %36 = call i8* @quote(i8* noundef %35), !dbg !663
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %29, i8* noundef %36), !dbg !663
  call void @usage(i32 noundef 1) #22, !dbg !664
  unreachable, !dbg !664

37:                                               ; preds = %22, %21
  ret i32 0, !dbg !665
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @users(i8* noundef %0, i32 noundef %1) #4 !dbg !666 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.gl_utmp*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !669, metadata !DIExpression()), !dbg !670
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata i64* %5, metadata !673, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %6, metadata !675, metadata !DIExpression()), !dbg !701
  %7 = load i32, i32* %4, align 4, !dbg !702
  %8 = or i32 %7, 2, !dbg !702
  store i32 %8, i32* %4, align 4, !dbg !702
  %9 = load i8*, i8** %3, align 8, !dbg !703
  %10 = load i32, i32* %4, align 4, !dbg !705
  %11 = call i32 @read_utmp(i8* noundef %9, i64* noundef %5, %struct.gl_utmp** noundef %6, i32 noundef %10), !dbg !706
  %12 = icmp ne i32 %11, 0, !dbg !707
  br i1 %12, label %13, label %18, !dbg !708

13:                                               ; preds = %2
  %14 = call i32* @__errno_location() #21, !dbg !709
  %15 = load i32, i32* %14, align 4, !dbg !709
  %16 = load i8*, i8** %3, align 8, !dbg !709
  %17 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %16), !dbg !709
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i8* noundef %17), !dbg !709
  unreachable, !dbg !709

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8, !dbg !710
  %20 = load %struct.gl_utmp*, %struct.gl_utmp** %6, align 8, !dbg !711
  call void @list_entries_users(i64 noundef %19, %struct.gl_utmp* noundef %20), !dbg !712
  %21 = load %struct.gl_utmp*, %struct.gl_utmp** %6, align 8, !dbg !713
  %22 = bitcast %struct.gl_utmp* %21 to i8*, !dbg !713
  call void @free(i8* noundef %22) #18, !dbg !714
  ret void, !dbg !715
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_entries_users(i64 noundef %0, %struct.gl_utmp* noundef %1) #4 !dbg !716 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gl_utmp*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !721, metadata !DIExpression()), !dbg !722
  store %struct.gl_utmp* %1, %struct.gl_utmp** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %4, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !725, metadata !DIExpression()), !dbg !726
  %11 = load i64, i64* %3, align 8, !dbg !727
  %12 = call noalias nonnull i8* @xinmalloc(i64 noundef %11, i64 noundef 8) #23, !dbg !728
  %13 = bitcast i8* %12 to i8**, !dbg !728
  store i8** %13, i8*** %5, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata i64* %6, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 0, i64* %6, align 8, !dbg !730
  br label %14, !dbg !731

14:                                               ; preds = %41, %2
  %15 = load i64, i64* %3, align 8, !dbg !732
  %16 = add nsw i64 %15, -1, !dbg !732
  store i64 %16, i64* %3, align 8, !dbg !732
  %17 = icmp ne i64 %15, 0, !dbg !731
  br i1 %17, label %18, label %44, !dbg !731

18:                                               ; preds = %14
  %19 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !733
  %20 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %19, i32 0, i32 0, !dbg !733
  %21 = load i8*, i8** %20, align 8, !dbg !733
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !733
  %23 = load i8, i8* %22, align 1, !dbg !733
  %24 = zext i8 %23 to i32, !dbg !733
  %25 = icmp ne i32 %24, 0, !dbg !733
  br i1 %25, label %26, label %41, !dbg !733

26:                                               ; preds = %18
  %27 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !733
  %28 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %27, i32 0, i32 7, !dbg !733
  %29 = load i16, i16* %28, align 8, !dbg !733
  %30 = sext i16 %29 to i32, !dbg !733
  %31 = icmp eq i32 %30, 7, !dbg !733
  br i1 %31, label %32, label %41, !dbg !736

32:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %7, metadata !737, metadata !DIExpression()), !dbg !739
  %33 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !740
  %34 = call noalias nonnull i8* @extract_trimmed_name(%struct.gl_utmp* noundef %33), !dbg !741
  store i8* %34, i8** %7, align 8, !dbg !742
  %35 = load i8*, i8** %7, align 8, !dbg !743
  %36 = load i8**, i8*** %5, align 8, !dbg !744
  %37 = load i64, i64* %6, align 8, !dbg !745
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37, !dbg !744
  store i8* %35, i8** %38, align 8, !dbg !746
  %39 = load i64, i64* %6, align 8, !dbg !747
  %40 = add nsw i64 %39, 1, !dbg !747
  store i64 %40, i64* %6, align 8, !dbg !747
  br label %41, !dbg !748

41:                                               ; preds = %32, %26, %18
  %42 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !749
  %43 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %42, i32 1, !dbg !749
  store %struct.gl_utmp* %43, %struct.gl_utmp** %4, align 8, !dbg !749
  br label %14, !dbg !731, !llvm.loop !750

44:                                               ; preds = %14
  %45 = load i8**, i8*** %5, align 8, !dbg !752
  %46 = bitcast i8** %45 to i8*, !dbg !752
  %47 = load i64, i64* %6, align 8, !dbg !753
  call void @qsort(i8* noundef %46, i64 noundef %47, i64 noundef 8, i32 (i8*, i8*)* noundef @userid_compare), !dbg !754
  call void @llvm.dbg.declare(metadata i64* %8, metadata !755, metadata !DIExpression()), !dbg !757
  store i64 0, i64* %8, align 8, !dbg !757
  br label %48, !dbg !758

48:                                               ; preds = %69, %44
  %49 = load i64, i64* %8, align 8, !dbg !759
  %50 = load i64, i64* %6, align 8, !dbg !761
  %51 = icmp slt i64 %49, %50, !dbg !762
  br i1 %51, label %52, label %72, !dbg !763

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8* %9, metadata !764, metadata !DIExpression()), !dbg !766
  %53 = load i64, i64* %8, align 8, !dbg !767
  %54 = load i64, i64* %6, align 8, !dbg !768
  %55 = sub nsw i64 %54, 1, !dbg !769
  %56 = icmp slt i64 %53, %55, !dbg !770
  %57 = zext i1 %56 to i64, !dbg !767
  %58 = select i1 %56, i32 32, i32 10, !dbg !767
  %59 = trunc i32 %58 to i8, !dbg !771
  store i8 %59, i8* %9, align 1, !dbg !766
  %60 = load i8**, i8*** %5, align 8, !dbg !772
  %61 = load i64, i64* %8, align 8, !dbg !772
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61, !dbg !772
  %63 = load i8*, i8** %62, align 8, !dbg !772
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772
  %65 = call i32 @fputs_unlocked(i8* noundef %63, %struct._IO_FILE* noundef %64), !dbg !772
  %66 = load i8, i8* %9, align 1, !dbg !773
  %67 = zext i8 %66 to i32, !dbg !773
  %68 = call i32 @putchar_unlocked(i32 noundef %67), !dbg !773
  br label %69, !dbg !774

69:                                               ; preds = %52
  %70 = load i64, i64* %8, align 8, !dbg !775
  %71 = add nsw i64 %70, 1, !dbg !775
  store i64 %71, i64* %8, align 8, !dbg !775
  br label %48, !dbg !776, !llvm.loop !777

72:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i64* %10, metadata !779, metadata !DIExpression()), !dbg !781
  store i64 0, i64* %10, align 8, !dbg !781
  br label %73, !dbg !782

73:                                               ; preds = %82, %72
  %74 = load i64, i64* %10, align 8, !dbg !783
  %75 = load i64, i64* %6, align 8, !dbg !785
  %76 = icmp slt i64 %74, %75, !dbg !786
  br i1 %76, label %77, label %85, !dbg !787

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8, !dbg !788
  %79 = load i64, i64* %10, align 8, !dbg !789
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79, !dbg !788
  %81 = load i8*, i8** %80, align 8, !dbg !788
  call void @free(i8* noundef %81) #18, !dbg !790
  br label %82, !dbg !790

82:                                               ; preds = %77
  %83 = load i64, i64* %10, align 8, !dbg !791
  %84 = add nsw i64 %83, 1, !dbg !791
  store i64 %84, i64* %10, align 8, !dbg !791
  br label %73, !dbg !792, !llvm.loop !793

85:                                               ; preds = %73
  %86 = load i8**, i8*** %5, align 8, !dbg !795
  %87 = bitcast i8** %86 to i8*, !dbg !795
  call void @free(i8* noundef %87) #18, !dbg !796
  ret void, !dbg !797
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userid_compare(i8* noundef %0, i8* noundef %1) #4 !dbg !798 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !803, metadata !DIExpression()), !dbg !804
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !807, metadata !DIExpression()), !dbg !808
  %7 = load i8*, i8** %3, align 8, !dbg !809
  %8 = bitcast i8* %7 to i8**, !dbg !810
  store i8** %8, i8*** %5, align 8, !dbg !808
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !811, metadata !DIExpression()), !dbg !812
  %9 = load i8*, i8** %4, align 8, !dbg !813
  %10 = bitcast i8* %9 to i8**, !dbg !814
  store i8** %10, i8*** %6, align 8, !dbg !812
  %11 = load i8**, i8*** %5, align 8, !dbg !815
  %12 = load i8*, i8** %11, align 8, !dbg !816
  %13 = load i8**, i8*** %6, align 8, !dbg !817
  %14 = load i8*, i8** %13, align 8, !dbg !818
  %15 = call i32 @strcmp(i8* noundef %12, i8* noundef %14) #20, !dbg !819
  ret i32 %15, !dbg !820
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #3

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !821 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !822, metadata !DIExpression()), !dbg !823
  %3 = load i8*, i8** %2, align 8, !dbg !824
  store i8* %3, i8** @file_name, align 8, !dbg !825
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !827 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !830, metadata !DIExpression()), !dbg !831
  %4 = load i8, i8* %2, align 1, !dbg !832
  %5 = trunc i8 %4 to i1, !dbg !832
  %6 = zext i1 %5 to i8, !dbg !833
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !833
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !835 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !836
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !838
  %4 = icmp ne i32 %3, 0, !dbg !839
  br i1 %4, label %5, label %28, !dbg !840

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !841
  %7 = trunc i8 %6 to i1, !dbg !841
  br i1 %7, label %8, label %12, !dbg !842

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !843
  %10 = load i32, i32* %9, align 4, !dbg !843
  %11 = icmp eq i32 %10, 32, !dbg !844
  br i1 %11, label %28, label %12, !dbg !845

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !846, metadata !DIExpression()), !dbg !848
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.55, i64 0, i64 0)) #18, !dbg !849
  store i8* %13, i8** %1, align 8, !dbg !848
  %14 = load i8*, i8** @file_name, align 8, !dbg !850
  %15 = icmp ne i8* %14, null, !dbg !850
  br i1 %15, label %16, label %22, !dbg !852

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !853
  %18 = load i32, i32* %17, align 4, !dbg !853
  %19 = load i8*, i8** @file_name, align 8, !dbg !853
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !853
  %21 = load i8*, i8** %1, align 8, !dbg !853
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.56, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !853
  br label %26, !dbg !853

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !854
  %24 = load i32, i32* %23, align 4, !dbg !854
  %25 = load i8*, i8** %1, align 8, !dbg !854
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.57, i64 0, i64 0), i8* noundef %25), !dbg !854
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !855
  call void @_exit(i32 noundef %27) #22, !dbg !856
  unreachable, !dbg !856

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !857
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !859
  %31 = icmp ne i32 %30, 0, !dbg !860
  br i1 %31, label %32, label %34, !dbg !861

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !862
  call void @_exit(i32 noundef %33) #22, !dbg !863
  unreachable, !dbg !863

34:                                               ; preds = %28
  ret void, !dbg !864
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !865 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !868, metadata !DIExpression()), !dbg !869
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !870, metadata !DIExpression()), !dbg !869
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !871, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !872, metadata !DIExpression()), !dbg !869
  call void @flush_stdout(), !dbg !873
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !874
  %10 = icmp ne void ()* %9, null, !dbg !874
  br i1 %10, label %11, label %13, !dbg !876

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !877
  call void %12(), !dbg !878
  br label %17, !dbg !878

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !879
  %15 = call i8* @getprogname() #20, !dbg !881
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* noundef %15), !dbg !882
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !883
  %19 = load i32, i32* %6, align 4, !dbg !883
  %20 = load i8*, i8** %7, align 8, !dbg !883
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !883
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !883
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !883
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !885 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !886, metadata !DIExpression()), !dbg !887
  store i32 1, i32* %1, align 4, !dbg !888
  %2 = load i32, i32* %1, align 4, !dbg !889
  %3 = icmp sle i32 0, %2, !dbg !891
  br i1 %3, label %4, label %11, !dbg !892

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !893
  %6 = call i32 @is_open(i32 noundef %5), !dbg !894
  %7 = icmp ne i32 %6, 0, !dbg !894
  br i1 %7, label %8, label %11, !dbg !895

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !896
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !896
  br label %11, !dbg !896

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !897
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !898 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !899, metadata !DIExpression()), !dbg !900
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !901, metadata !DIExpression()), !dbg !900
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !902, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !903, metadata !DIExpression()), !dbg !900
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !904
  %10 = load i8*, i8** %7, align 8, !dbg !905
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !906
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !906
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !906
  %14 = load i32, i32* @error_message_count, align 4, !dbg !907
  %15 = add i32 %14, 1, !dbg !907
  store i32 %15, i32* @error_message_count, align 4, !dbg !907
  %16 = load i32, i32* %6, align 4, !dbg !908
  %17 = icmp ne i32 %16, 0, !dbg !908
  br i1 %17, label %18, label %20, !dbg !910

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !911
  call void @print_errno_message(i32 noundef %19), !dbg !912
  br label %20, !dbg !912

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !913
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !913
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !914
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !914
  %25 = load i32, i32* %5, align 4, !dbg !915
  %26 = icmp ne i32 %25, 0, !dbg !915
  br i1 %26, label %27, label %29, !dbg !917

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !918
  call void @exit(i32 noundef %28) #19, !dbg !919
  unreachable, !dbg !919

29:                                               ; preds = %20
  ret void, !dbg !920
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !921 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i8** %3, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !926, metadata !DIExpression()), !dbg !930
  %5 = load i32, i32* %2, align 4, !dbg !931
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !932
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !933
  store i8* %7, i8** %3, align 8, !dbg !934
  %8 = load i8*, i8** %3, align 8, !dbg !935
  %9 = icmp ne i8* %8, null, !dbg !935
  br i1 %9, label %12, label %10, !dbg !937

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.60, i64 0, i64 0)) #18, !dbg !938
  store i8* %11, i8** %3, align 8, !dbg !939
  br label %12, !dbg !940

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !941
  %14 = load i8*, i8** %3, align 8, !dbg !942
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.61, i64 0, i64 0), i8* noundef %14), !dbg !943
  ret void, !dbg !944
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !945 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !948, metadata !DIExpression()), !dbg !949
  %3 = load i32, i32* %2, align 4, !dbg !950
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !951
  %5 = icmp sle i32 0, %4, !dbg !952
  %6 = zext i1 %5 to i32, !dbg !952
  ret i32 %6, !dbg !953
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !954 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !959, metadata !DIExpression()), !dbg !960
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !961, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !963, metadata !DIExpression()), !dbg !964
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !965
  call void @llvm.va_start(i8* %9), !dbg !965
  %10 = load i32, i32* %4, align 4, !dbg !966
  %11 = load i32, i32* %5, align 4, !dbg !966
  %12 = load i8*, i8** %6, align 8, !dbg !966
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !966
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !966
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !966
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !967
  call void @llvm.va_end(i8* %15), !dbg !967
  ret void, !dbg !968
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !969, metadata !DIExpression()), !dbg !970
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !971, metadata !DIExpression()), !dbg !970
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !972, metadata !DIExpression()), !dbg !970
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !973, metadata !DIExpression()), !dbg !970
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !974, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !975, metadata !DIExpression()), !dbg !970
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !976
  %14 = icmp ne i32 %13, 0, !dbg !976
  br i1 %14, label %15, label %38, !dbg !978

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !979
  %17 = load i32, i32* %10, align 4, !dbg !982
  %18 = icmp eq i32 %16, %17, !dbg !983
  br i1 %18, label %19, label %35, !dbg !984

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !985
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !986
  %22 = icmp eq i8* %20, %21, !dbg !987
  br i1 %22, label %34, label %23, !dbg !988

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !989
  %25 = icmp ne i8* %24, null, !dbg !990
  br i1 %25, label %26, label %35, !dbg !991

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !992
  %28 = icmp ne i8* %27, null, !dbg !993
  br i1 %28, label %29, label %35, !dbg !994

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !995
  %31 = load i8*, i8** %9, align 8, !dbg !996
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !997
  %33 = icmp eq i32 %32, 0, !dbg !998
  br i1 %33, label %34, label %35, !dbg !999

34:                                               ; preds = %29, %19
  br label %61, !dbg !1000

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1001
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1002
  %37 = load i32, i32* %10, align 4, !dbg !1003
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1004
  br label %38, !dbg !1005

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1006
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1007
  %40 = icmp ne void ()* %39, null, !dbg !1007
  br i1 %40, label %41, label %43, !dbg !1009

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1010
  call void %42(), !dbg !1011
  br label %47, !dbg !1011

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1012
  %45 = call i8* @getprogname() #20, !dbg !1014
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.64, i64 0, i64 0), i8* noundef %45), !dbg !1015
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1016
  %49 = load i8*, i8** %9, align 8, !dbg !1017
  %50 = icmp ne i8* %49, null, !dbg !1018
  %51 = zext i1 %50 to i64, !dbg !1017
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), !dbg !1017
  %53 = load i8*, i8** %9, align 8, !dbg !1019
  %54 = load i32, i32* %10, align 4, !dbg !1020
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1021
  %56 = load i32, i32* %7, align 4, !dbg !1022
  %57 = load i32, i32* %8, align 4, !dbg !1022
  %58 = load i8*, i8** %11, align 8, !dbg !1022
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1022
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1022
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1022
  br label %61, !dbg !1023

61:                                               ; preds = %47, %34
  ret void, !dbg !1023
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1024 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1031, metadata !DIExpression()), !dbg !1032
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1037, metadata !DIExpression()), !dbg !1038
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1039
  call void @llvm.va_start(i8* %13), !dbg !1039
  %14 = load i32, i32* %6, align 4, !dbg !1040
  %15 = load i32, i32* %7, align 4, !dbg !1040
  %16 = load i8*, i8** %8, align 8, !dbg !1040
  %17 = load i32, i32* %9, align 4, !dbg !1040
  %18 = load i8*, i8** %10, align 8, !dbg !1040
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1040
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1040
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1040
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1041
  call void @llvm.va_end(i8* %21), !dbg !1041
  ret void, !dbg !1042
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1043 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1046
  ret i8* %1, !dbg !1047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !1048 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1060, metadata !DIExpression()), !dbg !1061
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1064, metadata !DIExpression()), !dbg !1065
  %17 = load i32, i32* @opterr, align 4, !dbg !1066
  store i32 %17, i32* %13, align 4, !dbg !1065
  store i32 0, i32* @opterr, align 4, !dbg !1067
  %18 = load i32, i32* %7, align 4, !dbg !1068
  %19 = icmp eq i32 %18, 2, !dbg !1070
  br i1 %19, label %20, label %41, !dbg !1071

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1072, metadata !DIExpression()), !dbg !1074
  %21 = load i32, i32* %7, align 4, !dbg !1075
  %22 = load i8**, i8*** %8, align 8, !dbg !1076
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !1077
  store i32 %23, i32* %14, align 4, !dbg !1074
  %24 = load i32, i32* %14, align 4, !dbg !1078
  %25 = icmp ne i32 %24, -1, !dbg !1080
  br i1 %25, label %26, label %40, !dbg !1081

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !1082
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !1084

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !1085
  call void %29(i32 noundef 0), !dbg !1087
  br label %39, !dbg !1088

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !1089, metadata !DIExpression()), !dbg !1102
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1103
  call void @llvm.va_start(i8* %31), !dbg !1103
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104
  %33 = load i8*, i8** %9, align 8, !dbg !1105
  %34 = load i8*, i8** %10, align 8, !dbg !1106
  %35 = load i8*, i8** %11, align 8, !dbg !1107
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !1108
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !1108
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !1108
  call void @exit(i32 noundef 0) #19, !dbg !1109
  unreachable, !dbg !1109

38:                                               ; preds = %26
  br label %39, !dbg !1110

39:                                               ; preds = %38, %28
  br label %40, !dbg !1111

40:                                               ; preds = %39, %20
  br label %41, !dbg !1112

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !1113
  store i32 %42, i32* @opterr, align 4, !dbg !1114
  store i32 0, i32* @optind, align 4, !dbg !1115
  ret void, !dbg !1116
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !1117 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1128, metadata !DIExpression()), !dbg !1129
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1130, metadata !DIExpression()), !dbg !1131
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1134, metadata !DIExpression()), !dbg !1135
  %21 = load i32, i32* @opterr, align 4, !dbg !1136
  store i32 %21, i32* %15, align 4, !dbg !1135
  store i32 1, i32* @opterr, align 4, !dbg !1137
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1138, metadata !DIExpression()), !dbg !1139
  %22 = load i8, i8* %13, align 1, !dbg !1140
  %23 = trunc i8 %22 to i1, !dbg !1140
  %24 = zext i1 %23 to i64, !dbg !1140
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), !dbg !1140
  store i8* %25, i8** %16, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1141, metadata !DIExpression()), !dbg !1142
  %26 = load i32, i32* %8, align 4, !dbg !1143
  %27 = load i8**, i8*** %9, align 8, !dbg !1144
  %28 = load i8*, i8** %16, align 8, !dbg !1145
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !1146
  store i32 %29, i32* %17, align 4, !dbg !1142
  %30 = load i32, i32* %17, align 4, !dbg !1147
  %31 = icmp ne i32 %30, -1, !dbg !1149
  br i1 %31, label %32, label %48, !dbg !1150

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !1151
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !1153

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !1154
  call void %35(i32 noundef 0), !dbg !1156
  br label %47, !dbg !1157

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !1158, metadata !DIExpression()), !dbg !1160
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1161
  call void @llvm.va_start(i8* %37), !dbg !1161
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1162
  %39 = load i8*, i8** %10, align 8, !dbg !1163
  %40 = load i8*, i8** %11, align 8, !dbg !1164
  %41 = load i8*, i8** %12, align 8, !dbg !1165
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !1166
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !1166
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !1166
  call void @exit(i32 noundef 0) #19, !dbg !1167
  unreachable, !dbg !1167

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !1168
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !1169
  call void %45(i32 noundef %46), !dbg !1170
  br label %47, !dbg !1171

47:                                               ; preds = %44, %34
  br label %48, !dbg !1172

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !1173
  store i32 %49, i32* @opterr, align 4, !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1176 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %5 = load i8*, i8** %2, align 8, !dbg !1181
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1182
  store i8* %6, i8** %3, align 8, !dbg !1180
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1183, metadata !DIExpression()), !dbg !1184
  %7 = load i8*, i8** %3, align 8, !dbg !1185
  %8 = icmp ne i8* %7, null, !dbg !1185
  br i1 %8, label %9, label %12, !dbg !1185

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1186
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1187
  br label %14, !dbg !1185

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1188
  br label %14, !dbg !1185

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1185
  store i8* %15, i8** %4, align 8, !dbg !1184
  %16 = load i8*, i8** %4, align 8, !dbg !1189
  %17 = load i8*, i8** %2, align 8, !dbg !1191
  %18 = ptrtoint i8* %16 to i64, !dbg !1192
  %19 = ptrtoint i8* %17 to i64, !dbg !1192
  %20 = sub i64 %18, %19, !dbg !1192
  %21 = icmp sle i64 7, %20, !dbg !1193
  br i1 %21, label %22, label %36, !dbg !1194

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1195
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1196
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i64 noundef 7), !dbg !1197
  br i1 %25, label %26, label %36, !dbg !1198

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1199
  store i8* %27, i8** %2, align 8, !dbg !1201
  %28 = load i8*, i8** %4, align 8, !dbg !1202
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.82, i64 0, i64 0), i64 noundef 3) #20, !dbg !1204
  %30 = icmp eq i32 %29, 0, !dbg !1205
  br i1 %30, label %31, label %35, !dbg !1206

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1207
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1207
  store i8* %33, i8** %4, align 8, !dbg !1207
  %34 = load i8*, i8** %4, align 8, !dbg !1209
  store i8* %34, i8** %2, align 8, !dbg !1210
  br label %35, !dbg !1211

35:                                               ; preds = %31, %26
  br label %36, !dbg !1212

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1213
  store i8* %37, i8** @program_name, align 8, !dbg !1214
  %38 = load i8*, i8** %2, align 8, !dbg !1215
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1216
  %39 = load i8*, i8** %4, align 8, !dbg !1217
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1218
  ret void, !dbg !1219
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !129 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1220, metadata !DIExpression()), !dbg !1221
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1222, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1224, metadata !DIExpression()), !dbg !1225
  %9 = load i8*, i8** %4, align 8, !dbg !1226
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1227
  store i8* %10, i8** %6, align 8, !dbg !1225
  %11 = load i8*, i8** %6, align 8, !dbg !1228
  %12 = load i8*, i8** %4, align 8, !dbg !1230
  %13 = icmp ne i8* %11, %12, !dbg !1231
  br i1 %13, label %14, label %16, !dbg !1232

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1233
  store i8* %15, i8** %3, align 8, !dbg !1234
  br label %26, !dbg !1234

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1235, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1241, metadata !DIExpression()), !dbg !1252
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1253
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1254
  %18 = icmp eq i64 %17, 2, !dbg !1256
  br i1 %18, label %19, label %24, !dbg !1257

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1258
  %21 = icmp eq i32 %20, 2047, !dbg !1259
  br i1 %21, label %22, label %24, !dbg !1260

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1261
  store i8* %23, i8** %3, align 8, !dbg !1262
  br label %26, !dbg !1262

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1263
  store i8* %25, i8** %3, align 8, !dbg !1264
  br label %26, !dbg !1264

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1265
  ret i8* %27, !dbg !1265
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1266 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1270, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1272, metadata !DIExpression()), !dbg !1273
  %5 = call i32* @__errno_location() #21, !dbg !1274
  %6 = load i32, i32* %5, align 4, !dbg !1274
  store i32 %6, i32* %3, align 4, !dbg !1273
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1275, metadata !DIExpression()), !dbg !1276
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1277
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1277
  br i1 %8, label %9, label %11, !dbg !1277

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1278
  br label %12, !dbg !1277

11:                                               ; preds = %1
  br label %12, !dbg !1277

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1277
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1277
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1279
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1279
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1276
  %17 = load i32, i32* %3, align 4, !dbg !1280
  %18 = call i32* @__errno_location() #21, !dbg !1281
  store i32 %17, i32* %18, align 4, !dbg !1282
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1283
  ret %struct.quoting_options* %19, !dbg !1284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1285 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1290, metadata !DIExpression()), !dbg !1291
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1292
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1292
  br i1 %4, label %5, label %7, !dbg !1292

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1293
  br label %8, !dbg !1292

7:                                                ; preds = %1
  br label %8, !dbg !1292

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1292
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1294
  %11 = load i32, i32* %10, align 8, !dbg !1294
  ret i32 %11, !dbg !1295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1296 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1301, metadata !DIExpression()), !dbg !1302
  %5 = load i32, i32* %4, align 4, !dbg !1303
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1304
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1304
  br i1 %7, label %8, label %10, !dbg !1304

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1305
  br label %11, !dbg !1304

10:                                               ; preds = %2
  br label %11, !dbg !1304

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1304
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1306
  store i32 %5, i32* %13, align 8, !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1309 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1316, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1318, metadata !DIExpression()), !dbg !1319
  %11 = load i8, i8* %5, align 1, !dbg !1320
  store i8 %11, i8* %7, align 1, !dbg !1319
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1321, metadata !DIExpression()), !dbg !1323
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1324
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1324
  br i1 %13, label %14, label %16, !dbg !1324

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1325
  br label %17, !dbg !1324

16:                                               ; preds = %3
  br label %17, !dbg !1324

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1324
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1326
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1327
  %21 = load i8, i8* %7, align 1, !dbg !1328
  %22 = zext i8 %21 to i64, !dbg !1328
  %23 = udiv i64 %22, 32, !dbg !1329
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1330
  store i32* %24, i32** %8, align 8, !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1331, metadata !DIExpression()), !dbg !1332
  %25 = load i8, i8* %7, align 1, !dbg !1333
  %26 = zext i8 %25 to i64, !dbg !1333
  %27 = urem i64 %26, 32, !dbg !1334
  %28 = trunc i64 %27 to i32, !dbg !1333
  store i32 %28, i32* %9, align 4, !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1335, metadata !DIExpression()), !dbg !1336
  %29 = load i32*, i32** %8, align 8, !dbg !1337
  %30 = load i32, i32* %29, align 4, !dbg !1338
  %31 = load i32, i32* %9, align 4, !dbg !1339
  %32 = lshr i32 %30, %31, !dbg !1340
  %33 = and i32 %32, 1, !dbg !1341
  store i32 %33, i32* %10, align 4, !dbg !1336
  %34 = load i32, i32* %6, align 4, !dbg !1342
  %35 = and i32 %34, 1, !dbg !1343
  %36 = load i32, i32* %10, align 4, !dbg !1344
  %37 = xor i32 %35, %36, !dbg !1345
  %38 = load i32, i32* %9, align 4, !dbg !1346
  %39 = shl i32 %37, %38, !dbg !1347
  %40 = load i32*, i32** %8, align 8, !dbg !1348
  %41 = load i32, i32* %40, align 4, !dbg !1349
  %42 = xor i32 %41, %39, !dbg !1349
  store i32 %42, i32* %40, align 4, !dbg !1349
  %43 = load i32, i32* %10, align 4, !dbg !1350
  ret i32 %43, !dbg !1351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1352 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1357, metadata !DIExpression()), !dbg !1358
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1359
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1359
  br i1 %7, label %9, label %8, !dbg !1361

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1362
  br label %9, !dbg !1363

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1364, metadata !DIExpression()), !dbg !1365
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1366
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1367
  %12 = load i32, i32* %11, align 4, !dbg !1367
  store i32 %12, i32* %5, align 4, !dbg !1365
  %13 = load i32, i32* %4, align 4, !dbg !1368
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1369
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1370
  store i32 %13, i32* %15, align 4, !dbg !1371
  %16 = load i32, i32* %5, align 4, !dbg !1372
  ret i32 %16, !dbg !1373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1374 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1381, metadata !DIExpression()), !dbg !1382
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1383
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1383
  br i1 %8, label %10, label %9, !dbg !1385

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1386
  br label %10, !dbg !1387

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1388
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1389
  store i32 10, i32* %12, align 8, !dbg !1390
  %13 = load i8*, i8** %5, align 8, !dbg !1391
  %14 = icmp ne i8* %13, null, !dbg !1391
  br i1 %14, label %15, label %18, !dbg !1393

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1394
  %17 = icmp ne i8* %16, null, !dbg !1394
  br i1 %17, label %19, label %18, !dbg !1395

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1396
  unreachable, !dbg !1396

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1397
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1398
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1399
  store i8* %20, i8** %22, align 8, !dbg !1400
  %23 = load i8*, i8** %6, align 8, !dbg !1401
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1402
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1403
  store i8* %23, i8** %25, align 8, !dbg !1404
  ret void, !dbg !1405
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1406 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1415, metadata !DIExpression()), !dbg !1416
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1417, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1419, metadata !DIExpression()), !dbg !1420
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1421
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1421
  br i1 %15, label %16, label %18, !dbg !1421

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1422
  br label %19, !dbg !1421

18:                                               ; preds = %5
  br label %19, !dbg !1421

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1421
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1420
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1423, metadata !DIExpression()), !dbg !1424
  %21 = call i32* @__errno_location() #21, !dbg !1425
  %22 = load i32, i32* %21, align 4, !dbg !1425
  store i32 %22, i32* %12, align 4, !dbg !1424
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1426, metadata !DIExpression()), !dbg !1427
  %23 = load i8*, i8** %6, align 8, !dbg !1428
  %24 = load i64, i64* %7, align 8, !dbg !1429
  %25 = load i8*, i8** %8, align 8, !dbg !1430
  %26 = load i64, i64* %9, align 8, !dbg !1431
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1432
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1433
  %29 = load i32, i32* %28, align 8, !dbg !1433
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1434
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1435
  %32 = load i32, i32* %31, align 4, !dbg !1435
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1436
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1437
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1436
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1438
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1439
  %38 = load i8*, i8** %37, align 8, !dbg !1439
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1440
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1441
  %41 = load i8*, i8** %40, align 8, !dbg !1441
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1442
  store i64 %42, i64* %13, align 8, !dbg !1427
  %43 = load i32, i32* %12, align 4, !dbg !1443
  %44 = call i32* @__errno_location() #21, !dbg !1444
  store i32 %43, i32* %44, align 4, !dbg !1445
  %45 = load i64, i64* %13, align 8, !dbg !1446
  ret i64 %45, !dbg !1447
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1448 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1455, metadata !DIExpression()), !dbg !1456
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1461, metadata !DIExpression()), !dbg !1462
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1471, metadata !DIExpression()), !dbg !1472
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1473
  %45 = icmp eq i64 %44, 1, !dbg !1474
  %46 = zext i1 %45 to i8, !dbg !1472
  store i8 %46, i8* %20, align 1, !dbg !1472
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i64 0, i64* %21, align 8, !dbg !1476
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i64 0, i64* %22, align 8, !dbg !1478
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i8* null, i8** %23, align 8, !dbg !1480
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i64 0, i64* %24, align 8, !dbg !1482
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1483, metadata !DIExpression()), !dbg !1484
  store i8 0, i8* %25, align 1, !dbg !1484
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1485, metadata !DIExpression()), !dbg !1486
  %47 = load i32, i32* %16, align 4, !dbg !1487
  %48 = and i32 %47, 2, !dbg !1488
  %49 = icmp ne i32 %48, 0, !dbg !1489
  %50 = zext i1 %49 to i8, !dbg !1486
  store i8 %50, i8* %26, align 1, !dbg !1486
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1490, metadata !DIExpression()), !dbg !1491
  store i8 0, i8* %27, align 1, !dbg !1491
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i8 1, i8* %28, align 1, !dbg !1493
  br label %51, !dbg !1494

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1495), !dbg !1496
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i8 0, i8* %29, align 1, !dbg !1498
  %52 = load i32, i32* %15, align 4, !dbg !1499
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
  ], !dbg !1500

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1501
  store i8 1, i8* %26, align 1, !dbg !1503
  br label %54, !dbg !1504

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1505
  %56 = trunc i8 %55 to i1, !dbg !1505
  br i1 %56, label %70, label %57, !dbg !1507

57:                                               ; preds = %54
  br label %58, !dbg !1508

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1509
  %60 = load i64, i64* %12, align 8, !dbg !1509
  %61 = icmp ult i64 %59, %60, !dbg !1509
  br i1 %61, label %62, label %66, !dbg !1512

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1509
  %64 = load i64, i64* %21, align 8, !dbg !1509
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1509
  store i8 34, i8* %65, align 1, !dbg !1509
  br label %66, !dbg !1509

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1512
  %68 = add i64 %67, 1, !dbg !1512
  store i64 %68, i64* %21, align 8, !dbg !1512
  br label %69, !dbg !1512

69:                                               ; preds = %66
  br label %70, !dbg !1512

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1513
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8** %23, align 8, !dbg !1514
  store i64 1, i64* %24, align 8, !dbg !1515
  br label %138, !dbg !1516

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1517
  store i8 0, i8* %26, align 1, !dbg !1518
  br label %138, !dbg !1519

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1520
  %74 = icmp ne i32 %73, 10, !dbg !1523
  br i1 %74, label %75, label %80, !dbg !1524

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1525
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.96, i64 0, i64 0), i32 noundef %76), !dbg !1527
  store i8* %77, i8** %18, align 8, !dbg !1528
  %78 = load i32, i32* %15, align 4, !dbg !1529
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), i32 noundef %78), !dbg !1530
  store i8* %79, i8** %19, align 8, !dbg !1531
  br label %80, !dbg !1532

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1533
  %82 = trunc i8 %81 to i1, !dbg !1533
  br i1 %82, label %108, label %83, !dbg !1535

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1536, metadata !DIExpression()), !dbg !1538
  %84 = load i8*, i8** %18, align 8, !dbg !1539
  store i8* %84, i8** %30, align 8, !dbg !1538
  br label %85, !dbg !1540

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1541
  %87 = load i8, i8* %86, align 1, !dbg !1543
  %88 = icmp ne i8 %87, 0, !dbg !1544
  br i1 %88, label %89, label %107, !dbg !1544

89:                                               ; preds = %85
  br label %90, !dbg !1545

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1546
  %92 = load i64, i64* %12, align 8, !dbg !1546
  %93 = icmp ult i64 %91, %92, !dbg !1546
  br i1 %93, label %94, label %100, !dbg !1549

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1546
  %96 = load i8, i8* %95, align 1, !dbg !1546
  %97 = load i8*, i8** %11, align 8, !dbg !1546
  %98 = load i64, i64* %21, align 8, !dbg !1546
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1546
  store i8 %96, i8* %99, align 1, !dbg !1546
  br label %100, !dbg !1546

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1549
  %102 = add i64 %101, 1, !dbg !1549
  store i64 %102, i64* %21, align 8, !dbg !1549
  br label %103, !dbg !1549

103:                                              ; preds = %100
  br label %104, !dbg !1549

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1550
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1550
  store i8* %106, i8** %30, align 8, !dbg !1550
  br label %85, !dbg !1551, !llvm.loop !1552

107:                                              ; preds = %85
  br label %108, !dbg !1553

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1554
  %109 = load i8*, i8** %19, align 8, !dbg !1555
  store i8* %109, i8** %23, align 8, !dbg !1556
  %110 = load i8*, i8** %23, align 8, !dbg !1557
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1558
  store i64 %111, i64* %24, align 8, !dbg !1559
  br label %138, !dbg !1560

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1561
  br label %113, !dbg !1562

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1563
  br label %114, !dbg !1564

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1565
  %116 = trunc i8 %115 to i1, !dbg !1565
  br i1 %116, label %118, label %117, !dbg !1567

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1568
  br label %118, !dbg !1569

118:                                              ; preds = %117, %114
  br label %119, !dbg !1565

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1570
  %120 = load i8, i8* %26, align 1, !dbg !1571
  %121 = trunc i8 %120 to i1, !dbg !1571
  br i1 %121, label %135, label %122, !dbg !1573

122:                                              ; preds = %119
  br label %123, !dbg !1574

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1575
  %125 = load i64, i64* %12, align 8, !dbg !1575
  %126 = icmp ult i64 %124, %125, !dbg !1575
  br i1 %126, label %127, label %131, !dbg !1578

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1575
  %129 = load i64, i64* %21, align 8, !dbg !1575
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1575
  store i8 39, i8* %130, align 1, !dbg !1575
  br label %131, !dbg !1575

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1578
  %133 = add i64 %132, 1, !dbg !1578
  store i64 %133, i64* %21, align 8, !dbg !1578
  br label %134, !dbg !1578

134:                                              ; preds = %131
  br label %135, !dbg !1578

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), i8** %23, align 8, !dbg !1579
  store i64 1, i64* %24, align 8, !dbg !1580
  br label %138, !dbg !1581

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1582
  br label %138, !dbg !1583

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1584
  unreachable, !dbg !1584

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1585, metadata !DIExpression()), !dbg !1587
  store i64 0, i64* %31, align 8, !dbg !1587
  br label %139, !dbg !1588

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1589
  %141 = icmp eq i64 %140, -1, !dbg !1591
  br i1 %141, label %142, label %150, !dbg !1589

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1592
  %144 = load i64, i64* %31, align 8, !dbg !1593
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1592
  %146 = load i8, i8* %145, align 1, !dbg !1592
  %147 = zext i8 %146 to i32, !dbg !1592
  %148 = icmp eq i32 %147, 0, !dbg !1594
  %149 = zext i1 %148 to i32, !dbg !1594
  br label %155, !dbg !1589

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1595
  %152 = load i64, i64* %14, align 8, !dbg !1596
  %153 = icmp eq i64 %151, %152, !dbg !1597
  %154 = zext i1 %153 to i32, !dbg !1597
  br label %155, !dbg !1589

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1589
  %157 = icmp ne i32 %156, 0, !dbg !1598
  %158 = xor i1 %157, true, !dbg !1598
  br i1 %158, label %159, label %996, !dbg !1599

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1600, metadata !DIExpression()), !dbg !1602
  store i8 0, i8* %32, align 1, !dbg !1602
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1603, metadata !DIExpression()), !dbg !1604
  store i8 0, i8* %33, align 1, !dbg !1604
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1605, metadata !DIExpression()), !dbg !1606
  store i8 0, i8* %34, align 1, !dbg !1606
  %160 = load i8, i8* %25, align 1, !dbg !1607
  %161 = trunc i8 %160 to i1, !dbg !1607
  br i1 %161, label %162, label %197, !dbg !1609

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1610
  %164 = icmp ne i32 %163, 2, !dbg !1611
  br i1 %164, label %165, label %197, !dbg !1612

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1613
  %167 = icmp ne i64 %166, 0, !dbg !1613
  br i1 %167, label %168, label %197, !dbg !1614

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1615
  %170 = load i64, i64* %24, align 8, !dbg !1616
  %171 = add i64 %169, %170, !dbg !1617
  %172 = load i64, i64* %14, align 8, !dbg !1618
  %173 = icmp eq i64 %172, -1, !dbg !1619
  br i1 %173, label %174, label %180, !dbg !1620

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1621
  %176 = icmp ult i64 1, %175, !dbg !1622
  br i1 %176, label %177, label %180, !dbg !1618

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1623
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1624
  store i64 %179, i64* %14, align 8, !dbg !1625
  br label %182, !dbg !1618

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1626
  br label %182, !dbg !1618

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1618
  %184 = icmp ule i64 %171, %183, !dbg !1627
  br i1 %184, label %185, label %197, !dbg !1628

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1629
  %187 = load i64, i64* %31, align 8, !dbg !1630
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1631
  %189 = load i8*, i8** %23, align 8, !dbg !1632
  %190 = load i64, i64* %24, align 8, !dbg !1633
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1634
  br i1 %191, label %192, label %197, !dbg !1635

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1636
  %194 = trunc i8 %193 to i1, !dbg !1636
  br i1 %194, label %195, label %196, !dbg !1639

195:                                              ; preds = %192
  br label %1078, !dbg !1640

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1641
  br label %197, !dbg !1642

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1643, metadata !DIExpression()), !dbg !1644
  %198 = load i8*, i8** %13, align 8, !dbg !1645
  %199 = load i64, i64* %31, align 8, !dbg !1646
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1645
  %201 = load i8, i8* %200, align 1, !dbg !1645
  store i8 %201, i8* %35, align 1, !dbg !1644
  %202 = load i8, i8* %35, align 1, !dbg !1647
  %203 = zext i8 %202 to i32, !dbg !1647
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
  ], !dbg !1648

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1649
  %206 = trunc i8 %205 to i1, !dbg !1649
  br i1 %206, label %207, label %318, !dbg !1652

207:                                              ; preds = %204
  br label %208, !dbg !1653

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1655
  %210 = trunc i8 %209 to i1, !dbg !1655
  br i1 %210, label %211, label %212, !dbg !1658

211:                                              ; preds = %208
  br label %1078, !dbg !1655

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1658
  %213 = load i32, i32* %15, align 4, !dbg !1659
  %214 = icmp eq i32 %213, 2, !dbg !1659
  br i1 %214, label %215, label %255, !dbg !1659

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1659
  %217 = trunc i8 %216 to i1, !dbg !1659
  br i1 %217, label %255, label %218, !dbg !1658

218:                                              ; preds = %215
  br label %219, !dbg !1661

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1663
  %221 = load i64, i64* %12, align 8, !dbg !1663
  %222 = icmp ult i64 %220, %221, !dbg !1663
  br i1 %222, label %223, label %227, !dbg !1666

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1663
  %225 = load i64, i64* %21, align 8, !dbg !1663
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1663
  store i8 39, i8* %226, align 1, !dbg !1663
  br label %227, !dbg !1663

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1666
  %229 = add i64 %228, 1, !dbg !1666
  store i64 %229, i64* %21, align 8, !dbg !1666
  br label %230, !dbg !1666

230:                                              ; preds = %227
  br label %231, !dbg !1661

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1667
  %233 = load i64, i64* %12, align 8, !dbg !1667
  %234 = icmp ult i64 %232, %233, !dbg !1667
  br i1 %234, label %235, label %239, !dbg !1670

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1667
  %237 = load i64, i64* %21, align 8, !dbg !1667
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1667
  store i8 36, i8* %238, align 1, !dbg !1667
  br label %239, !dbg !1667

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1670
  %241 = add i64 %240, 1, !dbg !1670
  store i64 %241, i64* %21, align 8, !dbg !1670
  br label %242, !dbg !1670

242:                                              ; preds = %239
  br label %243, !dbg !1661

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1671
  %245 = load i64, i64* %12, align 8, !dbg !1671
  %246 = icmp ult i64 %244, %245, !dbg !1671
  br i1 %246, label %247, label %251, !dbg !1674

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1671
  %249 = load i64, i64* %21, align 8, !dbg !1671
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1671
  store i8 39, i8* %250, align 1, !dbg !1671
  br label %251, !dbg !1671

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1674
  %253 = add i64 %252, 1, !dbg !1674
  store i64 %253, i64* %21, align 8, !dbg !1674
  br label %254, !dbg !1674

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1661
  br label %255, !dbg !1661

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1658

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1675
  %258 = load i64, i64* %12, align 8, !dbg !1675
  %259 = icmp ult i64 %257, %258, !dbg !1675
  br i1 %259, label %260, label %264, !dbg !1678

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1675
  %262 = load i64, i64* %21, align 8, !dbg !1675
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1675
  store i8 92, i8* %263, align 1, !dbg !1675
  br label %264, !dbg !1675

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1678
  %266 = add i64 %265, 1, !dbg !1678
  store i64 %266, i64* %21, align 8, !dbg !1678
  br label %267, !dbg !1678

267:                                              ; preds = %264
  br label %268, !dbg !1658

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1679
  %270 = icmp ne i32 %269, 2, !dbg !1681
  br i1 %270, label %271, label %317, !dbg !1682

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1683
  %273 = add i64 %272, 1, !dbg !1684
  %274 = load i64, i64* %14, align 8, !dbg !1685
  %275 = icmp ult i64 %273, %274, !dbg !1686
  br i1 %275, label %276, label %317, !dbg !1687

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1688
  %278 = load i64, i64* %31, align 8, !dbg !1689
  %279 = add i64 %278, 1, !dbg !1690
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1688
  %281 = load i8, i8* %280, align 1, !dbg !1688
  %282 = zext i8 %281 to i32, !dbg !1688
  %283 = icmp sle i32 48, %282, !dbg !1691
  br i1 %283, label %284, label %317, !dbg !1692

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1693
  %286 = load i64, i64* %31, align 8, !dbg !1694
  %287 = add i64 %286, 1, !dbg !1695
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1693
  %289 = load i8, i8* %288, align 1, !dbg !1693
  %290 = zext i8 %289 to i32, !dbg !1693
  %291 = icmp sle i32 %290, 57, !dbg !1696
  br i1 %291, label %292, label %317, !dbg !1697

292:                                              ; preds = %284
  br label %293, !dbg !1698

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1700
  %295 = load i64, i64* %12, align 8, !dbg !1700
  %296 = icmp ult i64 %294, %295, !dbg !1700
  br i1 %296, label %297, label %301, !dbg !1703

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1700
  %299 = load i64, i64* %21, align 8, !dbg !1700
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1700
  store i8 48, i8* %300, align 1, !dbg !1700
  br label %301, !dbg !1700

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1703
  %303 = add i64 %302, 1, !dbg !1703
  store i64 %303, i64* %21, align 8, !dbg !1703
  br label %304, !dbg !1703

304:                                              ; preds = %301
  br label %305, !dbg !1704

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1705
  %307 = load i64, i64* %12, align 8, !dbg !1705
  %308 = icmp ult i64 %306, %307, !dbg !1705
  br i1 %308, label %309, label %313, !dbg !1708

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1705
  %311 = load i64, i64* %21, align 8, !dbg !1705
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1705
  store i8 48, i8* %312, align 1, !dbg !1705
  br label %313, !dbg !1705

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1708
  %315 = add i64 %314, 1, !dbg !1708
  store i64 %315, i64* %21, align 8, !dbg !1708
  br label %316, !dbg !1708

316:                                              ; preds = %313
  br label %317, !dbg !1709

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1710
  br label %324, !dbg !1711

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1712
  %320 = and i32 %319, 1, !dbg !1714
  %321 = icmp ne i32 %320, 0, !dbg !1714
  br i1 %321, label %322, label %323, !dbg !1715

322:                                              ; preds = %318
  br label %993, !dbg !1716

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1717

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1718
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1719

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1720
  %329 = trunc i8 %328 to i1, !dbg !1720
  br i1 %329, label %330, label %331, !dbg !1723

330:                                              ; preds = %327
  br label %1078, !dbg !1724

331:                                              ; preds = %327
  br label %418, !dbg !1725

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1726
  %334 = and i32 %333, 4, !dbg !1728
  %335 = icmp ne i32 %334, 0, !dbg !1728
  br i1 %335, label %336, label %417, !dbg !1729

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1730
  %338 = add i64 %337, 2, !dbg !1731
  %339 = load i64, i64* %14, align 8, !dbg !1732
  %340 = icmp ult i64 %338, %339, !dbg !1733
  br i1 %340, label %341, label %417, !dbg !1734

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1735
  %343 = load i64, i64* %31, align 8, !dbg !1736
  %344 = add i64 %343, 1, !dbg !1737
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1735
  %346 = load i8, i8* %345, align 1, !dbg !1735
  %347 = zext i8 %346 to i32, !dbg !1735
  %348 = icmp eq i32 %347, 63, !dbg !1738
  br i1 %348, label %349, label %417, !dbg !1739

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1740
  %351 = load i64, i64* %31, align 8, !dbg !1741
  %352 = add i64 %351, 2, !dbg !1742
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1740
  %354 = load i8, i8* %353, align 1, !dbg !1740
  %355 = zext i8 %354 to i32, !dbg !1740
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
  ], !dbg !1743

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1744
  %358 = trunc i8 %357 to i1, !dbg !1744
  br i1 %358, label %359, label %360, !dbg !1747

359:                                              ; preds = %356
  br label %1078, !dbg !1748

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1749
  %362 = load i64, i64* %31, align 8, !dbg !1750
  %363 = add i64 %362, 2, !dbg !1751
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1749
  %365 = load i8, i8* %364, align 1, !dbg !1749
  store i8 %365, i8* %35, align 1, !dbg !1752
  %366 = load i64, i64* %31, align 8, !dbg !1753
  %367 = add i64 %366, 2, !dbg !1753
  store i64 %367, i64* %31, align 8, !dbg !1753
  br label %368, !dbg !1754

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1755
  %370 = load i64, i64* %12, align 8, !dbg !1755
  %371 = icmp ult i64 %369, %370, !dbg !1755
  br i1 %371, label %372, label %376, !dbg !1758

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1755
  %374 = load i64, i64* %21, align 8, !dbg !1755
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1755
  store i8 63, i8* %375, align 1, !dbg !1755
  br label %376, !dbg !1755

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1758
  %378 = add i64 %377, 1, !dbg !1758
  store i64 %378, i64* %21, align 8, !dbg !1758
  br label %379, !dbg !1758

379:                                              ; preds = %376
  br label %380, !dbg !1759

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1760
  %382 = load i64, i64* %12, align 8, !dbg !1760
  %383 = icmp ult i64 %381, %382, !dbg !1760
  br i1 %383, label %384, label %388, !dbg !1763

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1760
  %386 = load i64, i64* %21, align 8, !dbg !1760
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1760
  store i8 34, i8* %387, align 1, !dbg !1760
  br label %388, !dbg !1760

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1763
  %390 = add i64 %389, 1, !dbg !1763
  store i64 %390, i64* %21, align 8, !dbg !1763
  br label %391, !dbg !1763

391:                                              ; preds = %388
  br label %392, !dbg !1764

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1765
  %394 = load i64, i64* %12, align 8, !dbg !1765
  %395 = icmp ult i64 %393, %394, !dbg !1765
  br i1 %395, label %396, label %400, !dbg !1768

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1765
  %398 = load i64, i64* %21, align 8, !dbg !1765
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1765
  store i8 34, i8* %399, align 1, !dbg !1765
  br label %400, !dbg !1765

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1768
  %402 = add i64 %401, 1, !dbg !1768
  store i64 %402, i64* %21, align 8, !dbg !1768
  br label %403, !dbg !1768

403:                                              ; preds = %400
  br label %404, !dbg !1769

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1770
  %406 = load i64, i64* %12, align 8, !dbg !1770
  %407 = icmp ult i64 %405, %406, !dbg !1770
  br i1 %407, label %408, label %412, !dbg !1773

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1770
  %410 = load i64, i64* %21, align 8, !dbg !1770
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1770
  store i8 63, i8* %411, align 1, !dbg !1770
  br label %412, !dbg !1770

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1773
  %414 = add i64 %413, 1, !dbg !1773
  store i64 %414, i64* %21, align 8, !dbg !1773
  br label %415, !dbg !1773

415:                                              ; preds = %412
  br label %416, !dbg !1774

416:                                              ; preds = %349, %415
  br label %417, !dbg !1775

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1776

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1777

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1778
  br label %454, !dbg !1780

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1781
  br label %454, !dbg !1782

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1783
  br label %454, !dbg !1784

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1785
  br label %446, !dbg !1786

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1787
  br label %446, !dbg !1788

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1789
  br label %446, !dbg !1790

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1791
  br label %454, !dbg !1792

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1793
  store i8 %427, i8* %36, align 1, !dbg !1794
  %428 = load i32, i32* %15, align 4, !dbg !1795
  %429 = icmp eq i32 %428, 2, !dbg !1797
  br i1 %429, label %430, label %435, !dbg !1798

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1799
  %432 = trunc i8 %431 to i1, !dbg !1799
  br i1 %432, label %433, label %434, !dbg !1802

433:                                              ; preds = %430
  br label %1078, !dbg !1803

434:                                              ; preds = %430
  br label %942, !dbg !1804

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1805
  %437 = trunc i8 %436 to i1, !dbg !1805
  br i1 %437, label %438, label %445, !dbg !1807

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1808
  %440 = trunc i8 %439 to i1, !dbg !1808
  br i1 %440, label %441, label %445, !dbg !1809

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1810
  %443 = icmp ne i64 %442, 0, !dbg !1810
  br i1 %443, label %444, label %445, !dbg !1811

444:                                              ; preds = %441
  br label %942, !dbg !1812

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1810

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1813), !dbg !1814
  %447 = load i32, i32* %15, align 4, !dbg !1815
  %448 = icmp eq i32 %447, 2, !dbg !1817
  br i1 %448, label %449, label %453, !dbg !1818

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1819
  %451 = trunc i8 %450 to i1, !dbg !1819
  br i1 %451, label %452, label %453, !dbg !1820

452:                                              ; preds = %449
  br label %1078, !dbg !1821

453:                                              ; preds = %449, %446
  br label %454, !dbg !1819

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1822), !dbg !1823
  %455 = load i8, i8* %25, align 1, !dbg !1824
  %456 = trunc i8 %455 to i1, !dbg !1824
  br i1 %456, label %457, label %459, !dbg !1826

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1827
  store i8 %458, i8* %35, align 1, !dbg !1829
  br label %880, !dbg !1830

459:                                              ; preds = %454
  br label %849, !dbg !1831

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1832
  %462 = icmp eq i64 %461, -1, !dbg !1834
  br i1 %462, label %463, label %469, !dbg !1835

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1836
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1836
  %466 = load i8, i8* %465, align 1, !dbg !1836
  %467 = zext i8 %466 to i32, !dbg !1836
  %468 = icmp eq i32 %467, 0, !dbg !1837
  br i1 %468, label %473, label %472, !dbg !1832

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1838
  %471 = icmp eq i64 %470, 1, !dbg !1839
  br i1 %471, label %473, label %472, !dbg !1835

472:                                              ; preds = %469, %463
  br label %849, !dbg !1840

473:                                              ; preds = %469, %463
  br label %474, !dbg !1841

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1842
  %476 = icmp ne i64 %475, 0, !dbg !1844
  br i1 %476, label %477, label %478, !dbg !1845

477:                                              ; preds = %474
  br label %849, !dbg !1846

478:                                              ; preds = %474
  br label %479, !dbg !1847

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1848
  br label %480, !dbg !1849

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1850
  %482 = icmp eq i32 %481, 2, !dbg !1852
  br i1 %482, label %483, label %487, !dbg !1853

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1854
  %485 = trunc i8 %484 to i1, !dbg !1854
  br i1 %485, label %486, label %487, !dbg !1855

486:                                              ; preds = %483
  br label %1078, !dbg !1856

487:                                              ; preds = %483, %480
  br label %849, !dbg !1857

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1858
  store i8 1, i8* %34, align 1, !dbg !1859
  %489 = load i32, i32* %15, align 4, !dbg !1860
  %490 = icmp eq i32 %489, 2, !dbg !1862
  br i1 %490, label %491, label %540, !dbg !1863

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1864
  %493 = trunc i8 %492 to i1, !dbg !1864
  br i1 %493, label %494, label %495, !dbg !1867

494:                                              ; preds = %491
  br label %1078, !dbg !1868

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1869
  %497 = icmp ne i64 %496, 0, !dbg !1869
  br i1 %497, label %498, label %503, !dbg !1871

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1872
  %500 = icmp ne i64 %499, 0, !dbg !1872
  br i1 %500, label %503, label %501, !dbg !1873

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1874
  store i64 %502, i64* %22, align 8, !dbg !1876
  store i64 0, i64* %12, align 8, !dbg !1877
  br label %503, !dbg !1878

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1879

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1880
  %506 = load i64, i64* %12, align 8, !dbg !1880
  %507 = icmp ult i64 %505, %506, !dbg !1880
  br i1 %507, label %508, label %512, !dbg !1883

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1880
  %510 = load i64, i64* %21, align 8, !dbg !1880
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1880
  store i8 39, i8* %511, align 1, !dbg !1880
  br label %512, !dbg !1880

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1883
  %514 = add i64 %513, 1, !dbg !1883
  store i64 %514, i64* %21, align 8, !dbg !1883
  br label %515, !dbg !1883

515:                                              ; preds = %512
  br label %516, !dbg !1884

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1885
  %518 = load i64, i64* %12, align 8, !dbg !1885
  %519 = icmp ult i64 %517, %518, !dbg !1885
  br i1 %519, label %520, label %524, !dbg !1888

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1885
  %522 = load i64, i64* %21, align 8, !dbg !1885
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1885
  store i8 92, i8* %523, align 1, !dbg !1885
  br label %524, !dbg !1885

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1888
  %526 = add i64 %525, 1, !dbg !1888
  store i64 %526, i64* %21, align 8, !dbg !1888
  br label %527, !dbg !1888

527:                                              ; preds = %524
  br label %528, !dbg !1889

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1890
  %530 = load i64, i64* %12, align 8, !dbg !1890
  %531 = icmp ult i64 %529, %530, !dbg !1890
  br i1 %531, label %532, label %536, !dbg !1893

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1890
  %534 = load i64, i64* %21, align 8, !dbg !1890
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1890
  store i8 39, i8* %535, align 1, !dbg !1890
  br label %536, !dbg !1890

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1893
  %538 = add i64 %537, 1, !dbg !1893
  store i64 %538, i64* %21, align 8, !dbg !1893
  br label %539, !dbg !1893

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1894
  br label %540, !dbg !1895

540:                                              ; preds = %539, %488
  br label %849, !dbg !1896

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1897
  br label %849, !dbg !1898

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1899, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1902, metadata !DIExpression()), !dbg !1903
  %543 = load i8, i8* %20, align 1, !dbg !1904
  %544 = trunc i8 %543 to i1, !dbg !1904
  br i1 %544, label %545, label %557, !dbg !1906

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1907
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1909
  %547 = load i16*, i16** %546, align 8, !dbg !1909
  %548 = load i8, i8* %35, align 1, !dbg !1909
  %549 = zext i8 %548 to i32, !dbg !1909
  %550 = sext i32 %549 to i64, !dbg !1909
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1909
  %552 = load i16, i16* %551, align 2, !dbg !1909
  %553 = zext i16 %552 to i32, !dbg !1909
  %554 = and i32 %553, 16384, !dbg !1909
  %555 = icmp ne i32 %554, 0, !dbg !1910
  %556 = zext i1 %555 to i8, !dbg !1911
  store i8 %556, i8* %38, align 1, !dbg !1911
  br label %648, !dbg !1912

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1913, metadata !DIExpression()), !dbg !1925
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1926
  store i64 0, i64* %37, align 8, !dbg !1927
  store i8 1, i8* %38, align 1, !dbg !1928
  %558 = load i64, i64* %14, align 8, !dbg !1929
  %559 = icmp eq i64 %558, -1, !dbg !1931
  br i1 %559, label %560, label %563, !dbg !1932

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1933
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1934
  store i64 %562, i64* %14, align 8, !dbg !1935
  br label %563, !dbg !1936

563:                                              ; preds = %560, %557
  br label %564, !dbg !1937

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1938, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1943, metadata !DIExpression()), !dbg !1944
  %565 = load i8*, i8** %13, align 8, !dbg !1945
  %566 = load i64, i64* %31, align 8, !dbg !1946
  %567 = load i64, i64* %37, align 8, !dbg !1947
  %568 = add i64 %566, %567, !dbg !1948
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1945
  %570 = load i64, i64* %14, align 8, !dbg !1949
  %571 = load i64, i64* %31, align 8, !dbg !1950
  %572 = load i64, i64* %37, align 8, !dbg !1951
  %573 = add i64 %571, %572, !dbg !1952
  %574 = sub i64 %570, %573, !dbg !1953
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1954
  store i64 %575, i64* %41, align 8, !dbg !1944
  %576 = load i64, i64* %41, align 8, !dbg !1955
  %577 = icmp eq i64 %576, 0, !dbg !1957
  br i1 %577, label %578, label %579, !dbg !1958

578:                                              ; preds = %564
  br label %647, !dbg !1959

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1960
  %581 = icmp eq i64 %580, -1, !dbg !1962
  br i1 %581, label %582, label %583, !dbg !1963

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1964
  br label %647, !dbg !1966

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1967
  %585 = icmp eq i64 %584, -2, !dbg !1969
  br i1 %585, label %586, label %608, !dbg !1970

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1971
  br label %587, !dbg !1973

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1974
  %589 = load i64, i64* %37, align 8, !dbg !1975
  %590 = add i64 %588, %589, !dbg !1976
  %591 = load i64, i64* %14, align 8, !dbg !1977
  %592 = icmp ult i64 %590, %591, !dbg !1978
  br i1 %592, label %593, label %602, !dbg !1979

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1980
  %595 = load i64, i64* %31, align 8, !dbg !1981
  %596 = load i64, i64* %37, align 8, !dbg !1982
  %597 = add i64 %595, %596, !dbg !1983
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1980
  %599 = load i8, i8* %598, align 1, !dbg !1980
  %600 = zext i8 %599 to i32, !dbg !1980
  %601 = icmp ne i32 %600, 0, !dbg !1979
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1984
  br i1 %603, label %604, label %607, !dbg !1973

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1985
  %606 = add i64 %605, 1, !dbg !1985
  store i64 %606, i64* %37, align 8, !dbg !1985
  br label %587, !dbg !1973, !llvm.loop !1986

607:                                              ; preds = %602
  br label %647, !dbg !1987

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1988
  %610 = trunc i8 %609 to i1, !dbg !1988
  br i1 %610, label %611, label %635, !dbg !1991

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1992
  %613 = icmp eq i32 %612, 2, !dbg !1993
  br i1 %613, label %614, label %635, !dbg !1994

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1995, metadata !DIExpression()), !dbg !1998
  store i64 1, i64* %42, align 8, !dbg !1998
  br label %615, !dbg !1999

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2000
  %617 = load i64, i64* %41, align 8, !dbg !2002
  %618 = icmp ult i64 %616, %617, !dbg !2003
  br i1 %618, label %619, label %634, !dbg !2004

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2005
  %621 = load i64, i64* %31, align 8, !dbg !2006
  %622 = load i64, i64* %37, align 8, !dbg !2007
  %623 = add i64 %621, %622, !dbg !2008
  %624 = load i64, i64* %42, align 8, !dbg !2009
  %625 = add i64 %623, %624, !dbg !2010
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2005
  %627 = load i8, i8* %626, align 1, !dbg !2005
  %628 = zext i8 %627 to i32, !dbg !2005
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2011

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2012

630:                                              ; preds = %619
  br label %631, !dbg !2014

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2015
  %633 = add i64 %632, 1, !dbg !2015
  store i64 %633, i64* %42, align 8, !dbg !2015
  br label %615, !dbg !2016, !llvm.loop !2017

634:                                              ; preds = %615
  br label %635, !dbg !2019

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2020
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2022
  %638 = icmp ne i32 %637, 0, !dbg !2022
  br i1 %638, label %640, label %639, !dbg !2023

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2024
  br label %640, !dbg !2025

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2026
  %642 = load i64, i64* %37, align 8, !dbg !2027
  %643 = add i64 %642, %641, !dbg !2027
  store i64 %643, i64* %37, align 8, !dbg !2027
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2028

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2029
  %650 = trunc i8 %649 to i1, !dbg !2029
  %651 = zext i1 %650 to i8, !dbg !2030
  store i8 %651, i8* %34, align 1, !dbg !2030
  %652 = load i64, i64* %37, align 8, !dbg !2031
  %653 = icmp ult i64 1, %652, !dbg !2033
  br i1 %653, label %660, label %654, !dbg !2034

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2035
  %656 = trunc i8 %655 to i1, !dbg !2035
  br i1 %656, label %657, label %848, !dbg !2036

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2037
  %659 = trunc i8 %658 to i1, !dbg !2037
  br i1 %659, label %848, label %660, !dbg !2038

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2039, metadata !DIExpression()), !dbg !2041
  %661 = load i64, i64* %31, align 8, !dbg !2042
  %662 = load i64, i64* %37, align 8, !dbg !2043
  %663 = add i64 %661, %662, !dbg !2044
  store i64 %663, i64* %43, align 8, !dbg !2041
  br label %664, !dbg !2045

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2046
  %666 = trunc i8 %665 to i1, !dbg !2046
  br i1 %666, label %667, label %772, !dbg !2051

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2052
  %669 = trunc i8 %668 to i1, !dbg !2052
  br i1 %669, label %772, label %670, !dbg !2053

670:                                              ; preds = %667
  br label %671, !dbg !2054

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2056
  %673 = trunc i8 %672 to i1, !dbg !2056
  br i1 %673, label %674, label %675, !dbg !2059

674:                                              ; preds = %671
  br label %1078, !dbg !2056

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2059
  %676 = load i32, i32* %15, align 4, !dbg !2060
  %677 = icmp eq i32 %676, 2, !dbg !2060
  br i1 %677, label %678, label %718, !dbg !2060

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2060
  %680 = trunc i8 %679 to i1, !dbg !2060
  br i1 %680, label %718, label %681, !dbg !2059

681:                                              ; preds = %678
  br label %682, !dbg !2062

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2064
  %684 = load i64, i64* %12, align 8, !dbg !2064
  %685 = icmp ult i64 %683, %684, !dbg !2064
  br i1 %685, label %686, label %690, !dbg !2067

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2064
  %688 = load i64, i64* %21, align 8, !dbg !2064
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2064
  store i8 39, i8* %689, align 1, !dbg !2064
  br label %690, !dbg !2064

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2067
  %692 = add i64 %691, 1, !dbg !2067
  store i64 %692, i64* %21, align 8, !dbg !2067
  br label %693, !dbg !2067

693:                                              ; preds = %690
  br label %694, !dbg !2062

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2068
  %696 = load i64, i64* %12, align 8, !dbg !2068
  %697 = icmp ult i64 %695, %696, !dbg !2068
  br i1 %697, label %698, label %702, !dbg !2071

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2068
  %700 = load i64, i64* %21, align 8, !dbg !2068
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2068
  store i8 36, i8* %701, align 1, !dbg !2068
  br label %702, !dbg !2068

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2071
  %704 = add i64 %703, 1, !dbg !2071
  store i64 %704, i64* %21, align 8, !dbg !2071
  br label %705, !dbg !2071

705:                                              ; preds = %702
  br label %706, !dbg !2062

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2072
  %708 = load i64, i64* %12, align 8, !dbg !2072
  %709 = icmp ult i64 %707, %708, !dbg !2072
  br i1 %709, label %710, label %714, !dbg !2075

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2072
  %712 = load i64, i64* %21, align 8, !dbg !2072
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2072
  store i8 39, i8* %713, align 1, !dbg !2072
  br label %714, !dbg !2072

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2075
  %716 = add i64 %715, 1, !dbg !2075
  store i64 %716, i64* %21, align 8, !dbg !2075
  br label %717, !dbg !2075

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2062
  br label %718, !dbg !2062

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2059

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2076
  %721 = load i64, i64* %12, align 8, !dbg !2076
  %722 = icmp ult i64 %720, %721, !dbg !2076
  br i1 %722, label %723, label %727, !dbg !2079

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2076
  %725 = load i64, i64* %21, align 8, !dbg !2076
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2076
  store i8 92, i8* %726, align 1, !dbg !2076
  br label %727, !dbg !2076

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2079
  %729 = add i64 %728, 1, !dbg !2079
  store i64 %729, i64* %21, align 8, !dbg !2079
  br label %730, !dbg !2079

730:                                              ; preds = %727
  br label %731, !dbg !2059

731:                                              ; preds = %730
  br label %732, !dbg !2080

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2081
  %734 = load i64, i64* %12, align 8, !dbg !2081
  %735 = icmp ult i64 %733, %734, !dbg !2081
  br i1 %735, label %736, label %745, !dbg !2084

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2081
  %738 = zext i8 %737 to i32, !dbg !2081
  %739 = ashr i32 %738, 6, !dbg !2081
  %740 = add nsw i32 48, %739, !dbg !2081
  %741 = trunc i32 %740 to i8, !dbg !2081
  %742 = load i8*, i8** %11, align 8, !dbg !2081
  %743 = load i64, i64* %21, align 8, !dbg !2081
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2081
  store i8 %741, i8* %744, align 1, !dbg !2081
  br label %745, !dbg !2081

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2084
  %747 = add i64 %746, 1, !dbg !2084
  store i64 %747, i64* %21, align 8, !dbg !2084
  br label %748, !dbg !2084

748:                                              ; preds = %745
  br label %749, !dbg !2085

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2086
  %751 = load i64, i64* %12, align 8, !dbg !2086
  %752 = icmp ult i64 %750, %751, !dbg !2086
  br i1 %752, label %753, label %763, !dbg !2089

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2086
  %755 = zext i8 %754 to i32, !dbg !2086
  %756 = ashr i32 %755, 3, !dbg !2086
  %757 = and i32 %756, 7, !dbg !2086
  %758 = add nsw i32 48, %757, !dbg !2086
  %759 = trunc i32 %758 to i8, !dbg !2086
  %760 = load i8*, i8** %11, align 8, !dbg !2086
  %761 = load i64, i64* %21, align 8, !dbg !2086
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2086
  store i8 %759, i8* %762, align 1, !dbg !2086
  br label %763, !dbg !2086

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2089
  %765 = add i64 %764, 1, !dbg !2089
  store i64 %765, i64* %21, align 8, !dbg !2089
  br label %766, !dbg !2089

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2090
  %768 = zext i8 %767 to i32, !dbg !2090
  %769 = and i32 %768, 7, !dbg !2091
  %770 = add nsw i32 48, %769, !dbg !2092
  %771 = trunc i32 %770 to i8, !dbg !2093
  store i8 %771, i8* %35, align 1, !dbg !2094
  br label %789, !dbg !2095

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2096
  %774 = trunc i8 %773 to i1, !dbg !2096
  br i1 %774, label %775, label %788, !dbg !2098

775:                                              ; preds = %772
  br label %776, !dbg !2099

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2101
  %778 = load i64, i64* %12, align 8, !dbg !2101
  %779 = icmp ult i64 %777, %778, !dbg !2101
  br i1 %779, label %780, label %784, !dbg !2104

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2101
  %782 = load i64, i64* %21, align 8, !dbg !2101
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2101
  store i8 92, i8* %783, align 1, !dbg !2101
  br label %784, !dbg !2101

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2104
  %786 = add i64 %785, 1, !dbg !2104
  store i64 %786, i64* %21, align 8, !dbg !2104
  br label %787, !dbg !2104

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2105
  br label %788, !dbg !2106

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2107
  %791 = load i64, i64* %31, align 8, !dbg !2109
  %792 = add i64 %791, 1, !dbg !2110
  %793 = icmp ule i64 %790, %792, !dbg !2111
  br i1 %793, label %794, label %795, !dbg !2112

794:                                              ; preds = %789
  br label %847, !dbg !2113

795:                                              ; preds = %789
  br label %796, !dbg !2114

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2115
  %798 = trunc i8 %797 to i1, !dbg !2115
  br i1 %798, label %799, label %827, !dbg !2115

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2115
  %801 = trunc i8 %800 to i1, !dbg !2115
  br i1 %801, label %827, label %802, !dbg !2118

802:                                              ; preds = %799
  br label %803, !dbg !2119

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2121
  %805 = load i64, i64* %12, align 8, !dbg !2121
  %806 = icmp ult i64 %804, %805, !dbg !2121
  br i1 %806, label %807, label %811, !dbg !2124

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2121
  %809 = load i64, i64* %21, align 8, !dbg !2121
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2121
  store i8 39, i8* %810, align 1, !dbg !2121
  br label %811, !dbg !2121

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2124
  %813 = add i64 %812, 1, !dbg !2124
  store i64 %813, i64* %21, align 8, !dbg !2124
  br label %814, !dbg !2124

814:                                              ; preds = %811
  br label %815, !dbg !2119

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2125
  %817 = load i64, i64* %12, align 8, !dbg !2125
  %818 = icmp ult i64 %816, %817, !dbg !2125
  br i1 %818, label %819, label %823, !dbg !2128

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2125
  %821 = load i64, i64* %21, align 8, !dbg !2125
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2125
  store i8 39, i8* %822, align 1, !dbg !2125
  br label %823, !dbg !2125

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2128
  %825 = add i64 %824, 1, !dbg !2128
  store i64 %825, i64* %21, align 8, !dbg !2128
  br label %826, !dbg !2128

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2119
  br label %827, !dbg !2119

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2118

828:                                              ; preds = %827
  br label %829, !dbg !2129

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2130
  %831 = load i64, i64* %12, align 8, !dbg !2130
  %832 = icmp ult i64 %830, %831, !dbg !2130
  br i1 %832, label %833, label %838, !dbg !2133

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2130
  %835 = load i8*, i8** %11, align 8, !dbg !2130
  %836 = load i64, i64* %21, align 8, !dbg !2130
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2130
  store i8 %834, i8* %837, align 1, !dbg !2130
  br label %838, !dbg !2130

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2133
  %840 = add i64 %839, 1, !dbg !2133
  store i64 %840, i64* %21, align 8, !dbg !2133
  br label %841, !dbg !2133

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2134
  %843 = load i64, i64* %31, align 8, !dbg !2135
  %844 = add i64 %843, 1, !dbg !2135
  store i64 %844, i64* %31, align 8, !dbg !2135
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2134
  %846 = load i8, i8* %845, align 1, !dbg !2134
  store i8 %846, i8* %35, align 1, !dbg !2136
  br label %664, !dbg !2137, !llvm.loop !2138

847:                                              ; preds = %794
  br label %942, !dbg !2141

848:                                              ; preds = %657, %654
  br label %849, !dbg !2142

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2143
  %851 = trunc i8 %850 to i1, !dbg !2143
  br i1 %851, label %852, label %855, !dbg !2145

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2146
  %854 = icmp ne i32 %853, 2, !dbg !2147
  br i1 %854, label %858, label %855, !dbg !2148

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2149
  %857 = trunc i8 %856 to i1, !dbg !2149
  br i1 %857, label %858, label %875, !dbg !2150

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2151
  %860 = icmp ne i32* %859, null, !dbg !2151
  br i1 %860, label %861, label %875, !dbg !2152

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2153
  %863 = load i8, i8* %35, align 1, !dbg !2154
  %864 = zext i8 %863 to i64, !dbg !2154
  %865 = udiv i64 %864, 32, !dbg !2155
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2153
  %867 = load i32, i32* %866, align 4, !dbg !2153
  %868 = load i8, i8* %35, align 1, !dbg !2156
  %869 = zext i8 %868 to i64, !dbg !2156
  %870 = urem i64 %869, 32, !dbg !2157
  %871 = trunc i64 %870 to i32, !dbg !2158
  %872 = lshr i32 %867, %871, !dbg !2158
  %873 = and i32 %872, 1, !dbg !2159
  %874 = icmp ne i32 %873, 0, !dbg !2159
  br i1 %874, label %879, label %875, !dbg !2160

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2161
  %877 = trunc i8 %876 to i1, !dbg !2161
  br i1 %877, label %879, label %878, !dbg !2162

878:                                              ; preds = %875
  br label %942, !dbg !2163

879:                                              ; preds = %875, %861
  br label %880, !dbg !2161

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2164), !dbg !2165
  br label %881, !dbg !2166

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2167
  %883 = trunc i8 %882 to i1, !dbg !2167
  br i1 %883, label %884, label %885, !dbg !2170

884:                                              ; preds = %881
  br label %1078, !dbg !2167

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2170
  %886 = load i32, i32* %15, align 4, !dbg !2171
  %887 = icmp eq i32 %886, 2, !dbg !2171
  br i1 %887, label %888, label %928, !dbg !2171

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2171
  %890 = trunc i8 %889 to i1, !dbg !2171
  br i1 %890, label %928, label %891, !dbg !2170

891:                                              ; preds = %888
  br label %892, !dbg !2173

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2175
  %894 = load i64, i64* %12, align 8, !dbg !2175
  %895 = icmp ult i64 %893, %894, !dbg !2175
  br i1 %895, label %896, label %900, !dbg !2178

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2175
  %898 = load i64, i64* %21, align 8, !dbg !2175
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2175
  store i8 39, i8* %899, align 1, !dbg !2175
  br label %900, !dbg !2175

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2178
  %902 = add i64 %901, 1, !dbg !2178
  store i64 %902, i64* %21, align 8, !dbg !2178
  br label %903, !dbg !2178

903:                                              ; preds = %900
  br label %904, !dbg !2173

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2179
  %906 = load i64, i64* %12, align 8, !dbg !2179
  %907 = icmp ult i64 %905, %906, !dbg !2179
  br i1 %907, label %908, label %912, !dbg !2182

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2179
  %910 = load i64, i64* %21, align 8, !dbg !2179
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2179
  store i8 36, i8* %911, align 1, !dbg !2179
  br label %912, !dbg !2179

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2182
  %914 = add i64 %913, 1, !dbg !2182
  store i64 %914, i64* %21, align 8, !dbg !2182
  br label %915, !dbg !2182

915:                                              ; preds = %912
  br label %916, !dbg !2173

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2183
  %918 = load i64, i64* %12, align 8, !dbg !2183
  %919 = icmp ult i64 %917, %918, !dbg !2183
  br i1 %919, label %920, label %924, !dbg !2186

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2183
  %922 = load i64, i64* %21, align 8, !dbg !2183
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2183
  store i8 39, i8* %923, align 1, !dbg !2183
  br label %924, !dbg !2183

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2186
  %926 = add i64 %925, 1, !dbg !2186
  store i64 %926, i64* %21, align 8, !dbg !2186
  br label %927, !dbg !2186

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2173
  br label %928, !dbg !2173

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2170

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2187
  %931 = load i64, i64* %12, align 8, !dbg !2187
  %932 = icmp ult i64 %930, %931, !dbg !2187
  br i1 %932, label %933, label %937, !dbg !2190

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2187
  %935 = load i64, i64* %21, align 8, !dbg !2187
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2187
  store i8 92, i8* %936, align 1, !dbg !2187
  br label %937, !dbg !2187

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2190
  %939 = add i64 %938, 1, !dbg !2190
  store i64 %939, i64* %21, align 8, !dbg !2190
  br label %940, !dbg !2190

940:                                              ; preds = %937
  br label %941, !dbg !2170

941:                                              ; preds = %940
  br label %942, !dbg !2170

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2191), !dbg !2192
  br label %943, !dbg !2193

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2194
  %945 = trunc i8 %944 to i1, !dbg !2194
  br i1 %945, label %946, label %974, !dbg !2194

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2194
  %948 = trunc i8 %947 to i1, !dbg !2194
  br i1 %948, label %974, label %949, !dbg !2197

949:                                              ; preds = %946
  br label %950, !dbg !2198

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2200
  %952 = load i64, i64* %12, align 8, !dbg !2200
  %953 = icmp ult i64 %951, %952, !dbg !2200
  br i1 %953, label %954, label %958, !dbg !2203

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2200
  %956 = load i64, i64* %21, align 8, !dbg !2200
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2200
  store i8 39, i8* %957, align 1, !dbg !2200
  br label %958, !dbg !2200

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2203
  %960 = add i64 %959, 1, !dbg !2203
  store i64 %960, i64* %21, align 8, !dbg !2203
  br label %961, !dbg !2203

961:                                              ; preds = %958
  br label %962, !dbg !2198

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2204
  %964 = load i64, i64* %12, align 8, !dbg !2204
  %965 = icmp ult i64 %963, %964, !dbg !2204
  br i1 %965, label %966, label %970, !dbg !2207

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2204
  %968 = load i64, i64* %21, align 8, !dbg !2204
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2204
  store i8 39, i8* %969, align 1, !dbg !2204
  br label %970, !dbg !2204

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2207
  %972 = add i64 %971, 1, !dbg !2207
  store i64 %972, i64* %21, align 8, !dbg !2207
  br label %973, !dbg !2207

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2198
  br label %974, !dbg !2198

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2197

975:                                              ; preds = %974
  br label %976, !dbg !2208

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2209
  %978 = load i64, i64* %12, align 8, !dbg !2209
  %979 = icmp ult i64 %977, %978, !dbg !2209
  br i1 %979, label %980, label %985, !dbg !2212

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2209
  %982 = load i8*, i8** %11, align 8, !dbg !2209
  %983 = load i64, i64* %21, align 8, !dbg !2209
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2209
  store i8 %981, i8* %984, align 1, !dbg !2209
  br label %985, !dbg !2209

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2212
  %987 = add i64 %986, 1, !dbg !2212
  store i64 %987, i64* %21, align 8, !dbg !2212
  br label %988, !dbg !2212

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2213
  %990 = trunc i8 %989 to i1, !dbg !2213
  br i1 %990, label %992, label %991, !dbg !2215

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2216
  br label %992, !dbg !2217

992:                                              ; preds = %991, %988
  br label %993, !dbg !2218

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2219
  %995 = add i64 %994, 1, !dbg !2219
  store i64 %995, i64* %31, align 8, !dbg !2219
  br label %139, !dbg !2220, !llvm.loop !2221

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2223
  %998 = icmp eq i64 %997, 0, !dbg !2225
  br i1 %998, label %999, label %1006, !dbg !2226

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2227
  %1001 = icmp eq i32 %1000, 2, !dbg !2228
  br i1 %1001, label %1002, label %1006, !dbg !2229

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2230
  %1004 = trunc i8 %1003 to i1, !dbg !2230
  br i1 %1004, label %1005, label %1006, !dbg !2231

1005:                                             ; preds = %1002
  br label %1078, !dbg !2232

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2233
  %1008 = icmp eq i32 %1007, 2, !dbg !2235
  br i1 %1008, label %1009, label %1038, !dbg !2236

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2237
  %1011 = trunc i8 %1010 to i1, !dbg !2237
  br i1 %1011, label %1038, label %1012, !dbg !2238

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2239
  %1014 = trunc i8 %1013 to i1, !dbg !2239
  br i1 %1014, label %1015, label %1038, !dbg !2240

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2241
  %1017 = trunc i8 %1016 to i1, !dbg !2241
  br i1 %1017, label %1018, label %1028, !dbg !2244

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2245
  %1020 = load i64, i64* %22, align 8, !dbg !2246
  %1021 = load i8*, i8** %13, align 8, !dbg !2247
  %1022 = load i64, i64* %14, align 8, !dbg !2248
  %1023 = load i32, i32* %16, align 4, !dbg !2249
  %1024 = load i32*, i32** %17, align 8, !dbg !2250
  %1025 = load i8*, i8** %18, align 8, !dbg !2251
  %1026 = load i8*, i8** %19, align 8, !dbg !2252
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2253
  store i64 %1027, i64* %10, align 8, !dbg !2254
  br label %1096, !dbg !2254

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2255
  %1030 = icmp ne i64 %1029, 0, !dbg !2255
  br i1 %1030, label %1036, label %1031, !dbg !2257

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2258
  %1033 = icmp ne i64 %1032, 0, !dbg !2258
  br i1 %1033, label %1034, label %1036, !dbg !2259

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2260
  store i64 %1035, i64* %12, align 8, !dbg !2262
  store i64 0, i64* %21, align 8, !dbg !2263
  br label %51, !dbg !2264

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2265

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2266
  %1040 = icmp ne i8* %1039, null, !dbg !2266
  br i1 %1040, label %1041, label %1068, !dbg !2268

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2269
  %1043 = trunc i8 %1042 to i1, !dbg !2269
  br i1 %1043, label %1068, label %1044, !dbg !2270

1044:                                             ; preds = %1041
  br label %1045, !dbg !2271

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2272
  %1047 = load i8, i8* %1046, align 1, !dbg !2275
  %1048 = icmp ne i8 %1047, 0, !dbg !2276
  br i1 %1048, label %1049, label %1067, !dbg !2276

1049:                                             ; preds = %1045
  br label %1050, !dbg !2277

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2278
  %1052 = load i64, i64* %12, align 8, !dbg !2278
  %1053 = icmp ult i64 %1051, %1052, !dbg !2278
  br i1 %1053, label %1054, label %1060, !dbg !2281

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2278
  %1056 = load i8, i8* %1055, align 1, !dbg !2278
  %1057 = load i8*, i8** %11, align 8, !dbg !2278
  %1058 = load i64, i64* %21, align 8, !dbg !2278
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2278
  store i8 %1056, i8* %1059, align 1, !dbg !2278
  br label %1060, !dbg !2278

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2281
  %1062 = add i64 %1061, 1, !dbg !2281
  store i64 %1062, i64* %21, align 8, !dbg !2281
  br label %1063, !dbg !2281

1063:                                             ; preds = %1060
  br label %1064, !dbg !2281

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2282
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2282
  store i8* %1066, i8** %23, align 8, !dbg !2282
  br label %1045, !dbg !2283, !llvm.loop !2284

1067:                                             ; preds = %1045
  br label %1068, !dbg !2285

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2286
  %1070 = load i64, i64* %12, align 8, !dbg !2288
  %1071 = icmp ult i64 %1069, %1070, !dbg !2289
  br i1 %1071, label %1072, label %1076, !dbg !2290

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2291
  %1074 = load i64, i64* %21, align 8, !dbg !2292
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2291
  store i8 0, i8* %1075, align 1, !dbg !2293
  br label %1076, !dbg !2291

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2294
  store i64 %1077, i64* %10, align 8, !dbg !2295
  br label %1096, !dbg !2295

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2296), !dbg !2297
  %1079 = load i32, i32* %15, align 4, !dbg !2298
  %1080 = icmp eq i32 %1079, 2, !dbg !2300
  br i1 %1080, label %1081, label %1085, !dbg !2301

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2302
  %1083 = trunc i8 %1082 to i1, !dbg !2302
  br i1 %1083, label %1084, label %1085, !dbg !2303

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2304
  br label %1085, !dbg !2305

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2306
  %1087 = load i64, i64* %12, align 8, !dbg !2307
  %1088 = load i8*, i8** %13, align 8, !dbg !2308
  %1089 = load i64, i64* %14, align 8, !dbg !2309
  %1090 = load i32, i32* %15, align 4, !dbg !2310
  %1091 = load i32, i32* %16, align 4, !dbg !2311
  %1092 = and i32 %1091, -3, !dbg !2312
  %1093 = load i8*, i8** %18, align 8, !dbg !2313
  %1094 = load i8*, i8** %19, align 8, !dbg !2314
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2315
  store i64 %1095, i64* %10, align 8, !dbg !2316
  br label %1096, !dbg !2316

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2317
  ret i64 %1097, !dbg !2317
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !180 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2318, metadata !DIExpression()), !dbg !2319
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2322, metadata !DIExpression()), !dbg !2323
  %9 = load i8*, i8** %4, align 8, !dbg !2324
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.98, i64 0, i64 0), i8* noundef %9) #18, !dbg !2324
  store i8* %10, i8** %6, align 8, !dbg !2323
  %11 = load i8*, i8** %6, align 8, !dbg !2325
  %12 = load i8*, i8** %4, align 8, !dbg !2327
  %13 = icmp ne i8* %11, %12, !dbg !2328
  br i1 %13, label %14, label %16, !dbg !2329

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2330
  store i8* %15, i8** %3, align 8, !dbg !2331
  br label %37, !dbg !2331

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2334, metadata !DIExpression()), !dbg !2335
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2336
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2337
  %18 = icmp eq i64 %17, 3, !dbg !2339
  br i1 %18, label %19, label %32, !dbg !2340

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2341
  %21 = icmp eq i32 %20, 8216, !dbg !2342
  br i1 %21, label %22, label %32, !dbg !2343

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2344
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2344
  %25 = load i8, i8* %24, align 1, !dbg !2344
  %26 = zext i8 %25 to i32, !dbg !2344
  %27 = icmp eq i32 %26, 39, !dbg !2345
  %28 = zext i1 %27 to i32, !dbg !2345
  %29 = sext i32 %28 to i64, !dbg !2346
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2346
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2346
  store i8* %31, i8** %3, align 8, !dbg !2347
  br label %37, !dbg !2347

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2348
  %34 = icmp eq i32 %33, 9, !dbg !2349
  %35 = zext i1 %34 to i64, !dbg !2348
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), !dbg !2348
  store i8* %36, i8** %3, align 8, !dbg !2350
  br label %37, !dbg !2350

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2351
  ret i8* %38, !dbg !2351
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2352 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2355, metadata !DIExpression()), !dbg !2356
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2357, metadata !DIExpression()), !dbg !2358
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2359, metadata !DIExpression()), !dbg !2360
  %7 = load i8*, i8** %4, align 8, !dbg !2361
  %8 = load i64, i64* %5, align 8, !dbg !2362
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2363
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2364
  ret i8* %10, !dbg !2365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2366 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2369, metadata !DIExpression()), !dbg !2370
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2371, metadata !DIExpression()), !dbg !2372
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2373, metadata !DIExpression()), !dbg !2374
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2377, metadata !DIExpression()), !dbg !2378
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2379
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2379
  br i1 %15, label %16, label %18, !dbg !2379

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2380
  br label %19, !dbg !2379

18:                                               ; preds = %4
  br label %19, !dbg !2379

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2379
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2378
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2381, metadata !DIExpression()), !dbg !2382
  %21 = call i32* @__errno_location() #21, !dbg !2383
  %22 = load i32, i32* %21, align 4, !dbg !2383
  store i32 %22, i32* %10, align 4, !dbg !2382
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2384, metadata !DIExpression()), !dbg !2385
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2386
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2387
  %25 = load i32, i32* %24, align 4, !dbg !2387
  %26 = load i64*, i64** %7, align 8, !dbg !2388
  %27 = icmp ne i64* %26, null, !dbg !2388
  %28 = zext i1 %27 to i64, !dbg !2388
  %29 = select i1 %27, i32 0, i32 1, !dbg !2388
  %30 = or i32 %25, %29, !dbg !2389
  store i32 %30, i32* %11, align 4, !dbg !2385
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2390, metadata !DIExpression()), !dbg !2391
  %31 = load i8*, i8** %5, align 8, !dbg !2392
  %32 = load i64, i64* %6, align 8, !dbg !2393
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2394
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2395
  %35 = load i32, i32* %34, align 8, !dbg !2395
  %36 = load i32, i32* %11, align 4, !dbg !2396
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2397
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2398
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2397
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2399
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2400
  %42 = load i8*, i8** %41, align 8, !dbg !2400
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2401
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2402
  %45 = load i8*, i8** %44, align 8, !dbg !2402
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2403
  %47 = add i64 %46, 1, !dbg !2404
  store i64 %47, i64* %12, align 8, !dbg !2391
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2405, metadata !DIExpression()), !dbg !2406
  %48 = load i64, i64* %12, align 8, !dbg !2407
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !2408
  store i8* %49, i8** %13, align 8, !dbg !2406
  %50 = load i8*, i8** %13, align 8, !dbg !2409
  %51 = load i64, i64* %12, align 8, !dbg !2410
  %52 = load i8*, i8** %5, align 8, !dbg !2411
  %53 = load i64, i64* %6, align 8, !dbg !2412
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2413
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2414
  %56 = load i32, i32* %55, align 8, !dbg !2414
  %57 = load i32, i32* %11, align 4, !dbg !2415
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2416
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2417
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2416
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2418
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2419
  %63 = load i8*, i8** %62, align 8, !dbg !2419
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2420
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2421
  %66 = load i8*, i8** %65, align 8, !dbg !2421
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2422
  %68 = load i32, i32* %10, align 4, !dbg !2423
  %69 = call i32* @__errno_location() #21, !dbg !2424
  store i32 %68, i32* %69, align 4, !dbg !2425
  %70 = load i64*, i64** %7, align 8, !dbg !2426
  %71 = icmp ne i64* %70, null, !dbg !2426
  br i1 %71, label %72, label %76, !dbg !2428

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2429
  %74 = sub i64 %73, 1, !dbg !2430
  %75 = load i64*, i64** %7, align 8, !dbg !2431
  store i64 %74, i64* %75, align 8, !dbg !2432
  br label %76, !dbg !2433

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2434
  ret i8* %77, !dbg !2435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2436 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2437, metadata !DIExpression()), !dbg !2438
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2439
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2438
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2440, metadata !DIExpression()), !dbg !2442
  store i32 1, i32* %2, align 4, !dbg !2442
  br label %4, !dbg !2443

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2444
  %6 = load i32, i32* @nslots, align 4, !dbg !2446
  %7 = icmp slt i32 %5, %6, !dbg !2447
  br i1 %7, label %8, label %18, !dbg !2448

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2449
  %10 = load i32, i32* %2, align 4, !dbg !2450
  %11 = sext i32 %10 to i64, !dbg !2449
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2449
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2451
  %14 = load i8*, i8** %13, align 8, !dbg !2451
  call void @free(i8* noundef %14) #18, !dbg !2452
  br label %15, !dbg !2452

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2453
  %17 = add nsw i32 %16, 1, !dbg !2453
  store i32 %17, i32* %2, align 4, !dbg !2453
  br label %4, !dbg !2454, !llvm.loop !2455

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2457
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2457
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2459
  %22 = load i8*, i8** %21, align 8, !dbg !2459
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2460
  br i1 %23, label %24, label %29, !dbg !2461

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2462
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2462
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2464
  %28 = load i8*, i8** %27, align 8, !dbg !2464
  call void @free(i8* noundef %28) #18, !dbg !2465
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2466
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2467
  br label %29, !dbg !2468

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2469
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2471
  br i1 %31, label %32, label %35, !dbg !2472

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2473
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2473
  call void @free(i8* noundef %34) #18, !dbg !2475
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2476
  br label %35, !dbg !2477

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2478
  ret void, !dbg !2479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2480 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2483, metadata !DIExpression()), !dbg !2484
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2485, metadata !DIExpression()), !dbg !2486
  %5 = load i32, i32* %3, align 4, !dbg !2487
  %6 = load i8*, i8** %4, align 8, !dbg !2488
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2489
  ret i8* %7, !dbg !2490
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2491 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2494, metadata !DIExpression()), !dbg !2495
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2498, metadata !DIExpression()), !dbg !2499
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2502, metadata !DIExpression()), !dbg !2503
  %18 = call i32* @__errno_location() #21, !dbg !2504
  %19 = load i32, i32* %18, align 4, !dbg !2504
  store i32 %19, i32* %9, align 4, !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2505, metadata !DIExpression()), !dbg !2506
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2507
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2506
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i32 2147483647, i32* %11, align 4, !dbg !2509
  %21 = load i32, i32* %5, align 4, !dbg !2510
  %22 = icmp sle i32 0, %21, !dbg !2512
  br i1 %22, label %23, label %27, !dbg !2513

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2514
  %25 = load i32, i32* %11, align 4, !dbg !2515
  %26 = icmp slt i32 %24, %25, !dbg !2516
  br i1 %26, label %28, label %27, !dbg !2517

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2518
  unreachable, !dbg !2518

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2519
  %30 = load i32, i32* %5, align 4, !dbg !2521
  %31 = icmp sle i32 %29, %30, !dbg !2522
  br i1 %31, label %32, label %73, !dbg !2523

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2524, metadata !DIExpression()), !dbg !2526
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2527
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2528
  %35 = zext i1 %34 to i8, !dbg !2526
  store i8 %35, i8* %12, align 1, !dbg !2526
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2529, metadata !DIExpression()), !dbg !2530
  %36 = load i32, i32* @nslots, align 4, !dbg !2531
  %37 = sext i32 %36 to i64, !dbg !2531
  store i64 %37, i64* %13, align 8, !dbg !2530
  %38 = load i8, i8* %12, align 1, !dbg !2532
  %39 = trunc i8 %38 to i1, !dbg !2532
  br i1 %39, label %40, label %41, !dbg !2532

40:                                               ; preds = %32
  br label %43, !dbg !2532

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2533
  br label %43, !dbg !2532

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2532
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2532
  %46 = load i32, i32* %5, align 4, !dbg !2534
  %47 = load i32, i32* @nslots, align 4, !dbg !2535
  %48 = sub nsw i32 %46, %47, !dbg !2536
  %49 = add nsw i32 %48, 1, !dbg !2537
  %50 = sext i32 %49 to i64, !dbg !2534
  %51 = load i32, i32* %11, align 4, !dbg !2538
  %52 = sext i32 %51 to i64, !dbg !2538
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2539
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2539
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2540
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2541
  %55 = load i8, i8* %12, align 1, !dbg !2542
  %56 = trunc i8 %55 to i1, !dbg !2542
  br i1 %56, label %57, label %60, !dbg !2544

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2545
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2546
  br label %60, !dbg !2547

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2548
  %62 = load i32, i32* @nslots, align 4, !dbg !2549
  %63 = sext i32 %62 to i64, !dbg !2550
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2550
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2551
  %66 = load i64, i64* %13, align 8, !dbg !2552
  %67 = load i32, i32* @nslots, align 4, !dbg !2553
  %68 = sext i32 %67 to i64, !dbg !2553
  %69 = sub nsw i64 %66, %68, !dbg !2554
  %70 = mul i64 %69, 16, !dbg !2555
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2551
  %71 = load i64, i64* %13, align 8, !dbg !2556
  %72 = trunc i64 %71 to i32, !dbg !2556
  store i32 %72, i32* @nslots, align 4, !dbg !2557
  br label %73, !dbg !2558

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2559, metadata !DIExpression()), !dbg !2561
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2562
  %75 = load i32, i32* %5, align 4, !dbg !2563
  %76 = sext i32 %75 to i64, !dbg !2562
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2562
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2564
  %79 = load i64, i64* %78, align 8, !dbg !2564
  store i64 %79, i64* %14, align 8, !dbg !2561
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2565, metadata !DIExpression()), !dbg !2566
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2567
  %81 = load i32, i32* %5, align 4, !dbg !2568
  %82 = sext i32 %81 to i64, !dbg !2567
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2567
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2569
  %85 = load i8*, i8** %84, align 8, !dbg !2569
  store i8* %85, i8** %15, align 8, !dbg !2566
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2570, metadata !DIExpression()), !dbg !2571
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2572
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2573
  %88 = load i32, i32* %87, align 4, !dbg !2573
  %89 = or i32 %88, 1, !dbg !2574
  store i32 %89, i32* %16, align 4, !dbg !2571
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2575, metadata !DIExpression()), !dbg !2576
  %90 = load i8*, i8** %15, align 8, !dbg !2577
  %91 = load i64, i64* %14, align 8, !dbg !2578
  %92 = load i8*, i8** %6, align 8, !dbg !2579
  %93 = load i64, i64* %7, align 8, !dbg !2580
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2581
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2582
  %96 = load i32, i32* %95, align 8, !dbg !2582
  %97 = load i32, i32* %16, align 4, !dbg !2583
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2584
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2585
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2584
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2586
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2587
  %103 = load i8*, i8** %102, align 8, !dbg !2587
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2588
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2589
  %106 = load i8*, i8** %105, align 8, !dbg !2589
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2590
  store i64 %107, i64* %17, align 8, !dbg !2576
  %108 = load i64, i64* %14, align 8, !dbg !2591
  %109 = load i64, i64* %17, align 8, !dbg !2593
  %110 = icmp ule i64 %108, %109, !dbg !2594
  br i1 %110, label %111, label %149, !dbg !2595

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2596
  %113 = add i64 %112, 1, !dbg !2598
  store i64 %113, i64* %14, align 8, !dbg !2599
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2600
  %115 = load i32, i32* %5, align 4, !dbg !2601
  %116 = sext i32 %115 to i64, !dbg !2600
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2600
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2602
  store i64 %113, i64* %118, align 8, !dbg !2603
  %119 = load i8*, i8** %15, align 8, !dbg !2604
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2606
  br i1 %120, label %121, label %123, !dbg !2607

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2608
  call void @free(i8* noundef %122) #18, !dbg !2609
  br label %123, !dbg !2609

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2610
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !2611
  store i8* %125, i8** %15, align 8, !dbg !2612
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2613
  %127 = load i32, i32* %5, align 4, !dbg !2614
  %128 = sext i32 %127 to i64, !dbg !2613
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2613
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2615
  store i8* %125, i8** %130, align 8, !dbg !2616
  %131 = load i8*, i8** %15, align 8, !dbg !2617
  %132 = load i64, i64* %14, align 8, !dbg !2618
  %133 = load i8*, i8** %6, align 8, !dbg !2619
  %134 = load i64, i64* %7, align 8, !dbg !2620
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2621
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2622
  %137 = load i32, i32* %136, align 8, !dbg !2622
  %138 = load i32, i32* %16, align 4, !dbg !2623
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2624
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2625
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2624
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2626
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2627
  %144 = load i8*, i8** %143, align 8, !dbg !2627
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2628
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2629
  %147 = load i8*, i8** %146, align 8, !dbg !2629
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2630
  br label %149, !dbg !2631

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2632
  %151 = call i32* @__errno_location() #21, !dbg !2633
  store i32 %150, i32* %151, align 4, !dbg !2634
  %152 = load i8*, i8** %15, align 8, !dbg !2635
  ret i8* %152, !dbg !2636
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2637 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2642, metadata !DIExpression()), !dbg !2643
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2644, metadata !DIExpression()), !dbg !2645
  %7 = load i32, i32* %4, align 4, !dbg !2646
  %8 = load i8*, i8** %5, align 8, !dbg !2647
  %9 = load i64, i64* %6, align 8, !dbg !2648
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2649
  ret i8* %10, !dbg !2650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2651 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2654, metadata !DIExpression()), !dbg !2655
  %3 = load i8*, i8** %2, align 8, !dbg !2656
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2657
  ret i8* %4, !dbg !2658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2659 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2662, metadata !DIExpression()), !dbg !2663
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2664, metadata !DIExpression()), !dbg !2665
  %5 = load i8*, i8** %3, align 8, !dbg !2666
  %6 = load i64, i64* %4, align 8, !dbg !2667
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2668
  ret i8* %7, !dbg !2669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2670 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2679, metadata !DIExpression()), !dbg !2680
  %8 = load i32, i32* %5, align 4, !dbg !2681
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2682
  %9 = load i32, i32* %4, align 4, !dbg !2683
  %10 = load i8*, i8** %6, align 8, !dbg !2684
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2685
  ret i8* %11, !dbg !2686
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2687 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2692, metadata !DIExpression()), !dbg !2693
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2693
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2693
  %5 = load i32, i32* %3, align 4, !dbg !2694
  %6 = icmp eq i32 %5, 10, !dbg !2696
  br i1 %6, label %7, label %8, !dbg !2697

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2698
  unreachable, !dbg !2698

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2699
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2700
  store i32 %9, i32* %10, align 8, !dbg !2701
  ret void, !dbg !2702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2703 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2714, metadata !DIExpression()), !dbg !2715
  %10 = load i32, i32* %6, align 4, !dbg !2716
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2717
  %11 = load i32, i32* %5, align 4, !dbg !2718
  %12 = load i8*, i8** %7, align 8, !dbg !2719
  %13 = load i64, i64* %8, align 8, !dbg !2720
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2721
  ret i8* %14, !dbg !2722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2723 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2726, metadata !DIExpression()), !dbg !2727
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2728, metadata !DIExpression()), !dbg !2729
  %5 = load i32, i32* %3, align 4, !dbg !2730
  %6 = load i8*, i8** %4, align 8, !dbg !2731
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2732
  ret i8* %7, !dbg !2733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2734 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2737, metadata !DIExpression()), !dbg !2738
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2739, metadata !DIExpression()), !dbg !2740
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2741, metadata !DIExpression()), !dbg !2742
  %7 = load i32, i32* %4, align 4, !dbg !2743
  %8 = load i8*, i8** %5, align 8, !dbg !2744
  %9 = load i64, i64* %6, align 8, !dbg !2745
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2746
  ret i8* %10, !dbg !2747
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2748 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2757, metadata !DIExpression()), !dbg !2758
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2759
  %9 = load i8, i8* %6, align 1, !dbg !2760
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2761
  %11 = load i8*, i8** %4, align 8, !dbg !2762
  %12 = load i64, i64* %5, align 8, !dbg !2763
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2764
  ret i8* %13, !dbg !2765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2766 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2769, metadata !DIExpression()), !dbg !2770
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2771, metadata !DIExpression()), !dbg !2772
  %5 = load i8*, i8** %3, align 8, !dbg !2773
  %6 = load i8, i8* %4, align 1, !dbg !2774
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2775
  ret i8* %7, !dbg !2776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2777 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2778, metadata !DIExpression()), !dbg !2779
  %3 = load i8*, i8** %2, align 8, !dbg !2780
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2781
  ret i8* %4, !dbg !2782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2783 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2786, metadata !DIExpression()), !dbg !2787
  %5 = load i8*, i8** %3, align 8, !dbg !2788
  %6 = load i64, i64* %4, align 8, !dbg !2789
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2790
  ret i8* %7, !dbg !2791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2792 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2795, metadata !DIExpression()), !dbg !2796
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2797, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2799, metadata !DIExpression()), !dbg !2800
  %9 = load i32, i32* %5, align 4, !dbg !2801
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2802
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2802
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2802
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2803
  %13 = load i32, i32* %4, align 4, !dbg !2804
  %14 = load i8*, i8** %6, align 8, !dbg !2805
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2806
  ret i8* %15, !dbg !2807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2808 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2815, metadata !DIExpression()), !dbg !2816
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2817, metadata !DIExpression()), !dbg !2818
  %9 = load i32, i32* %5, align 4, !dbg !2819
  %10 = load i8*, i8** %6, align 8, !dbg !2820
  %11 = load i8*, i8** %7, align 8, !dbg !2821
  %12 = load i8*, i8** %8, align 8, !dbg !2822
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2823
  ret i8* %13, !dbg !2824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2825 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2828, metadata !DIExpression()), !dbg !2829
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2830, metadata !DIExpression()), !dbg !2831
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2834, metadata !DIExpression()), !dbg !2835
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2836, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2838, metadata !DIExpression()), !dbg !2839
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2840
  %13 = load i8*, i8** %7, align 8, !dbg !2841
  %14 = load i8*, i8** %8, align 8, !dbg !2842
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2843
  %15 = load i32, i32* %6, align 4, !dbg !2844
  %16 = load i8*, i8** %9, align 8, !dbg !2845
  %17 = load i64, i64* %10, align 8, !dbg !2846
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2847
  ret i8* %18, !dbg !2848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2849 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2852, metadata !DIExpression()), !dbg !2853
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2854, metadata !DIExpression()), !dbg !2855
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2856, metadata !DIExpression()), !dbg !2857
  %7 = load i8*, i8** %4, align 8, !dbg !2858
  %8 = load i8*, i8** %5, align 8, !dbg !2859
  %9 = load i8*, i8** %6, align 8, !dbg !2860
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2861
  ret i8* %10, !dbg !2862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2863 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2866, metadata !DIExpression()), !dbg !2867
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2872, metadata !DIExpression()), !dbg !2873
  %9 = load i8*, i8** %5, align 8, !dbg !2874
  %10 = load i8*, i8** %6, align 8, !dbg !2875
  %11 = load i8*, i8** %7, align 8, !dbg !2876
  %12 = load i64, i64* %8, align 8, !dbg !2877
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2878
  ret i8* %13, !dbg !2879
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2880 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2883, metadata !DIExpression()), !dbg !2884
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2887, metadata !DIExpression()), !dbg !2888
  %7 = load i32, i32* %4, align 4, !dbg !2889
  %8 = load i8*, i8** %5, align 8, !dbg !2890
  %9 = load i64, i64* %6, align 8, !dbg !2891
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2892
  ret i8* %10, !dbg !2893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2894 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2897, metadata !DIExpression()), !dbg !2898
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2899, metadata !DIExpression()), !dbg !2900
  %5 = load i8*, i8** %3, align 8, !dbg !2901
  %6 = load i64, i64* %4, align 8, !dbg !2902
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2903
  ret i8* %7, !dbg !2904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2905 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2908, metadata !DIExpression()), !dbg !2909
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2910, metadata !DIExpression()), !dbg !2911
  %5 = load i32, i32* %3, align 4, !dbg !2912
  %6 = load i8*, i8** %4, align 8, !dbg !2913
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2914
  ret i8* %7, !dbg !2915
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2916 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2919, metadata !DIExpression()), !dbg !2920
  %3 = load i8*, i8** %2, align 8, !dbg !2921
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2922
  ret i8* %4, !dbg !2923
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @extract_trimmed_name(%struct.gl_utmp* noundef %0) #4 !dbg !2924 {
  %2 = alloca %struct.gl_utmp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.gl_utmp* %0, %struct.gl_utmp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %2, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2951, metadata !DIExpression()), !dbg !2952
  %6 = load %struct.gl_utmp*, %struct.gl_utmp** %2, align 8, !dbg !2953
  %7 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %6, i32 0, i32 0, !dbg !2954
  %8 = load i8*, i8** %7, align 8, !dbg !2954
  store i8* %8, i8** %3, align 8, !dbg !2952
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2955, metadata !DIExpression()), !dbg !2956
  %9 = load i8*, i8** %3, align 8, !dbg !2957
  %10 = call i64 @strlen(i8* noundef %9) #20, !dbg !2958
  store i64 %10, i64* %4, align 8, !dbg !2956
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2959, metadata !DIExpression()), !dbg !2960
  %11 = load i8*, i8** %3, align 8, !dbg !2961
  %12 = load i64, i64* %4, align 8, !dbg !2963
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !2964
  store i8* %13, i8** %5, align 8, !dbg !2965
  br label %14, !dbg !2966

14:                                               ; preds = %27, %1
  %15 = load i8*, i8** %3, align 8, !dbg !2967
  %16 = load i8*, i8** %5, align 8, !dbg !2969
  %17 = icmp ult i8* %15, %16, !dbg !2970
  br i1 %17, label %18, label %24, !dbg !2971

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8, !dbg !2972
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2972
  %21 = load i8, i8* %20, align 1, !dbg !2972
  %22 = zext i8 %21 to i32, !dbg !2972
  %23 = icmp eq i32 %22, 32, !dbg !2973
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ false, %14 ], [ %23, %18 ], !dbg !2974
  br i1 %25, label %26, label %30, !dbg !2975

26:                                               ; preds = %24
  br label %27, !dbg !2976

27:                                               ; preds = %26
  %28 = load i8*, i8** %5, align 8, !dbg !2977
  %29 = getelementptr inbounds i8, i8* %28, i32 -1, !dbg !2977
  store i8* %29, i8** %5, align 8, !dbg !2977
  br label %14, !dbg !2978, !llvm.loop !2979

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8, !dbg !2981
  %32 = load i8*, i8** %5, align 8, !dbg !2982
  %33 = load i8*, i8** %3, align 8, !dbg !2983
  %34 = ptrtoint i8* %32 to i64, !dbg !2984
  %35 = ptrtoint i8* %33 to i64, !dbg !2984
  %36 = sub i64 %34, %35, !dbg !2984
  %37 = call noalias nonnull i8* @ximemdup0(i8* noundef %31, i64 noundef %36), !dbg !2985
  ret i8* %37, !dbg !2986
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_utmp(i8* noundef %0, i64* noundef %1, %struct.gl_utmp** noundef %2, i32 noundef %3) #4 !dbg !2987 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gl_utmp**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2992, metadata !DIExpression()), !dbg !2993
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2994, metadata !DIExpression()), !dbg !2995
  store %struct.gl_utmp** %2, %struct.gl_utmp*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gl_utmp*** %7, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2998, metadata !DIExpression()), !dbg !2999
  %9 = load i8*, i8** %5, align 8, !dbg !3000
  %10 = load i64*, i64** %6, align 8, !dbg !3001
  %11 = load %struct.gl_utmp**, %struct.gl_utmp*** %7, align 8, !dbg !3002
  %12 = load i32, i32* %8, align 4, !dbg !3003
  %13 = call i32 @read_utmp_from_file(i8* noundef %9, i64* noundef %10, %struct.gl_utmp** noundef %11, i32 noundef %12), !dbg !3004
  ret i32 %13, !dbg !3005
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_utmp_from_file(i8* noundef %0, i64* noundef %1, %struct.gl_utmp** noundef %2, i32 noundef %3) #4 !dbg !3006 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.gl_utmp**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.utmp_alloc, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.utmpx*, align 8
  %15 = alloca %struct.timespec, align 8
  %16 = alloca %struct.utmp_alloc, align 8
  %17 = alloca %struct.utmp_alloc, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.gl_utmp*, align 8
  %20 = alloca %struct.utmp_alloc, align 8
  %21 = alloca %struct.timespec, align 8
  %22 = alloca %struct.utmp_alloc, align 8
  %23 = alloca %struct.utmp_alloc, align 8
  %24 = alloca %struct.utmp_alloc, align 8
  %25 = alloca %struct.timespec, align 8
  %26 = alloca %struct.utmp_alloc, align 8
  %27 = alloca %struct.utmp_alloc, align 8
  %28 = alloca %struct.utmp_alloc, align 8
  %29 = alloca %struct.utmp_alloc, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3007, metadata !DIExpression()), !dbg !3008
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3009, metadata !DIExpression()), !dbg !3010
  store %struct.gl_utmp** %2, %struct.gl_utmp*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gl_utmp*** %8, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3013, metadata !DIExpression()), !dbg !3014
  %30 = load i32, i32* %9, align 4, !dbg !3015
  %31 = and i32 %30, 4, !dbg !3017
  %32 = icmp ne i32 %31, 0, !dbg !3018
  br i1 %32, label %33, label %40, !dbg !3019

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4, !dbg !3020
  %35 = and i32 %34, 10, !dbg !3021
  %36 = icmp ne i32 %35, 0, !dbg !3022
  br i1 %36, label %37, label %40, !dbg !3023

37:                                               ; preds = %33
  %38 = load i64*, i64** %7, align 8, !dbg !3024
  store i64 0, i64* %38, align 8, !dbg !3026
  %39 = load %struct.gl_utmp**, %struct.gl_utmp*** %8, align 8, !dbg !3027
  store %struct.gl_utmp* null, %struct.gl_utmp** %39, align 8, !dbg !3028
  store i32 0, i32* %5, align 4, !dbg !3029
  br label %230, !dbg !3029

40:                                               ; preds = %33, %4
  call void @llvm.dbg.declare(metadata %struct.utmp_alloc* %10, metadata !3030, metadata !DIExpression()), !dbg !3038
  %41 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3038
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 32, i1 false), !dbg !3038
  %42 = load i8*, i8** %6, align 8, !dbg !3039
  %43 = call i32 @utmpxname(i8* noundef %42), !dbg !3040
  call void @setutxent(), !dbg !3041
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3042, metadata !DIExpression()), !dbg !3043
  %44 = load i8*, i8** %6, align 8, !dbg !3044
  %45 = call i1 @streq(i8* noundef %44, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i64 0, i64 0)), !dbg !3045
  %46 = zext i1 %45 to i8, !dbg !3043
  store i8 %46, i8* %11, align 1, !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.timespec* %12, metadata !3046, metadata !DIExpression()), !dbg !3047
  %47 = bitcast %struct.timespec* %12 to i8*, !dbg !3047
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 16, i1 false), !dbg !3047
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3048, metadata !DIExpression()), !dbg !3049
  br label %48, !dbg !3050

48:                                               ; preds = %135, %40
  %49 = call %struct.utmpx* @getutxent(), !dbg !3051
  %50 = bitcast %struct.utmpx* %49 to i8*, !dbg !3051
  store i8* %50, i8** %13, align 8, !dbg !3052
  %51 = icmp ne i8* %50, null, !dbg !3053
  br i1 %51, label %52, label %136, !dbg !3050

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata %struct.utmpx** %14, metadata !3054, metadata !DIExpression()), !dbg !3056
  %53 = load i8*, i8** %13, align 8, !dbg !3057
  %54 = bitcast i8* %53 to %struct.utmpx*, !dbg !3058
  store %struct.utmpx* %54, %struct.utmpx** %14, align 8, !dbg !3056
  call void @llvm.dbg.declare(metadata %struct.timespec* %15, metadata !3059, metadata !DIExpression()), !dbg !3060
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0, !dbg !3061
  %56 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3062
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %56, i32 0, i32 8, !dbg !3063
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 0, !dbg !3064
  %59 = load i64, i64* %58, align 8, !dbg !3064
  store i64 %59, i64* %55, align 8, !dbg !3061
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1, !dbg !3061
  %61 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3065
  %62 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %61, i32 0, i32 8, !dbg !3066
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 1, !dbg !3067
  %64 = load i64, i64* %63, align 8, !dbg !3067
  %65 = mul nsw i64 %64, 1000, !dbg !3068
  store i64 %65, i64* %60, align 8, !dbg !3061
  %66 = load i32, i32* %9, align 4, !dbg !3069
  %67 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3070
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %67, i32 0, i32 4, !dbg !3070
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %68, i64 0, i64 0, !dbg !3070
  %70 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3071
  %71 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i32 0, i32 4, !dbg !3071
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %71, i64 0, i64 0, !dbg !3071
  %73 = call i64 @strnlen(i8* noundef %72, i64 noundef 32) #20, !dbg !3072
  %74 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3073
  %75 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %74, i32 0, i32 3, !dbg !3074
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %75, i64 0, i64 0, !dbg !3073
  %77 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3075
  %78 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %77, i32 0, i32 3, !dbg !3076
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %78, i64 0, i64 0, !dbg !3075
  %80 = call i64 @strnlen(i8* noundef %79, i64 noundef 4) #20, !dbg !3077
  %81 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3078
  %82 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %81, i32 0, i32 2, !dbg !3079
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %82, i64 0, i64 0, !dbg !3078
  %84 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3080
  %85 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %84, i32 0, i32 2, !dbg !3081
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %85, i64 0, i64 0, !dbg !3080
  %87 = call i64 @strnlen(i8* noundef %86, i64 noundef 32) #20, !dbg !3082
  %88 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3083
  %89 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %88, i32 0, i32 5, !dbg !3084
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %89, i64 0, i64 0, !dbg !3083
  %91 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3085
  %92 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %91, i32 0, i32 5, !dbg !3086
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %92, i64 0, i64 0, !dbg !3085
  %94 = call i64 @strnlen(i8* noundef %93, i64 noundef 256) #20, !dbg !3087
  %95 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3088
  %96 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %95, i32 0, i32 1, !dbg !3089
  %97 = load i32, i32* %96, align 4, !dbg !3089
  %98 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3090
  %99 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %98, i32 0, i32 0, !dbg !3091
  %100 = load i16, i16* %99, align 8, !dbg !3091
  %101 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3092
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i32 0, i32 7, !dbg !3093
  %103 = load i64, i64* %102, align 8, !dbg !3093
  %104 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3094
  %105 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %104, i32 0, i32 6, !dbg !3094
  %106 = getelementptr inbounds %struct.__exit_status, %struct.__exit_status* %105, i32 0, i32 0, !dbg !3094
  %107 = load i16, i16* %106, align 4, !dbg !3094
  %108 = sext i16 %107 to i32, !dbg !3094
  %109 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3095
  %110 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %109, i32 0, i32 6, !dbg !3095
  %111 = getelementptr inbounds %struct.__exit_status, %struct.__exit_status* %110, i32 0, i32 1, !dbg !3095
  %112 = load i16, i16* %111, align 2, !dbg !3095
  %113 = sext i16 %112 to i32, !dbg !3095
  %114 = bitcast %struct.utmp_alloc* %17 to i8*, !dbg !3096
  %115 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 32, i1 false), !dbg !3096
  %116 = bitcast %struct.timespec* %15 to [2 x i64]*, !dbg !3096
  %117 = load [2 x i64], [2 x i64]* %116, align 8, !dbg !3096
  call void @add_utmp(%struct.utmp_alloc* sret(%struct.utmp_alloc) align 8 %16, %struct.utmp_alloc* noundef %17, i32 noundef %66, i8* noundef %69, i64 noundef %73, i8* noundef %76, i64 noundef %80, i8* noundef %83, i64 noundef %87, i8* noundef %90, i64 noundef %94, i32 noundef %97, i16 noundef %100, [2 x i64] %117, i64 noundef %103, i32 noundef %108, i32 noundef %113), !dbg !3096
  %118 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3096
  %119 = bitcast %struct.utmp_alloc* %16 to i8*, !dbg !3096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 32, i1 false), !dbg !3096
  %120 = load i8, i8* %11, align 1, !dbg !3097
  %121 = trunc i8 %120 to i1, !dbg !3097
  br i1 %121, label %122, label %135, !dbg !3099

122:                                              ; preds = %52
  %123 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3100
  %124 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %123, i32 0, i32 4, !dbg !3100
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %124, i64 0, i64 0, !dbg !3100
  %126 = call i1 @memeq(i8* noundef %125, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.110, i64 0, i64 0), i64 noundef 9), !dbg !3101
  br i1 %126, label %127, label %135, !dbg !3102

127:                                              ; preds = %122
  %128 = load %struct.utmpx*, %struct.utmpx** %14, align 8, !dbg !3103
  %129 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %128, i32 0, i32 2, !dbg !3104
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %129, i64 0, i64 0, !dbg !3103
  %131 = call i1 @memeq(i8* noundef %130, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.111, i64 0, i64 0), i64 noundef 2), !dbg !3105
  br i1 %131, label %132, label %135, !dbg !3106

132:                                              ; preds = %127
  %133 = bitcast %struct.timespec* %12 to i8*, !dbg !3107
  %134 = bitcast %struct.timespec* %15 to i8*, !dbg !3107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false), !dbg !3107
  br label %135, !dbg !3108

135:                                              ; preds = %132, %127, %122, %52
  br label %48, !dbg !3050, !llvm.loop !3109

136:                                              ; preds = %48
  call void @endutxent(), !dbg !3111
  %137 = load i32, i32* %9, align 4, !dbg !3112
  %138 = and i32 %137, 10, !dbg !3114
  %139 = icmp eq i32 %138, 0, !dbg !3115
  br i1 %139, label %140, label %196, !dbg !3116

140:                                              ; preds = %136
  %141 = load i8, i8* %11, align 1, !dbg !3117
  %142 = trunc i8 %141 to i1, !dbg !3117
  br i1 %142, label %143, label %196, !dbg !3118

143:                                              ; preds = %140
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3119, metadata !DIExpression()), !dbg !3122
  store i64 0, i64* %18, align 8, !dbg !3122
  br label %144, !dbg !3123

144:                                              ; preds = %176, %143
  %145 = load i64, i64* %18, align 8, !dbg !3124
  %146 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i32 0, i32 1, !dbg !3126
  %147 = load i64, i64* %146, align 8, !dbg !3126
  %148 = icmp slt i64 %145, %147, !dbg !3127
  br i1 %148, label %149, label %179, !dbg !3128

149:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %19, metadata !3129, metadata !DIExpression()), !dbg !3131
  %150 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i32 0, i32 0, !dbg !3132
  %151 = load %struct.gl_utmp*, %struct.gl_utmp** %150, align 8, !dbg !3132
  %152 = load i64, i64* %18, align 8, !dbg !3133
  %153 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %151, i64 %152, !dbg !3134
  store %struct.gl_utmp* %153, %struct.gl_utmp** %19, align 8, !dbg !3131
  %154 = load %struct.gl_utmp*, %struct.gl_utmp** %19, align 8, !dbg !3135
  %155 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %154, i32 0, i32 7, !dbg !3135
  %156 = load i16, i16* %155, align 8, !dbg !3135
  %157 = sext i16 %156 to i32, !dbg !3135
  %158 = icmp eq i32 %157, 2, !dbg !3135
  br i1 %158, label %159, label %175, !dbg !3137

159:                                              ; preds = %149
  %160 = load %struct.gl_utmp*, %struct.gl_utmp** %19, align 8, !dbg !3138
  %161 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %160, i32 0, i32 4, !dbg !3141
  %162 = getelementptr inbounds %struct.timespec, %struct.timespec* %161, i32 0, i32 0, !dbg !3142
  %163 = load i64, i64* %162, align 8, !dbg !3142
  %164 = icmp sle i64 %163, 60, !dbg !3143
  br i1 %164, label %165, label %174, !dbg !3144

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0, !dbg !3145
  %167 = load i64, i64* %166, align 8, !dbg !3145
  %168 = icmp ne i64 %167, 0, !dbg !3146
  br i1 %168, label %169, label %174, !dbg !3147

169:                                              ; preds = %165
  %170 = load %struct.gl_utmp*, %struct.gl_utmp** %19, align 8, !dbg !3148
  %171 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %170, i32 0, i32 4, !dbg !3149
  %172 = bitcast %struct.timespec* %171 to i8*, !dbg !3150
  %173 = bitcast %struct.timespec* %12 to i8*, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 16, i1 false), !dbg !3150
  br label %174, !dbg !3148

174:                                              ; preds = %169, %165, %159
  br label %179, !dbg !3151

175:                                              ; preds = %149
  br label %176, !dbg !3152

176:                                              ; preds = %175
  %177 = load i64, i64* %18, align 8, !dbg !3153
  %178 = add nsw i64 %177, 1, !dbg !3153
  store i64 %178, i64* %18, align 8, !dbg !3153
  br label %144, !dbg !3154, !llvm.loop !3155

179:                                              ; preds = %174, %144
  %180 = bitcast %struct.utmp_alloc* %20 to i8*, !dbg !3157
  %181 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 32, i1 false), !dbg !3157
  %182 = call i1 @have_boot_time(%struct.utmp_alloc* noundef %20), !dbg !3157
  br i1 %182, label %195, label %183, !dbg !3159

183:                                              ; preds = %179
  call void @llvm.dbg.declare(metadata %struct.timespec* %21, metadata !3160, metadata !DIExpression()), !dbg !3162
  %184 = call i32 @get_linux_boot_time_fallback(%struct.timespec* noundef %21), !dbg !3163
  %185 = icmp sge i32 %184, 0, !dbg !3165
  br i1 %185, label %186, label %194, !dbg !3166

186:                                              ; preds = %183
  %187 = load i32, i32* %9, align 4, !dbg !3167
  %188 = bitcast %struct.utmp_alloc* %23 to i8*, !dbg !3168
  %189 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 32, i1 false), !dbg !3168
  %190 = bitcast %struct.timespec* %21 to [2 x i64]*, !dbg !3168
  %191 = load [2 x i64], [2 x i64]* %190, align 8, !dbg !3168
  call void @add_utmp(%struct.utmp_alloc* sret(%struct.utmp_alloc) align 8 %22, %struct.utmp_alloc* noundef %23, i32 noundef %187, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.112, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.113, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.111, i64 0, i64 0), i64 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.113, i64 0, i64 0), i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %191, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3168
  %192 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3168
  %193 = bitcast %struct.utmp_alloc* %22 to i8*, !dbg !3168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 32, i1 false), !dbg !3168
  br label %194, !dbg !3169

194:                                              ; preds = %186, %183
  br label %195, !dbg !3170

195:                                              ; preds = %194, %179
  br label %196, !dbg !3171

196:                                              ; preds = %195, %140, %136
  %197 = load i32, i32* %9, align 4, !dbg !3172
  %198 = and i32 %197, 10, !dbg !3174
  %199 = icmp eq i32 %198, 0, !dbg !3175
  br i1 %199, label %200, label %219, !dbg !3176

200:                                              ; preds = %196
  %201 = load i8*, i8** %6, align 8, !dbg !3177
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i64 0, i64 0)), !dbg !3178
  br i1 %202, label %203, label %219, !dbg !3179

203:                                              ; preds = %200
  %204 = bitcast %struct.utmp_alloc* %24 to i8*, !dbg !3180
  %205 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 32, i1 false), !dbg !3180
  %206 = call i1 @have_boot_time(%struct.utmp_alloc* noundef %24), !dbg !3180
  br i1 %206, label %219, label %207, !dbg !3181

207:                                              ; preds = %203
  call void @llvm.dbg.declare(metadata %struct.timespec* %25, metadata !3182, metadata !DIExpression()), !dbg !3184
  %208 = call i32 @get_linux_boot_time_final_fallback(%struct.timespec* noundef %25), !dbg !3185
  %209 = icmp sge i32 %208, 0, !dbg !3187
  br i1 %209, label %210, label %218, !dbg !3188

210:                                              ; preds = %207
  %211 = load i32, i32* %9, align 4, !dbg !3189
  %212 = bitcast %struct.utmp_alloc* %27 to i8*, !dbg !3190
  %213 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 %213, i64 32, i1 false), !dbg !3190
  %214 = bitcast %struct.timespec* %25 to [2 x i64]*, !dbg !3190
  %215 = load [2 x i64], [2 x i64]* %214, align 8, !dbg !3190
  call void @add_utmp(%struct.utmp_alloc* sret(%struct.utmp_alloc) align 8 %26, %struct.utmp_alloc* noundef %27, i32 noundef %211, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.112, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.113, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.111, i64 0, i64 0), i64 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.113, i64 0, i64 0), i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %215, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3190
  %216 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3190
  %217 = bitcast %struct.utmp_alloc* %26 to i8*, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 32, i1 false), !dbg !3190
  br label %218, !dbg !3191

218:                                              ; preds = %210, %207
  br label %219, !dbg !3192

219:                                              ; preds = %218, %203, %200, %196
  %220 = bitcast %struct.utmp_alloc* %29 to i8*, !dbg !3193
  %221 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 32, i1 false), !dbg !3193
  call void @finish_utmp(%struct.utmp_alloc* sret(%struct.utmp_alloc) align 8 %28, %struct.utmp_alloc* noundef %29), !dbg !3193
  %222 = bitcast %struct.utmp_alloc* %10 to i8*, !dbg !3193
  %223 = bitcast %struct.utmp_alloc* %28 to i8*, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 32, i1 false), !dbg !3193
  %224 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i32 0, i32 1, !dbg !3194
  %225 = load i64, i64* %224, align 8, !dbg !3194
  %226 = load i64*, i64** %7, align 8, !dbg !3195
  store i64 %225, i64* %226, align 8, !dbg !3196
  %227 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i32 0, i32 0, !dbg !3197
  %228 = load %struct.gl_utmp*, %struct.gl_utmp** %227, align 8, !dbg !3197
  %229 = load %struct.gl_utmp**, %struct.gl_utmp*** %8, align 8, !dbg !3198
  store %struct.gl_utmp* %228, %struct.gl_utmp** %229, align 8, !dbg !3199
  store i32 0, i32* %5, align 4, !dbg !3200
  br label %230, !dbg !3200

230:                                              ; preds = %219, %37
  %231 = load i32, i32* %5, align 4, !dbg !3201
  ret i32 %231, !dbg !3201
}

declare i32 @utmpxname(i8* noundef) #3

declare void @setutxent() #3

declare %struct.utmpx* @getutxent() #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strnlen(i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_utmp(%struct.utmp_alloc* noalias sret(%struct.utmp_alloc) align 8 %0, %struct.utmp_alloc* noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i32 noundef %11, i16 noundef %12, [2 x i64] %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) #4 !dbg !3202 {
  %18 = alloca %struct.timespec, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i16, align 2
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.gl_utmp*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = bitcast %struct.timespec* %18 to [2 x i64]*
  store [2 x i64] %13, [2 x i64]* %44, align 8
  call void @llvm.dbg.declare(metadata %struct.utmp_alloc* %1, metadata !3205, metadata !DIExpression()), !dbg !3206
  store i32 %2, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i8* %3, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !3209, metadata !DIExpression()), !dbg !3210
  store i64 %4, i64* %21, align 8
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i8* %5, i8** %22, align 8
  call void @llvm.dbg.declare(metadata i8** %22, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i64 %6, i64* %23, align 8
  call void @llvm.dbg.declare(metadata i64* %23, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i8* %7, i8** %24, align 8
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i64 %8, i64* %25, align 8
  call void @llvm.dbg.declare(metadata i64* %25, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i8* %9, i8** %26, align 8
  call void @llvm.dbg.declare(metadata i8** %26, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i64 %10, i64* %27, align 8
  call void @llvm.dbg.declare(metadata i64* %27, metadata !3223, metadata !DIExpression()), !dbg !3224
  store i32 %11, i32* %28, align 4
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i16 %12, i16* %29, align 2
  call void @llvm.dbg.declare(metadata i16* %29, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.declare(metadata %struct.timespec* %18, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i64 %14, i64* %30, align 8
  call void @llvm.dbg.declare(metadata i64* %30, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i32 %15, i32* %31, align 4
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3233, metadata !DIExpression()), !dbg !3234
  store i32 %16, i32* %32, align 4
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.declare(metadata i32* %33, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i32 72, i32* %33, align 4, !dbg !3238
  call void @llvm.dbg.declare(metadata i64* %34, metadata !3239, metadata !DIExpression()), !dbg !3240
  %45 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3241
  %46 = load i64, i64* %45, align 8, !dbg !3241
  %47 = load i32, i32* %33, align 4, !dbg !3242
  %48 = sext i32 %47 to i64, !dbg !3242
  %49 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 1, !dbg !3243
  %50 = load i64, i64* %49, align 8, !dbg !3243
  %51 = mul nsw i64 %48, %50, !dbg !3244
  %52 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3245
  %53 = load i64, i64* %52, align 8, !dbg !3245
  %54 = add nsw i64 %51, %53, !dbg !3246
  %55 = sub nsw i64 %46, %54, !dbg !3247
  store i64 %55, i64* %34, align 8, !dbg !3240
  call void @llvm.dbg.declare(metadata i64* %35, metadata !3248, metadata !DIExpression()), !dbg !3249
  %56 = load i64, i64* %21, align 8, !dbg !3250
  %57 = add nsw i64 %56, 1, !dbg !3251
  %58 = load i64, i64* %23, align 8, !dbg !3252
  %59 = add nsw i64 %58, 1, !dbg !3253
  %60 = add nsw i64 %57, %59, !dbg !3254
  %61 = load i64, i64* %25, align 8, !dbg !3255
  %62 = add nsw i64 %61, 1, !dbg !3256
  %63 = add nsw i64 %60, %62, !dbg !3257
  %64 = load i64, i64* %27, align 8, !dbg !3258
  %65 = add nsw i64 %64, 1, !dbg !3259
  %66 = add nsw i64 %63, %65, !dbg !3260
  store i64 %66, i64* %35, align 8, !dbg !3249
  call void @llvm.dbg.declare(metadata i64* %36, metadata !3261, metadata !DIExpression()), !dbg !3262
  %67 = load i32, i32* %33, align 4, !dbg !3263
  %68 = sext i32 %67 to i64, !dbg !3263
  %69 = load i64, i64* %35, align 8, !dbg !3264
  %70 = add nsw i64 %68, %69, !dbg !3265
  store i64 %70, i64* %36, align 8, !dbg !3262
  %71 = load i64, i64* %34, align 8, !dbg !3266
  %72 = load i64, i64* %36, align 8, !dbg !3268
  %73 = icmp slt i64 %71, %72, !dbg !3269
  br i1 %73, label %74, label %105, !dbg !3270

74:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata i64* %37, metadata !3271, metadata !DIExpression()), !dbg !3273
  %75 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3274
  %76 = load i64, i64* %75, align 8, !dbg !3274
  %77 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3275
  %78 = load i64, i64* %77, align 8, !dbg !3275
  %79 = sub nsw i64 %76, %78, !dbg !3276
  store i64 %79, i64* %37, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata i8** %38, metadata !3277, metadata !DIExpression()), !dbg !3278
  %80 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3279
  %81 = load %struct.gl_utmp*, %struct.gl_utmp** %80, align 8, !dbg !3279
  %82 = bitcast %struct.gl_utmp* %81 to i8*, !dbg !3280
  %83 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3281
  %84 = load i64, i64* %36, align 8, !dbg !3282
  %85 = load i64, i64* %34, align 8, !dbg !3283
  %86 = sub nsw i64 %84, %85, !dbg !3284
  %87 = call nonnull i8* @xpalloc(i8* noundef %82, i64* noundef %83, i64 noundef %86, i64 noundef -1, i64 noundef 1), !dbg !3285
  store i8* %87, i8** %38, align 8, !dbg !3278
  call void @llvm.dbg.declare(metadata i64* %39, metadata !3286, metadata !DIExpression()), !dbg !3287
  %88 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3288
  %89 = load i64, i64* %88, align 8, !dbg !3288
  %90 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3289
  %91 = load i64, i64* %90, align 8, !dbg !3289
  %92 = sub nsw i64 %89, %91, !dbg !3290
  store i64 %92, i64* %39, align 8, !dbg !3287
  %93 = load i8*, i8** %38, align 8, !dbg !3291
  %94 = bitcast i8* %93 to %struct.gl_utmp*, !dbg !3291
  %95 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3292
  store %struct.gl_utmp* %94, %struct.gl_utmp** %95, align 8, !dbg !3293
  call void @llvm.dbg.declare(metadata i8** %40, metadata !3294, metadata !DIExpression()), !dbg !3295
  %96 = load i8*, i8** %38, align 8, !dbg !3296
  store i8* %96, i8** %40, align 8, !dbg !3295
  %97 = load i8*, i8** %40, align 8, !dbg !3297
  %98 = load i64, i64* %39, align 8, !dbg !3298
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3299
  %100 = load i8*, i8** %40, align 8, !dbg !3300
  %101 = load i64, i64* %37, align 8, !dbg !3301
  %102 = getelementptr inbounds i8, i8* %100, i64 %101, !dbg !3302
  %103 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3303
  %104 = load i64, i64* %103, align 8, !dbg !3303
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %102, i64 %104, i1 false), !dbg !3304
  br label %105, !dbg !3305

105:                                              ; preds = %74, %17
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %41, metadata !3306, metadata !DIExpression()), !dbg !3307
  %106 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3308
  %107 = load %struct.gl_utmp*, %struct.gl_utmp** %106, align 8, !dbg !3308
  %108 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 1, !dbg !3309
  %109 = load i64, i64* %108, align 8, !dbg !3309
  %110 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %107, i64 %109, !dbg !3310
  store %struct.gl_utmp* %110, %struct.gl_utmp** %41, align 8, !dbg !3307
  call void @llvm.dbg.declare(metadata i8** %42, metadata !3311, metadata !DIExpression()), !dbg !3312
  %111 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3313
  %112 = load %struct.gl_utmp*, %struct.gl_utmp** %111, align 8, !dbg !3313
  %113 = bitcast %struct.gl_utmp* %112 to i8*, !dbg !3314
  %114 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3315
  %115 = load i64, i64* %114, align 8, !dbg !3315
  %116 = getelementptr inbounds i8, i8* %113, i64 %115, !dbg !3316
  store i8* %116, i8** %42, align 8, !dbg !3312
  call void @llvm.dbg.declare(metadata i8** %43, metadata !3317, metadata !DIExpression()), !dbg !3318
  %117 = load i8*, i8** %42, align 8, !dbg !3319
  %118 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3320
  %119 = load i64, i64* %118, align 8, !dbg !3320
  %120 = sub i64 0, %119, !dbg !3321
  %121 = getelementptr inbounds i8, i8* %117, i64 %120, !dbg !3321
  store i8* %121, i8** %43, align 8, !dbg !3318
  %122 = load i8*, i8** %43, align 8, !dbg !3322
  %123 = getelementptr inbounds i8, i8* %122, i32 -1, !dbg !3322
  store i8* %123, i8** %43, align 8, !dbg !3322
  store i8 0, i8* %123, align 1, !dbg !3323
  %124 = load i8*, i8** %43, align 8, !dbg !3324
  %125 = load i64, i64* %21, align 8, !dbg !3325
  %126 = sub i64 0, %125, !dbg !3326
  %127 = getelementptr inbounds i8, i8* %124, i64 %126, !dbg !3326
  %128 = load i8*, i8** %20, align 8, !dbg !3327
  %129 = load i64, i64* %21, align 8, !dbg !3328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %127, i8* align 1 %128, i64 %129, i1 false), !dbg !3329
  store i8* %127, i8** %43, align 8, !dbg !3330
  %130 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3331
  %131 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %130, i32 0, i32 0, !dbg !3332
  store i8* %127, i8** %131, align 8, !dbg !3333
  %132 = load i8*, i8** %43, align 8, !dbg !3334
  %133 = getelementptr inbounds i8, i8* %132, i32 -1, !dbg !3334
  store i8* %133, i8** %43, align 8, !dbg !3334
  store i8 0, i8* %133, align 1, !dbg !3335
  %134 = load i8*, i8** %43, align 8, !dbg !3336
  %135 = load i64, i64* %23, align 8, !dbg !3337
  %136 = sub i64 0, %135, !dbg !3338
  %137 = getelementptr inbounds i8, i8* %134, i64 %136, !dbg !3338
  %138 = load i8*, i8** %22, align 8, !dbg !3339
  %139 = load i64, i64* %23, align 8, !dbg !3340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %137, i8* align 1 %138, i64 %139, i1 false), !dbg !3341
  store i8* %137, i8** %43, align 8, !dbg !3342
  %140 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3343
  %141 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %140, i32 0, i32 1, !dbg !3344
  store i8* %137, i8** %141, align 8, !dbg !3345
  %142 = load i8*, i8** %43, align 8, !dbg !3346
  %143 = getelementptr inbounds i8, i8* %142, i32 -1, !dbg !3346
  store i8* %143, i8** %43, align 8, !dbg !3346
  store i8 0, i8* %143, align 1, !dbg !3347
  %144 = load i8*, i8** %43, align 8, !dbg !3348
  %145 = load i64, i64* %25, align 8, !dbg !3349
  %146 = sub i64 0, %145, !dbg !3350
  %147 = getelementptr inbounds i8, i8* %144, i64 %146, !dbg !3350
  %148 = load i8*, i8** %24, align 8, !dbg !3351
  %149 = load i64, i64* %25, align 8, !dbg !3352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %147, i8* align 1 %148, i64 %149, i1 false), !dbg !3353
  store i8* %147, i8** %43, align 8, !dbg !3354
  %150 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3355
  %151 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %150, i32 0, i32 2, !dbg !3356
  store i8* %147, i8** %151, align 8, !dbg !3357
  %152 = load i8*, i8** %43, align 8, !dbg !3358
  %153 = getelementptr inbounds i8, i8* %152, i32 -1, !dbg !3358
  store i8* %153, i8** %43, align 8, !dbg !3358
  store i8 0, i8* %153, align 1, !dbg !3359
  %154 = load i8*, i8** %43, align 8, !dbg !3360
  %155 = load i64, i64* %27, align 8, !dbg !3361
  %156 = sub i64 0, %155, !dbg !3362
  %157 = getelementptr inbounds i8, i8* %154, i64 %156, !dbg !3362
  %158 = load i8*, i8** %26, align 8, !dbg !3363
  %159 = load i64, i64* %27, align 8, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %157, i8* align 1 %158, i64 %159, i1 false), !dbg !3365
  %160 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3366
  %161 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %160, i32 0, i32 3, !dbg !3367
  store i8* %157, i8** %161, align 8, !dbg !3368
  %162 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3369
  %163 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %162, i32 0, i32 4, !dbg !3370
  %164 = bitcast %struct.timespec* %163 to i8*, !dbg !3371
  %165 = bitcast %struct.timespec* %18 to i8*, !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 16, i1 false), !dbg !3371
  %166 = load i32, i32* %28, align 4, !dbg !3372
  %167 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3373
  %168 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %167, i32 0, i32 5, !dbg !3374
  store i32 %166, i32* %168, align 8, !dbg !3375
  %169 = load i64, i64* %30, align 8, !dbg !3376
  %170 = trunc i64 %169 to i32, !dbg !3376
  %171 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3377
  %172 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %171, i32 0, i32 6, !dbg !3378
  store i32 %170, i32* %172, align 4, !dbg !3379
  %173 = load i16, i16* %29, align 2, !dbg !3380
  %174 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3381
  %175 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %174, i32 0, i32 7, !dbg !3382
  store i16 %173, i16* %175, align 8, !dbg !3383
  %176 = load i32, i32* %31, align 4, !dbg !3384
  %177 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3385
  %178 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %177, i32 0, i32 8, !dbg !3386
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0, !dbg !3387
  store i32 %176, i32* %179, align 4, !dbg !3388
  %180 = load i32, i32* %32, align 4, !dbg !3389
  %181 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3390
  %182 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %181, i32 0, i32 8, !dbg !3391
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %182, i32 0, i32 1, !dbg !3392
  store i32 %180, i32* %183, align 4, !dbg !3393
  %184 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3394
  %185 = load i32, i32* %19, align 4, !dbg !3396
  %186 = call i1 @desirable_utmp_entry(%struct.gl_utmp* noundef %184, i32 noundef %185), !dbg !3397
  br i1 %186, label %187, label %235, !dbg !3398

187:                                              ; preds = %105
  %188 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3399
  %189 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %188, i32 0, i32 0, !dbg !3401
  %190 = load i8*, i8** %189, align 8, !dbg !3401
  %191 = load i8*, i8** %42, align 8, !dbg !3402
  %192 = ptrtoint i8* %190 to i64, !dbg !3403
  %193 = ptrtoint i8* %191 to i64, !dbg !3403
  %194 = sub i64 %192, %193, !dbg !3403
  %195 = inttoptr i64 %194 to i8*, !dbg !3404
  %196 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3405
  %197 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %196, i32 0, i32 0, !dbg !3406
  store i8* %195, i8** %197, align 8, !dbg !3407
  %198 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3408
  %199 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %198, i32 0, i32 1, !dbg !3409
  %200 = load i8*, i8** %199, align 8, !dbg !3409
  %201 = load i8*, i8** %42, align 8, !dbg !3410
  %202 = ptrtoint i8* %200 to i64, !dbg !3411
  %203 = ptrtoint i8* %201 to i64, !dbg !3411
  %204 = sub i64 %202, %203, !dbg !3411
  %205 = inttoptr i64 %204 to i8*, !dbg !3412
  %206 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3413
  %207 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %206, i32 0, i32 1, !dbg !3414
  store i8* %205, i8** %207, align 8, !dbg !3415
  %208 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3416
  %209 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %208, i32 0, i32 2, !dbg !3417
  %210 = load i8*, i8** %209, align 8, !dbg !3417
  %211 = load i8*, i8** %42, align 8, !dbg !3418
  %212 = ptrtoint i8* %210 to i64, !dbg !3419
  %213 = ptrtoint i8* %211 to i64, !dbg !3419
  %214 = sub i64 %212, %213, !dbg !3419
  %215 = inttoptr i64 %214 to i8*, !dbg !3420
  %216 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3421
  %217 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %216, i32 0, i32 2, !dbg !3422
  store i8* %215, i8** %217, align 8, !dbg !3423
  %218 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3424
  %219 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %218, i32 0, i32 3, !dbg !3425
  %220 = load i8*, i8** %219, align 8, !dbg !3425
  %221 = load i8*, i8** %42, align 8, !dbg !3426
  %222 = ptrtoint i8* %220 to i64, !dbg !3427
  %223 = ptrtoint i8* %221 to i64, !dbg !3427
  %224 = sub i64 %222, %223, !dbg !3427
  %225 = inttoptr i64 %224 to i8*, !dbg !3428
  %226 = load %struct.gl_utmp*, %struct.gl_utmp** %41, align 8, !dbg !3429
  %227 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %226, i32 0, i32 3, !dbg !3430
  store i8* %225, i8** %227, align 8, !dbg !3431
  %228 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 1, !dbg !3432
  %229 = load i64, i64* %228, align 8, !dbg !3433
  %230 = add nsw i64 %229, 1, !dbg !3433
  store i64 %230, i64* %228, align 8, !dbg !3433
  %231 = load i64, i64* %35, align 8, !dbg !3434
  %232 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 2, !dbg !3435
  %233 = load i64, i64* %232, align 8, !dbg !3436
  %234 = add nsw i64 %233, %231, !dbg !3436
  store i64 %234, i64* %232, align 8, !dbg !3436
  br label %235, !dbg !3437

235:                                              ; preds = %187, %105
  %236 = bitcast %struct.utmp_alloc* %0 to i8*, !dbg !3438
  %237 = bitcast %struct.utmp_alloc* %1 to i8*, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 32, i1 false), !dbg !3438
  ret void, !dbg !3439
}

declare void @endutxent() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @have_boot_time(%struct.utmp_alloc* noundef %0) #4 !dbg !3440 {
  %2 = alloca i1, align 1
  %3 = alloca i64, align 8
  %4 = alloca %struct.gl_utmp*, align 8
  call void @llvm.dbg.declare(metadata %struct.utmp_alloc* %0, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3445, metadata !DIExpression()), !dbg !3447
  store i64 0, i64* %3, align 8, !dbg !3447
  br label %5, !dbg !3448

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %3, align 8, !dbg !3449
  %7 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %0, i32 0, i32 1, !dbg !3451
  %8 = load i64, i64* %7, align 8, !dbg !3451
  %9 = icmp slt i64 %6, %8, !dbg !3452
  br i1 %9, label %10, label %25, !dbg !3453

10:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %4, metadata !3454, metadata !DIExpression()), !dbg !3456
  %11 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %0, i32 0, i32 0, !dbg !3457
  %12 = load %struct.gl_utmp*, %struct.gl_utmp** %11, align 8, !dbg !3457
  %13 = load i64, i64* %3, align 8, !dbg !3458
  %14 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %12, i64 %13, !dbg !3459
  store %struct.gl_utmp* %14, %struct.gl_utmp** %4, align 8, !dbg !3456
  %15 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3460
  %16 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %15, i32 0, i32 7, !dbg !3460
  %17 = load i16, i16* %16, align 8, !dbg !3460
  %18 = sext i16 %17 to i32, !dbg !3460
  %19 = icmp eq i32 %18, 2, !dbg !3460
  br i1 %19, label %20, label %21, !dbg !3462

20:                                               ; preds = %10
  store i1 true, i1* %2, align 1, !dbg !3463
  br label %26, !dbg !3463

21:                                               ; preds = %10
  br label %22, !dbg !3464

22:                                               ; preds = %21
  %23 = load i64, i64* %3, align 8, !dbg !3465
  %24 = add nsw i64 %23, 1, !dbg !3465
  store i64 %24, i64* %3, align 8, !dbg !3465
  br label %5, !dbg !3466, !llvm.loop !3467

25:                                               ; preds = %5
  store i1 false, i1* %2, align 1, !dbg !3469
  br label %26, !dbg !3469

26:                                               ; preds = %25, %20
  %27 = load i1, i1* %2, align 1, !dbg !3470
  ret i1 %27, !dbg !3470
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_linux_boot_time_fallback(%struct.timespec* noundef %0) #4 !dbg !3471 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca [4 x i8*], align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.timespec, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %3, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata [4 x i8*]* %4, metadata !3478, metadata !DIExpression()), !dbg !3480
  %9 = bitcast [4 x i8*]* %4 to i8*, !dbg !3480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast ([4 x i8*]* @__const.get_linux_boot_time_fallback.boot_touched_files to i8*), i64 32, i1 false), !dbg !3480
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3481, metadata !DIExpression()), !dbg !3483
  store i64 0, i64* %5, align 8, !dbg !3483
  br label %10, !dbg !3484

10:                                               ; preds = %32, %1
  %11 = load i64, i64* %5, align 8, !dbg !3485
  %12 = icmp ult i64 %11, 4, !dbg !3487
  br i1 %12, label %13, label %35, !dbg !3488

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3489, metadata !DIExpression()), !dbg !3491
  %14 = load i64, i64* %5, align 8, !dbg !3492
  %15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %14, !dbg !3493
  %16 = load i8*, i8** %15, align 8, !dbg !3493
  store i8* %16, i8** %6, align 8, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !3494, metadata !DIExpression()), !dbg !3524
  %17 = load i8*, i8** %6, align 8, !dbg !3525
  %18 = call i32 @stat(i8* noundef %17, %struct.stat* noundef %7) #18, !dbg !3527
  %19 = icmp sge i32 %18, 0, !dbg !3528
  br i1 %19, label %20, label %31, !dbg !3529

20:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.timespec* %8, metadata !3530, metadata !DIExpression()), !dbg !3532
  %21 = call [2 x i64] @get_stat_mtime(%struct.stat* noundef %7) #20, !dbg !3533
  %22 = bitcast %struct.timespec* %8 to [2 x i64]*, !dbg !3533
  store [2 x i64] %21, [2 x i64]* %22, align 8, !dbg !3533
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0, !dbg !3534
  %24 = load i64, i64* %23, align 8, !dbg !3534
  %25 = icmp sge i64 %24, 1122334455, !dbg !3536
  br i1 %25, label %26, label %30, !dbg !3537

26:                                               ; preds = %20
  %27 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3538
  %28 = bitcast %struct.timespec* %27 to i8*, !dbg !3540
  %29 = bitcast %struct.timespec* %8 to i8*, !dbg !3540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false), !dbg !3540
  store i32 0, i32* %2, align 4, !dbg !3541
  br label %36, !dbg !3541

30:                                               ; preds = %20
  br label %31, !dbg !3542

31:                                               ; preds = %30, %13
  br label %32, !dbg !3543

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8, !dbg !3544
  %34 = add nsw i64 %33, 1, !dbg !3544
  store i64 %34, i64* %5, align 8, !dbg !3544
  br label %10, !dbg !3545, !llvm.loop !3546

35:                                               ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !3548
  br label %36, !dbg !3548

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %2, align 4, !dbg !3549
  ret i32 %37, !dbg !3549
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_linux_boot_time_final_fallback(%struct.timespec* noundef %0) #4 !dbg !3550 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %3, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.declare(metadata %struct.timespec* %4, metadata !3553, metadata !DIExpression()), !dbg !3554
  %6 = call i32 @get_linux_uptime(%struct.timespec* noundef %4), !dbg !3555
  %7 = icmp sge i32 %6, 0, !dbg !3557
  br i1 %7, label %8, label %39, !dbg !3558

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !3559, metadata !DIExpression()), !dbg !3561
  %9 = call i32 @timespec_get(%struct.timespec* noundef %5, i32 noundef 1) #18, !dbg !3562
  %10 = icmp ne i32 %9, 0, !dbg !3562
  br i1 %10, label %12, label %11, !dbg !3564

11:                                               ; preds = %8
  store i32 -1, i32* %2, align 4, !dbg !3565
  br label %40, !dbg !3565

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1, !dbg !3566
  %14 = load i64, i64* %13, align 8, !dbg !3566
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3568
  %16 = load i64, i64* %15, align 8, !dbg !3568
  %17 = icmp slt i64 %14, %16, !dbg !3569
  br i1 %17, label %18, label %25, !dbg !3570

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1, !dbg !3571
  %20 = load i64, i64* %19, align 8, !dbg !3573
  %21 = add nsw i64 %20, 1000000000, !dbg !3573
  store i64 %21, i64* %19, align 8, !dbg !3573
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0, !dbg !3574
  %23 = load i64, i64* %22, align 8, !dbg !3575
  %24 = sub nsw i64 %23, 1, !dbg !3575
  store i64 %24, i64* %22, align 8, !dbg !3575
  br label %25, !dbg !3576

25:                                               ; preds = %18, %12
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !3577
  %27 = load i64, i64* %26, align 8, !dbg !3577
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0, !dbg !3578
  %29 = load i64, i64* %28, align 8, !dbg !3579
  %30 = sub nsw i64 %29, %27, !dbg !3579
  store i64 %30, i64* %28, align 8, !dbg !3579
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3580
  %32 = load i64, i64* %31, align 8, !dbg !3580
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1, !dbg !3581
  %34 = load i64, i64* %33, align 8, !dbg !3582
  %35 = sub nsw i64 %34, %32, !dbg !3582
  store i64 %35, i64* %33, align 8, !dbg !3582
  %36 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3583
  %37 = bitcast %struct.timespec* %36 to i8*, !dbg !3584
  %38 = bitcast %struct.timespec* %5 to i8*, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false), !dbg !3584
  store i32 0, i32* %2, align 4, !dbg !3585
  br label %40, !dbg !3585

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !3586
  br label %40, !dbg !3586

40:                                               ; preds = %39, %25, %11
  %41 = load i32, i32* %2, align 4, !dbg !3587
  ret i32 %41, !dbg !3587
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_utmp(%struct.utmp_alloc* noalias sret(%struct.utmp_alloc) align 8 %0, %struct.utmp_alloc* noundef %1) #4 !dbg !3588 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.utmp_alloc* %1, metadata !3591, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3593, metadata !DIExpression()), !dbg !3594
  %5 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3595
  %6 = load %struct.gl_utmp*, %struct.gl_utmp** %5, align 8, !dbg !3595
  %7 = bitcast %struct.gl_utmp* %6 to i8*, !dbg !3596
  %8 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 3, !dbg !3597
  %9 = load i64, i64* %8, align 8, !dbg !3597
  %10 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !3598
  store i8* %10, i8** %3, align 8, !dbg !3594
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3599, metadata !DIExpression()), !dbg !3601
  store i64 0, i64* %4, align 8, !dbg !3601
  br label %11, !dbg !3602

11:                                               ; preds = %73, %2
  %12 = load i64, i64* %4, align 8, !dbg !3603
  %13 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 1, !dbg !3605
  %14 = load i64, i64* %13, align 8, !dbg !3605
  %15 = icmp slt i64 %12, %14, !dbg !3606
  br i1 %15, label %16, label %76, !dbg !3607

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3608
  %18 = load %struct.gl_utmp*, %struct.gl_utmp** %17, align 8, !dbg !3608
  %19 = load i64, i64* %4, align 8, !dbg !3610
  %20 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %18, i64 %19, !dbg !3611
  %21 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %20, i32 0, i32 0, !dbg !3612
  %22 = load i8*, i8** %21, align 8, !dbg !3612
  %23 = ptrtoint i8* %22 to i64, !dbg !3613
  %24 = load i8*, i8** %3, align 8, !dbg !3614
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !3615
  %26 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3616
  %27 = load %struct.gl_utmp*, %struct.gl_utmp** %26, align 8, !dbg !3616
  %28 = load i64, i64* %4, align 8, !dbg !3617
  %29 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %27, i64 %28, !dbg !3618
  %30 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %29, i32 0, i32 0, !dbg !3619
  store i8* %25, i8** %30, align 8, !dbg !3620
  %31 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3621
  %32 = load %struct.gl_utmp*, %struct.gl_utmp** %31, align 8, !dbg !3621
  %33 = load i64, i64* %4, align 8, !dbg !3622
  %34 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %32, i64 %33, !dbg !3623
  %35 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %34, i32 0, i32 1, !dbg !3624
  %36 = load i8*, i8** %35, align 8, !dbg !3624
  %37 = ptrtoint i8* %36 to i64, !dbg !3625
  %38 = load i8*, i8** %3, align 8, !dbg !3626
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !3627
  %40 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3628
  %41 = load %struct.gl_utmp*, %struct.gl_utmp** %40, align 8, !dbg !3628
  %42 = load i64, i64* %4, align 8, !dbg !3629
  %43 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %41, i64 %42, !dbg !3630
  %44 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %43, i32 0, i32 1, !dbg !3631
  store i8* %39, i8** %44, align 8, !dbg !3632
  %45 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3633
  %46 = load %struct.gl_utmp*, %struct.gl_utmp** %45, align 8, !dbg !3633
  %47 = load i64, i64* %4, align 8, !dbg !3634
  %48 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %46, i64 %47, !dbg !3635
  %49 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %48, i32 0, i32 2, !dbg !3636
  %50 = load i8*, i8** %49, align 8, !dbg !3636
  %51 = ptrtoint i8* %50 to i64, !dbg !3637
  %52 = load i8*, i8** %3, align 8, !dbg !3638
  %53 = getelementptr inbounds i8, i8* %52, i64 %51, !dbg !3639
  %54 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3640
  %55 = load %struct.gl_utmp*, %struct.gl_utmp** %54, align 8, !dbg !3640
  %56 = load i64, i64* %4, align 8, !dbg !3641
  %57 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %55, i64 %56, !dbg !3642
  %58 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %57, i32 0, i32 2, !dbg !3643
  store i8* %53, i8** %58, align 8, !dbg !3644
  %59 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3645
  %60 = load %struct.gl_utmp*, %struct.gl_utmp** %59, align 8, !dbg !3645
  %61 = load i64, i64* %4, align 8, !dbg !3646
  %62 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %60, i64 %61, !dbg !3647
  %63 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %62, i32 0, i32 3, !dbg !3648
  %64 = load i8*, i8** %63, align 8, !dbg !3648
  %65 = ptrtoint i8* %64 to i64, !dbg !3649
  %66 = load i8*, i8** %3, align 8, !dbg !3650
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !3651
  %68 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i32 0, i32 0, !dbg !3652
  %69 = load %struct.gl_utmp*, %struct.gl_utmp** %68, align 8, !dbg !3652
  %70 = load i64, i64* %4, align 8, !dbg !3653
  %71 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %69, i64 %70, !dbg !3654
  %72 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %71, i32 0, i32 3, !dbg !3655
  store i8* %67, i8** %72, align 8, !dbg !3656
  br label %73, !dbg !3657

73:                                               ; preds = %16
  %74 = load i64, i64* %4, align 8, !dbg !3658
  %75 = add nsw i64 %74, 1, !dbg !3658
  store i64 %75, i64* %4, align 8, !dbg !3658
  br label %11, !dbg !3659, !llvm.loop !3660

76:                                               ; preds = %11
  %77 = bitcast %struct.utmp_alloc* %0 to i8*, !dbg !3662
  %78 = bitcast %struct.utmp_alloc* %1 to i8*, !dbg !3662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 32, i1 false), !dbg !3662
  ret void, !dbg !3663
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_linux_uptime(%struct.timespec* noundef %0) #4 !dbg !3664 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [33 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysinfo, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %3, metadata !3665, metadata !DIExpression()), !dbg !3666
  %12 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3667
  %13 = call i32 @clock_gettime(i32 noundef 7, %struct.timespec* noundef %12) #18, !dbg !3669
  %14 = icmp sge i32 %13, 0, !dbg !3670
  br i1 %14, label %15, label %16, !dbg !3671

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !3672
  br label %117, !dbg !3672

16:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !3673, metadata !DIExpression()), !dbg !3723
  %17 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.115, i64 0, i64 0)), !dbg !3724
  store %struct._IO_FILE* %17, %struct._IO_FILE** %4, align 8, !dbg !3723
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3725
  %19 = icmp ne %struct._IO_FILE* %18, null, !dbg !3727
  br i1 %19, label %20, label %106, !dbg !3728

20:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !3729, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3735, metadata !DIExpression()), !dbg !3736
  %21 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !3737
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3737
  %23 = call i64 @fread_unlocked(i8* noundef %21, i64 noundef 1, i64 noundef 32, %struct._IO_FILE* noundef %22), !dbg !3737
  store i64 %23, i64* %6, align 8, !dbg !3736
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3738
  %25 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %24), !dbg !3739
  %26 = load i64, i64* %6, align 8, !dbg !3740
  %27 = icmp ugt i64 %26, 0, !dbg !3742
  br i1 %27, label %28, label %105, !dbg !3743

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8, !dbg !3744
  %30 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 %29, !dbg !3746
  store i8 0, i8* %30, align 1, !dbg !3747
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3748, metadata !DIExpression()), !dbg !3751
  store i64 0, i64* %7, align 8, !dbg !3751
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3752, metadata !DIExpression()), !dbg !3753
  %31 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !3754
  store i8* %31, i8** %8, align 8, !dbg !3756
  br label %32, !dbg !3757

32:                                               ; preds = %53, %28
  %33 = load i8*, i8** %8, align 8, !dbg !3758
  %34 = load i8, i8* %33, align 1, !dbg !3760
  %35 = zext i8 %34 to i32, !dbg !3760
  %36 = icmp sle i32 48, %35, !dbg !3761
  br i1 %36, label %37, label %42, !dbg !3762

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8, !dbg !3763
  %39 = load i8, i8* %38, align 1, !dbg !3764
  %40 = zext i8 %39 to i32, !dbg !3764
  %41 = icmp sle i32 %40, 57, !dbg !3765
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ], !dbg !3766
  br i1 %43, label %44, label %56, !dbg !3767

44:                                               ; preds = %42
  %45 = load i64, i64* %7, align 8, !dbg !3768
  %46 = mul nsw i64 10, %45, !dbg !3769
  %47 = load i8*, i8** %8, align 8, !dbg !3770
  %48 = load i8, i8* %47, align 1, !dbg !3771
  %49 = zext i8 %48 to i32, !dbg !3771
  %50 = sub nsw i32 %49, 48, !dbg !3772
  %51 = sext i32 %50 to i64, !dbg !3773
  %52 = add nsw i64 %46, %51, !dbg !3774
  store i64 %52, i64* %7, align 8, !dbg !3775
  br label %53, !dbg !3776

53:                                               ; preds = %44
  %54 = load i8*, i8** %8, align 8, !dbg !3777
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !3777
  store i8* %55, i8** %8, align 8, !dbg !3777
  br label %32, !dbg !3778, !llvm.loop !3779

56:                                               ; preds = %42
  %57 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !3781
  %58 = load i8*, i8** %8, align 8, !dbg !3783
  %59 = icmp ult i8* %57, %58, !dbg !3784
  br i1 %59, label %60, label %104, !dbg !3785

60:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3786, metadata !DIExpression()), !dbg !3788
  store i64 0, i64* %9, align 8, !dbg !3788
  %61 = load i8*, i8** %8, align 8, !dbg !3789
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !3789
  store i8* %62, i8** %8, align 8, !dbg !3789
  %63 = load i8, i8* %61, align 1, !dbg !3791
  %64 = zext i8 %63 to i32, !dbg !3791
  %65 = icmp eq i32 %64, 46, !dbg !3792
  br i1 %65, label %66, label %97, !dbg !3793

66:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3794, metadata !DIExpression()), !dbg !3796
  store i32 0, i32* %10, align 4, !dbg !3796
  br label %67, !dbg !3797

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %10, align 4, !dbg !3798
  %69 = icmp slt i32 %68, 9, !dbg !3800
  br i1 %69, label %70, label %96, !dbg !3801

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8, !dbg !3802
  %72 = mul nsw i64 10, %71, !dbg !3803
  %73 = load i8*, i8** %8, align 8, !dbg !3804
  %74 = load i8, i8* %73, align 1, !dbg !3805
  %75 = zext i8 %74 to i32, !dbg !3805
  %76 = icmp sle i32 48, %75, !dbg !3806
  br i1 %76, label %77, label %88, !dbg !3807

77:                                               ; preds = %70
  %78 = load i8*, i8** %8, align 8, !dbg !3808
  %79 = load i8, i8* %78, align 1, !dbg !3809
  %80 = zext i8 %79 to i32, !dbg !3809
  %81 = icmp sle i32 %80, 57, !dbg !3810
  br i1 %81, label %82, label %88, !dbg !3811

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8, !dbg !3812
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !3812
  store i8* %84, i8** %8, align 8, !dbg !3812
  %85 = load i8, i8* %83, align 1, !dbg !3813
  %86 = zext i8 %85 to i32, !dbg !3813
  %87 = sub nsw i32 %86, 48, !dbg !3814
  br label %89, !dbg !3811

88:                                               ; preds = %77, %70
  br label %89, !dbg !3811

89:                                               ; preds = %88, %82
  %90 = phi i32 [ %87, %82 ], [ 0, %88 ], !dbg !3811
  %91 = sext i32 %90 to i64, !dbg !3815
  %92 = add nsw i64 %72, %91, !dbg !3816
  store i64 %92, i64* %9, align 8, !dbg !3817
  br label %93, !dbg !3818

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4, !dbg !3819
  %95 = add nsw i32 %94, 1, !dbg !3819
  store i32 %95, i32* %10, align 4, !dbg !3819
  br label %67, !dbg !3820, !llvm.loop !3821

96:                                               ; preds = %67
  br label %97, !dbg !3822

97:                                               ; preds = %96, %60
  %98 = load i64, i64* %7, align 8, !dbg !3823
  %99 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3824
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %99, i32 0, i32 0, !dbg !3825
  store i64 %98, i64* %100, align 8, !dbg !3826
  %101 = load i64, i64* %9, align 8, !dbg !3827
  %102 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3828
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %102, i32 0, i32 1, !dbg !3829
  store i64 %101, i64* %103, align 8, !dbg !3830
  store i32 0, i32* %2, align 4, !dbg !3831
  br label %117, !dbg !3831

104:                                              ; preds = %56
  br label %105, !dbg !3832

105:                                              ; preds = %104, %20
  br label %106, !dbg !3833

106:                                              ; preds = %105, %16
  call void @llvm.dbg.declare(metadata %struct.sysinfo* %11, metadata !3834, metadata !DIExpression()), !dbg !3862
  %107 = call i32 @sysinfo(%struct.sysinfo* noundef %11) #18, !dbg !3863
  %108 = icmp sge i32 %107, 0, !dbg !3865
  br i1 %108, label %109, label %116, !dbg !3866

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %11, i32 0, i32 0, !dbg !3867
  %111 = load i64, i64* %110, align 8, !dbg !3867
  %112 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3869
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i32 0, i32 0, !dbg !3870
  store i64 %111, i64* %113, align 8, !dbg !3871
  %114 = load %struct.timespec*, %struct.timespec** %3, align 8, !dbg !3872
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %114, i32 0, i32 1, !dbg !3873
  store i64 0, i64* %115, align 8, !dbg !3874
  store i32 0, i32* %2, align 4, !dbg !3875
  br label %117, !dbg !3875

116:                                              ; preds = %106
  store i32 -1, i32* %2, align 4, !dbg !3876
  br label %117, !dbg !3876

117:                                              ; preds = %116, %109, %97, %15
  %118 = load i32, i32* %2, align 4, !dbg !3877
  ret i32 %118, !dbg !3877
}

; Function Attrs: nounwind
declare i32 @timespec_get(%struct.timespec* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #2

declare i64 @fread_unlocked(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo* noundef) #2

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @desirable_utmp_entry(%struct.gl_utmp* noundef %0, i32 noundef %1) #4 !dbg !3878 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.gl_utmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.gl_utmp* %0, %struct.gl_utmp** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gl_utmp** %4, metadata !3881, metadata !DIExpression()), !dbg !3882
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3883, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3885, metadata !DIExpression()), !dbg !3886
  %8 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3887
  %9 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %8, i32 0, i32 7, !dbg !3887
  %10 = load i16, i16* %9, align 8, !dbg !3887
  %11 = sext i16 %10 to i32, !dbg !3887
  %12 = icmp eq i32 %11, 2, !dbg !3887
  %13 = zext i1 %12 to i8, !dbg !3886
  store i8 %13, i8* %6, align 1, !dbg !3886
  %14 = load i32, i32* %5, align 4, !dbg !3888
  %15 = and i32 %14, 4, !dbg !3890
  %16 = icmp ne i32 %15, 0, !dbg !3890
  br i1 %16, label %17, label %21, !dbg !3891

17:                                               ; preds = %2
  %18 = load i8, i8* %6, align 1, !dbg !3892
  %19 = trunc i8 %18 to i1, !dbg !3892
  br i1 %19, label %21, label %20, !dbg !3893

20:                                               ; preds = %17
  store i1 false, i1* %3, align 1, !dbg !3894
  br label %77, !dbg !3894

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %5, align 4, !dbg !3895
  %23 = and i32 %22, 8, !dbg !3897
  %24 = icmp ne i32 %23, 0, !dbg !3897
  br i1 %24, label %25, label %29, !dbg !3898

25:                                               ; preds = %21
  %26 = load i8, i8* %6, align 1, !dbg !3899
  %27 = trunc i8 %26 to i1, !dbg !3899
  br i1 %27, label %28, label %29, !dbg !3900

28:                                               ; preds = %25
  store i1 false, i1* %3, align 1, !dbg !3901
  br label %77, !dbg !3901

29:                                               ; preds = %25, %21
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3902, metadata !DIExpression()), !dbg !3903
  %30 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3904
  %31 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %30, i32 0, i32 0, !dbg !3904
  %32 = load i8*, i8** %31, align 8, !dbg !3904
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3904
  %34 = load i8, i8* %33, align 1, !dbg !3904
  %35 = zext i8 %34 to i32, !dbg !3904
  %36 = icmp ne i32 %35, 0, !dbg !3904
  br i1 %36, label %37, label %43, !dbg !3904

37:                                               ; preds = %29
  %38 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3904
  %39 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %38, i32 0, i32 7, !dbg !3904
  %40 = load i16, i16* %39, align 8, !dbg !3904
  %41 = sext i16 %40 to i32, !dbg !3904
  %42 = icmp eq i32 %41, 7, !dbg !3904
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i1 [ false, %29 ], [ %42, %37 ], !dbg !3905
  %45 = zext i1 %44 to i8, !dbg !3903
  store i8 %45, i8* %7, align 1, !dbg !3903
  %46 = load i32, i32* %5, align 4, !dbg !3906
  %47 = and i32 %46, 2, !dbg !3908
  %48 = icmp ne i32 %47, 0, !dbg !3908
  br i1 %48, label %49, label %53, !dbg !3909

49:                                               ; preds = %43
  %50 = load i8, i8* %7, align 1, !dbg !3910
  %51 = trunc i8 %50 to i1, !dbg !3910
  br i1 %51, label %53, label %52, !dbg !3911

52:                                               ; preds = %49
  store i1 false, i1* %3, align 1, !dbg !3912
  br label %77, !dbg !3912

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %5, align 4, !dbg !3913
  %55 = and i32 %54, 1, !dbg !3915
  %56 = icmp ne i32 %55, 0, !dbg !3915
  br i1 %56, label %57, label %76, !dbg !3916

57:                                               ; preds = %53
  %58 = load i8, i8* %7, align 1, !dbg !3917
  %59 = trunc i8 %58 to i1, !dbg !3917
  br i1 %59, label %60, label %76, !dbg !3918

60:                                               ; preds = %57
  %61 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3919
  %62 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %61, i32 0, i32 5, !dbg !3919
  %63 = load i32, i32* %62, align 8, !dbg !3919
  %64 = icmp slt i32 0, %63, !dbg !3920
  br i1 %64, label %65, label %76, !dbg !3921

65:                                               ; preds = %60
  %66 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !3922
  %67 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %66, i32 0, i32 5, !dbg !3922
  %68 = load i32, i32* %67, align 8, !dbg !3922
  %69 = call i32 @kill(i32 noundef %68, i32 noundef 0) #18, !dbg !3923
  %70 = icmp slt i32 %69, 0, !dbg !3924
  br i1 %70, label %71, label %76, !dbg !3925

71:                                               ; preds = %65
  %72 = call i32* @__errno_location() #21, !dbg !3926
  %73 = load i32, i32* %72, align 4, !dbg !3926
  %74 = icmp eq i32 %73, 3, !dbg !3927
  br i1 %74, label %75, label %76, !dbg !3928

75:                                               ; preds = %71
  store i1 false, i1* %3, align 1, !dbg !3929
  br label %77, !dbg !3929

76:                                               ; preds = %71, %65, %60, %57, %53
  store i1 true, i1* %3, align 1, !dbg !3930
  br label %77, !dbg !3930

77:                                               ; preds = %76, %75, %52, %28, %20
  %78 = load i1, i1* %3, align 1, !dbg !3931
  ret i1 %78, !dbg !3931
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_atime_ns(%struct.stat* noundef %0) #12 !dbg !3932 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !3960, metadata !DIExpression()), !dbg !3961
  %3 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !3962
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12, !dbg !3962
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3963
  %6 = load i64, i64* %5, align 8, !dbg !3963
  ret i64 %6, !dbg !3964
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_ctime_ns(%struct.stat* noundef %0) #12 !dbg !3965 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !3966, metadata !DIExpression()), !dbg !3967
  %3 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !3968
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 14, !dbg !3968
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3969
  %6 = load i64, i64* %5, align 8, !dbg !3969
  ret i64 %6, !dbg !3970
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_mtime_ns(%struct.stat* noundef %0) #12 !dbg !3971 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !3972, metadata !DIExpression()), !dbg !3973
  %3 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !3974
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 13, !dbg !3974
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3975
  %6 = load i64, i64* %5, align 8, !dbg !3975
  ret i64 %6, !dbg !3976
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_birthtime_ns(%struct.stat* noundef %0) #12 !dbg !3977 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !3978, metadata !DIExpression()), !dbg !3979
  ret i64 0, !dbg !3980
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_atime(%struct.stat* noundef %0) #12 !dbg !3981 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !3984, metadata !DIExpression()), !dbg !3985
  %4 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3986
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !3986
  %6 = bitcast %struct.timespec* %2 to i8*, !dbg !3986
  %7 = bitcast %struct.timespec* %5 to i8*, !dbg !3986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !3986
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3987
  %9 = load [2 x i64], [2 x i64]* %8, align 8, !dbg !3987
  ret [2 x i64] %9, !dbg !3987
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_ctime(%struct.stat* noundef %0) #12 !dbg !3988 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !3989, metadata !DIExpression()), !dbg !3990
  %4 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3991
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 14, !dbg !3991
  %6 = bitcast %struct.timespec* %2 to i8*, !dbg !3991
  %7 = bitcast %struct.timespec* %5 to i8*, !dbg !3991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !3991
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3992
  %9 = load [2 x i64], [2 x i64]* %8, align 8, !dbg !3992
  ret [2 x i64] %9, !dbg !3992
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_mtime(%struct.stat* noundef %0) #12 !dbg !3993 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !3994, metadata !DIExpression()), !dbg !3995
  %4 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3996
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 13, !dbg !3996
  %6 = bitcast %struct.timespec* %2 to i8*, !dbg !3996
  %7 = bitcast %struct.timespec* %5 to i8*, !dbg !3996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !3996
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3997
  %9 = load [2 x i64], [2 x i64]* %8, align 8, !dbg !3997
  ret [2 x i64] %9, !dbg !3997
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_birthtime(%struct.stat* noundef %0) #12 !dbg !3998 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.timespec, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !4001, metadata !DIExpression()), !dbg !4002
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !4003
  store i64 -1, i64* %5, align 8, !dbg !4003
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !4003
  store i64 -1, i64* %6, align 8, !dbg !4003
  %7 = bitcast %struct.timespec* %2 to i8*, !dbg !4003
  %8 = bitcast %struct.timespec* %4 to i8*, !dbg !4003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false), !dbg !4003
  %9 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !4004
  %10 = load [2 x i64], [2 x i64]* %9, align 8, !dbg !4004
  ret [2 x i64] %10, !dbg !4004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_time_normalize(i32 noundef %0, %struct.stat* noundef %1) #4 !dbg !4005 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4009, metadata !DIExpression()), !dbg !4010
  store %struct.stat* %1, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !4011, metadata !DIExpression()), !dbg !4012
  %5 = load i32, i32* %3, align 4, !dbg !4013
  ret i32 %5, !dbg !4014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !4015 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4019, metadata !DIExpression()), !dbg !4020
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4021, metadata !DIExpression()), !dbg !4022
  %5 = load i8*, i8** %3, align 8, !dbg !4023
  %6 = load i8*, i8** %4, align 8, !dbg !4024
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !4025
  %8 = icmp ne i32 %7, 0, !dbg !4026
  %9 = xor i1 %8, true, !dbg !4026
  ret i1 %9, !dbg !4027
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !4028 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4074, metadata !DIExpression()), !dbg !4075
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4076, metadata !DIExpression()), !dbg !4077
  %13 = load i8*, i8** %8, align 8, !dbg !4078
  %14 = icmp ne i8* %13, null, !dbg !4078
  br i1 %14, label %15, label %21, !dbg !4080

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4081
  %17 = load i8*, i8** %8, align 8, !dbg !4082
  %18 = load i8*, i8** %9, align 8, !dbg !4083
  %19 = load i8*, i8** %10, align 8, !dbg !4084
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !4085
  br label %26, !dbg !4085

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4086
  %23 = load i8*, i8** %9, align 8, !dbg !4087
  %24 = load i8*, i8** %10, align 8, !dbg !4088
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.124, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !4089
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4090
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.126, i64 0, i64 0)) #18, !dbg !4091
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !4092
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4093
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.127, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !4093
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4094
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.128, i64 0, i64 0)) #18, !dbg !4095
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.129, i64 0, i64 0)), !dbg !4096
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4097
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.127, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !4097
  %37 = load i64, i64* %12, align 8, !dbg !4098
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
  ], !dbg !4099

38:                                               ; preds = %26
  br label %241, !dbg !4100

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4102
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.130, i64 0, i64 0)) #18, !dbg !4103
  %42 = load i8**, i8*** %11, align 8, !dbg !4104
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !4104
  %44 = load i8*, i8** %43, align 8, !dbg !4104
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !4105
  br label %241, !dbg !4106

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4107
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.131, i64 0, i64 0)) #18, !dbg !4108
  %49 = load i8**, i8*** %11, align 8, !dbg !4109
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !4109
  %51 = load i8*, i8** %50, align 8, !dbg !4109
  %52 = load i8**, i8*** %11, align 8, !dbg !4110
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !4110
  %54 = load i8*, i8** %53, align 8, !dbg !4110
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !4111
  br label %241, !dbg !4112

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4113
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.132, i64 0, i64 0)) #18, !dbg !4114
  %59 = load i8**, i8*** %11, align 8, !dbg !4115
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !4115
  %61 = load i8*, i8** %60, align 8, !dbg !4115
  %62 = load i8**, i8*** %11, align 8, !dbg !4116
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !4116
  %64 = load i8*, i8** %63, align 8, !dbg !4116
  %65 = load i8**, i8*** %11, align 8, !dbg !4117
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !4117
  %67 = load i8*, i8** %66, align 8, !dbg !4117
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !4118
  br label %241, !dbg !4119

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4120
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.133, i64 0, i64 0)) #18, !dbg !4121
  %72 = load i8**, i8*** %11, align 8, !dbg !4122
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !4122
  %74 = load i8*, i8** %73, align 8, !dbg !4122
  %75 = load i8**, i8*** %11, align 8, !dbg !4123
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !4123
  %77 = load i8*, i8** %76, align 8, !dbg !4123
  %78 = load i8**, i8*** %11, align 8, !dbg !4124
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !4124
  %80 = load i8*, i8** %79, align 8, !dbg !4124
  %81 = load i8**, i8*** %11, align 8, !dbg !4125
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !4125
  %83 = load i8*, i8** %82, align 8, !dbg !4125
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !4126
  br label %241, !dbg !4127

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4128
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.134, i64 0, i64 0)) #18, !dbg !4129
  %88 = load i8**, i8*** %11, align 8, !dbg !4130
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !4130
  %90 = load i8*, i8** %89, align 8, !dbg !4130
  %91 = load i8**, i8*** %11, align 8, !dbg !4131
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !4131
  %93 = load i8*, i8** %92, align 8, !dbg !4131
  %94 = load i8**, i8*** %11, align 8, !dbg !4132
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !4132
  %96 = load i8*, i8** %95, align 8, !dbg !4132
  %97 = load i8**, i8*** %11, align 8, !dbg !4133
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !4133
  %99 = load i8*, i8** %98, align 8, !dbg !4133
  %100 = load i8**, i8*** %11, align 8, !dbg !4134
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !4134
  %102 = load i8*, i8** %101, align 8, !dbg !4134
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !4135
  br label %241, !dbg !4136

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4137
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.135, i64 0, i64 0)) #18, !dbg !4138
  %107 = load i8**, i8*** %11, align 8, !dbg !4139
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !4139
  %109 = load i8*, i8** %108, align 8, !dbg !4139
  %110 = load i8**, i8*** %11, align 8, !dbg !4140
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !4140
  %112 = load i8*, i8** %111, align 8, !dbg !4140
  %113 = load i8**, i8*** %11, align 8, !dbg !4141
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !4141
  %115 = load i8*, i8** %114, align 8, !dbg !4141
  %116 = load i8**, i8*** %11, align 8, !dbg !4142
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !4142
  %118 = load i8*, i8** %117, align 8, !dbg !4142
  %119 = load i8**, i8*** %11, align 8, !dbg !4143
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !4143
  %121 = load i8*, i8** %120, align 8, !dbg !4143
  %122 = load i8**, i8*** %11, align 8, !dbg !4144
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !4144
  %124 = load i8*, i8** %123, align 8, !dbg !4144
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !4145
  br label %241, !dbg !4146

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4147
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.136, i64 0, i64 0)) #18, !dbg !4148
  %129 = load i8**, i8*** %11, align 8, !dbg !4149
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !4149
  %131 = load i8*, i8** %130, align 8, !dbg !4149
  %132 = load i8**, i8*** %11, align 8, !dbg !4150
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !4150
  %134 = load i8*, i8** %133, align 8, !dbg !4150
  %135 = load i8**, i8*** %11, align 8, !dbg !4151
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !4151
  %137 = load i8*, i8** %136, align 8, !dbg !4151
  %138 = load i8**, i8*** %11, align 8, !dbg !4152
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !4152
  %140 = load i8*, i8** %139, align 8, !dbg !4152
  %141 = load i8**, i8*** %11, align 8, !dbg !4153
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !4153
  %143 = load i8*, i8** %142, align 8, !dbg !4153
  %144 = load i8**, i8*** %11, align 8, !dbg !4154
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !4154
  %146 = load i8*, i8** %145, align 8, !dbg !4154
  %147 = load i8**, i8*** %11, align 8, !dbg !4155
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !4155
  %149 = load i8*, i8** %148, align 8, !dbg !4155
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !4156
  br label %241, !dbg !4157

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4158
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.137, i64 0, i64 0)) #18, !dbg !4159
  %154 = load i8**, i8*** %11, align 8, !dbg !4160
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4160
  %156 = load i8*, i8** %155, align 8, !dbg !4160
  %157 = load i8**, i8*** %11, align 8, !dbg !4161
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !4161
  %159 = load i8*, i8** %158, align 8, !dbg !4161
  %160 = load i8**, i8*** %11, align 8, !dbg !4162
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !4162
  %162 = load i8*, i8** %161, align 8, !dbg !4162
  %163 = load i8**, i8*** %11, align 8, !dbg !4163
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !4163
  %165 = load i8*, i8** %164, align 8, !dbg !4163
  %166 = load i8**, i8*** %11, align 8, !dbg !4164
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !4164
  %168 = load i8*, i8** %167, align 8, !dbg !4164
  %169 = load i8**, i8*** %11, align 8, !dbg !4165
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !4165
  %171 = load i8*, i8** %170, align 8, !dbg !4165
  %172 = load i8**, i8*** %11, align 8, !dbg !4166
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !4166
  %174 = load i8*, i8** %173, align 8, !dbg !4166
  %175 = load i8**, i8*** %11, align 8, !dbg !4167
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !4167
  %177 = load i8*, i8** %176, align 8, !dbg !4167
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !4168
  br label %241, !dbg !4169

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4170
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.138, i64 0, i64 0)) #18, !dbg !4171
  %182 = load i8**, i8*** %11, align 8, !dbg !4172
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !4172
  %184 = load i8*, i8** %183, align 8, !dbg !4172
  %185 = load i8**, i8*** %11, align 8, !dbg !4173
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !4173
  %187 = load i8*, i8** %186, align 8, !dbg !4173
  %188 = load i8**, i8*** %11, align 8, !dbg !4174
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !4174
  %190 = load i8*, i8** %189, align 8, !dbg !4174
  %191 = load i8**, i8*** %11, align 8, !dbg !4175
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !4175
  %193 = load i8*, i8** %192, align 8, !dbg !4175
  %194 = load i8**, i8*** %11, align 8, !dbg !4176
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !4176
  %196 = load i8*, i8** %195, align 8, !dbg !4176
  %197 = load i8**, i8*** %11, align 8, !dbg !4177
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4177
  %199 = load i8*, i8** %198, align 8, !dbg !4177
  %200 = load i8**, i8*** %11, align 8, !dbg !4178
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4178
  %202 = load i8*, i8** %201, align 8, !dbg !4178
  %203 = load i8**, i8*** %11, align 8, !dbg !4179
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4179
  %205 = load i8*, i8** %204, align 8, !dbg !4179
  %206 = load i8**, i8*** %11, align 8, !dbg !4180
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4180
  %208 = load i8*, i8** %207, align 8, !dbg !4180
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4181
  br label %241, !dbg !4182

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4183
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.139, i64 0, i64 0)) #18, !dbg !4184
  %213 = load i8**, i8*** %11, align 8, !dbg !4185
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4185
  %215 = load i8*, i8** %214, align 8, !dbg !4185
  %216 = load i8**, i8*** %11, align 8, !dbg !4186
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4186
  %218 = load i8*, i8** %217, align 8, !dbg !4186
  %219 = load i8**, i8*** %11, align 8, !dbg !4187
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4187
  %221 = load i8*, i8** %220, align 8, !dbg !4187
  %222 = load i8**, i8*** %11, align 8, !dbg !4188
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4188
  %224 = load i8*, i8** %223, align 8, !dbg !4188
  %225 = load i8**, i8*** %11, align 8, !dbg !4189
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4189
  %227 = load i8*, i8** %226, align 8, !dbg !4189
  %228 = load i8**, i8*** %11, align 8, !dbg !4190
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4190
  %230 = load i8*, i8** %229, align 8, !dbg !4190
  %231 = load i8**, i8*** %11, align 8, !dbg !4191
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4191
  %233 = load i8*, i8** %232, align 8, !dbg !4191
  %234 = load i8**, i8*** %11, align 8, !dbg !4192
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4192
  %236 = load i8*, i8** %235, align 8, !dbg !4192
  %237 = load i8**, i8*** %11, align 8, !dbg !4193
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4193
  %239 = load i8*, i8** %238, align 8, !dbg !4193
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4194
  br label %241, !dbg !4195

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4197 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4200, metadata !DIExpression()), !dbg !4201
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4202, metadata !DIExpression()), !dbg !4203
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i64 0, i64* %11, align 8, !dbg !4212
  br label %12, !dbg !4214

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4215
  %14 = load i64, i64* %11, align 8, !dbg !4217
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4215
  %16 = load i8*, i8** %15, align 8, !dbg !4215
  %17 = icmp ne i8* %16, null, !dbg !4218
  br i1 %17, label %18, label %22, !dbg !4218

18:                                               ; preds = %12
  br label %19, !dbg !4218

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4219
  %21 = add i64 %20, 1, !dbg !4219
  store i64 %21, i64* %11, align 8, !dbg !4219
  br label %12, !dbg !4220, !llvm.loop !4221

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4223
  %24 = load i8*, i8** %7, align 8, !dbg !4224
  %25 = load i8*, i8** %8, align 8, !dbg !4225
  %26 = load i8*, i8** %9, align 8, !dbg !4226
  %27 = load i8**, i8*** %10, align 8, !dbg !4227
  %28 = load i64, i64* %11, align 8, !dbg !4228
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4229
  ret void, !dbg !4230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4231 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4257, metadata !DIExpression()), !dbg !4259
  store i64 0, i64* %10, align 8, !dbg !4260
  br label %12, !dbg !4262

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4263
  %14 = icmp ult i64 %13, 10, !dbg !4265
  br i1 %14, label %15, label %38, !dbg !4266

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4267
  %17 = load i32, i32* %16, align 8, !dbg !4267
  %18 = icmp sge i32 %17, 0, !dbg !4267
  br i1 %18, label %27, label %19, !dbg !4267

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4267
  store i32 %20, i32* %16, align 8, !dbg !4267
  %21 = icmp sle i32 %20, 0, !dbg !4267
  br i1 %21, label %22, label %27, !dbg !4267

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4267
  %24 = load i8*, i8** %23, align 8, !dbg !4267
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4267
  %26 = bitcast i8* %25 to i8**, !dbg !4267
  br label %32, !dbg !4267

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4267
  %29 = load i8*, i8** %28, align 8, !dbg !4267
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4267
  store i8* %30, i8** %28, align 8, !dbg !4267
  %31 = bitcast i8* %29 to i8**, !dbg !4267
  br label %32, !dbg !4267

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4267
  %34 = load i8*, i8** %33, align 8, !dbg !4267
  %35 = load i64, i64* %10, align 8, !dbg !4268
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4269
  store i8* %34, i8** %36, align 8, !dbg !4270
  %37 = icmp ne i8* %34, null, !dbg !4271
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4272
  br i1 %39, label %40, label %44, !dbg !4273

40:                                               ; preds = %38
  br label %41, !dbg !4273

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4274
  %43 = add i64 %42, 1, !dbg !4274
  store i64 %43, i64* %10, align 8, !dbg !4274
  br label %12, !dbg !4275, !llvm.loop !4276

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4278
  %46 = load i8*, i8** %7, align 8, !dbg !4279
  %47 = load i8*, i8** %8, align 8, !dbg !4280
  %48 = load i8*, i8** %9, align 8, !dbg !4281
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4282
  %50 = load i64, i64* %10, align 8, !dbg !4283
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4284
  ret void, !dbg !4285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4286 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4297, metadata !DIExpression()), !dbg !4298
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4299
  call void @llvm.va_start(i8* %11), !dbg !4299
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4300
  %13 = load i8*, i8** %6, align 8, !dbg !4301
  %14 = load i8*, i8** %7, align 8, !dbg !4302
  %15 = load i8*, i8** %8, align 8, !dbg !4303
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4304
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4304
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4304
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4305
  call void @llvm.va_end(i8* %18), !dbg !4305
  ret void, !dbg !4306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4307 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4308
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.127, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4308
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.144, i64 0, i64 0)) #18, !dbg !4309
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.145, i64 0, i64 0)), !dbg !4310
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.146, i64 0, i64 0)) #18, !dbg !4311
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.148, i64 0, i64 0)), !dbg !4312
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.149, i64 0, i64 0)) #18, !dbg !4313
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.150, i64 0, i64 0)), !dbg !4314
  ret void, !dbg !4315
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4316 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4320, metadata !DIExpression()), !dbg !4321
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4324, metadata !DIExpression()), !dbg !4325
  %7 = load i8*, i8** %4, align 8, !dbg !4326
  %8 = load i64, i64* %5, align 8, !dbg !4327
  %9 = load i64, i64* %6, align 8, !dbg !4328
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !4329
  ret i8* %10, !dbg !4330
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4331 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4336, metadata !DIExpression()), !dbg !4337
  %7 = load i8*, i8** %4, align 8, !dbg !4338
  %8 = load i64, i64* %5, align 8, !dbg !4339
  %9 = load i64, i64* %6, align 8, !dbg !4340
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4341
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4342
  ret i8* %11, !dbg !4343
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4344 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4347, metadata !DIExpression()), !dbg !4348
  %3 = load i8*, i8** %2, align 8, !dbg !4349
  %4 = icmp ne i8* %3, null, !dbg !4349
  br i1 %4, label %6, label %5, !dbg !4351

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4352
  unreachable, !dbg !4352

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4353
  ret i8* %7, !dbg !4354
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4355 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4358, metadata !DIExpression()), !dbg !4359
  %3 = load i64, i64* %2, align 8, !dbg !4360
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4361
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4362
  ret i8* %5, !dbg !4363
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4364 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4367, metadata !DIExpression()), !dbg !4368
  %3 = load i64, i64* %2, align 8, !dbg !4369
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4370
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4371
  ret i8* %5, !dbg !4372
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4373 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4376, metadata !DIExpression()), !dbg !4377
  %3 = load i64, i64* %2, align 8, !dbg !4378
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !4378
  ret i8* %4, !dbg !4379
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4380 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4383, metadata !DIExpression()), !dbg !4384
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4385, metadata !DIExpression()), !dbg !4386
  %5 = load i8*, i8** %3, align 8, !dbg !4387
  %6 = load i64, i64* %4, align 8, !dbg !4388
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4389
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4390
  ret i8* %8, !dbg !4391
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4392 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4395, metadata !DIExpression()), !dbg !4396
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4397, metadata !DIExpression()), !dbg !4398
  %5 = load i8*, i8** %3, align 8, !dbg !4399
  %6 = load i64, i64* %4, align 8, !dbg !4400
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4401
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4402
  ret i8* %8, !dbg !4403
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4404 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4411, metadata !DIExpression()), !dbg !4412
  %7 = load i8*, i8** %4, align 8, !dbg !4413
  %8 = load i64, i64* %5, align 8, !dbg !4414
  %9 = load i64, i64* %6, align 8, !dbg !4415
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4416
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4417
  ret i8* %11, !dbg !4418
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4419 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4422, metadata !DIExpression()), !dbg !4423
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4424, metadata !DIExpression()), !dbg !4425
  %5 = load i64, i64* %3, align 8, !dbg !4426
  %6 = load i64, i64* %4, align 8, !dbg !4427
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4428
  ret i8* %7, !dbg !4429
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4430 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4435, metadata !DIExpression()), !dbg !4436
  %5 = load i64, i64* %3, align 8, !dbg !4437
  %6 = load i64, i64* %4, align 8, !dbg !4438
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4439
  ret i8* %7, !dbg !4440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4441 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4444, metadata !DIExpression()), !dbg !4445
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4446, metadata !DIExpression()), !dbg !4447
  %5 = load i8*, i8** %3, align 8, !dbg !4448
  %6 = load i64*, i64** %4, align 8, !dbg !4449
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4450
  ret i8* %7, !dbg !4451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !297 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4452, metadata !DIExpression()), !dbg !4453
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4454, metadata !DIExpression()), !dbg !4455
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4456, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4458, metadata !DIExpression()), !dbg !4459
  %8 = load i64*, i64** %5, align 8, !dbg !4460
  %9 = load i64, i64* %8, align 8, !dbg !4461
  store i64 %9, i64* %7, align 8, !dbg !4459
  %10 = load i8*, i8** %4, align 8, !dbg !4462
  %11 = icmp ne i8* %10, null, !dbg !4462
  br i1 %11, label %26, label %12, !dbg !4464

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4465
  %14 = icmp ne i64 %13, 0, !dbg !4465
  br i1 %14, label %25, label %15, !dbg !4468

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4469
  %17 = udiv i64 128, %16, !dbg !4471
  store i64 %17, i64* %7, align 8, !dbg !4472
  %18 = load i64, i64* %7, align 8, !dbg !4473
  %19 = icmp ne i64 %18, 0, !dbg !4474
  %20 = xor i1 %19, true, !dbg !4474
  %21 = zext i1 %20 to i32, !dbg !4474
  %22 = sext i32 %21 to i64, !dbg !4474
  %23 = load i64, i64* %7, align 8, !dbg !4475
  %24 = add i64 %23, %22, !dbg !4475
  store i64 %24, i64* %7, align 8, !dbg !4475
  br label %25, !dbg !4476

25:                                               ; preds = %15, %12
  br label %36, !dbg !4477

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4478
  %28 = load i64, i64* %7, align 8, !dbg !4478
  %29 = lshr i64 %28, 1, !dbg !4478
  %30 = add i64 %29, 1, !dbg !4478
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4478
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4478
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4478
  store i64 %33, i64* %7, align 8, !dbg !4478
  br i1 %32, label %34, label %35, !dbg !4481

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4482
  unreachable, !dbg !4482

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4483
  %38 = load i64, i64* %7, align 8, !dbg !4484
  %39 = load i64, i64* %6, align 8, !dbg !4485
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !4486
  store i8* %40, i8** %4, align 8, !dbg !4487
  %41 = load i64, i64* %7, align 8, !dbg !4488
  %42 = load i64*, i64** %5, align 8, !dbg !4489
  store i64 %41, i64* %42, align 8, !dbg !4490
  %43 = load i8*, i8** %4, align 8, !dbg !4491
  ret i8* %43, !dbg !4492
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !304 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4495, metadata !DIExpression()), !dbg !4496
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4499, metadata !DIExpression()), !dbg !4500
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4503, metadata !DIExpression()), !dbg !4504
  %15 = load i64*, i64** %7, align 8, !dbg !4505
  %16 = load i64, i64* %15, align 8, !dbg !4506
  store i64 %16, i64* %11, align 8, !dbg !4504
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4507, metadata !DIExpression()), !dbg !4508
  %17 = load i64, i64* %11, align 8, !dbg !4509
  %18 = load i64, i64* %11, align 8, !dbg !4509
  %19 = ashr i64 %18, 1, !dbg !4509
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4509
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4509
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4509
  store i64 %22, i64* %12, align 8, !dbg !4509
  br i1 %21, label %23, label %24, !dbg !4511

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4512
  br label %24, !dbg !4513

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4514
  %26 = icmp sle i64 0, %25, !dbg !4516
  br i1 %26, label %27, label %33, !dbg !4517

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4518
  %29 = load i64, i64* %12, align 8, !dbg !4519
  %30 = icmp slt i64 %28, %29, !dbg !4520
  br i1 %30, label %31, label %33, !dbg !4521

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4522
  store i64 %32, i64* %12, align 8, !dbg !4523
  br label %33, !dbg !4524

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4525, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4527, metadata !DIExpression()), !dbg !4528
  %34 = load i64, i64* %10, align 8, !dbg !4529
  %35 = icmp slt i64 %34, 0, !dbg !4529
  br i1 %35, label %36, label %82, !dbg !4529

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4529
  %38 = icmp slt i64 %37, 0, !dbg !4529
  br i1 %38, label %39, label %62, !dbg !4529

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4529

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4529
  %42 = load i64, i64* %10, align 8, !dbg !4529
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4529
  %44 = icmp slt i64 %41, %43, !dbg !4529
  br i1 %44, label %111, label %115, !dbg !4529

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4529

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4529
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4529
  br i1 %48, label %52, label %53, !dbg !4529

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4529
  %51 = icmp slt i64 0, %50, !dbg !4529
  br i1 %51, label %52, label %53, !dbg !4529

52:                                               ; preds = %49, %46
  br label %57, !dbg !4529

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4529
  %55 = sub nsw i64 0, %54, !dbg !4529
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4529
  br label %57, !dbg !4529

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4529
  %59 = load i64, i64* %12, align 8, !dbg !4529
  %60 = sub nsw i64 -1, %59, !dbg !4529
  %61 = icmp sle i64 %58, %60, !dbg !4529
  br i1 %61, label %111, label %115, !dbg !4529

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4529
  %64 = icmp eq i64 %63, -1, !dbg !4529
  br i1 %64, label %65, label %77, !dbg !4529

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4529

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4529
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4529
  %69 = icmp slt i64 0, %68, !dbg !4529
  br i1 %69, label %111, label %115, !dbg !4529

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4529
  %72 = icmp slt i64 0, %71, !dbg !4529
  br i1 %72, label %73, label %115, !dbg !4529

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4529
  %75 = sub nsw i64 %74, 1, !dbg !4529
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4529
  br i1 %76, label %111, label %115, !dbg !4529

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4529
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4529
  %80 = load i64, i64* %12, align 8, !dbg !4529
  %81 = icmp slt i64 %79, %80, !dbg !4529
  br i1 %81, label %111, label %115, !dbg !4529

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4529
  %84 = icmp eq i64 %83, 0, !dbg !4529
  br i1 %84, label %85, label %86, !dbg !4529

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4529

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4529
  %88 = icmp slt i64 %87, 0, !dbg !4529
  br i1 %88, label %89, label %106, !dbg !4529

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4529
  %91 = icmp eq i64 %90, -1, !dbg !4529
  br i1 %91, label %92, label %101, !dbg !4529

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4529

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4529
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4529
  %96 = icmp slt i64 0, %95, !dbg !4529
  br i1 %96, label %111, label %115, !dbg !4529

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4529
  %99 = sub nsw i64 %98, 1, !dbg !4529
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4529
  br i1 %100, label %111, label %115, !dbg !4529

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4529
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4529
  %104 = load i64, i64* %10, align 8, !dbg !4529
  %105 = icmp slt i64 %103, %104, !dbg !4529
  br i1 %105, label %111, label %115, !dbg !4529

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4529
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4529
  %109 = load i64, i64* %12, align 8, !dbg !4529
  %110 = icmp slt i64 %108, %109, !dbg !4529
  br i1 %110, label %111, label %115, !dbg !4529

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4529
  %113 = load i64, i64* %10, align 8, !dbg !4529
  %114 = mul i64 %112, %113, !dbg !4529
  store i64 %114, i64* %13, align 8, !dbg !4529
  br label %119, !dbg !4529

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4529
  %117 = load i64, i64* %10, align 8, !dbg !4529
  %118 = mul i64 %116, %117, !dbg !4529
  store i64 %118, i64* %13, align 8, !dbg !4529
  br label %119, !dbg !4529

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4529
  %121 = icmp ne i32 %120, 0, !dbg !4529
  br i1 %121, label %122, label %123, !dbg !4529

122:                                              ; preds = %119
  br label %129, !dbg !4529

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4530
  %125 = icmp slt i64 %124, 128, !dbg !4531
  %126 = zext i1 %125 to i64, !dbg !4530
  %127 = select i1 %125, i32 128, i32 0, !dbg !4530
  %128 = sext i32 %127 to i64, !dbg !4530
  br label %129, !dbg !4529

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4529
  store i64 %130, i64* %14, align 8, !dbg !4528
  %131 = load i64, i64* %14, align 8, !dbg !4532
  %132 = icmp ne i64 %131, 0, !dbg !4532
  br i1 %132, label %133, label %142, !dbg !4534

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4535
  %135 = load i64, i64* %10, align 8, !dbg !4537
  %136 = sdiv i64 %134, %135, !dbg !4538
  store i64 %136, i64* %12, align 8, !dbg !4539
  %137 = load i64, i64* %14, align 8, !dbg !4540
  %138 = load i64, i64* %14, align 8, !dbg !4541
  %139 = load i64, i64* %10, align 8, !dbg !4542
  %140 = srem i64 %138, %139, !dbg !4543
  %141 = sub nsw i64 %137, %140, !dbg !4544
  store i64 %141, i64* %13, align 8, !dbg !4545
  br label %142, !dbg !4546

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4547
  %144 = icmp ne i8* %143, null, !dbg !4547
  br i1 %144, label %147, label %145, !dbg !4549

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4550
  store i64 0, i64* %146, align 8, !dbg !4551
  br label %147, !dbg !4552

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4553
  %149 = load i64, i64* %11, align 8, !dbg !4555
  %150 = sub nsw i64 %148, %149, !dbg !4556
  %151 = load i64, i64* %8, align 8, !dbg !4557
  %152 = icmp slt i64 %150, %151, !dbg !4558
  br i1 %152, label %153, label %256, !dbg !4559

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4560
  %155 = load i64, i64* %8, align 8, !dbg !4560
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4560
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4560
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4560
  store i64 %158, i64* %12, align 8, !dbg !4560
  br i1 %157, label %255, label %159, !dbg !4561

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4562
  %161 = icmp sle i64 0, %160, !dbg !4563
  br i1 %161, label %162, label %166, !dbg !4564

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4565
  %164 = load i64, i64* %12, align 8, !dbg !4566
  %165 = icmp slt i64 %163, %164, !dbg !4567
  br i1 %165, label %255, label %166, !dbg !4568

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4569
  %168 = icmp slt i64 %167, 0, !dbg !4569
  br i1 %168, label %169, label %215, !dbg !4569

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4569
  %171 = icmp slt i64 %170, 0, !dbg !4569
  br i1 %171, label %172, label %195, !dbg !4569

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4569

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4569
  %175 = load i64, i64* %10, align 8, !dbg !4569
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4569
  %177 = icmp slt i64 %174, %176, !dbg !4569
  br i1 %177, label %244, label %248, !dbg !4569

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4569

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4569
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4569
  br i1 %181, label %185, label %186, !dbg !4569

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4569
  %184 = icmp slt i64 0, %183, !dbg !4569
  br i1 %184, label %185, label %186, !dbg !4569

185:                                              ; preds = %182, %179
  br label %190, !dbg !4569

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4569
  %188 = sub nsw i64 0, %187, !dbg !4569
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4569
  br label %190, !dbg !4569

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4569
  %192 = load i64, i64* %12, align 8, !dbg !4569
  %193 = sub nsw i64 -1, %192, !dbg !4569
  %194 = icmp sle i64 %191, %193, !dbg !4569
  br i1 %194, label %244, label %248, !dbg !4569

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4569
  %197 = icmp eq i64 %196, -1, !dbg !4569
  br i1 %197, label %198, label %210, !dbg !4569

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4569

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4569
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4569
  %202 = icmp slt i64 0, %201, !dbg !4569
  br i1 %202, label %244, label %248, !dbg !4569

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4569
  %205 = icmp slt i64 0, %204, !dbg !4569
  br i1 %205, label %206, label %248, !dbg !4569

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4569
  %208 = sub nsw i64 %207, 1, !dbg !4569
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4569
  br i1 %209, label %244, label %248, !dbg !4569

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4569
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4569
  %213 = load i64, i64* %12, align 8, !dbg !4569
  %214 = icmp slt i64 %212, %213, !dbg !4569
  br i1 %214, label %244, label %248, !dbg !4569

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4569
  %217 = icmp eq i64 %216, 0, !dbg !4569
  br i1 %217, label %218, label %219, !dbg !4569

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4569

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4569
  %221 = icmp slt i64 %220, 0, !dbg !4569
  br i1 %221, label %222, label %239, !dbg !4569

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4569
  %224 = icmp eq i64 %223, -1, !dbg !4569
  br i1 %224, label %225, label %234, !dbg !4569

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4569

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4569
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4569
  %229 = icmp slt i64 0, %228, !dbg !4569
  br i1 %229, label %244, label %248, !dbg !4569

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4569
  %232 = sub nsw i64 %231, 1, !dbg !4569
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4569
  br i1 %233, label %244, label %248, !dbg !4569

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4569
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4569
  %237 = load i64, i64* %10, align 8, !dbg !4569
  %238 = icmp slt i64 %236, %237, !dbg !4569
  br i1 %238, label %244, label %248, !dbg !4569

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4569
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4569
  %242 = load i64, i64* %12, align 8, !dbg !4569
  %243 = icmp slt i64 %241, %242, !dbg !4569
  br i1 %243, label %244, label %248, !dbg !4569

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4569
  %246 = load i64, i64* %10, align 8, !dbg !4569
  %247 = mul i64 %245, %246, !dbg !4569
  store i64 %247, i64* %13, align 8, !dbg !4569
  br label %252, !dbg !4569

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4569
  %250 = load i64, i64* %10, align 8, !dbg !4569
  %251 = mul i64 %249, %250, !dbg !4569
  store i64 %251, i64* %13, align 8, !dbg !4569
  br label %252, !dbg !4569

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4569
  %254 = icmp ne i32 %253, 0, !dbg !4569
  br i1 %254, label %255, label %256, !dbg !4570

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4571
  unreachable, !dbg !4571

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4572
  %258 = load i64, i64* %13, align 8, !dbg !4573
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !4574
  store i8* %259, i8** %6, align 8, !dbg !4575
  %260 = load i64, i64* %12, align 8, !dbg !4576
  %261 = load i64*, i64** %7, align 8, !dbg !4577
  store i64 %260, i64* %261, align 8, !dbg !4578
  %262 = load i8*, i8** %6, align 8, !dbg !4579
  ret i8* %262, !dbg !4580
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4581 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4582, metadata !DIExpression()), !dbg !4583
  %3 = load i64, i64* %2, align 8, !dbg !4584
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #23, !dbg !4585
  ret i8* %4, !dbg !4586
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4587 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4590, metadata !DIExpression()), !dbg !4591
  %5 = load i64, i64* %3, align 8, !dbg !4592
  %6 = load i64, i64* %4, align 8, !dbg !4593
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4594
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4595
  ret i8* %8, !dbg !4596
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4597 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4598, metadata !DIExpression()), !dbg !4599
  %3 = load i64, i64* %2, align 8, !dbg !4600
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #23, !dbg !4601
  ret i8* %4, !dbg !4602
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4603 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4604, metadata !DIExpression()), !dbg !4605
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4606, metadata !DIExpression()), !dbg !4607
  %5 = load i64, i64* %3, align 8, !dbg !4608
  %6 = load i64, i64* %4, align 8, !dbg !4609
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4610
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4611
  ret i8* %8, !dbg !4612
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4613 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4616, metadata !DIExpression()), !dbg !4617
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4618, metadata !DIExpression()), !dbg !4619
  %5 = load i64, i64* %4, align 8, !dbg !4620
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !4621
  %7 = load i8*, i8** %3, align 8, !dbg !4622
  %8 = load i64, i64* %4, align 8, !dbg !4623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4624
  ret i8* %6, !dbg !4625
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4626 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4629, metadata !DIExpression()), !dbg !4630
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4631, metadata !DIExpression()), !dbg !4632
  %5 = load i64, i64* %4, align 8, !dbg !4633
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !4634
  %7 = load i8*, i8** %3, align 8, !dbg !4635
  %8 = load i64, i64* %4, align 8, !dbg !4636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4637
  ret i8* %6, !dbg !4638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4639 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4644, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4646, metadata !DIExpression()), !dbg !4647
  %6 = load i64, i64* %4, align 8, !dbg !4648
  %7 = add nsw i64 %6, 1, !dbg !4649
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !4650
  store i8* %8, i8** %5, align 8, !dbg !4647
  %9 = load i8*, i8** %5, align 8, !dbg !4651
  %10 = load i64, i64* %4, align 8, !dbg !4652
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4651
  store i8 0, i8* %11, align 1, !dbg !4653
  %12 = load i8*, i8** %5, align 8, !dbg !4654
  %13 = load i8*, i8** %3, align 8, !dbg !4655
  %14 = load i64, i64* %4, align 8, !dbg !4656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4657
  ret i8* %12, !dbg !4658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4659 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4660, metadata !DIExpression()), !dbg !4661
  %3 = load i8*, i8** %2, align 8, !dbg !4662
  %4 = load i8*, i8** %2, align 8, !dbg !4663
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4664
  %6 = add i64 %5, 1, !dbg !4665
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !4666
  ret i8* %7, !dbg !4667
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4668 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4669, metadata !DIExpression()), !dbg !4672
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4672
  store i32 %2, i32* %1, align 4, !dbg !4672
  %3 = load i32, i32* %1, align 4, !dbg !4672
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.166, i64 0, i64 0)) #18, !dbg !4672
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i64 0, i64 0), i8* noundef %4), !dbg !4672
  %5 = load i32, i32* %1, align 4, !dbg !4672
  %6 = icmp ne i32 %5, 0, !dbg !4672
  br i1 %6, label %7, label %9, !dbg !4672

7:                                                ; preds = %0
  unreachable, !dbg !4672

8:                                                ; No predecessors!
  br label %10, !dbg !4672

9:                                                ; preds = %0
  br label %10, !dbg !4672

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4673
  unreachable, !dbg !4673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #4 !dbg !4674 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [81 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4713, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4715, metadata !DIExpression()), !dbg !4716
  store i32 0, i32* %6, align 4, !dbg !4716
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4717, metadata !DIExpression()), !dbg !4718
  store i32 0, i32* %7, align 4, !dbg !4718
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i8 0, i8* %8, align 1, !dbg !4720
  call void @llvm.dbg.declare(metadata [81 x i8]* %9, metadata !4721, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4726, metadata !DIExpression()), !dbg !4728
  %16 = load i8*, i8** %5, align 8, !dbg !4729
  store i8* %16, i8** %10, align 8, !dbg !4728
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4730, metadata !DIExpression()), !dbg !4731
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4732
  store i8* %17, i8** %11, align 8, !dbg !4731
  br label %18, !dbg !4733

18:                                               ; preds = %120, %2
  %19 = load i8*, i8** %10, align 8, !dbg !4734
  %20 = load i8, i8* %19, align 1, !dbg !4737
  %21 = zext i8 %20 to i32, !dbg !4737
  %22 = icmp ne i32 %21, 0, !dbg !4738
  br i1 %22, label %23, label %123, !dbg !4739

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !4740
  %25 = load i8, i8* %24, align 1, !dbg !4742
  %26 = zext i8 %25 to i32, !dbg !4742
  switch i32 %26, label %94 [
    i32 114, label %27
    i32 119, label %38
    i32 97, label %51
    i32 98, label %64
    i32 43, label %77
    i32 120, label %88
    i32 101, label %91
  ], !dbg !4743

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !4744
  %28 = load i8*, i8** %11, align 8, !dbg !4746
  %29 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4748
  %30 = getelementptr inbounds i8, i8* %29, i64 80, !dbg !4749
  %31 = icmp ult i8* %28, %30, !dbg !4750
  br i1 %31, label %32, label %37, !dbg !4751

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !4752
  %34 = load i8, i8* %33, align 1, !dbg !4753
  %35 = load i8*, i8** %11, align 8, !dbg !4754
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4754
  store i8* %36, i8** %11, align 8, !dbg !4754
  store i8 %34, i8* %35, align 1, !dbg !4755
  br label %37, !dbg !4756

37:                                               ; preds = %32, %27
  br label %120, !dbg !4757

38:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !4758
  %39 = load i32, i32* %7, align 4, !dbg !4759
  %40 = or i32 %39, 576, !dbg !4759
  store i32 %40, i32* %7, align 4, !dbg !4759
  %41 = load i8*, i8** %11, align 8, !dbg !4760
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4762
  %43 = getelementptr inbounds i8, i8* %42, i64 80, !dbg !4763
  %44 = icmp ult i8* %41, %43, !dbg !4764
  br i1 %44, label %45, label %50, !dbg !4765

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8, !dbg !4766
  %47 = load i8, i8* %46, align 1, !dbg !4767
  %48 = load i8*, i8** %11, align 8, !dbg !4768
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !4768
  store i8* %49, i8** %11, align 8, !dbg !4768
  store i8 %47, i8* %48, align 1, !dbg !4769
  br label %50, !dbg !4770

50:                                               ; preds = %45, %38
  br label %120, !dbg !4771

51:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !4772
  %52 = load i32, i32* %7, align 4, !dbg !4773
  %53 = or i32 %52, 1088, !dbg !4773
  store i32 %53, i32* %7, align 4, !dbg !4773
  %54 = load i8*, i8** %11, align 8, !dbg !4774
  %55 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4776
  %56 = getelementptr inbounds i8, i8* %55, i64 80, !dbg !4777
  %57 = icmp ult i8* %54, %56, !dbg !4778
  br i1 %57, label %58, label %63, !dbg !4779

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8, !dbg !4780
  %60 = load i8, i8* %59, align 1, !dbg !4781
  %61 = load i8*, i8** %11, align 8, !dbg !4782
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !4782
  store i8* %62, i8** %11, align 8, !dbg !4782
  store i8 %60, i8* %61, align 1, !dbg !4783
  br label %63, !dbg !4784

63:                                               ; preds = %58, %51
  br label %120, !dbg !4785

64:                                               ; preds = %23
  %65 = load i32, i32* %7, align 4, !dbg !4786
  %66 = or i32 %65, 0, !dbg !4786
  store i32 %66, i32* %7, align 4, !dbg !4786
  %67 = load i8*, i8** %11, align 8, !dbg !4787
  %68 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4789
  %69 = getelementptr inbounds i8, i8* %68, i64 80, !dbg !4790
  %70 = icmp ult i8* %67, %69, !dbg !4791
  br i1 %70, label %71, label %76, !dbg !4792

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8, !dbg !4793
  %73 = load i8, i8* %72, align 1, !dbg !4794
  %74 = load i8*, i8** %11, align 8, !dbg !4795
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !4795
  store i8* %75, i8** %11, align 8, !dbg !4795
  store i8 %73, i8* %74, align 1, !dbg !4796
  br label %76, !dbg !4797

76:                                               ; preds = %71, %64
  br label %120, !dbg !4798

77:                                               ; preds = %23
  store i32 2, i32* %6, align 4, !dbg !4799
  %78 = load i8*, i8** %11, align 8, !dbg !4800
  %79 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4802
  %80 = getelementptr inbounds i8, i8* %79, i64 80, !dbg !4803
  %81 = icmp ult i8* %78, %80, !dbg !4804
  br i1 %81, label %82, label %87, !dbg !4805

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !4806
  %84 = load i8, i8* %83, align 1, !dbg !4807
  %85 = load i8*, i8** %11, align 8, !dbg !4808
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !4808
  store i8* %86, i8** %11, align 8, !dbg !4808
  store i8 %84, i8* %85, align 1, !dbg !4809
  br label %87, !dbg !4810

87:                                               ; preds = %82, %77
  br label %120, !dbg !4811

88:                                               ; preds = %23
  %89 = load i32, i32* %7, align 4, !dbg !4812
  %90 = or i32 %89, 128, !dbg !4812
  store i32 %90, i32* %7, align 4, !dbg !4812
  store i8 1, i8* %8, align 1, !dbg !4813
  br label %120, !dbg !4814

91:                                               ; preds = %23
  %92 = load i32, i32* %7, align 4, !dbg !4815
  %93 = or i32 %92, 524288, !dbg !4815
  store i32 %93, i32* %7, align 4, !dbg !4815
  store i8 1, i8* %8, align 1, !dbg !4816
  br label %120, !dbg !4817

94:                                               ; preds = %23
  br label %95, !dbg !4818

95:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4819, metadata !DIExpression()), !dbg !4821
  %96 = load i8*, i8** %10, align 8, !dbg !4822
  %97 = call i64 @strlen(i8* noundef %96) #20, !dbg !4823
  store i64 %97, i64* %12, align 8, !dbg !4821
  %98 = load i64, i64* %12, align 8, !dbg !4824
  %99 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4826
  %100 = getelementptr inbounds i8, i8* %99, i64 80, !dbg !4827
  %101 = load i8*, i8** %11, align 8, !dbg !4828
  %102 = ptrtoint i8* %100 to i64, !dbg !4829
  %103 = ptrtoint i8* %101 to i64, !dbg !4829
  %104 = sub i64 %102, %103, !dbg !4829
  %105 = icmp ugt i64 %98, %104, !dbg !4830
  br i1 %105, label %106, label %113, !dbg !4831

106:                                              ; preds = %95
  %107 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4832
  %108 = getelementptr inbounds i8, i8* %107, i64 80, !dbg !4833
  %109 = load i8*, i8** %11, align 8, !dbg !4834
  %110 = ptrtoint i8* %108 to i64, !dbg !4835
  %111 = ptrtoint i8* %109 to i64, !dbg !4835
  %112 = sub i64 %110, %111, !dbg !4835
  store i64 %112, i64* %12, align 8, !dbg !4836
  br label %113, !dbg !4837

113:                                              ; preds = %106, %95
  %114 = load i8*, i8** %11, align 8, !dbg !4838
  %115 = load i8*, i8** %10, align 8, !dbg !4839
  %116 = load i64, i64* %12, align 8, !dbg !4840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %115, i64 %116, i1 false), !dbg !4841
  %117 = load i64, i64* %12, align 8, !dbg !4842
  %118 = load i8*, i8** %11, align 8, !dbg !4843
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4843
  store i8* %119, i8** %11, align 8, !dbg !4843
  br label %123, !dbg !4844

120:                                              ; preds = %91, %88, %87, %76, %63, %50, %37
  %121 = load i8*, i8** %10, align 8, !dbg !4845
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !4845
  store i8* %122, i8** %10, align 8, !dbg !4845
  br label %18, !dbg !4846, !llvm.loop !4847

123:                                              ; preds = %113, %18
  %124 = load i8*, i8** %11, align 8, !dbg !4849
  store i8 0, i8* %124, align 1, !dbg !4850
  %125 = load i8, i8* %8, align 1, !dbg !4851
  %126 = trunc i8 %125 to i1, !dbg !4851
  br i1 %126, label %127, label %151, !dbg !4853

127:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4854, metadata !DIExpression()), !dbg !4856
  %128 = load i8*, i8** %4, align 8, !dbg !4857
  %129 = load i32, i32* %6, align 4, !dbg !4858
  %130 = load i32, i32* %7, align 4, !dbg !4859
  %131 = or i32 %129, %130, !dbg !4860
  %132 = call i32 (i8*, i32, ...) @open(i8* noundef %128, i32 noundef %131, i32 noundef 438), !dbg !4861
  store i32 %132, i32* %13, align 4, !dbg !4856
  %133 = load i32, i32* %13, align 4, !dbg !4862
  %134 = icmp slt i32 %133, 0, !dbg !4864
  br i1 %134, label %135, label %136, !dbg !4865

135:                                              ; preds = %127
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !4866
  br label %156, !dbg !4866

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !4867, metadata !DIExpression()), !dbg !4868
  %137 = load i32, i32* %13, align 4, !dbg !4869
  %138 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4870
  %139 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %137, i8* noundef %138) #18, !dbg !4871
  store %struct._IO_FILE* %139, %struct._IO_FILE** %14, align 8, !dbg !4868
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !4872
  %141 = icmp eq %struct._IO_FILE* %140, null, !dbg !4874
  br i1 %141, label %142, label %149, !dbg !4875

142:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4876, metadata !DIExpression()), !dbg !4878
  %143 = call i32* @__errno_location() #21, !dbg !4879
  %144 = load i32, i32* %143, align 4, !dbg !4879
  store i32 %144, i32* %15, align 4, !dbg !4878
  %145 = load i32, i32* %13, align 4, !dbg !4880
  %146 = call i32 @close(i32 noundef %145), !dbg !4881
  %147 = load i32, i32* %15, align 4, !dbg !4882
  %148 = call i32* @__errno_location() #21, !dbg !4883
  store i32 %147, i32* %148, align 4, !dbg !4884
  br label %149, !dbg !4885

149:                                              ; preds = %142, %136
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !4886
  store %struct._IO_FILE* %150, %struct._IO_FILE** %3, align 8, !dbg !4887
  br label %156, !dbg !4887

151:                                              ; preds = %123
  %152 = load i32, i32* %6, align 4, !dbg !4888
  %153 = load i8*, i8** %4, align 8, !dbg !4889
  %154 = load i8*, i8** %5, align 8, !dbg !4890
  %155 = call %struct._IO_FILE* @orig_fopen(i8* noundef %153, i8* noundef %154), !dbg !4891
  store %struct._IO_FILE* %155, %struct._IO_FILE** %3, align 8, !dbg !4892
  br label %156, !dbg !4892

156:                                              ; preds = %151, %149, %135
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4893
  ret %struct._IO_FILE* %157, !dbg !4893
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @orig_fopen(i8* noundef %0, i8* noundef %1) #4 !dbg !4894 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4897, metadata !DIExpression()), !dbg !4898
  %5 = load i8*, i8** %3, align 8, !dbg !4899
  %6 = load i8*, i8** %4, align 8, !dbg !4900
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef %6), !dbg !4901
  ret %struct._IO_FILE* %7, !dbg !4902
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4903 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4909, metadata !DIExpression()), !dbg !4910
  %3 = load i32, i32* %2, align 4, !dbg !4911
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !4912
  ret i32 %4, !dbg !4913
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4914 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4953, metadata !DIExpression()), !dbg !4955
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4956
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !4957
  %9 = icmp ne i64 %8, 0, !dbg !4958
  %10 = zext i1 %9 to i8, !dbg !4955
  store i8 %10, i8* %4, align 1, !dbg !4955
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4959, metadata !DIExpression()), !dbg !4960
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4961
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !4961
  %13 = icmp ne i32 %12, 0, !dbg !4962
  %14 = zext i1 %13 to i8, !dbg !4960
  store i8 %14, i8* %5, align 1, !dbg !4960
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4963, metadata !DIExpression()), !dbg !4964
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4965
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4966
  %17 = icmp ne i32 %16, 0, !dbg !4967
  %18 = zext i1 %17 to i8, !dbg !4964
  store i8 %18, i8* %6, align 1, !dbg !4964
  %19 = load i8, i8* %5, align 1, !dbg !4968
  %20 = trunc i8 %19 to i1, !dbg !4968
  br i1 %20, label %31, label %21, !dbg !4970

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4971
  %23 = trunc i8 %22 to i1, !dbg !4971
  br i1 %23, label %24, label %37, !dbg !4972

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4973
  %26 = trunc i8 %25 to i1, !dbg !4973
  br i1 %26, label %31, label %27, !dbg !4974

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !4975
  %29 = load i32, i32* %28, align 4, !dbg !4975
  %30 = icmp ne i32 %29, 9, !dbg !4976
  br i1 %30, label %31, label %37, !dbg !4977

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4978
  %33 = trunc i8 %32 to i1, !dbg !4978
  br i1 %33, label %36, label %34, !dbg !4981

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !4982
  store i32 0, i32* %35, align 4, !dbg !4983
  br label %36, !dbg !4982

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4984
  br label %38, !dbg !4984

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4985
  br label %38, !dbg !4985

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4986
  ret i32 %39, !dbg !4986
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4987 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i32 0, i32* %4, align 4, !dbg !5027
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5028, metadata !DIExpression()), !dbg !5029
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5030
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !5031
  store i32 %8, i32* %5, align 4, !dbg !5029
  %9 = load i32, i32* %5, align 4, !dbg !5032
  %10 = icmp slt i32 %9, 0, !dbg !5034
  br i1 %10, label %11, label %14, !dbg !5035

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5036
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !5037
  store i32 %13, i32* %2, align 4, !dbg !5038
  br label %40, !dbg !5038

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5039
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !5039
  %17 = icmp ne i32 %16, 0, !dbg !5039
  br i1 %17, label %18, label %23, !dbg !5041

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5042
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !5043
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !5044
  %22 = icmp ne i64 %21, -1, !dbg !5045
  br i1 %22, label %23, label %30, !dbg !5046

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5047
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !5048
  %26 = icmp ne i32 %25, 0, !dbg !5048
  br i1 %26, label %27, label %30, !dbg !5049

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !5050
  %29 = load i32, i32* %28, align 4, !dbg !5050
  store i32 %29, i32* %4, align 4, !dbg !5051
  br label %30, !dbg !5052

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5053, metadata !DIExpression()), !dbg !5054
  store i32 0, i32* %6, align 4, !dbg !5054
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5055
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !5056
  store i32 %32, i32* %6, align 4, !dbg !5057
  %33 = load i32, i32* %4, align 4, !dbg !5058
  %34 = icmp ne i32 %33, 0, !dbg !5060
  br i1 %34, label %35, label %38, !dbg !5061

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !5062
  %37 = call i32* @__errno_location() #21, !dbg !5064
  store i32 %36, i32* %37, align 4, !dbg !5065
  store i32 -1, i32* %6, align 4, !dbg !5066
  br label %38, !dbg !5067

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !5068
  store i32 %39, i32* %2, align 4, !dbg !5069
  br label %40, !dbg !5069

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !5070
  ret i32 %41, !dbg !5070
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !5071 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5108, metadata !DIExpression()), !dbg !5109
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5110
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !5112
  br i1 %5, label %10, label %6, !dbg !5113

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5114
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !5114
  %9 = icmp ne i32 %8, 0, !dbg !5114
  br i1 %9, label %13, label %10, !dbg !5115

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5116
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !5117
  store i32 %12, i32* %2, align 4, !dbg !5118
  br label %17, !dbg !5118

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5119
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !5120
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5121
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !5122
  store i32 %16, i32* %2, align 4, !dbg !5123
  br label %17, !dbg !5123

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !5124
  ret i32 %18, !dbg !5124
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !5125 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !5128, metadata !DIExpression()), !dbg !5129
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5130
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !5132
  %5 = load i32, i32* %4, align 8, !dbg !5132
  %6 = and i32 %5, 256, !dbg !5133
  %7 = icmp ne i32 %6, 0, !dbg !5133
  br i1 %7, label %8, label %11, !dbg !5134

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5135
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !5136
  br label %11, !dbg !5136

11:                                               ; preds = %8, %1
  ret void, !dbg !5137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !5138 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !5176, metadata !DIExpression()), !dbg !5177
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5178, metadata !DIExpression()), !dbg !5179
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5180, metadata !DIExpression()), !dbg !5181
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5182
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !5184
  %11 = load i8*, i8** %10, align 8, !dbg !5184
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5185
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !5186
  %14 = load i8*, i8** %13, align 8, !dbg !5186
  %15 = icmp eq i8* %11, %14, !dbg !5187
  br i1 %15, label %16, label %46, !dbg !5188

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5189
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !5190
  %19 = load i8*, i8** %18, align 8, !dbg !5190
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5191
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !5192
  %22 = load i8*, i8** %21, align 8, !dbg !5192
  %23 = icmp eq i8* %19, %22, !dbg !5193
  br i1 %23, label %24, label %46, !dbg !5194

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5195
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !5196
  %27 = load i8*, i8** %26, align 8, !dbg !5196
  %28 = icmp eq i8* %27, null, !dbg !5197
  br i1 %28, label %29, label %46, !dbg !5198

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5199, metadata !DIExpression()), !dbg !5201
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5202
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !5203
  %32 = load i64, i64* %6, align 8, !dbg !5204
  %33 = load i32, i32* %7, align 4, !dbg !5205
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !5206
  store i64 %34, i64* %8, align 8, !dbg !5201
  %35 = load i64, i64* %8, align 8, !dbg !5207
  %36 = icmp eq i64 %35, -1, !dbg !5209
  br i1 %36, label %37, label %38, !dbg !5210

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !5211
  br label %51, !dbg !5211

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5213
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !5214
  %41 = load i32, i32* %40, align 8, !dbg !5215
  %42 = and i32 %41, -17, !dbg !5215
  store i32 %42, i32* %40, align 8, !dbg !5215
  %43 = load i64, i64* %8, align 8, !dbg !5216
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5217
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !5218
  store i64 %43, i64* %45, align 8, !dbg !5219
  store i32 0, i32* %4, align 4, !dbg !5220
  br label %51, !dbg !5220

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5221
  %48 = load i64, i64* %6, align 8, !dbg !5222
  %49 = load i32, i32* %7, align 4, !dbg !5223
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !5224
  store i32 %50, i32* %4, align 4, !dbg !5225
  br label %51, !dbg !5225

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !5226
  ret i32 %52, !dbg !5226
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !5227 {
  %1 = call i32* @__errno_location() #21, !dbg !5230
  store i32 12, i32* %1, align 4, !dbg !5231
  ret i8* null, !dbg !5232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5233 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5234, metadata !DIExpression()), !dbg !5235
  %3 = load i64, i64* %2, align 8, !dbg !5236
  %4 = icmp ule i64 %3, -1, !dbg !5237
  br i1 %4, label %5, label %8, !dbg !5236

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5238
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !5239
  br label %10, !dbg !5236

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !5240
  br label %10, !dbg !5236

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5236
  ret i8* %11, !dbg !5241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5242 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5245, metadata !DIExpression()), !dbg !5246
  %5 = load i64, i64* %4, align 8, !dbg !5247
  %6 = icmp ule i64 %5, -1, !dbg !5248
  br i1 %6, label %7, label %11, !dbg !5247

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5249
  %9 = load i64, i64* %4, align 8, !dbg !5250
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5251
  br label %13, !dbg !5247

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5252
  br label %13, !dbg !5247

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5247
  ret i8* %14, !dbg !5253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5254 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5255, metadata !DIExpression()), !dbg !5256
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5257, metadata !DIExpression()), !dbg !5258
  %6 = load i64, i64* %4, align 8, !dbg !5259
  %7 = icmp ult i64 -1, %6, !dbg !5261
  br i1 %7, label %8, label %14, !dbg !5262

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5263
  %10 = icmp ne i64 %9, 0, !dbg !5266
  br i1 %10, label %11, label %13, !dbg !5267

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5268
  store i8* %12, i8** %3, align 8, !dbg !5269
  br label %27, !dbg !5269

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5270
  br label %14, !dbg !5271

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5272
  %16 = icmp ult i64 -1, %15, !dbg !5274
  br i1 %16, label %17, label %23, !dbg !5275

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5276
  %19 = icmp ne i64 %18, 0, !dbg !5279
  br i1 %19, label %20, label %22, !dbg !5280

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !5281
  store i8* %21, i8** %3, align 8, !dbg !5282
  br label %27, !dbg !5282

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5283
  br label %23, !dbg !5284

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5285
  %25 = load i64, i64* %5, align 8, !dbg !5286
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !5287
  store i8* %26, i8** %3, align 8, !dbg !5288
  br label %27, !dbg !5288

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5289
  ret i8* %28, !dbg !5289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5290 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5295, metadata !DIExpression()), !dbg !5296
  %7 = load i64, i64* %5, align 8, !dbg !5297
  %8 = icmp ule i64 %7, -1, !dbg !5298
  br i1 %8, label %9, label %17, !dbg !5299

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5300
  %11 = icmp ule i64 %10, -1, !dbg !5301
  br i1 %11, label %12, label %17, !dbg !5297

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5302
  %14 = load i64, i64* %5, align 8, !dbg !5303
  %15 = load i64, i64* %6, align 8, !dbg !5304
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5305
  br label %19, !dbg !5297

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !5306
  br label %19, !dbg !5297

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5297
  ret i8* %20, !dbg !5307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5308 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5317, metadata !DIExpression()), !dbg !5318
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5319, metadata !DIExpression()), !dbg !5320
  %11 = load i8*, i8** %7, align 8, !dbg !5321
  %12 = icmp eq i8* %11, null, !dbg !5323
  br i1 %12, label %13, label %14, !dbg !5324

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5325
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), i8** %7, align 8, !dbg !5327
  store i64 1, i64* %8, align 8, !dbg !5328
  br label %14, !dbg !5329

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5330
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5332
  br i1 %16, label %17, label %18, !dbg !5333

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5334
  br label %18, !dbg !5335

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5336, metadata !DIExpression()), !dbg !5337
  %19 = load i32*, i32** %6, align 8, !dbg !5338
  %20 = load i8*, i8** %7, align 8, !dbg !5339
  %21 = load i64, i64* %8, align 8, !dbg !5340
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5341
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !5342
  store i64 %23, i64* %10, align 8, !dbg !5337
  %24 = load i64, i64* %10, align 8, !dbg !5343
  %25 = icmp ult i64 %24, -3, !dbg !5345
  br i1 %25, label %26, label %32, !dbg !5346

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5347
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !5348
  %29 = icmp ne i32 %28, 0, !dbg !5348
  br i1 %29, label %32, label %30, !dbg !5349

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5350
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5351
  br label %32, !dbg !5351

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5352
  %34 = icmp eq i64 %33, -3, !dbg !5354
  br i1 %34, label %35, label %36, !dbg !5355

35:                                               ; preds = %32
  call void @abort() #19, !dbg !5356
  unreachable, !dbg !5356

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5357
  %38 = icmp ule i64 -2, %37, !dbg !5359
  br i1 %38, label %39, label %53, !dbg !5360

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5361
  %41 = icmp ne i64 %40, 0, !dbg !5362
  br i1 %41, label %42, label %53, !dbg !5363

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5364
  br i1 %43, label %53, label %44, !dbg !5365

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5366
  %46 = icmp ne i32* %45, null, !dbg !5369
  br i1 %46, label %47, label %52, !dbg !5370

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5371
  %49 = load i8, i8* %48, align 1, !dbg !5372
  %50 = zext i8 %49 to i32, !dbg !5373
  %51 = load i32*, i32** %6, align 8, !dbg !5374
  store i32 %50, i32* %51, align 4, !dbg !5375
  br label %52, !dbg !5376

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5377
  br label %55, !dbg !5377

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5378
  store i64 %54, i64* %5, align 8, !dbg !5379
  br label %55, !dbg !5379

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5380
  ret i64 %56, !dbg !5380
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5381 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5396, metadata !DIExpression()), !dbg !5397
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5398
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5399
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5399
  ret void, !dbg !5400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5401 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5404, metadata !DIExpression()), !dbg !5405
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5408, metadata !DIExpression()), !dbg !5409
  %7 = load i8*, i8** %4, align 8, !dbg !5410
  %8 = load i8*, i8** %5, align 8, !dbg !5411
  %9 = load i64, i64* %6, align 8, !dbg !5412
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !5413
  %11 = icmp ne i32 %10, 0, !dbg !5414
  %12 = xor i1 %11, true, !dbg !5414
  ret i1 %12, !dbg !5415
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5416 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5418, metadata !DIExpression()), !dbg !5419
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5420, metadata !DIExpression()), !dbg !5421
  %5 = load i8*, i8** %3, align 8, !dbg !5422
  %6 = load i64, i64* %4, align 8, !dbg !5423
  %7 = icmp ne i64 %6, 0, !dbg !5423
  br i1 %7, label %8, label %10, !dbg !5423

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5424
  br label %11, !dbg !5423

10:                                               ; preds = %2
  br label %11, !dbg !5423

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5423
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !5425
  ret i8* %13, !dbg !5426
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5427 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5428, metadata !DIExpression()), !dbg !5429
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5434, metadata !DIExpression()), !dbg !5435
  %9 = load i64, i64* %7, align 8, !dbg !5436
  %10 = icmp ult i64 %9, 0, !dbg !5436
  br i1 %10, label %11, label %60, !dbg !5436

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5436
  %13 = icmp ult i64 %12, 0, !dbg !5436
  br i1 %13, label %14, label %37, !dbg !5436

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5436

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5436
  %17 = load i64, i64* %7, align 8, !dbg !5436
  %18 = udiv i64 -1, %17, !dbg !5436
  %19 = icmp ult i64 %16, %18, !dbg !5436
  br i1 %19, label %92, label %96, !dbg !5436

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5436

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5436
  %23 = icmp ult i64 %22, 1, !dbg !5436
  br i1 %23, label %27, label %28, !dbg !5436

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5436
  %26 = icmp ult i64 0, %25, !dbg !5436
  br i1 %26, label %27, label %28, !dbg !5436

27:                                               ; preds = %24, %21
  br label %32, !dbg !5436

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5436
  %30 = sub i64 0, %29, !dbg !5436
  %31 = udiv i64 -1, %30, !dbg !5436
  br label %32, !dbg !5436

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5436
  %34 = load i64, i64* %6, align 8, !dbg !5436
  %35 = sub i64 -1, %34, !dbg !5436
  %36 = icmp ule i64 %33, %35, !dbg !5436
  br i1 %36, label %92, label %96, !dbg !5436

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5436

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5436

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5436

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5436
  %42 = icmp eq i64 %41, -1, !dbg !5436
  br i1 %42, label %43, label %55, !dbg !5436

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5436

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5436
  %46 = add i64 %45, 0, !dbg !5436
  %47 = icmp ult i64 0, %46, !dbg !5436
  br i1 %47, label %92, label %96, !dbg !5436

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5436
  %50 = icmp ult i64 0, %49, !dbg !5436
  br i1 %50, label %51, label %96, !dbg !5436

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5436
  %53 = sub i64 %52, 1, !dbg !5436
  %54 = icmp ult i64 -1, %53, !dbg !5436
  br i1 %54, label %92, label %96, !dbg !5436

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5436
  %57 = udiv i64 0, %56, !dbg !5436
  %58 = load i64, i64* %6, align 8, !dbg !5436
  %59 = icmp ult i64 %57, %58, !dbg !5436
  br i1 %59, label %92, label %96, !dbg !5436

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5436
  %62 = icmp eq i64 %61, 0, !dbg !5436
  br i1 %62, label %63, label %64, !dbg !5436

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5436

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5436
  %66 = icmp ult i64 %65, 0, !dbg !5436
  br i1 %66, label %67, label %87, !dbg !5436

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5436

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5436

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5436

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5436
  %72 = icmp eq i64 %71, -1, !dbg !5436
  br i1 %72, label %73, label %82, !dbg !5436

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5436

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5436
  %76 = add i64 %75, 0, !dbg !5436
  %77 = icmp ult i64 0, %76, !dbg !5436
  br i1 %77, label %92, label %96, !dbg !5436

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5436
  %80 = sub i64 %79, 1, !dbg !5436
  %81 = icmp ult i64 -1, %80, !dbg !5436
  br i1 %81, label %92, label %96, !dbg !5436

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5436
  %84 = udiv i64 0, %83, !dbg !5436
  %85 = load i64, i64* %7, align 8, !dbg !5436
  %86 = icmp ult i64 %84, %85, !dbg !5436
  br i1 %86, label %92, label %96, !dbg !5436

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5436
  %89 = udiv i64 -1, %88, !dbg !5436
  %90 = load i64, i64* %6, align 8, !dbg !5436
  %91 = icmp ult i64 %89, %90, !dbg !5436
  br i1 %91, label %92, label %96, !dbg !5436

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5436
  %94 = load i64, i64* %7, align 8, !dbg !5436
  %95 = mul i64 %93, %94, !dbg !5436
  store i64 %95, i64* %8, align 8, !dbg !5436
  br label %100, !dbg !5436

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5436
  %98 = load i64, i64* %7, align 8, !dbg !5436
  %99 = mul i64 %97, %98, !dbg !5436
  store i64 %99, i64* %8, align 8, !dbg !5436
  br label %100, !dbg !5436

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5436
  %102 = icmp ne i32 %101, 0, !dbg !5436
  br i1 %102, label %103, label %105, !dbg !5438

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !5439
  store i32 12, i32* %104, align 4, !dbg !5441
  store i8* null, i8** %4, align 8, !dbg !5442
  br label %109, !dbg !5442

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5443
  %107 = load i64, i64* %8, align 8, !dbg !5444
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5445
  store i8* %108, i8** %4, align 8, !dbg !5446
  br label %109, !dbg !5446

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5447
  ret i8* %110, !dbg !5447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5448 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5451, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5453, metadata !DIExpression()), !dbg !5457
  %5 = load i32, i32* %3, align 4, !dbg !5458
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5460
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5461
  %8 = icmp ne i32 %7, 0, !dbg !5461
  br i1 %8, label %9, label %10, !dbg !5462

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5463
  br label %18, !dbg !5463

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5464
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0)), !dbg !5466
  br i1 %12, label %17, label %13, !dbg !5467

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5468
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0)), !dbg !5469
  br i1 %15, label %17, label %16, !dbg !5470

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5471
  br label %18, !dbg !5471

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5472
  br label %18, !dbg !5472

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5473
  ret i1 %19, !dbg !5473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5474 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5477, metadata !DIExpression()), !dbg !5478
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5479, metadata !DIExpression()), !dbg !5480
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5481, metadata !DIExpression()), !dbg !5482
  %7 = load i32, i32* %4, align 4, !dbg !5483
  %8 = load i8*, i8** %5, align 8, !dbg !5484
  %9 = load i64, i64* %6, align 8, !dbg !5485
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5486
  ret i32 %10, !dbg !5487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5488 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5491, metadata !DIExpression()), !dbg !5492
  %3 = load i32, i32* %2, align 4, !dbg !5493
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5494
  ret i8* %4, !dbg !5495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5496 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5497, metadata !DIExpression()), !dbg !5498
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5499, metadata !DIExpression()), !dbg !5500
  %4 = load i32, i32* %2, align 4, !dbg !5501
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !5502
  store i8* %5, i8** %3, align 8, !dbg !5500
  %6 = load i8*, i8** %3, align 8, !dbg !5503
  ret i8* %6, !dbg !5504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5505 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5508, metadata !DIExpression()), !dbg !5509
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5512, metadata !DIExpression()), !dbg !5513
  %10 = load i32, i32* %5, align 4, !dbg !5514
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5515
  store i8* %11, i8** %8, align 8, !dbg !5513
  %12 = load i8*, i8** %8, align 8, !dbg !5516
  %13 = icmp eq i8* %12, null, !dbg !5518
  br i1 %13, label %14, label %21, !dbg !5519

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5520
  %16 = icmp ugt i64 %15, 0, !dbg !5523
  br i1 %16, label %17, label %20, !dbg !5524

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5525
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5525
  store i8 0, i8* %19, align 1, !dbg !5526
  br label %20, !dbg !5525

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5527
  br label %45, !dbg !5527

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5528, metadata !DIExpression()), !dbg !5530
  %22 = load i8*, i8** %8, align 8, !dbg !5531
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !5532
  store i64 %23, i64* %9, align 8, !dbg !5530
  %24 = load i64, i64* %9, align 8, !dbg !5533
  %25 = load i64, i64* %7, align 8, !dbg !5535
  %26 = icmp ult i64 %24, %25, !dbg !5536
  br i1 %26, label %27, label %32, !dbg !5537

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5538
  %29 = load i8*, i8** %8, align 8, !dbg !5540
  %30 = load i64, i64* %9, align 8, !dbg !5541
  %31 = add i64 %30, 1, !dbg !5542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5543
  store i32 0, i32* %4, align 4, !dbg !5544
  br label %45, !dbg !5544

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5545
  %34 = icmp ugt i64 %33, 0, !dbg !5548
  br i1 %34, label %35, label %44, !dbg !5549

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5550
  %37 = load i8*, i8** %8, align 8, !dbg !5552
  %38 = load i64, i64* %7, align 8, !dbg !5553
  %39 = sub i64 %38, 1, !dbg !5554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5555
  %40 = load i8*, i8** %6, align 8, !dbg !5556
  %41 = load i64, i64* %7, align 8, !dbg !5557
  %42 = sub i64 %41, 1, !dbg !5558
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5556
  store i8 0, i8* %43, align 1, !dbg !5559
  br label %44, !dbg !5560

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5561
  br label %45, !dbg !5561

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5562
  ret i32 %46, !dbg !5562
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
attributes #23 = { allocsize(0,1) }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(0) }
attributes #27 = { allocsize(1,2) }

!llvm.dbg.cu = !{!9, !59, !64, !72, !211, !236, !106, !123, !133, !140, !238, !283, !285, !287, !203, !293, !312, !314, !316, !318, !320, !322, !324, !326, !217, !328, !330, !332, !334, !337, !339, !341}
!llvm.ident = !{!343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343, !343}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !56)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !49, globals: !55, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/users.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2e4916078fe75a2e005e9df4bd6e108b")
!11 = !{!12, !20, !35}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 305, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/readutmp.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dbf57f6f8baa17fafca98ee518780aad")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!17 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!18 = !DIEnumerator(name: "READ_UTMP_BOOT_TIME", value: 4)
!19 = !DIEnumerator(name: "READ_UTMP_NO_BOOT_TIME", value: 8)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !14, size: 32, elements: !22)
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !36, line: 42, baseType: !14, size: 32, elements: !37)
!36 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!38 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!39 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!40 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!41 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!42 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!43 = !DIEnumerator(name: "c_quoting_style", value: 5)
!44 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!45 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!46 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!47 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!48 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!49 = !{!6, !50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!55 = !{!0}
!56 = !{}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "Version", scope: !59, file: !60, line: 3, type: !6, isLocal: false, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !61, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!61 = !{!57}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "file_name", scope: !64, file: !65, line: 45, type: !6, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !66, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!66 = !{!62, !67}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !64, file: !65, line: 55, type: !69, isLocal: true, isDefinition: true)
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !72, file: !73, line: 66, type: !101, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, globals: !75, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!74 = !{!50}
!75 = !{!76, !95, !70, !97, !99}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "old_file_name", scope: !78, file: !73, line: 304, type: !6, isLocal: true, isDefinition: true)
!78 = distinct !DISubprogram(name: "verror_at_line", scope: !73, file: !73, line: 298, type: !79, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !56)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !51, !51, !6, !14, !6, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 52, baseType: !83)
!82 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 32, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !86, baseType: !87)
!86 = !DIFile(filename: "lib/error.c", directory: "/src")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !88, size: 256, elements: !89)
!88 = !DINamespace(name: "std", scope: null)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !87, file: !86, baseType: !50, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !87, file: !86, baseType: !50, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !87, file: !86, baseType: !50, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !87, file: !86, baseType: !51, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !87, file: !86, baseType: !51, size: 32, offset: 224)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "old_line_number", scope: !78, file: !73, line: 305, type: !14, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "error_message_count", scope: !72, file: !73, line: 69, type: !14, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !72, file: !73, line: 295, type: !51, isLocal: false, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "long_options", scope: !106, file: !107, line: 34, type: !109, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !108, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!108 = !{!104}
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 768, elements: !119)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !112, line: 50, size: 256, elements: !113)
!112 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 52, baseType: !6, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !111, file: !112, line: 55, baseType: !51, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !111, file: !112, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !112, line: 57, baseType: !51, size: 32, offset: 192)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "program_name", scope: !123, file: !124, line: 31, type: !6, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !125, globals: !126, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!125 = !{!54}
!126 = !{!121}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "utf07FF", scope: !129, file: !130, line: 46, type: !135, isLocal: true, isDefinition: true)
!129 = distinct !DISubprogram(name: "proper_name_lite", scope: !130, file: !130, line: 38, type: !131, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !56)
!130 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!131 = !DISubroutineType(types: !132)
!132 = !{!6, !6, !6}
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !134, splitDebugInlining: false, nameTableKind: None)
!134 = !{!127}
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !140, file: !141, line: 76, type: !197, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !142, retainedTypes: !148, globals: !152, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!142 = !{!35, !143, !20}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 254, baseType: !14, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!146 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!147 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!148 = !{!51, !52, !149}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !151)
!150 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !{!138, !153, !159, !171, !173, !178, !186, !193, !195}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !140, file: !141, line: 92, type: !155, isLocal: false, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 320, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!157 = !{!158}
!158 = !DISubrange(count: 10)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !140, file: !141, line: 1040, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !141, line: 56, size: 448, elements: !162)
!162 = !{!163, !164, !165, !169, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !141, line: 59, baseType: !35, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !141, line: 62, baseType: !51, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !141, line: 66, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !141, line: 69, baseType: !6, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !141, line: 72, baseType: !6, size: 64, offset: 384)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !140, file: !141, line: 107, type: !161, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slot0", scope: !140, file: !141, line: 831, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 256)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "quote", scope: !180, file: !141, line: 228, type: !183, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "gettext_quote", scope: !141, file: !141, line: 197, type: !181, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !56)
!181 = !DISubroutineType(types: !182)
!182 = !{!6, !6, !35}
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !184)
!184 = !{!137, !185}
!185 = !DISubrange(count: 4)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "slotvec", scope: !140, file: !141, line: 834, type: !188, isLocal: true, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !141, line: 823, size: 128, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !141, line: 825, baseType: !149, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !189, file: !141, line: 826, baseType: !54, size: 64, offset: 64)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "nslots", scope: !140, file: !141, line: 832, type: !51, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "slotvec0", scope: !140, file: !141, line: 833, type: !189, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 704, elements: !199)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!199 = !{!200}
!200 = !DISubrange(count: 11)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !203, file: !204, line: 26, type: !206, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !205, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!205 = !{!201}
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 47)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "exit_failure", scope: !211, file: !212, line: 24, type: !214, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !213, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!213 = !{!209}
!214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "internal_state", scope: !217, file: !218, line: 97, type: !222, isLocal: true, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !219, globals: !221, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!219 = !{!50, !149, !220}
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !{!215}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !224)
!223 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !226)
!225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !226, file: !225, line: 15, baseType: !51, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !226, file: !225, line: 20, baseType: !230, size: 32, offset: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 16, size: 32, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !230, file: !225, line: 18, baseType: !14, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !230, file: !225, line: 19, baseType: !234, size: 32)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !235)
!235 = !{!185}
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !241, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!240 = !{!12}
!241 = !{!54, !50, !242, !281, !149}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !245, line: 55, size: 3200, elements: !246)
!245 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!246 = !{!247, !249, !252, !256, !257, !258, !259, !264, !266, !274, !277}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !244, file: !245, line: 57, baseType: !248, size: 16)
!248 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !244, file: !245, line: 58, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !251, line: 154, baseType: !51)
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !244, file: !245, line: 59, baseType: !253, size: 256, offset: 64)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !244, file: !245, line: 61, baseType: !234, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !244, file: !245, line: 63, baseType: !253, size: 256, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !244, file: !245, line: 65, baseType: !175, size: 2048, offset: 608)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !244, file: !245, line: 67, baseType: !260, size: 32, offset: 2656)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !245, line: 42, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !260, file: !245, line: 45, baseType: !248, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !260, file: !245, line: 46, baseType: !248, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !244, file: !245, line: 81, baseType: !265, size: 64, offset: 2688)
!265 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !244, file: !245, line: 82, baseType: !267, size: 128, offset: 2752)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !268, line: 8, size: 128, elements: !269)
!268 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!269 = !{!270, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !267, file: !268, line: 14, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !251, line: 160, baseType: !265)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !267, file: !268, line: 15, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !251, line: 162, baseType: !265)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !244, file: !245, line: 84, baseType: !275, size: 128, offset: 2880)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !235)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !251, line: 41, baseType: !51)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !244, file: !245, line: 85, baseType: !278, size: 160, offset: 3008)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 20)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !282, line: 87, baseType: !265)
!282 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/stat-time.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3c364d743f7b7b6a42e1c1946b591088")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !289, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!289 = !{!290}
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !288, line: 40, baseType: !14, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !311, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!295 = !{!296, !303}
!296 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !297, file: !294, line: 188, baseType: !14, size: 32, elements: !301)
!297 = distinct !DISubprogram(name: "x2nrealloc", scope: !294, file: !294, line: 176, type: !298, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!298 = !DISubroutineType(types: !299)
!299 = !{!50, !50, !300, !149}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!301 = !{!302}
!302 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !304, file: !294, line: 228, baseType: !14, size: 32, elements: !301)
!304 = distinct !DISubprogram(name: "xpalloc", scope: !294, file: !294, line: 223, type: !305, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!305 = !DISubroutineType(types: !306)
!306 = !{!50, !50, !307, !308, !310, !308}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !309, line: 130, baseType: !310)
!309 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !150, line: 35, baseType: !265)
!311 = !{!54, !50, !69, !265, !151}
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!325 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!327 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !336, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!336 = !{!69, !151, !50}
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!343 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!344 = !{i32 7, !"Dwarf Version", i32 5}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 4}
!347 = !{i32 1, !"branch-target-enforcement", i32 0}
!348 = !{i32 1, !"sign-return-address", i32 0}
!349 = !{i32 1, !"sign-return-address-all", i32 0}
!350 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!351 = !{i32 7, !"PIC Level", i32 2}
!352 = !{i32 7, !"PIE Level", i32 2}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 1}
!355 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 96, type: !356, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !56)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !51}
!358 = !DILocalVariable(name: "status", arg: 1, scope: !355, file: !10, line: 96, type: !51)
!359 = !DILocation(line: 96, column: 12, scope: !355)
!360 = !DILocation(line: 98, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !355, file: !10, line: 98, column: 7)
!362 = !DILocation(line: 98, column: 14, scope: !361)
!363 = !DILocation(line: 98, column: 7, scope: !355)
!364 = !DILocation(line: 99, column: 5, scope: !361)
!365 = !DILocation(line: 99, column: 5, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !10, line: 99, column: 5)
!367 = !DILocation(line: 102, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !10, line: 101, column: 5)
!369 = !DILocation(line: 102, column: 52, scope: !368)
!370 = !DILocation(line: 102, column: 7, scope: !368)
!371 = !DILocation(line: 103, column: 15, scope: !368)
!372 = !DILocation(line: 103, column: 7, scope: !368)
!373 = !DILocation(line: 109, column: 7, scope: !368)
!374 = !DILocation(line: 110, column: 7, scope: !368)
!375 = !DILocation(line: 111, column: 7, scope: !368)
!376 = !DILocation(line: 113, column: 9, scope: !355)
!377 = !DILocation(line: 113, column: 3, scope: !355)
!378 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!379 = !DILocation(line: 573, column: 34, scope: !2)
!380 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!381 = !DILocation(line: 573, column: 55, scope: !2)
!382 = !DILocation(line: 581, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!384 = !DILocation(line: 581, column: 19, scope: !383)
!385 = !DILocation(line: 581, column: 7, scope: !2)
!386 = !DILocalVariable(name: "term", scope: !387, file: !3, line: 585, type: !6)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 582, column: 5)
!388 = !DILocation(line: 585, column: 19, scope: !387)
!389 = !DILocation(line: 585, column: 26, scope: !387)
!390 = !DILocation(line: 586, column: 23, scope: !387)
!391 = !DILocation(line: 586, column: 28, scope: !387)
!392 = !DILocation(line: 586, column: 33, scope: !387)
!393 = !DILocation(line: 586, column: 32, scope: !387)
!394 = !DILocation(line: 586, column: 38, scope: !387)
!395 = !DILocation(line: 586, column: 48, scope: !387)
!396 = !DILocation(line: 586, column: 41, scope: !387)
!397 = !DILocation(line: 586, column: 19, scope: !387)
!398 = !DILocation(line: 587, column: 5, scope: !387)
!399 = !DILocation(line: 588, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!401 = !DILocation(line: 588, column: 7, scope: !2)
!402 = !DILocation(line: 590, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 589, column: 5)
!404 = !DILocation(line: 591, column: 7, scope: !403)
!405 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !69)
!406 = !DILocation(line: 594, column: 8, scope: !2)
!407 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!408 = !DILocation(line: 595, column: 15, scope: !2)
!409 = !DILocation(line: 595, column: 28, scope: !2)
!410 = !DILocation(line: 595, column: 45, scope: !2)
!411 = !DILocation(line: 595, column: 37, scope: !2)
!412 = !DILocation(line: 595, column: 35, scope: !2)
!413 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!414 = !DILocation(line: 596, column: 15, scope: !2)
!415 = !DILocation(line: 596, column: 37, scope: !2)
!416 = !DILocation(line: 596, column: 29, scope: !2)
!417 = !DILocation(line: 597, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!419 = !DILocation(line: 597, column: 7, scope: !2)
!420 = !DILocation(line: 599, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 598, column: 5)
!422 = !DILocation(line: 599, column: 19, scope: !421)
!423 = !DILocation(line: 602, column: 20, scope: !421)
!424 = !DILocation(line: 603, column: 5, scope: !421)
!425 = !DILocation(line: 604, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !3, line: 604, column: 12)
!427 = !DILocation(line: 604, column: 27, scope: !426)
!428 = !DILocation(line: 604, column: 24, scope: !426)
!429 = !DILocation(line: 604, column: 12, scope: !418)
!430 = !DILocalVariable(name: "s", scope: !431, file: !3, line: 608, type: !6)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 605, column: 5)
!432 = !DILocation(line: 608, column: 19, scope: !431)
!433 = !DILocation(line: 608, column: 23, scope: !431)
!434 = !DILocalVariable(name: "spaces", scope: !431, file: !3, line: 609, type: !149)
!435 = !DILocation(line: 609, column: 14, scope: !431)
!436 = !DILocation(line: 610, column: 7, scope: !431)
!437 = !DILocation(line: 610, column: 14, scope: !431)
!438 = !DILocation(line: 610, column: 18, scope: !431)
!439 = !DILocation(line: 610, column: 16, scope: !431)
!440 = !DILocation(line: 610, column: 30, scope: !431)
!441 = !DILocation(line: 610, column: 33, scope: !431)
!442 = !DILocation(line: 610, column: 40, scope: !431)
!443 = !DILocation(line: 0, scope: !431)
!444 = !DILocation(line: 611, column: 21, scope: !431)
!445 = !DILocation(line: 611, column: 20, scope: !431)
!446 = !DILocation(line: 611, column: 19, scope: !431)
!447 = !DILocation(line: 611, column: 16, scope: !431)
!448 = distinct !{!448, !436, !444, !449}
!449 = !{!"llvm.loop.mustprogress"}
!450 = !DILocation(line: 612, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !431, file: !3, line: 612, column: 11)
!452 = !DILocation(line: 612, column: 18, scope: !451)
!453 = !DILocation(line: 612, column: 11, scope: !431)
!454 = !DILocation(line: 615, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 613, column: 9)
!456 = !DILocation(line: 615, column: 23, scope: !455)
!457 = !DILocation(line: 616, column: 24, scope: !455)
!458 = !DILocation(line: 617, column: 9, scope: !455)
!459 = !DILocation(line: 618, column: 5, scope: !431)
!460 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !149)
!461 = !DILocation(line: 620, column: 10, scope: !2)
!462 = !DILocation(line: 620, column: 32, scope: !2)
!463 = !DILocation(line: 620, column: 23, scope: !2)
!464 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!465 = !DILocation(line: 625, column: 15, scope: !2)
!466 = !DILocation(line: 625, column: 27, scope: !2)
!467 = !DILocation(line: 625, column: 41, scope: !2)
!468 = !DILocation(line: 625, column: 39, scope: !2)
!469 = !DILocation(line: 626, column: 3, scope: !2)
!470 = !DILocation(line: 626, column: 11, scope: !2)
!471 = !DILocation(line: 626, column: 10, scope: !2)
!472 = !DILocation(line: 626, column: 21, scope: !2)
!473 = !DILocation(line: 626, column: 25, scope: !2)
!474 = !DILocation(line: 626, column: 24, scope: !2)
!475 = !DILocation(line: 626, column: 35, scope: !2)
!476 = !DILocation(line: 0, scope: !2)
!477 = !DILocation(line: 628, column: 12, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 628, column: 11)
!479 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!480 = !DILocation(line: 628, column: 11, scope: !478)
!481 = !DILocation(line: 628, column: 22, scope: !478)
!482 = !DILocation(line: 628, column: 29, scope: !478)
!483 = !DILocation(line: 628, column: 34, scope: !478)
!484 = !DILocation(line: 628, column: 44, scope: !478)
!485 = !DILocation(line: 628, column: 32, scope: !478)
!486 = !DILocation(line: 628, column: 49, scope: !478)
!487 = !DILocation(line: 628, column: 11, scope: !479)
!488 = !DILocation(line: 629, column: 22, scope: !478)
!489 = !DILocation(line: 629, column: 9, scope: !478)
!490 = !DILocation(line: 630, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !479, file: !3, line: 630, column: 11)
!492 = !DILocation(line: 630, column: 11, scope: !479)
!493 = !DILocation(line: 632, column: 16, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 632, column: 15)
!495 = distinct !DILexicalBlock(scope: !491, file: !3, line: 631, column: 9)
!496 = !DILocation(line: 632, column: 15, scope: !494)
!497 = !DILocation(line: 632, column: 26, scope: !494)
!498 = !DILocation(line: 632, column: 34, scope: !494)
!499 = !DILocation(line: 632, column: 37, scope: !494)
!500 = !DILocation(line: 632, column: 15, scope: !495)
!501 = !DILocation(line: 633, column: 13, scope: !494)
!502 = !DILocation(line: 636, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !495, file: !3, line: 636, column: 15)
!504 = !DILocation(line: 636, column: 29, scope: !503)
!505 = !DILocation(line: 636, column: 34, scope: !503)
!506 = !DILocation(line: 636, column: 44, scope: !503)
!507 = !DILocation(line: 636, column: 32, scope: !503)
!508 = !DILocation(line: 636, column: 49, scope: !503)
!509 = !DILocation(line: 636, column: 15, scope: !495)
!510 = !DILocation(line: 637, column: 13, scope: !503)
!511 = !DILocation(line: 638, column: 9, scope: !495)
!512 = !DILocation(line: 640, column: 16, scope: !479)
!513 = distinct !{!513, !469, !514, !449}
!514 = !DILocation(line: 641, column: 5, scope: !2)
!515 = !DILocation(line: 644, column: 3, scope: !2)
!516 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!517 = !DILocation(line: 648, column: 15, scope: !2)
!518 = !DILocation(line: 648, column: 38, scope: !2)
!519 = !DILocation(line: 648, column: 31, scope: !2)
!520 = !DILocation(line: 649, column: 38, scope: !2)
!521 = !DILocation(line: 649, column: 31, scope: !2)
!522 = !DILocation(line: 650, column: 38, scope: !2)
!523 = !DILocation(line: 650, column: 31, scope: !2)
!524 = !DILocation(line: 651, column: 38, scope: !2)
!525 = !DILocation(line: 651, column: 31, scope: !2)
!526 = !DILocation(line: 652, column: 38, scope: !2)
!527 = !DILocation(line: 652, column: 31, scope: !2)
!528 = !DILocation(line: 653, column: 38, scope: !2)
!529 = !DILocation(line: 653, column: 31, scope: !2)
!530 = !DILocation(line: 654, column: 38, scope: !2)
!531 = !DILocation(line: 654, column: 31, scope: !2)
!532 = !DILocation(line: 655, column: 38, scope: !2)
!533 = !DILocation(line: 655, column: 31, scope: !2)
!534 = !DILocation(line: 656, column: 38, scope: !2)
!535 = !DILocation(line: 656, column: 31, scope: !2)
!536 = !DILocation(line: 657, column: 38, scope: !2)
!537 = !DILocation(line: 657, column: 31, scope: !2)
!538 = !DILocation(line: 658, column: 31, scope: !2)
!539 = !DILocation(line: 663, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!541 = !DILocation(line: 664, column: 7, scope: !540)
!542 = !DILocation(line: 664, column: 10, scope: !540)
!543 = !DILocation(line: 663, column: 7, scope: !2)
!544 = !DILocation(line: 670, column: 15, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !3, line: 665, column: 5)
!546 = !DILocation(line: 670, column: 28, scope: !545)
!547 = !DILocation(line: 670, column: 47, scope: !545)
!548 = !DILocation(line: 670, column: 41, scope: !545)
!549 = !DILocation(line: 670, column: 59, scope: !545)
!550 = !DILocation(line: 669, column: 7, scope: !545)
!551 = !DILocation(line: 671, column: 5, scope: !545)
!552 = !DILocation(line: 676, column: 48, scope: !553)
!553 = distinct !DILexicalBlock(scope: !540, file: !3, line: 673, column: 5)
!554 = !DILocation(line: 677, column: 21, scope: !553)
!555 = !DILocation(line: 677, column: 15, scope: !553)
!556 = !DILocation(line: 677, column: 33, scope: !553)
!557 = !DILocation(line: 676, column: 7, scope: !553)
!558 = !DILocation(line: 679, column: 3, scope: !2)
!559 = !DILocation(line: 683, column: 3, scope: !2)
!560 = !DILocation(line: 686, column: 3, scope: !2)
!561 = !DILocation(line: 688, column: 3, scope: !2)
!562 = !DILocation(line: 691, column: 3, scope: !2)
!563 = !DILocation(line: 695, column: 3, scope: !2)
!564 = !DILocation(line: 696, column: 1, scope: !2)
!565 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !566, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !56)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !6}
!568 = !DILocalVariable(name: "program", arg: 1, scope: !565, file: !3, line: 836, type: !6)
!569 = !DILocation(line: 836, column: 34, scope: !565)
!570 = !DILocalVariable(name: "infomap", scope: !565, file: !3, line: 838, type: !571)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 896, elements: !577)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !565, file: !3, line: 838, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !573, file: !3, line: 838, baseType: !6, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !573, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!577 = !{!578}
!578 = !DISubrange(count: 7)
!579 = !DILocation(line: 838, column: 67, scope: !565)
!580 = !DILocalVariable(name: "node", scope: !565, file: !3, line: 848, type: !6)
!581 = !DILocation(line: 848, column: 15, scope: !565)
!582 = !DILocation(line: 848, column: 22, scope: !565)
!583 = !DILocalVariable(name: "map_prog", scope: !565, file: !3, line: 849, type: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!585 = !DILocation(line: 849, column: 25, scope: !565)
!586 = !DILocation(line: 849, column: 36, scope: !565)
!587 = !DILocation(line: 851, column: 3, scope: !565)
!588 = !DILocation(line: 851, column: 10, scope: !565)
!589 = !DILocation(line: 851, column: 20, scope: !565)
!590 = !DILocation(line: 851, column: 28, scope: !565)
!591 = !DILocation(line: 851, column: 40, scope: !565)
!592 = !DILocation(line: 851, column: 49, scope: !565)
!593 = !DILocation(line: 851, column: 59, scope: !565)
!594 = !DILocation(line: 851, column: 33, scope: !565)
!595 = !DILocation(line: 851, column: 31, scope: !565)
!596 = !DILocation(line: 0, scope: !565)
!597 = !DILocation(line: 852, column: 13, scope: !565)
!598 = distinct !{!598, !587, !597, !449}
!599 = !DILocation(line: 854, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !565, file: !3, line: 854, column: 7)
!601 = !DILocation(line: 854, column: 17, scope: !600)
!602 = !DILocation(line: 854, column: 7, scope: !565)
!603 = !DILocation(line: 855, column: 12, scope: !600)
!604 = !DILocation(line: 855, column: 22, scope: !600)
!605 = !DILocation(line: 855, column: 10, scope: !600)
!606 = !DILocation(line: 855, column: 5, scope: !600)
!607 = !DILocation(line: 857, column: 3, scope: !565)
!608 = !DILocalVariable(name: "lc_messages", scope: !565, file: !3, line: 861, type: !6)
!609 = !DILocation(line: 861, column: 15, scope: !565)
!610 = !DILocation(line: 861, column: 29, scope: !565)
!611 = !DILocation(line: 862, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !565, file: !3, line: 862, column: 7)
!613 = !DILocation(line: 862, column: 19, scope: !612)
!614 = !DILocation(line: 862, column: 22, scope: !612)
!615 = !DILocation(line: 862, column: 7, scope: !565)
!616 = !DILocation(line: 868, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !3, line: 863, column: 5)
!618 = !DILocation(line: 870, column: 5, scope: !617)
!619 = !DILocalVariable(name: "url_program", scope: !565, file: !3, line: 874, type: !6)
!620 = !DILocation(line: 874, column: 15, scope: !565)
!621 = !DILocation(line: 874, column: 36, scope: !565)
!622 = !DILocation(line: 874, column: 29, scope: !565)
!623 = !DILocation(line: 874, column: 61, scope: !565)
!624 = !DILocation(line: 875, column: 11, scope: !565)
!625 = !DILocation(line: 876, column: 24, scope: !565)
!626 = !DILocation(line: 875, column: 3, scope: !565)
!627 = !DILocation(line: 877, column: 11, scope: !565)
!628 = !DILocation(line: 878, column: 11, scope: !565)
!629 = !DILocation(line: 878, column: 17, scope: !565)
!630 = !DILocation(line: 878, column: 25, scope: !565)
!631 = !DILocation(line: 878, column: 22, scope: !565)
!632 = !DILocation(line: 877, column: 3, scope: !565)
!633 = !DILocation(line: 879, column: 1, scope: !565)
!634 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 117, type: !635, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !56)
!635 = !DISubroutineType(types: !636)
!636 = !{!51, !51, !53}
!637 = !DILocalVariable(name: "argc", arg: 1, scope: !634, file: !10, line: 117, type: !51)
!638 = !DILocation(line: 117, column: 11, scope: !634)
!639 = !DILocalVariable(name: "argv", arg: 2, scope: !634, file: !10, line: 117, type: !53)
!640 = !DILocation(line: 117, column: 24, scope: !634)
!641 = !DILocation(line: 120, column: 21, scope: !634)
!642 = !DILocation(line: 120, column: 3, scope: !634)
!643 = !DILocation(line: 121, column: 3, scope: !634)
!644 = !DILocation(line: 122, column: 3, scope: !634)
!645 = !DILocation(line: 123, column: 3, scope: !634)
!646 = !DILocation(line: 125, column: 3, scope: !634)
!647 = !DILocation(line: 127, column: 36, scope: !634)
!648 = !DILocation(line: 127, column: 42, scope: !634)
!649 = !DILocation(line: 128, column: 36, scope: !634)
!650 = !DILocation(line: 128, column: 58, scope: !634)
!651 = !DILocation(line: 127, column: 3, scope: !634)
!652 = !DILocation(line: 131, column: 11, scope: !634)
!653 = !DILocation(line: 131, column: 18, scope: !634)
!654 = !DILocation(line: 131, column: 16, scope: !634)
!655 = !DILocation(line: 131, column: 3, scope: !634)
!656 = !DILocation(line: 134, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !634, file: !10, line: 132, column: 5)
!658 = !DILocation(line: 135, column: 7, scope: !657)
!659 = !DILocation(line: 138, column: 14, scope: !657)
!660 = !DILocation(line: 138, column: 19, scope: !657)
!661 = !DILocation(line: 138, column: 7, scope: !657)
!662 = !DILocation(line: 139, column: 7, scope: !657)
!663 = !DILocation(line: 142, column: 7, scope: !657)
!664 = !DILocation(line: 143, column: 7, scope: !657)
!665 = !DILocation(line: 146, column: 3, scope: !634)
!666 = distinct !DISubprogram(name: "users", scope: !10, file: !10, line: 82, type: !667, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !56)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !6, !51}
!669 = !DILocalVariable(name: "filename", arg: 1, scope: !666, file: !10, line: 82, type: !6)
!670 = !DILocation(line: 82, column: 20, scope: !666)
!671 = !DILocalVariable(name: "options", arg: 2, scope: !666, file: !10, line: 82, type: !51)
!672 = !DILocation(line: 82, column: 34, scope: !666)
!673 = !DILocalVariable(name: "n_users", scope: !666, file: !10, line: 84, type: !308)
!674 = !DILocation(line: 84, column: 9, scope: !666)
!675 = !DILocalVariable(name: "utmp_buf", scope: !666, file: !10, line: 85, type: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !13, line: 92, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !13, line: 65, size: 576, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !691, !694, !695, !696}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !678, file: !13, line: 69, baseType: !54, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !678, file: !13, line: 70, baseType: !54, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !678, file: !13, line: 71, baseType: !54, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !678, file: !13, line: 72, baseType: !54, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !678, file: !13, line: 74, baseType: !685, size: 128, offset: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !686, line: 11, size: 128, elements: !687)
!686 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !685, file: !686, line: 16, baseType: !271, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !685, file: !686, line: 21, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !251, line: 197, baseType: !265)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !678, file: !13, line: 75, baseType: !692, size: 32, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !693, line: 97, baseType: !250)
!693 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !678, file: !13, line: 76, baseType: !692, size: 32, offset: 416)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !678, file: !13, line: 77, baseType: !248, size: 16, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !678, file: !13, line: 79, baseType: !697, size: 64, offset: 480)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !13, line: 79, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !697, file: !13, line: 79, baseType: !51, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !697, file: !13, line: 79, baseType: !51, size: 32, offset: 32)
!701 = !DILocation(line: 85, column: 16, scope: !666)
!702 = !DILocation(line: 86, column: 11, scope: !666)
!703 = !DILocation(line: 87, column: 18, scope: !704)
!704 = distinct !DILexicalBlock(scope: !666, file: !10, line: 87, column: 7)
!705 = !DILocation(line: 87, column: 49, scope: !704)
!706 = !DILocation(line: 87, column: 7, scope: !704)
!707 = !DILocation(line: 87, column: 58, scope: !704)
!708 = !DILocation(line: 87, column: 7, scope: !666)
!709 = !DILocation(line: 88, column: 5, scope: !704)
!710 = !DILocation(line: 90, column: 23, scope: !666)
!711 = !DILocation(line: 90, column: 32, scope: !666)
!712 = !DILocation(line: 90, column: 3, scope: !666)
!713 = !DILocation(line: 92, column: 9, scope: !666)
!714 = !DILocation(line: 92, column: 3, scope: !666)
!715 = !DILocation(line: 93, column: 1, scope: !666)
!716 = distinct !DISubprogram(name: "list_entries_users", scope: !10, file: !10, line: 45, type: !717, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !56)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !308, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!721 = !DILocalVariable(name: "n", arg: 1, scope: !716, file: !10, line: 45, type: !308)
!722 = !DILocation(line: 45, column: 27, scope: !716)
!723 = !DILocalVariable(name: "this", arg: 2, scope: !716, file: !10, line: 45, type: !719)
!724 = !DILocation(line: 45, column: 49, scope: !716)
!725 = !DILocalVariable(name: "u", scope: !716, file: !10, line: 47, type: !53)
!726 = !DILocation(line: 47, column: 10, scope: !716)
!727 = !DILocation(line: 47, column: 25, scope: !716)
!728 = !DILocation(line: 47, column: 14, scope: !716)
!729 = !DILocalVariable(name: "n_entries", scope: !716, file: !10, line: 48, type: !308)
!730 = !DILocation(line: 48, column: 9, scope: !716)
!731 = !DILocation(line: 50, column: 3, scope: !716)
!732 = !DILocation(line: 50, column: 11, scope: !716)
!733 = !DILocation(line: 52, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !10, line: 52, column: 11)
!735 = distinct !DILexicalBlock(scope: !716, file: !10, line: 51, column: 5)
!736 = !DILocation(line: 52, column: 11, scope: !735)
!737 = !DILocalVariable(name: "trimmed_name", scope: !738, file: !10, line: 54, type: !54)
!738 = distinct !DILexicalBlock(scope: !734, file: !10, line: 53, column: 9)
!739 = !DILocation(line: 54, column: 17, scope: !738)
!740 = !DILocation(line: 56, column: 48, scope: !738)
!741 = !DILocation(line: 56, column: 26, scope: !738)
!742 = !DILocation(line: 56, column: 24, scope: !738)
!743 = !DILocation(line: 58, column: 26, scope: !738)
!744 = !DILocation(line: 58, column: 11, scope: !738)
!745 = !DILocation(line: 58, column: 13, scope: !738)
!746 = !DILocation(line: 58, column: 24, scope: !738)
!747 = !DILocation(line: 59, column: 11, scope: !738)
!748 = !DILocation(line: 60, column: 9, scope: !738)
!749 = !DILocation(line: 61, column: 11, scope: !735)
!750 = distinct !{!750, !731, !751, !449}
!751 = !DILocation(line: 62, column: 5, scope: !716)
!752 = !DILocation(line: 64, column: 10, scope: !716)
!753 = !DILocation(line: 64, column: 13, scope: !716)
!754 = !DILocation(line: 64, column: 3, scope: !716)
!755 = !DILocalVariable(name: "i", scope: !756, file: !10, line: 66, type: !308)
!756 = distinct !DILexicalBlock(scope: !716, file: !10, line: 66, column: 3)
!757 = !DILocation(line: 66, column: 14, scope: !756)
!758 = !DILocation(line: 66, column: 8, scope: !756)
!759 = !DILocation(line: 66, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !10, line: 66, column: 3)
!761 = !DILocation(line: 66, column: 25, scope: !760)
!762 = !DILocation(line: 66, column: 23, scope: !760)
!763 = !DILocation(line: 66, column: 3, scope: !756)
!764 = !DILocalVariable(name: "c", scope: !765, file: !10, line: 68, type: !8)
!765 = distinct !DILexicalBlock(scope: !760, file: !10, line: 67, column: 5)
!766 = !DILocation(line: 68, column: 12, scope: !765)
!767 = !DILocation(line: 68, column: 17, scope: !765)
!768 = !DILocation(line: 68, column: 21, scope: !765)
!769 = !DILocation(line: 68, column: 31, scope: !765)
!770 = !DILocation(line: 68, column: 19, scope: !765)
!771 = !DILocation(line: 68, column: 16, scope: !765)
!772 = !DILocation(line: 69, column: 7, scope: !765)
!773 = !DILocation(line: 70, column: 7, scope: !765)
!774 = !DILocation(line: 71, column: 5, scope: !765)
!775 = !DILocation(line: 66, column: 37, scope: !760)
!776 = !DILocation(line: 66, column: 3, scope: !760)
!777 = distinct !{!777, !763, !778, !449}
!778 = !DILocation(line: 71, column: 5, scope: !756)
!779 = !DILocalVariable(name: "i", scope: !780, file: !10, line: 73, type: !308)
!780 = distinct !DILexicalBlock(scope: !716, file: !10, line: 73, column: 3)
!781 = !DILocation(line: 73, column: 14, scope: !780)
!782 = !DILocation(line: 73, column: 8, scope: !780)
!783 = !DILocation(line: 73, column: 21, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !10, line: 73, column: 3)
!785 = !DILocation(line: 73, column: 25, scope: !784)
!786 = !DILocation(line: 73, column: 23, scope: !784)
!787 = !DILocation(line: 73, column: 3, scope: !780)
!788 = !DILocation(line: 74, column: 11, scope: !784)
!789 = !DILocation(line: 74, column: 13, scope: !784)
!790 = !DILocation(line: 74, column: 5, scope: !784)
!791 = !DILocation(line: 73, column: 37, scope: !784)
!792 = !DILocation(line: 73, column: 3, scope: !784)
!793 = distinct !{!793, !787, !794, !449}
!794 = !DILocation(line: 74, column: 15, scope: !780)
!795 = !DILocation(line: 75, column: 9, scope: !716)
!796 = !DILocation(line: 75, column: 3, scope: !716)
!797 = !DILocation(line: 76, column: 1, scope: !716)
!798 = distinct !DISubprogram(name: "userid_compare", scope: !10, file: !10, line: 37, type: !799, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !56)
!799 = !DISubroutineType(types: !800)
!800 = !{!51, !801, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!803 = !DILocalVariable(name: "v_a", arg: 1, scope: !798, file: !10, line: 37, type: !801)
!804 = !DILocation(line: 37, column: 29, scope: !798)
!805 = !DILocalVariable(name: "v_b", arg: 2, scope: !798, file: !10, line: 37, type: !801)
!806 = !DILocation(line: 37, column: 46, scope: !798)
!807 = !DILocalVariable(name: "a", scope: !798, file: !10, line: 39, type: !53)
!808 = !DILocation(line: 39, column: 10, scope: !798)
!809 = !DILocation(line: 39, column: 24, scope: !798)
!810 = !DILocation(line: 39, column: 14, scope: !798)
!811 = !DILocalVariable(name: "b", scope: !798, file: !10, line: 40, type: !53)
!812 = !DILocation(line: 40, column: 10, scope: !798)
!813 = !DILocation(line: 40, column: 24, scope: !798)
!814 = !DILocation(line: 40, column: 14, scope: !798)
!815 = !DILocation(line: 41, column: 19, scope: !798)
!816 = !DILocation(line: 41, column: 18, scope: !798)
!817 = !DILocation(line: 41, column: 23, scope: !798)
!818 = !DILocation(line: 41, column: 22, scope: !798)
!819 = !DILocation(line: 41, column: 10, scope: !798)
!820 = !DILocation(line: 41, column: 3, scope: !798)
!821 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !65, file: !65, line: 50, type: !566, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !56)
!822 = !DILocalVariable(name: "file", arg: 1, scope: !821, file: !65, line: 50, type: !6)
!823 = !DILocation(line: 50, column: 41, scope: !821)
!824 = !DILocation(line: 52, column: 15, scope: !821)
!825 = !DILocation(line: 52, column: 13, scope: !821)
!826 = !DILocation(line: 53, column: 1, scope: !821)
!827 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !65, file: !65, line: 87, type: !828, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !56)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !69}
!830 = !DILocalVariable(name: "ignore", arg: 1, scope: !827, file: !65, line: 87, type: !69)
!831 = !DILocation(line: 87, column: 37, scope: !827)
!832 = !DILocation(line: 89, column: 18, scope: !827)
!833 = !DILocation(line: 89, column: 16, scope: !827)
!834 = !DILocation(line: 90, column: 1, scope: !827)
!835 = distinct !DISubprogram(name: "close_stdout", scope: !65, file: !65, line: 116, type: !102, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !56)
!836 = !DILocation(line: 118, column: 21, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !65, line: 118, column: 7)
!838 = !DILocation(line: 118, column: 7, scope: !837)
!839 = !DILocation(line: 118, column: 29, scope: !837)
!840 = !DILocation(line: 119, column: 7, scope: !837)
!841 = !DILocation(line: 119, column: 12, scope: !837)
!842 = !DILocation(line: 119, column: 25, scope: !837)
!843 = !DILocation(line: 119, column: 28, scope: !837)
!844 = !DILocation(line: 119, column: 34, scope: !837)
!845 = !DILocation(line: 118, column: 7, scope: !835)
!846 = !DILocalVariable(name: "write_error", scope: !847, file: !65, line: 121, type: !6)
!847 = distinct !DILexicalBlock(scope: !837, file: !65, line: 120, column: 5)
!848 = !DILocation(line: 121, column: 19, scope: !847)
!849 = !DILocation(line: 121, column: 33, scope: !847)
!850 = !DILocation(line: 122, column: 11, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !65, line: 122, column: 11)
!852 = !DILocation(line: 122, column: 11, scope: !847)
!853 = !DILocation(line: 123, column: 9, scope: !851)
!854 = !DILocation(line: 126, column: 9, scope: !851)
!855 = !DILocation(line: 128, column: 14, scope: !847)
!856 = !DILocation(line: 128, column: 7, scope: !847)
!857 = !DILocation(line: 133, column: 42, scope: !858)
!858 = distinct !DILexicalBlock(scope: !835, file: !65, line: 133, column: 7)
!859 = !DILocation(line: 133, column: 28, scope: !858)
!860 = !DILocation(line: 133, column: 50, scope: !858)
!861 = !DILocation(line: 133, column: 7, scope: !835)
!862 = !DILocation(line: 134, column: 12, scope: !858)
!863 = !DILocation(line: 134, column: 5, scope: !858)
!864 = !DILocation(line: 135, column: 1, scope: !835)
!865 = distinct !DISubprogram(name: "verror", scope: !73, file: !73, line: 251, type: !866, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !56)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !51, !51, !6, !81}
!868 = !DILocalVariable(name: "status", arg: 1, scope: !865, file: !73, line: 251, type: !51)
!869 = !DILocation(line: 251, column: 1, scope: !865)
!870 = !DILocalVariable(name: "errnum", arg: 2, scope: !865, file: !73, line: 251, type: !51)
!871 = !DILocalVariable(name: "message", arg: 3, scope: !865, file: !73, line: 251, type: !6)
!872 = !DILocalVariable(name: "args", arg: 4, scope: !865, file: !73, line: 251, type: !81)
!873 = !DILocation(line: 261, column: 3, scope: !865)
!874 = !DILocation(line: 265, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !865, file: !73, line: 265, column: 7)
!876 = !DILocation(line: 265, column: 7, scope: !865)
!877 = !DILocation(line: 266, column: 7, scope: !875)
!878 = !DILocation(line: 266, column: 5, scope: !875)
!879 = !DILocation(line: 272, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !73, line: 268, column: 5)
!881 = !DILocation(line: 272, column: 32, scope: !880)
!882 = !DILocation(line: 272, column: 7, scope: !880)
!883 = !DILocation(line: 276, column: 3, scope: !865)
!884 = !DILocation(line: 282, column: 1, scope: !865)
!885 = distinct !DISubprogram(name: "flush_stdout", scope: !73, file: !73, line: 163, type: !102, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !56)
!886 = !DILocalVariable(name: "stdout_fd", scope: !885, file: !73, line: 166, type: !51)
!887 = !DILocation(line: 166, column: 7, scope: !885)
!888 = !DILocation(line: 172, column: 13, scope: !885)
!889 = !DILocation(line: 182, column: 12, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !73, line: 182, column: 7)
!891 = !DILocation(line: 182, column: 9, scope: !890)
!892 = !DILocation(line: 182, column: 22, scope: !890)
!893 = !DILocation(line: 182, column: 34, scope: !890)
!894 = !DILocation(line: 182, column: 25, scope: !890)
!895 = !DILocation(line: 182, column: 7, scope: !885)
!896 = !DILocation(line: 184, column: 5, scope: !890)
!897 = !DILocation(line: 185, column: 1, scope: !885)
!898 = distinct !DISubprogram(name: "error_tail", scope: !73, file: !73, line: 219, type: !866, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !56)
!899 = !DILocalVariable(name: "status", arg: 1, scope: !898, file: !73, line: 219, type: !51)
!900 = !DILocation(line: 219, column: 1, scope: !898)
!901 = !DILocalVariable(name: "errnum", arg: 2, scope: !898, file: !73, line: 219, type: !51)
!902 = !DILocalVariable(name: "message", arg: 3, scope: !898, file: !73, line: 219, type: !6)
!903 = !DILocalVariable(name: "args", arg: 4, scope: !898, file: !73, line: 219, type: !81)
!904 = !DILocation(line: 229, column: 13, scope: !898)
!905 = !DILocation(line: 229, column: 21, scope: !898)
!906 = !DILocation(line: 229, column: 3, scope: !898)
!907 = !DILocation(line: 232, column: 3, scope: !898)
!908 = !DILocation(line: 233, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !898, file: !73, line: 233, column: 7)
!910 = !DILocation(line: 233, column: 7, scope: !898)
!911 = !DILocation(line: 234, column: 26, scope: !909)
!912 = !DILocation(line: 234, column: 5, scope: !909)
!913 = !DILocation(line: 238, column: 3, scope: !898)
!914 = !DILocation(line: 240, column: 3, scope: !898)
!915 = !DILocation(line: 241, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !898, file: !73, line: 241, column: 7)
!917 = !DILocation(line: 241, column: 7, scope: !898)
!918 = !DILocation(line: 242, column: 11, scope: !916)
!919 = !DILocation(line: 242, column: 5, scope: !916)
!920 = !DILocation(line: 243, column: 1, scope: !898)
!921 = distinct !DISubprogram(name: "print_errno_message", scope: !73, file: !73, line: 188, type: !356, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !56)
!922 = !DILocalVariable(name: "errnum", arg: 1, scope: !921, file: !73, line: 188, type: !51)
!923 = !DILocation(line: 188, column: 26, scope: !921)
!924 = !DILocalVariable(name: "s", scope: !921, file: !73, line: 190, type: !6)
!925 = !DILocation(line: 190, column: 15, scope: !921)
!926 = !DILocalVariable(name: "errbuf", scope: !921, file: !73, line: 193, type: !927)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 1024)
!930 = !DILocation(line: 193, column: 8, scope: !921)
!931 = !DILocation(line: 195, column: 21, scope: !921)
!932 = !DILocation(line: 195, column: 29, scope: !921)
!933 = !DILocation(line: 195, column: 7, scope: !921)
!934 = !DILocation(line: 195, column: 5, scope: !921)
!935 = !DILocation(line: 207, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !921, file: !73, line: 207, column: 7)
!937 = !DILocation(line: 207, column: 7, scope: !921)
!938 = !DILocation(line: 208, column: 9, scope: !936)
!939 = !DILocation(line: 208, column: 7, scope: !936)
!940 = !DILocation(line: 208, column: 5, scope: !936)
!941 = !DILocation(line: 214, column: 12, scope: !921)
!942 = !DILocation(line: 214, column: 28, scope: !921)
!943 = !DILocation(line: 214, column: 3, scope: !921)
!944 = !DILocation(line: 216, column: 1, scope: !921)
!945 = distinct !DISubprogram(name: "is_open", scope: !73, file: !73, line: 145, type: !946, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !56)
!946 = !DISubroutineType(types: !947)
!947 = !{!51, !51}
!948 = !DILocalVariable(name: "fd", arg: 1, scope: !945, file: !73, line: 145, type: !51)
!949 = !DILocation(line: 145, column: 14, scope: !945)
!950 = !DILocation(line: 157, column: 22, scope: !945)
!951 = !DILocation(line: 157, column: 15, scope: !945)
!952 = !DILocation(line: 157, column: 12, scope: !945)
!953 = !DILocation(line: 157, column: 3, scope: !945)
!954 = distinct !DISubprogram(name: "error", scope: !73, file: !73, line: 285, type: !955, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !56)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !51, !51, !6, null}
!957 = !DILocalVariable(name: "status", arg: 1, scope: !954, file: !73, line: 285, type: !51)
!958 = !DILocation(line: 285, column: 12, scope: !954)
!959 = !DILocalVariable(name: "errnum", arg: 2, scope: !954, file: !73, line: 285, type: !51)
!960 = !DILocation(line: 285, column: 24, scope: !954)
!961 = !DILocalVariable(name: "message", arg: 3, scope: !954, file: !73, line: 285, type: !6)
!962 = !DILocation(line: 285, column: 44, scope: !954)
!963 = !DILocalVariable(name: "ap", scope: !954, file: !73, line: 287, type: !81)
!964 = !DILocation(line: 287, column: 11, scope: !954)
!965 = !DILocation(line: 288, column: 3, scope: !954)
!966 = !DILocation(line: 289, column: 3, scope: !954)
!967 = !DILocation(line: 290, column: 3, scope: !954)
!968 = !DILocation(line: 291, column: 1, scope: !954)
!969 = !DILocalVariable(name: "status", arg: 1, scope: !78, file: !73, line: 298, type: !51)
!970 = !DILocation(line: 298, column: 1, scope: !78)
!971 = !DILocalVariable(name: "errnum", arg: 2, scope: !78, file: !73, line: 298, type: !51)
!972 = !DILocalVariable(name: "file_name", arg: 3, scope: !78, file: !73, line: 298, type: !6)
!973 = !DILocalVariable(name: "line_number", arg: 4, scope: !78, file: !73, line: 298, type: !14)
!974 = !DILocalVariable(name: "message", arg: 5, scope: !78, file: !73, line: 298, type: !6)
!975 = !DILocalVariable(name: "args", arg: 6, scope: !78, file: !73, line: 298, type: !81)
!976 = !DILocation(line: 302, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !78, file: !73, line: 302, column: 7)
!978 = !DILocation(line: 302, column: 7, scope: !78)
!979 = !DILocation(line: 307, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !73, line: 307, column: 11)
!981 = distinct !DILexicalBlock(scope: !977, file: !73, line: 303, column: 5)
!982 = !DILocation(line: 307, column: 30, scope: !980)
!983 = !DILocation(line: 307, column: 27, scope: !980)
!984 = !DILocation(line: 308, column: 11, scope: !980)
!985 = !DILocation(line: 308, column: 15, scope: !980)
!986 = !DILocation(line: 308, column: 28, scope: !980)
!987 = !DILocation(line: 308, column: 25, scope: !980)
!988 = !DILocation(line: 309, column: 15, scope: !980)
!989 = !DILocation(line: 309, column: 19, scope: !980)
!990 = !DILocation(line: 309, column: 33, scope: !980)
!991 = !DILocation(line: 310, column: 19, scope: !980)
!992 = !DILocation(line: 310, column: 22, scope: !980)
!993 = !DILocation(line: 310, column: 32, scope: !980)
!994 = !DILocation(line: 311, column: 19, scope: !980)
!995 = !DILocation(line: 311, column: 30, scope: !980)
!996 = !DILocation(line: 311, column: 45, scope: !980)
!997 = !DILocation(line: 311, column: 22, scope: !980)
!998 = !DILocation(line: 311, column: 56, scope: !980)
!999 = !DILocation(line: 307, column: 11, scope: !981)
!1000 = !DILocation(line: 314, column: 9, scope: !980)
!1001 = !DILocation(line: 316, column: 23, scope: !981)
!1002 = !DILocation(line: 316, column: 21, scope: !981)
!1003 = !DILocation(line: 317, column: 25, scope: !981)
!1004 = !DILocation(line: 317, column: 23, scope: !981)
!1005 = !DILocation(line: 318, column: 5, scope: !981)
!1006 = !DILocation(line: 327, column: 3, scope: !78)
!1007 = !DILocation(line: 331, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !78, file: !73, line: 331, column: 7)
!1009 = !DILocation(line: 331, column: 7, scope: !78)
!1010 = !DILocation(line: 332, column: 7, scope: !1008)
!1011 = !DILocation(line: 332, column: 5, scope: !1008)
!1012 = !DILocation(line: 338, column: 16, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !73, line: 334, column: 5)
!1014 = !DILocation(line: 338, column: 31, scope: !1013)
!1015 = !DILocation(line: 338, column: 7, scope: !1013)
!1016 = !DILocation(line: 346, column: 12, scope: !78)
!1017 = !DILocation(line: 346, column: 20, scope: !78)
!1018 = !DILocation(line: 346, column: 30, scope: !78)
!1019 = !DILocation(line: 347, column: 12, scope: !78)
!1020 = !DILocation(line: 347, column: 23, scope: !78)
!1021 = !DILocation(line: 346, column: 3, scope: !78)
!1022 = !DILocation(line: 350, column: 3, scope: !78)
!1023 = !DILocation(line: 356, column: 1, scope: !78)
!1024 = distinct !DISubprogram(name: "error_at_line", scope: !73, file: !73, line: 359, type: !1025, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !56)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !51, !51, !6, !14, !6, null}
!1027 = !DILocalVariable(name: "status", arg: 1, scope: !1024, file: !73, line: 359, type: !51)
!1028 = !DILocation(line: 359, column: 20, scope: !1024)
!1029 = !DILocalVariable(name: "errnum", arg: 2, scope: !1024, file: !73, line: 359, type: !51)
!1030 = !DILocation(line: 359, column: 32, scope: !1024)
!1031 = !DILocalVariable(name: "file_name", arg: 3, scope: !1024, file: !73, line: 359, type: !6)
!1032 = !DILocation(line: 359, column: 52, scope: !1024)
!1033 = !DILocalVariable(name: "line_number", arg: 4, scope: !1024, file: !73, line: 360, type: !14)
!1034 = !DILocation(line: 360, column: 29, scope: !1024)
!1035 = !DILocalVariable(name: "message", arg: 5, scope: !1024, file: !73, line: 360, type: !6)
!1036 = !DILocation(line: 360, column: 54, scope: !1024)
!1037 = !DILocalVariable(name: "ap", scope: !1024, file: !73, line: 362, type: !81)
!1038 = !DILocation(line: 362, column: 11, scope: !1024)
!1039 = !DILocation(line: 363, column: 3, scope: !1024)
!1040 = !DILocation(line: 364, column: 3, scope: !1024)
!1041 = !DILocation(line: 366, column: 3, scope: !1024)
!1042 = !DILocation(line: 367, column: 1, scope: !1024)
!1043 = distinct !DISubprogram(name: "getprogname", scope: !237, file: !237, line: 54, type: !1044, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !56)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!6}
!1046 = !DILocation(line: 58, column: 10, scope: !1043)
!1047 = !DILocation(line: 58, column: 3, scope: !1043)
!1048 = distinct !DISubprogram(name: "parse_long_options", scope: !107, file: !107, line: 45, type: !1049, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !56)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !51, !53, !6, !6, !6, !1051, null}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1052 = !DILocalVariable(name: "argc", arg: 1, scope: !1048, file: !107, line: 45, type: !51)
!1053 = !DILocation(line: 45, column: 25, scope: !1048)
!1054 = !DILocalVariable(name: "argv", arg: 2, scope: !1048, file: !107, line: 46, type: !53)
!1055 = !DILocation(line: 46, column: 28, scope: !1048)
!1056 = !DILocalVariable(name: "command_name", arg: 3, scope: !1048, file: !107, line: 47, type: !6)
!1057 = !DILocation(line: 47, column: 33, scope: !1048)
!1058 = !DILocalVariable(name: "package", arg: 4, scope: !1048, file: !107, line: 48, type: !6)
!1059 = !DILocation(line: 48, column: 33, scope: !1048)
!1060 = !DILocalVariable(name: "version", arg: 5, scope: !1048, file: !107, line: 49, type: !6)
!1061 = !DILocation(line: 49, column: 33, scope: !1048)
!1062 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1048, file: !107, line: 50, type: !1051)
!1063 = !DILocation(line: 50, column: 28, scope: !1048)
!1064 = !DILocalVariable(name: "saved_opterr", scope: !1048, file: !107, line: 53, type: !51)
!1065 = !DILocation(line: 53, column: 7, scope: !1048)
!1066 = !DILocation(line: 53, column: 22, scope: !1048)
!1067 = !DILocation(line: 56, column: 10, scope: !1048)
!1068 = !DILocation(line: 58, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1048, file: !107, line: 58, column: 7)
!1070 = !DILocation(line: 58, column: 12, scope: !1069)
!1071 = !DILocation(line: 58, column: 7, scope: !1048)
!1072 = !DILocalVariable(name: "c", scope: !1073, file: !107, line: 60, type: !51)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !107, line: 59, column: 5)
!1074 = !DILocation(line: 60, column: 11, scope: !1073)
!1075 = !DILocation(line: 60, column: 28, scope: !1073)
!1076 = !DILocation(line: 60, column: 34, scope: !1073)
!1077 = !DILocation(line: 60, column: 15, scope: !1073)
!1078 = !DILocation(line: 61, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1073, file: !107, line: 61, column: 11)
!1080 = !DILocation(line: 61, column: 13, scope: !1079)
!1081 = !DILocation(line: 61, column: 11, scope: !1073)
!1082 = !DILocation(line: 63, column: 19, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !107, line: 62, column: 9)
!1084 = !DILocation(line: 63, column: 11, scope: !1083)
!1085 = !DILocation(line: 66, column: 17, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !107, line: 64, column: 13)
!1087 = !DILocation(line: 66, column: 15, scope: !1086)
!1088 = !DILocation(line: 67, column: 15, scope: !1086)
!1089 = !DILocalVariable(name: "authors", scope: !1090, file: !107, line: 71, type: !1091)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !107, line: 70, column: 15)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 52, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 32, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1094, baseType: !1095)
!1094 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !88, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1095, file: !1094, line: 71, baseType: !50, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1095, file: !1094, line: 71, baseType: !50, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1095, file: !1094, line: 71, baseType: !50, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1095, file: !1094, line: 71, baseType: !51, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1095, file: !1094, line: 71, baseType: !51, size: 32, offset: 224)
!1102 = !DILocation(line: 71, column: 25, scope: !1090)
!1103 = !DILocation(line: 72, column: 17, scope: !1090)
!1104 = !DILocation(line: 73, column: 33, scope: !1090)
!1105 = !DILocation(line: 73, column: 41, scope: !1090)
!1106 = !DILocation(line: 73, column: 55, scope: !1090)
!1107 = !DILocation(line: 73, column: 64, scope: !1090)
!1108 = !DILocation(line: 73, column: 17, scope: !1090)
!1109 = !DILocation(line: 74, column: 17, scope: !1090)
!1110 = !DILocation(line: 79, column: 15, scope: !1086)
!1111 = !DILocation(line: 81, column: 9, scope: !1083)
!1112 = !DILocation(line: 82, column: 5, scope: !1073)
!1113 = !DILocation(line: 85, column: 12, scope: !1048)
!1114 = !DILocation(line: 85, column: 10, scope: !1048)
!1115 = !DILocation(line: 89, column: 10, scope: !1048)
!1116 = !DILocation(line: 90, column: 1, scope: !1048)
!1117 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !107, file: !107, line: 98, type: !1118, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !56)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !51, !53, !6, !6, !6, !69, !1051, null}
!1120 = !DILocalVariable(name: "argc", arg: 1, scope: !1117, file: !107, line: 98, type: !51)
!1121 = !DILocation(line: 98, column: 38, scope: !1117)
!1122 = !DILocalVariable(name: "argv", arg: 2, scope: !1117, file: !107, line: 99, type: !53)
!1123 = !DILocation(line: 99, column: 41, scope: !1117)
!1124 = !DILocalVariable(name: "command_name", arg: 3, scope: !1117, file: !107, line: 100, type: !6)
!1125 = !DILocation(line: 100, column: 46, scope: !1117)
!1126 = !DILocalVariable(name: "package", arg: 4, scope: !1117, file: !107, line: 101, type: !6)
!1127 = !DILocation(line: 101, column: 46, scope: !1117)
!1128 = !DILocalVariable(name: "version", arg: 5, scope: !1117, file: !107, line: 102, type: !6)
!1129 = !DILocation(line: 102, column: 46, scope: !1117)
!1130 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1117, file: !107, line: 103, type: !69)
!1131 = !DILocation(line: 103, column: 39, scope: !1117)
!1132 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1117, file: !107, line: 104, type: !1051)
!1133 = !DILocation(line: 104, column: 41, scope: !1117)
!1134 = !DILocalVariable(name: "saved_opterr", scope: !1117, file: !107, line: 107, type: !51)
!1135 = !DILocation(line: 107, column: 7, scope: !1117)
!1136 = !DILocation(line: 107, column: 22, scope: !1117)
!1137 = !DILocation(line: 110, column: 10, scope: !1117)
!1138 = !DILocalVariable(name: "optstring", scope: !1117, file: !107, line: 112, type: !6)
!1139 = !DILocation(line: 112, column: 15, scope: !1117)
!1140 = !DILocation(line: 112, column: 27, scope: !1117)
!1141 = !DILocalVariable(name: "c", scope: !1117, file: !107, line: 114, type: !51)
!1142 = !DILocation(line: 114, column: 7, scope: !1117)
!1143 = !DILocation(line: 114, column: 24, scope: !1117)
!1144 = !DILocation(line: 114, column: 30, scope: !1117)
!1145 = !DILocation(line: 114, column: 36, scope: !1117)
!1146 = !DILocation(line: 114, column: 11, scope: !1117)
!1147 = !DILocation(line: 115, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1117, file: !107, line: 115, column: 7)
!1149 = !DILocation(line: 115, column: 9, scope: !1148)
!1150 = !DILocation(line: 115, column: 7, scope: !1117)
!1151 = !DILocation(line: 117, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !107, line: 116, column: 5)
!1153 = !DILocation(line: 117, column: 7, scope: !1152)
!1154 = !DILocation(line: 120, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !107, line: 118, column: 9)
!1156 = !DILocation(line: 120, column: 11, scope: !1155)
!1157 = !DILocation(line: 121, column: 11, scope: !1155)
!1158 = !DILocalVariable(name: "authors", scope: !1159, file: !107, line: 125, type: !1091)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !107, line: 124, column: 11)
!1160 = !DILocation(line: 125, column: 21, scope: !1159)
!1161 = !DILocation(line: 126, column: 13, scope: !1159)
!1162 = !DILocation(line: 127, column: 29, scope: !1159)
!1163 = !DILocation(line: 127, column: 37, scope: !1159)
!1164 = !DILocation(line: 127, column: 51, scope: !1159)
!1165 = !DILocation(line: 127, column: 60, scope: !1159)
!1166 = !DILocation(line: 127, column: 13, scope: !1159)
!1167 = !DILocation(line: 128, column: 13, scope: !1159)
!1168 = !DILocation(line: 132, column: 13, scope: !1155)
!1169 = !DILocation(line: 132, column: 26, scope: !1155)
!1170 = !DILocation(line: 132, column: 11, scope: !1155)
!1171 = !DILocation(line: 133, column: 11, scope: !1155)
!1172 = !DILocation(line: 135, column: 5, scope: !1152)
!1173 = !DILocation(line: 138, column: 12, scope: !1117)
!1174 = !DILocation(line: 138, column: 10, scope: !1117)
!1175 = !DILocation(line: 139, column: 1, scope: !1117)
!1176 = distinct !DISubprogram(name: "set_program_name", scope: !124, file: !124, line: 37, type: !566, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !56)
!1177 = !DILocalVariable(name: "argv0", arg: 1, scope: !1176, file: !124, line: 37, type: !6)
!1178 = !DILocation(line: 37, column: 31, scope: !1176)
!1179 = !DILocalVariable(name: "slash", scope: !1176, file: !124, line: 44, type: !6)
!1180 = !DILocation(line: 44, column: 15, scope: !1176)
!1181 = !DILocation(line: 44, column: 32, scope: !1176)
!1182 = !DILocation(line: 44, column: 23, scope: !1176)
!1183 = !DILocalVariable(name: "base", scope: !1176, file: !124, line: 45, type: !6)
!1184 = !DILocation(line: 45, column: 15, scope: !1176)
!1185 = !DILocation(line: 45, column: 22, scope: !1176)
!1186 = !DILocation(line: 45, column: 30, scope: !1176)
!1187 = !DILocation(line: 45, column: 36, scope: !1176)
!1188 = !DILocation(line: 45, column: 42, scope: !1176)
!1189 = !DILocation(line: 46, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1176, file: !124, line: 46, column: 7)
!1191 = !DILocation(line: 46, column: 19, scope: !1190)
!1192 = !DILocation(line: 46, column: 17, scope: !1190)
!1193 = !DILocation(line: 46, column: 9, scope: !1190)
!1194 = !DILocation(line: 46, column: 25, scope: !1190)
!1195 = !DILocation(line: 46, column: 35, scope: !1190)
!1196 = !DILocation(line: 46, column: 40, scope: !1190)
!1197 = !DILocation(line: 46, column: 28, scope: !1190)
!1198 = !DILocation(line: 46, column: 7, scope: !1176)
!1199 = !DILocation(line: 48, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1190, file: !124, line: 47, column: 5)
!1201 = !DILocation(line: 48, column: 13, scope: !1200)
!1202 = !DILocation(line: 49, column: 20, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !124, line: 49, column: 11)
!1204 = !DILocation(line: 49, column: 11, scope: !1203)
!1205 = !DILocation(line: 49, column: 36, scope: !1203)
!1206 = !DILocation(line: 49, column: 11, scope: !1200)
!1207 = !DILocation(line: 51, column: 16, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !124, line: 50, column: 9)
!1209 = !DILocation(line: 52, column: 19, scope: !1208)
!1210 = !DILocation(line: 52, column: 17, scope: !1208)
!1211 = !DILocation(line: 53, column: 9, scope: !1208)
!1212 = !DILocation(line: 54, column: 5, scope: !1200)
!1213 = !DILocation(line: 65, column: 18, scope: !1176)
!1214 = !DILocation(line: 65, column: 16, scope: !1176)
!1215 = !DILocation(line: 71, column: 38, scope: !1176)
!1216 = !DILocation(line: 71, column: 27, scope: !1176)
!1217 = !DILocation(line: 74, column: 44, scope: !1176)
!1218 = !DILocation(line: 74, column: 33, scope: !1176)
!1219 = !DILocation(line: 76, column: 1, scope: !1176)
!1220 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !129, file: !130, line: 38, type: !6)
!1221 = !DILocation(line: 38, column: 31, scope: !129)
!1222 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !129, file: !130, line: 38, type: !6)
!1223 = !DILocation(line: 38, column: 66, scope: !129)
!1224 = !DILocalVariable(name: "translation", scope: !129, file: !130, line: 40, type: !6)
!1225 = !DILocation(line: 40, column: 15, scope: !129)
!1226 = !DILocation(line: 40, column: 38, scope: !129)
!1227 = !DILocation(line: 40, column: 29, scope: !129)
!1228 = !DILocation(line: 41, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !129, file: !130, line: 41, column: 7)
!1230 = !DILocation(line: 41, column: 22, scope: !1229)
!1231 = !DILocation(line: 41, column: 19, scope: !1229)
!1232 = !DILocation(line: 41, column: 7, scope: !129)
!1233 = !DILocation(line: 42, column: 12, scope: !1229)
!1234 = !DILocation(line: 42, column: 5, scope: !1229)
!1235 = !DILocalVariable(name: "w", scope: !129, file: !130, line: 47, type: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1237, line: 37, baseType: !1238)
!1237 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !251, line: 57, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !251, line: 42, baseType: !14)
!1240 = !DILocation(line: 47, column: 12, scope: !129)
!1241 = !DILocalVariable(name: "mbs", scope: !129, file: !130, line: 48, type: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1244, file: !225, line: 15, baseType: !51, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1244, file: !225, line: 20, baseType: !1248, size: 32, offset: 32)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !225, line: 16, size: 32, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1248, file: !225, line: 18, baseType: !14, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1248, file: !225, line: 19, baseType: !234, size: 32)
!1252 = !DILocation(line: 48, column: 13, scope: !129)
!1253 = !DILocation(line: 48, column: 18, scope: !129)
!1254 = !DILocation(line: 49, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !129, file: !130, line: 49, column: 7)
!1256 = !DILocation(line: 49, column: 39, scope: !1255)
!1257 = !DILocation(line: 49, column: 44, scope: !1255)
!1258 = !DILocation(line: 49, column: 47, scope: !1255)
!1259 = !DILocation(line: 49, column: 49, scope: !1255)
!1260 = !DILocation(line: 49, column: 7, scope: !129)
!1261 = !DILocation(line: 50, column: 12, scope: !1255)
!1262 = !DILocation(line: 50, column: 5, scope: !1255)
!1263 = !DILocation(line: 53, column: 10, scope: !129)
!1264 = !DILocation(line: 53, column: 3, scope: !129)
!1265 = !DILocation(line: 54, column: 1, scope: !129)
!1266 = distinct !DISubprogram(name: "clone_quoting_options", scope: !141, file: !141, line: 113, type: !1267, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1270 = !DILocalVariable(name: "o", arg: 1, scope: !1266, file: !141, line: 113, type: !1269)
!1271 = !DILocation(line: 113, column: 48, scope: !1266)
!1272 = !DILocalVariable(name: "saved_errno", scope: !1266, file: !141, line: 115, type: !51)
!1273 = !DILocation(line: 115, column: 7, scope: !1266)
!1274 = !DILocation(line: 115, column: 21, scope: !1266)
!1275 = !DILocalVariable(name: "p", scope: !1266, file: !141, line: 116, type: !1269)
!1276 = !DILocation(line: 116, column: 27, scope: !1266)
!1277 = !DILocation(line: 116, column: 40, scope: !1266)
!1278 = !DILocation(line: 116, column: 44, scope: !1266)
!1279 = !DILocation(line: 116, column: 31, scope: !1266)
!1280 = !DILocation(line: 118, column: 11, scope: !1266)
!1281 = !DILocation(line: 118, column: 3, scope: !1266)
!1282 = !DILocation(line: 118, column: 9, scope: !1266)
!1283 = !DILocation(line: 119, column: 10, scope: !1266)
!1284 = !DILocation(line: 119, column: 3, scope: !1266)
!1285 = distinct !DISubprogram(name: "get_quoting_style", scope: !141, file: !141, line: 124, type: !1286, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!35, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1290 = !DILocalVariable(name: "o", arg: 1, scope: !1285, file: !141, line: 124, type: !1288)
!1291 = !DILocation(line: 124, column: 50, scope: !1285)
!1292 = !DILocation(line: 126, column: 11, scope: !1285)
!1293 = !DILocation(line: 126, column: 15, scope: !1285)
!1294 = !DILocation(line: 126, column: 46, scope: !1285)
!1295 = !DILocation(line: 126, column: 3, scope: !1285)
!1296 = distinct !DISubprogram(name: "set_quoting_style", scope: !141, file: !141, line: 132, type: !1297, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1269, !35}
!1299 = !DILocalVariable(name: "o", arg: 1, scope: !1296, file: !141, line: 132, type: !1269)
!1300 = !DILocation(line: 132, column: 44, scope: !1296)
!1301 = !DILocalVariable(name: "s", arg: 2, scope: !1296, file: !141, line: 132, type: !35)
!1302 = !DILocation(line: 132, column: 66, scope: !1296)
!1303 = !DILocation(line: 134, column: 47, scope: !1296)
!1304 = !DILocation(line: 134, column: 4, scope: !1296)
!1305 = !DILocation(line: 134, column: 8, scope: !1296)
!1306 = !DILocation(line: 134, column: 39, scope: !1296)
!1307 = !DILocation(line: 134, column: 45, scope: !1296)
!1308 = !DILocation(line: 135, column: 1, scope: !1296)
!1309 = distinct !DISubprogram(name: "set_char_quoting", scope: !141, file: !141, line: 143, type: !1310, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!51, !1269, !8, !51}
!1312 = !DILocalVariable(name: "o", arg: 1, scope: !1309, file: !141, line: 143, type: !1269)
!1313 = !DILocation(line: 143, column: 43, scope: !1309)
!1314 = !DILocalVariable(name: "c", arg: 2, scope: !1309, file: !141, line: 143, type: !8)
!1315 = !DILocation(line: 143, column: 51, scope: !1309)
!1316 = !DILocalVariable(name: "i", arg: 3, scope: !1309, file: !141, line: 143, type: !51)
!1317 = !DILocation(line: 143, column: 58, scope: !1309)
!1318 = !DILocalVariable(name: "uc", scope: !1309, file: !141, line: 145, type: !220)
!1319 = !DILocation(line: 145, column: 17, scope: !1309)
!1320 = !DILocation(line: 145, column: 22, scope: !1309)
!1321 = !DILocalVariable(name: "p", scope: !1309, file: !141, line: 146, type: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1323 = !DILocation(line: 146, column: 17, scope: !1309)
!1324 = !DILocation(line: 147, column: 6, scope: !1309)
!1325 = !DILocation(line: 147, column: 10, scope: !1309)
!1326 = !DILocation(line: 147, column: 41, scope: !1309)
!1327 = !DILocation(line: 147, column: 5, scope: !1309)
!1328 = !DILocation(line: 147, column: 59, scope: !1309)
!1329 = !DILocation(line: 147, column: 62, scope: !1309)
!1330 = !DILocation(line: 147, column: 57, scope: !1309)
!1331 = !DILocalVariable(name: "shift", scope: !1309, file: !141, line: 148, type: !51)
!1332 = !DILocation(line: 148, column: 7, scope: !1309)
!1333 = !DILocation(line: 148, column: 15, scope: !1309)
!1334 = !DILocation(line: 148, column: 18, scope: !1309)
!1335 = !DILocalVariable(name: "r", scope: !1309, file: !141, line: 149, type: !14)
!1336 = !DILocation(line: 149, column: 16, scope: !1309)
!1337 = !DILocation(line: 149, column: 22, scope: !1309)
!1338 = !DILocation(line: 149, column: 21, scope: !1309)
!1339 = !DILocation(line: 149, column: 27, scope: !1309)
!1340 = !DILocation(line: 149, column: 24, scope: !1309)
!1341 = !DILocation(line: 149, column: 34, scope: !1309)
!1342 = !DILocation(line: 150, column: 11, scope: !1309)
!1343 = !DILocation(line: 150, column: 13, scope: !1309)
!1344 = !DILocation(line: 150, column: 21, scope: !1309)
!1345 = !DILocation(line: 150, column: 19, scope: !1309)
!1346 = !DILocation(line: 150, column: 27, scope: !1309)
!1347 = !DILocation(line: 150, column: 24, scope: !1309)
!1348 = !DILocation(line: 150, column: 4, scope: !1309)
!1349 = !DILocation(line: 150, column: 6, scope: !1309)
!1350 = !DILocation(line: 151, column: 10, scope: !1309)
!1351 = !DILocation(line: 151, column: 3, scope: !1309)
!1352 = distinct !DISubprogram(name: "set_quoting_flags", scope: !141, file: !141, line: 159, type: !1353, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!51, !1269, !51}
!1355 = !DILocalVariable(name: "o", arg: 1, scope: !1352, file: !141, line: 159, type: !1269)
!1356 = !DILocation(line: 159, column: 44, scope: !1352)
!1357 = !DILocalVariable(name: "i", arg: 2, scope: !1352, file: !141, line: 159, type: !51)
!1358 = !DILocation(line: 159, column: 51, scope: !1352)
!1359 = !DILocation(line: 161, column: 8, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1352, file: !141, line: 161, column: 7)
!1361 = !DILocation(line: 161, column: 7, scope: !1352)
!1362 = !DILocation(line: 162, column: 7, scope: !1360)
!1363 = !DILocation(line: 162, column: 5, scope: !1360)
!1364 = !DILocalVariable(name: "r", scope: !1352, file: !141, line: 163, type: !51)
!1365 = !DILocation(line: 163, column: 7, scope: !1352)
!1366 = !DILocation(line: 163, column: 11, scope: !1352)
!1367 = !DILocation(line: 163, column: 14, scope: !1352)
!1368 = !DILocation(line: 164, column: 14, scope: !1352)
!1369 = !DILocation(line: 164, column: 3, scope: !1352)
!1370 = !DILocation(line: 164, column: 6, scope: !1352)
!1371 = !DILocation(line: 164, column: 12, scope: !1352)
!1372 = !DILocation(line: 165, column: 10, scope: !1352)
!1373 = !DILocation(line: 165, column: 3, scope: !1352)
!1374 = distinct !DISubprogram(name: "set_custom_quoting", scope: !141, file: !141, line: 169, type: !1375, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1269, !6, !6}
!1377 = !DILocalVariable(name: "o", arg: 1, scope: !1374, file: !141, line: 169, type: !1269)
!1378 = !DILocation(line: 169, column: 45, scope: !1374)
!1379 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1374, file: !141, line: 170, type: !6)
!1380 = !DILocation(line: 170, column: 33, scope: !1374)
!1381 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1374, file: !141, line: 170, type: !6)
!1382 = !DILocation(line: 170, column: 57, scope: !1374)
!1383 = !DILocation(line: 172, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !141, line: 172, column: 7)
!1385 = !DILocation(line: 172, column: 7, scope: !1374)
!1386 = !DILocation(line: 173, column: 7, scope: !1384)
!1387 = !DILocation(line: 173, column: 5, scope: !1384)
!1388 = !DILocation(line: 174, column: 3, scope: !1374)
!1389 = !DILocation(line: 174, column: 6, scope: !1374)
!1390 = !DILocation(line: 174, column: 12, scope: !1374)
!1391 = !DILocation(line: 175, column: 8, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1374, file: !141, line: 175, column: 7)
!1393 = !DILocation(line: 175, column: 19, scope: !1392)
!1394 = !DILocation(line: 175, column: 23, scope: !1392)
!1395 = !DILocation(line: 175, column: 7, scope: !1374)
!1396 = !DILocation(line: 176, column: 5, scope: !1392)
!1397 = !DILocation(line: 177, column: 19, scope: !1374)
!1398 = !DILocation(line: 177, column: 3, scope: !1374)
!1399 = !DILocation(line: 177, column: 6, scope: !1374)
!1400 = !DILocation(line: 177, column: 17, scope: !1374)
!1401 = !DILocation(line: 178, column: 20, scope: !1374)
!1402 = !DILocation(line: 178, column: 3, scope: !1374)
!1403 = !DILocation(line: 178, column: 6, scope: !1374)
!1404 = !DILocation(line: 178, column: 18, scope: !1374)
!1405 = !DILocation(line: 179, column: 1, scope: !1374)
!1406 = distinct !DISubprogram(name: "quotearg_buffer", scope: !141, file: !141, line: 774, type: !1407, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!149, !54, !149, !6, !149, !1288}
!1409 = !DILocalVariable(name: "buffer", arg: 1, scope: !1406, file: !141, line: 774, type: !54)
!1410 = !DILocation(line: 774, column: 24, scope: !1406)
!1411 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1406, file: !141, line: 774, type: !149)
!1412 = !DILocation(line: 774, column: 39, scope: !1406)
!1413 = !DILocalVariable(name: "arg", arg: 3, scope: !1406, file: !141, line: 775, type: !6)
!1414 = !DILocation(line: 775, column: 30, scope: !1406)
!1415 = !DILocalVariable(name: "argsize", arg: 4, scope: !1406, file: !141, line: 775, type: !149)
!1416 = !DILocation(line: 775, column: 42, scope: !1406)
!1417 = !DILocalVariable(name: "o", arg: 5, scope: !1406, file: !141, line: 776, type: !1288)
!1418 = !DILocation(line: 776, column: 48, scope: !1406)
!1419 = !DILocalVariable(name: "p", scope: !1406, file: !141, line: 778, type: !1288)
!1420 = !DILocation(line: 778, column: 33, scope: !1406)
!1421 = !DILocation(line: 778, column: 37, scope: !1406)
!1422 = !DILocation(line: 778, column: 41, scope: !1406)
!1423 = !DILocalVariable(name: "saved_errno", scope: !1406, file: !141, line: 779, type: !51)
!1424 = !DILocation(line: 779, column: 7, scope: !1406)
!1425 = !DILocation(line: 779, column: 21, scope: !1406)
!1426 = !DILocalVariable(name: "r", scope: !1406, file: !141, line: 780, type: !149)
!1427 = !DILocation(line: 780, column: 10, scope: !1406)
!1428 = !DILocation(line: 780, column: 40, scope: !1406)
!1429 = !DILocation(line: 780, column: 48, scope: !1406)
!1430 = !DILocation(line: 780, column: 60, scope: !1406)
!1431 = !DILocation(line: 780, column: 65, scope: !1406)
!1432 = !DILocation(line: 781, column: 40, scope: !1406)
!1433 = !DILocation(line: 781, column: 43, scope: !1406)
!1434 = !DILocation(line: 781, column: 50, scope: !1406)
!1435 = !DILocation(line: 781, column: 53, scope: !1406)
!1436 = !DILocation(line: 781, column: 60, scope: !1406)
!1437 = !DILocation(line: 781, column: 63, scope: !1406)
!1438 = !DILocation(line: 782, column: 40, scope: !1406)
!1439 = !DILocation(line: 782, column: 43, scope: !1406)
!1440 = !DILocation(line: 782, column: 55, scope: !1406)
!1441 = !DILocation(line: 782, column: 58, scope: !1406)
!1442 = !DILocation(line: 780, column: 14, scope: !1406)
!1443 = !DILocation(line: 783, column: 11, scope: !1406)
!1444 = !DILocation(line: 783, column: 3, scope: !1406)
!1445 = !DILocation(line: 783, column: 9, scope: !1406)
!1446 = !DILocation(line: 784, column: 10, scope: !1406)
!1447 = !DILocation(line: 784, column: 3, scope: !1406)
!1448 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !141, file: !141, line: 251, type: !1449, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !56)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!149, !54, !149, !6, !149, !35, !51, !1451, !6, !6}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1453 = !DILocalVariable(name: "buffer", arg: 1, scope: !1448, file: !141, line: 251, type: !54)
!1454 = !DILocation(line: 251, column: 33, scope: !1448)
!1455 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1448, file: !141, line: 251, type: !149)
!1456 = !DILocation(line: 251, column: 48, scope: !1448)
!1457 = !DILocalVariable(name: "arg", arg: 3, scope: !1448, file: !141, line: 252, type: !6)
!1458 = !DILocation(line: 252, column: 39, scope: !1448)
!1459 = !DILocalVariable(name: "argsize", arg: 4, scope: !1448, file: !141, line: 252, type: !149)
!1460 = !DILocation(line: 252, column: 51, scope: !1448)
!1461 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1448, file: !141, line: 253, type: !35)
!1462 = !DILocation(line: 253, column: 46, scope: !1448)
!1463 = !DILocalVariable(name: "flags", arg: 6, scope: !1448, file: !141, line: 253, type: !51)
!1464 = !DILocation(line: 253, column: 65, scope: !1448)
!1465 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1448, file: !141, line: 254, type: !1451)
!1466 = !DILocation(line: 254, column: 47, scope: !1448)
!1467 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1448, file: !141, line: 255, type: !6)
!1468 = !DILocation(line: 255, column: 39, scope: !1448)
!1469 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1448, file: !141, line: 256, type: !6)
!1470 = !DILocation(line: 256, column: 39, scope: !1448)
!1471 = !DILocalVariable(name: "unibyte_locale", scope: !1448, file: !141, line: 258, type: !69)
!1472 = !DILocation(line: 258, column: 8, scope: !1448)
!1473 = !DILocation(line: 258, column: 25, scope: !1448)
!1474 = !DILocation(line: 258, column: 36, scope: !1448)
!1475 = !DILocalVariable(name: "len", scope: !1448, file: !141, line: 260, type: !149)
!1476 = !DILocation(line: 260, column: 10, scope: !1448)
!1477 = !DILocalVariable(name: "orig_buffersize", scope: !1448, file: !141, line: 261, type: !149)
!1478 = !DILocation(line: 261, column: 10, scope: !1448)
!1479 = !DILocalVariable(name: "quote_string", scope: !1448, file: !141, line: 262, type: !6)
!1480 = !DILocation(line: 262, column: 15, scope: !1448)
!1481 = !DILocalVariable(name: "quote_string_len", scope: !1448, file: !141, line: 263, type: !149)
!1482 = !DILocation(line: 263, column: 10, scope: !1448)
!1483 = !DILocalVariable(name: "backslash_escapes", scope: !1448, file: !141, line: 264, type: !69)
!1484 = !DILocation(line: 264, column: 8, scope: !1448)
!1485 = !DILocalVariable(name: "elide_outer_quotes", scope: !1448, file: !141, line: 265, type: !69)
!1486 = !DILocation(line: 265, column: 8, scope: !1448)
!1487 = !DILocation(line: 265, column: 30, scope: !1448)
!1488 = !DILocation(line: 265, column: 36, scope: !1448)
!1489 = !DILocation(line: 265, column: 61, scope: !1448)
!1490 = !DILocalVariable(name: "encountered_single_quote", scope: !1448, file: !141, line: 266, type: !69)
!1491 = !DILocation(line: 266, column: 8, scope: !1448)
!1492 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1448, file: !141, line: 267, type: !69)
!1493 = !DILocation(line: 267, column: 8, scope: !1448)
!1494 = !DILocation(line: 267, column: 3, scope: !1448)
!1495 = !DILabel(scope: !1448, name: "process_input", file: !141, line: 308)
!1496 = !DILocation(line: 308, column: 2, scope: !1448)
!1497 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1448, file: !141, line: 309, type: !69)
!1498 = !DILocation(line: 309, column: 8, scope: !1448)
!1499 = !DILocation(line: 311, column: 11, scope: !1448)
!1500 = !DILocation(line: 311, column: 3, scope: !1448)
!1501 = !DILocation(line: 314, column: 21, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 312, column: 5)
!1503 = !DILocation(line: 315, column: 26, scope: !1502)
!1504 = !DILocation(line: 315, column: 7, scope: !1502)
!1505 = !DILocation(line: 318, column: 12, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !141, line: 318, column: 11)
!1507 = !DILocation(line: 318, column: 11, scope: !1502)
!1508 = !DILocation(line: 319, column: 9, scope: !1506)
!1509 = !DILocation(line: 319, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !141, line: 319, column: 9)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !141, line: 319, column: 9)
!1512 = !DILocation(line: 319, column: 9, scope: !1511)
!1513 = !DILocation(line: 320, column: 25, scope: !1502)
!1514 = !DILocation(line: 321, column: 20, scope: !1502)
!1515 = !DILocation(line: 322, column: 24, scope: !1502)
!1516 = !DILocation(line: 323, column: 7, scope: !1502)
!1517 = !DILocation(line: 326, column: 25, scope: !1502)
!1518 = !DILocation(line: 327, column: 26, scope: !1502)
!1519 = !DILocation(line: 328, column: 7, scope: !1502)
!1520 = !DILocation(line: 334, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !141, line: 334, column: 13)
!1522 = distinct !DILexicalBlock(scope: !1502, file: !141, line: 333, column: 7)
!1523 = !DILocation(line: 334, column: 27, scope: !1521)
!1524 = !DILocation(line: 334, column: 13, scope: !1522)
!1525 = !DILocation(line: 357, column: 50, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1521, file: !141, line: 335, column: 11)
!1527 = !DILocation(line: 357, column: 26, scope: !1526)
!1528 = !DILocation(line: 357, column: 24, scope: !1526)
!1529 = !DILocation(line: 358, column: 51, scope: !1526)
!1530 = !DILocation(line: 358, column: 27, scope: !1526)
!1531 = !DILocation(line: 358, column: 25, scope: !1526)
!1532 = !DILocation(line: 359, column: 11, scope: !1526)
!1533 = !DILocation(line: 360, column: 14, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1522, file: !141, line: 360, column: 13)
!1535 = !DILocation(line: 360, column: 13, scope: !1522)
!1536 = !DILocalVariable(name: "lq", scope: !1537, file: !141, line: 361, type: !6)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !141, line: 361, column: 11)
!1538 = !DILocation(line: 361, column: 28, scope: !1537)
!1539 = !DILocation(line: 361, column: 33, scope: !1537)
!1540 = !DILocation(line: 361, column: 16, scope: !1537)
!1541 = !DILocation(line: 361, column: 46, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !141, line: 361, column: 11)
!1543 = !DILocation(line: 361, column: 45, scope: !1542)
!1544 = !DILocation(line: 361, column: 11, scope: !1537)
!1545 = !DILocation(line: 362, column: 13, scope: !1542)
!1546 = !DILocation(line: 362, column: 13, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !141, line: 362, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !141, line: 362, column: 13)
!1549 = !DILocation(line: 362, column: 13, scope: !1548)
!1550 = !DILocation(line: 361, column: 52, scope: !1542)
!1551 = !DILocation(line: 361, column: 11, scope: !1542)
!1552 = distinct !{!1552, !1544, !1553, !449}
!1553 = !DILocation(line: 362, column: 13, scope: !1537)
!1554 = !DILocation(line: 363, column: 27, scope: !1522)
!1555 = !DILocation(line: 364, column: 24, scope: !1522)
!1556 = !DILocation(line: 364, column: 22, scope: !1522)
!1557 = !DILocation(line: 365, column: 36, scope: !1522)
!1558 = !DILocation(line: 365, column: 28, scope: !1522)
!1559 = !DILocation(line: 365, column: 26, scope: !1522)
!1560 = !DILocation(line: 367, column: 7, scope: !1502)
!1561 = !DILocation(line: 370, column: 25, scope: !1502)
!1562 = !DILocation(line: 370, column: 7, scope: !1502)
!1563 = !DILocation(line: 373, column: 26, scope: !1502)
!1564 = !DILocation(line: 373, column: 7, scope: !1502)
!1565 = !DILocation(line: 376, column: 12, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1502, file: !141, line: 376, column: 11)
!1567 = !DILocation(line: 376, column: 11, scope: !1502)
!1568 = !DILocation(line: 377, column: 27, scope: !1566)
!1569 = !DILocation(line: 377, column: 9, scope: !1566)
!1570 = !DILocation(line: 380, column: 21, scope: !1502)
!1571 = !DILocation(line: 381, column: 12, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1502, file: !141, line: 381, column: 11)
!1573 = !DILocation(line: 381, column: 11, scope: !1502)
!1574 = !DILocation(line: 382, column: 9, scope: !1572)
!1575 = !DILocation(line: 382, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !141, line: 382, column: 9)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !141, line: 382, column: 9)
!1578 = !DILocation(line: 382, column: 9, scope: !1577)
!1579 = !DILocation(line: 383, column: 20, scope: !1502)
!1580 = !DILocation(line: 384, column: 24, scope: !1502)
!1581 = !DILocation(line: 385, column: 7, scope: !1502)
!1582 = !DILocation(line: 388, column: 26, scope: !1502)
!1583 = !DILocation(line: 389, column: 7, scope: !1502)
!1584 = !DILocation(line: 392, column: 7, scope: !1502)
!1585 = !DILocalVariable(name: "i", scope: !1586, file: !141, line: 395, type: !149)
!1586 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 395, column: 3)
!1587 = !DILocation(line: 395, column: 15, scope: !1586)
!1588 = !DILocation(line: 395, column: 8, scope: !1586)
!1589 = !DILocation(line: 395, column: 26, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !141, line: 395, column: 3)
!1591 = !DILocation(line: 395, column: 34, scope: !1590)
!1592 = !DILocation(line: 395, column: 48, scope: !1590)
!1593 = !DILocation(line: 395, column: 52, scope: !1590)
!1594 = !DILocation(line: 395, column: 55, scope: !1590)
!1595 = !DILocation(line: 395, column: 65, scope: !1590)
!1596 = !DILocation(line: 395, column: 70, scope: !1590)
!1597 = !DILocation(line: 395, column: 67, scope: !1590)
!1598 = !DILocation(line: 395, column: 23, scope: !1590)
!1599 = !DILocation(line: 395, column: 3, scope: !1586)
!1600 = !DILocalVariable(name: "is_right_quote", scope: !1601, file: !141, line: 397, type: !69)
!1601 = distinct !DILexicalBlock(scope: !1590, file: !141, line: 396, column: 5)
!1602 = !DILocation(line: 397, column: 12, scope: !1601)
!1603 = !DILocalVariable(name: "escaping", scope: !1601, file: !141, line: 398, type: !69)
!1604 = !DILocation(line: 398, column: 12, scope: !1601)
!1605 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1601, file: !141, line: 399, type: !69)
!1606 = !DILocation(line: 399, column: 12, scope: !1601)
!1607 = !DILocation(line: 401, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 401, column: 11)
!1609 = !DILocation(line: 402, column: 11, scope: !1608)
!1610 = !DILocation(line: 402, column: 14, scope: !1608)
!1611 = !DILocation(line: 402, column: 28, scope: !1608)
!1612 = !DILocation(line: 403, column: 11, scope: !1608)
!1613 = !DILocation(line: 403, column: 14, scope: !1608)
!1614 = !DILocation(line: 404, column: 11, scope: !1608)
!1615 = !DILocation(line: 404, column: 15, scope: !1608)
!1616 = !DILocation(line: 404, column: 19, scope: !1608)
!1617 = !DILocation(line: 404, column: 17, scope: !1608)
!1618 = !DILocation(line: 405, column: 19, scope: !1608)
!1619 = !DILocation(line: 405, column: 27, scope: !1608)
!1620 = !DILocation(line: 405, column: 39, scope: !1608)
!1621 = !DILocation(line: 405, column: 46, scope: !1608)
!1622 = !DILocation(line: 405, column: 44, scope: !1608)
!1623 = !DILocation(line: 409, column: 40, scope: !1608)
!1624 = !DILocation(line: 409, column: 32, scope: !1608)
!1625 = !DILocation(line: 409, column: 30, scope: !1608)
!1626 = !DILocation(line: 409, column: 48, scope: !1608)
!1627 = !DILocation(line: 405, column: 15, scope: !1608)
!1628 = !DILocation(line: 410, column: 11, scope: !1608)
!1629 = !DILocation(line: 410, column: 21, scope: !1608)
!1630 = !DILocation(line: 410, column: 27, scope: !1608)
!1631 = !DILocation(line: 410, column: 25, scope: !1608)
!1632 = !DILocation(line: 410, column: 30, scope: !1608)
!1633 = !DILocation(line: 410, column: 44, scope: !1608)
!1634 = !DILocation(line: 410, column: 14, scope: !1608)
!1635 = !DILocation(line: 401, column: 11, scope: !1601)
!1636 = !DILocation(line: 412, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !141, line: 412, column: 15)
!1638 = distinct !DILexicalBlock(scope: !1608, file: !141, line: 411, column: 9)
!1639 = !DILocation(line: 412, column: 15, scope: !1638)
!1640 = !DILocation(line: 413, column: 13, scope: !1637)
!1641 = !DILocation(line: 414, column: 26, scope: !1638)
!1642 = !DILocation(line: 415, column: 9, scope: !1638)
!1643 = !DILocalVariable(name: "c", scope: !1601, file: !141, line: 417, type: !220)
!1644 = !DILocation(line: 417, column: 21, scope: !1601)
!1645 = !DILocation(line: 417, column: 25, scope: !1601)
!1646 = !DILocation(line: 417, column: 29, scope: !1601)
!1647 = !DILocation(line: 418, column: 15, scope: !1601)
!1648 = !DILocation(line: 418, column: 7, scope: !1601)
!1649 = !DILocation(line: 421, column: 15, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 421, column: 15)
!1651 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 419, column: 9)
!1652 = !DILocation(line: 421, column: 15, scope: !1651)
!1653 = !DILocation(line: 423, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !141, line: 422, column: 13)
!1655 = !DILocation(line: 423, column: 15, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !141, line: 423, column: 15)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !141, line: 423, column: 15)
!1658 = !DILocation(line: 423, column: 15, scope: !1657)
!1659 = !DILocation(line: 423, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !141, line: 423, column: 15)
!1661 = !DILocation(line: 423, column: 15, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1660, file: !141, line: 423, column: 15)
!1663 = !DILocation(line: 423, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !141, line: 423, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !141, line: 423, column: 15)
!1666 = !DILocation(line: 423, column: 15, scope: !1665)
!1667 = !DILocation(line: 423, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !141, line: 423, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1662, file: !141, line: 423, column: 15)
!1670 = !DILocation(line: 423, column: 15, scope: !1669)
!1671 = !DILocation(line: 423, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !141, line: 423, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !141, line: 423, column: 15)
!1674 = !DILocation(line: 423, column: 15, scope: !1673)
!1675 = !DILocation(line: 423, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !141, line: 423, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1657, file: !141, line: 423, column: 15)
!1678 = !DILocation(line: 423, column: 15, scope: !1677)
!1679 = !DILocation(line: 430, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1654, file: !141, line: 430, column: 19)
!1681 = !DILocation(line: 430, column: 33, scope: !1680)
!1682 = !DILocation(line: 431, column: 19, scope: !1680)
!1683 = !DILocation(line: 431, column: 22, scope: !1680)
!1684 = !DILocation(line: 431, column: 24, scope: !1680)
!1685 = !DILocation(line: 431, column: 30, scope: !1680)
!1686 = !DILocation(line: 431, column: 28, scope: !1680)
!1687 = !DILocation(line: 431, column: 38, scope: !1680)
!1688 = !DILocation(line: 431, column: 48, scope: !1680)
!1689 = !DILocation(line: 431, column: 52, scope: !1680)
!1690 = !DILocation(line: 431, column: 54, scope: !1680)
!1691 = !DILocation(line: 431, column: 45, scope: !1680)
!1692 = !DILocation(line: 431, column: 59, scope: !1680)
!1693 = !DILocation(line: 431, column: 62, scope: !1680)
!1694 = !DILocation(line: 431, column: 66, scope: !1680)
!1695 = !DILocation(line: 431, column: 68, scope: !1680)
!1696 = !DILocation(line: 431, column: 73, scope: !1680)
!1697 = !DILocation(line: 430, column: 19, scope: !1654)
!1698 = !DILocation(line: 433, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1680, file: !141, line: 432, column: 17)
!1700 = !DILocation(line: 433, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !141, line: 433, column: 19)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !141, line: 433, column: 19)
!1703 = !DILocation(line: 433, column: 19, scope: !1702)
!1704 = !DILocation(line: 434, column: 19, scope: !1699)
!1705 = !DILocation(line: 434, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !141, line: 434, column: 19)
!1707 = distinct !DILexicalBlock(scope: !1699, file: !141, line: 434, column: 19)
!1708 = !DILocation(line: 434, column: 19, scope: !1707)
!1709 = !DILocation(line: 435, column: 17, scope: !1699)
!1710 = !DILocation(line: 436, column: 17, scope: !1654)
!1711 = !DILocation(line: 441, column: 13, scope: !1654)
!1712 = !DILocation(line: 442, column: 20, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1650, file: !141, line: 442, column: 20)
!1714 = !DILocation(line: 442, column: 26, scope: !1713)
!1715 = !DILocation(line: 442, column: 20, scope: !1650)
!1716 = !DILocation(line: 443, column: 13, scope: !1713)
!1717 = !DILocation(line: 444, column: 11, scope: !1651)
!1718 = !DILocation(line: 447, column: 20, scope: !1651)
!1719 = !DILocation(line: 447, column: 11, scope: !1651)
!1720 = !DILocation(line: 450, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !141, line: 450, column: 19)
!1722 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 448, column: 13)
!1723 = !DILocation(line: 450, column: 19, scope: !1722)
!1724 = !DILocation(line: 451, column: 17, scope: !1721)
!1725 = !DILocation(line: 452, column: 15, scope: !1722)
!1726 = !DILocation(line: 455, column: 20, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !141, line: 455, column: 19)
!1728 = !DILocation(line: 455, column: 26, scope: !1727)
!1729 = !DILocation(line: 456, column: 19, scope: !1727)
!1730 = !DILocation(line: 456, column: 22, scope: !1727)
!1731 = !DILocation(line: 456, column: 24, scope: !1727)
!1732 = !DILocation(line: 456, column: 30, scope: !1727)
!1733 = !DILocation(line: 456, column: 28, scope: !1727)
!1734 = !DILocation(line: 456, column: 38, scope: !1727)
!1735 = !DILocation(line: 456, column: 41, scope: !1727)
!1736 = !DILocation(line: 456, column: 45, scope: !1727)
!1737 = !DILocation(line: 456, column: 47, scope: !1727)
!1738 = !DILocation(line: 456, column: 52, scope: !1727)
!1739 = !DILocation(line: 455, column: 19, scope: !1722)
!1740 = !DILocation(line: 457, column: 25, scope: !1727)
!1741 = !DILocation(line: 457, column: 29, scope: !1727)
!1742 = !DILocation(line: 457, column: 31, scope: !1727)
!1743 = !DILocation(line: 457, column: 17, scope: !1727)
!1744 = !DILocation(line: 464, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !141, line: 464, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1727, file: !141, line: 458, column: 19)
!1747 = !DILocation(line: 464, column: 25, scope: !1746)
!1748 = !DILocation(line: 465, column: 23, scope: !1745)
!1749 = !DILocation(line: 466, column: 25, scope: !1746)
!1750 = !DILocation(line: 466, column: 29, scope: !1746)
!1751 = !DILocation(line: 466, column: 31, scope: !1746)
!1752 = !DILocation(line: 466, column: 23, scope: !1746)
!1753 = !DILocation(line: 467, column: 23, scope: !1746)
!1754 = !DILocation(line: 468, column: 21, scope: !1746)
!1755 = !DILocation(line: 468, column: 21, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !141, line: 468, column: 21)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !141, line: 468, column: 21)
!1758 = !DILocation(line: 468, column: 21, scope: !1757)
!1759 = !DILocation(line: 469, column: 21, scope: !1746)
!1760 = !DILocation(line: 469, column: 21, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !141, line: 469, column: 21)
!1762 = distinct !DILexicalBlock(scope: !1746, file: !141, line: 469, column: 21)
!1763 = !DILocation(line: 469, column: 21, scope: !1762)
!1764 = !DILocation(line: 470, column: 21, scope: !1746)
!1765 = !DILocation(line: 470, column: 21, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !141, line: 470, column: 21)
!1767 = distinct !DILexicalBlock(scope: !1746, file: !141, line: 470, column: 21)
!1768 = !DILocation(line: 470, column: 21, scope: !1767)
!1769 = !DILocation(line: 471, column: 21, scope: !1746)
!1770 = !DILocation(line: 471, column: 21, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !141, line: 471, column: 21)
!1772 = distinct !DILexicalBlock(scope: !1746, file: !141, line: 471, column: 21)
!1773 = !DILocation(line: 471, column: 21, scope: !1772)
!1774 = !DILocation(line: 472, column: 21, scope: !1746)
!1775 = !DILocation(line: 473, column: 19, scope: !1746)
!1776 = !DILocation(line: 474, column: 15, scope: !1722)
!1777 = !DILocation(line: 476, column: 11, scope: !1651)
!1778 = !DILocation(line: 481, column: 26, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 478, column: 9)
!1780 = !DILocation(line: 481, column: 33, scope: !1779)
!1781 = !DILocation(line: 482, column: 26, scope: !1779)
!1782 = !DILocation(line: 482, column: 33, scope: !1779)
!1783 = !DILocation(line: 483, column: 26, scope: !1779)
!1784 = !DILocation(line: 483, column: 33, scope: !1779)
!1785 = !DILocation(line: 484, column: 26, scope: !1779)
!1786 = !DILocation(line: 484, column: 33, scope: !1779)
!1787 = !DILocation(line: 485, column: 26, scope: !1779)
!1788 = !DILocation(line: 485, column: 33, scope: !1779)
!1789 = !DILocation(line: 486, column: 26, scope: !1779)
!1790 = !DILocation(line: 486, column: 33, scope: !1779)
!1791 = !DILocation(line: 487, column: 26, scope: !1779)
!1792 = !DILocation(line: 487, column: 33, scope: !1779)
!1793 = !DILocation(line: 488, column: 28, scope: !1779)
!1794 = !DILocation(line: 488, column: 26, scope: !1779)
!1795 = !DILocation(line: 490, column: 17, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 490, column: 17)
!1797 = !DILocation(line: 490, column: 31, scope: !1796)
!1798 = !DILocation(line: 490, column: 17, scope: !1779)
!1799 = !DILocation(line: 492, column: 21, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !141, line: 492, column: 21)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !141, line: 491, column: 15)
!1802 = !DILocation(line: 492, column: 21, scope: !1801)
!1803 = !DILocation(line: 493, column: 19, scope: !1800)
!1804 = !DILocation(line: 494, column: 17, scope: !1801)
!1805 = !DILocation(line: 499, column: 17, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 499, column: 17)
!1807 = !DILocation(line: 499, column: 35, scope: !1806)
!1808 = !DILocation(line: 499, column: 38, scope: !1806)
!1809 = !DILocation(line: 499, column: 57, scope: !1806)
!1810 = !DILocation(line: 499, column: 60, scope: !1806)
!1811 = !DILocation(line: 499, column: 17, scope: !1779)
!1812 = !DILocation(line: 500, column: 15, scope: !1806)
!1813 = !DILabel(scope: !1779, name: "c_and_shell_escape", file: !141, line: 502)
!1814 = !DILocation(line: 502, column: 11, scope: !1779)
!1815 = !DILocation(line: 503, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 503, column: 17)
!1817 = !DILocation(line: 503, column: 31, scope: !1816)
!1818 = !DILocation(line: 504, column: 17, scope: !1816)
!1819 = !DILocation(line: 504, column: 20, scope: !1816)
!1820 = !DILocation(line: 503, column: 17, scope: !1779)
!1821 = !DILocation(line: 505, column: 15, scope: !1816)
!1822 = !DILabel(scope: !1779, name: "c_escape", file: !141, line: 507)
!1823 = !DILocation(line: 507, column: 11, scope: !1779)
!1824 = !DILocation(line: 508, column: 17, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 508, column: 17)
!1826 = !DILocation(line: 508, column: 17, scope: !1779)
!1827 = !DILocation(line: 510, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !141, line: 509, column: 15)
!1829 = !DILocation(line: 510, column: 19, scope: !1828)
!1830 = !DILocation(line: 511, column: 17, scope: !1828)
!1831 = !DILocation(line: 513, column: 13, scope: !1779)
!1832 = !DILocation(line: 517, column: 18, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 517, column: 15)
!1834 = !DILocation(line: 517, column: 26, scope: !1833)
!1835 = !DILocation(line: 517, column: 15, scope: !1651)
!1836 = !DILocation(line: 517, column: 40, scope: !1833)
!1837 = !DILocation(line: 517, column: 47, scope: !1833)
!1838 = !DILocation(line: 517, column: 57, scope: !1833)
!1839 = !DILocation(line: 517, column: 65, scope: !1833)
!1840 = !DILocation(line: 518, column: 13, scope: !1833)
!1841 = !DILocation(line: 517, column: 69, scope: !1833)
!1842 = !DILocation(line: 521, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 521, column: 15)
!1844 = !DILocation(line: 521, column: 17, scope: !1843)
!1845 = !DILocation(line: 521, column: 15, scope: !1651)
!1846 = !DILocation(line: 522, column: 13, scope: !1843)
!1847 = !DILocation(line: 521, column: 20, scope: !1843)
!1848 = !DILocation(line: 525, column: 36, scope: !1651)
!1849 = !DILocation(line: 525, column: 11, scope: !1651)
!1850 = !DILocation(line: 536, column: 15, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 536, column: 15)
!1852 = !DILocation(line: 536, column: 29, scope: !1851)
!1853 = !DILocation(line: 537, column: 15, scope: !1851)
!1854 = !DILocation(line: 537, column: 18, scope: !1851)
!1855 = !DILocation(line: 536, column: 15, scope: !1651)
!1856 = !DILocation(line: 538, column: 13, scope: !1851)
!1857 = !DILocation(line: 539, column: 11, scope: !1651)
!1858 = !DILocation(line: 542, column: 36, scope: !1651)
!1859 = !DILocation(line: 543, column: 36, scope: !1651)
!1860 = !DILocation(line: 544, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 544, column: 15)
!1862 = !DILocation(line: 544, column: 29, scope: !1861)
!1863 = !DILocation(line: 544, column: 15, scope: !1651)
!1864 = !DILocation(line: 546, column: 19, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !141, line: 546, column: 19)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !141, line: 545, column: 13)
!1867 = !DILocation(line: 546, column: 19, scope: !1866)
!1868 = !DILocation(line: 547, column: 17, scope: !1865)
!1869 = !DILocation(line: 549, column: 19, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !141, line: 549, column: 19)
!1871 = !DILocation(line: 549, column: 30, scope: !1870)
!1872 = !DILocation(line: 549, column: 35, scope: !1870)
!1873 = !DILocation(line: 549, column: 19, scope: !1866)
!1874 = !DILocation(line: 554, column: 37, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !141, line: 550, column: 17)
!1876 = !DILocation(line: 554, column: 35, scope: !1875)
!1877 = !DILocation(line: 555, column: 30, scope: !1875)
!1878 = !DILocation(line: 556, column: 17, scope: !1875)
!1879 = !DILocation(line: 558, column: 15, scope: !1866)
!1880 = !DILocation(line: 558, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !141, line: 558, column: 15)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !141, line: 558, column: 15)
!1883 = !DILocation(line: 558, column: 15, scope: !1882)
!1884 = !DILocation(line: 559, column: 15, scope: !1866)
!1885 = !DILocation(line: 559, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !141, line: 559, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1866, file: !141, line: 559, column: 15)
!1888 = !DILocation(line: 559, column: 15, scope: !1887)
!1889 = !DILocation(line: 560, column: 15, scope: !1866)
!1890 = !DILocation(line: 560, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !141, line: 560, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1866, file: !141, line: 560, column: 15)
!1893 = !DILocation(line: 560, column: 15, scope: !1892)
!1894 = !DILocation(line: 561, column: 40, scope: !1866)
!1895 = !DILocation(line: 562, column: 13, scope: !1866)
!1896 = !DILocation(line: 563, column: 11, scope: !1651)
!1897 = !DILocation(line: 587, column: 36, scope: !1651)
!1898 = !DILocation(line: 588, column: 11, scope: !1651)
!1899 = !DILocalVariable(name: "m", scope: !1900, file: !141, line: 598, type: !149)
!1900 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 596, column: 11)
!1901 = !DILocation(line: 598, column: 20, scope: !1900)
!1902 = !DILocalVariable(name: "printable", scope: !1900, file: !141, line: 600, type: !69)
!1903 = !DILocation(line: 600, column: 18, scope: !1900)
!1904 = !DILocation(line: 602, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !141, line: 602, column: 17)
!1906 = !DILocation(line: 602, column: 17, scope: !1900)
!1907 = !DILocation(line: 604, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !141, line: 603, column: 15)
!1909 = !DILocation(line: 605, column: 29, scope: !1908)
!1910 = !DILocation(line: 605, column: 41, scope: !1908)
!1911 = !DILocation(line: 605, column: 27, scope: !1908)
!1912 = !DILocation(line: 606, column: 15, scope: !1908)
!1913 = !DILocalVariable(name: "mbs", scope: !1914, file: !141, line: 609, type: !1915)
!1914 = distinct !DILexicalBlock(scope: !1905, file: !141, line: 608, column: 15)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1917, file: !225, line: 15, baseType: !51, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1917, file: !225, line: 20, baseType: !1921, size: 32, offset: 32)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !225, line: 16, size: 32, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1921, file: !225, line: 18, baseType: !14, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1921, file: !225, line: 19, baseType: !234, size: 32)
!1925 = !DILocation(line: 609, column: 27, scope: !1914)
!1926 = !DILocation(line: 609, column: 32, scope: !1914)
!1927 = !DILocation(line: 611, column: 19, scope: !1914)
!1928 = !DILocation(line: 612, column: 27, scope: !1914)
!1929 = !DILocation(line: 613, column: 21, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1914, file: !141, line: 613, column: 21)
!1931 = !DILocation(line: 613, column: 29, scope: !1930)
!1932 = !DILocation(line: 613, column: 21, scope: !1914)
!1933 = !DILocation(line: 614, column: 37, scope: !1930)
!1934 = !DILocation(line: 614, column: 29, scope: !1930)
!1935 = !DILocation(line: 614, column: 27, scope: !1930)
!1936 = !DILocation(line: 614, column: 19, scope: !1930)
!1937 = !DILocation(line: 616, column: 17, scope: !1914)
!1938 = !DILocalVariable(name: "w", scope: !1939, file: !141, line: 618, type: !1236)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !141, line: 617, column: 19)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !141, line: 616, column: 17)
!1941 = distinct !DILexicalBlock(scope: !1914, file: !141, line: 616, column: 17)
!1942 = !DILocation(line: 618, column: 30, scope: !1939)
!1943 = !DILocalVariable(name: "bytes", scope: !1939, file: !141, line: 619, type: !149)
!1944 = !DILocation(line: 619, column: 28, scope: !1939)
!1945 = !DILocation(line: 619, column: 51, scope: !1939)
!1946 = !DILocation(line: 619, column: 55, scope: !1939)
!1947 = !DILocation(line: 619, column: 59, scope: !1939)
!1948 = !DILocation(line: 619, column: 57, scope: !1939)
!1949 = !DILocation(line: 620, column: 46, scope: !1939)
!1950 = !DILocation(line: 620, column: 57, scope: !1939)
!1951 = !DILocation(line: 620, column: 61, scope: !1939)
!1952 = !DILocation(line: 620, column: 59, scope: !1939)
!1953 = !DILocation(line: 620, column: 54, scope: !1939)
!1954 = !DILocation(line: 619, column: 36, scope: !1939)
!1955 = !DILocation(line: 621, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1939, file: !141, line: 621, column: 25)
!1957 = !DILocation(line: 621, column: 31, scope: !1956)
!1958 = !DILocation(line: 621, column: 25, scope: !1939)
!1959 = !DILocation(line: 622, column: 23, scope: !1956)
!1960 = !DILocation(line: 623, column: 30, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !141, line: 623, column: 30)
!1962 = !DILocation(line: 623, column: 36, scope: !1961)
!1963 = !DILocation(line: 623, column: 30, scope: !1956)
!1964 = !DILocation(line: 625, column: 35, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !141, line: 624, column: 23)
!1966 = !DILocation(line: 626, column: 25, scope: !1965)
!1967 = !DILocation(line: 628, column: 30, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1961, file: !141, line: 628, column: 30)
!1969 = !DILocation(line: 628, column: 36, scope: !1968)
!1970 = !DILocation(line: 628, column: 30, scope: !1961)
!1971 = !DILocation(line: 630, column: 35, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !141, line: 629, column: 23)
!1973 = !DILocation(line: 631, column: 25, scope: !1972)
!1974 = !DILocation(line: 631, column: 32, scope: !1972)
!1975 = !DILocation(line: 631, column: 36, scope: !1972)
!1976 = !DILocation(line: 631, column: 34, scope: !1972)
!1977 = !DILocation(line: 631, column: 40, scope: !1972)
!1978 = !DILocation(line: 631, column: 38, scope: !1972)
!1979 = !DILocation(line: 631, column: 48, scope: !1972)
!1980 = !DILocation(line: 631, column: 51, scope: !1972)
!1981 = !DILocation(line: 631, column: 55, scope: !1972)
!1982 = !DILocation(line: 631, column: 59, scope: !1972)
!1983 = !DILocation(line: 631, column: 57, scope: !1972)
!1984 = !DILocation(line: 0, scope: !1972)
!1985 = !DILocation(line: 632, column: 28, scope: !1972)
!1986 = distinct !{!1986, !1973, !1985, !449}
!1987 = !DILocation(line: 633, column: 25, scope: !1972)
!1988 = !DILocation(line: 645, column: 44, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !141, line: 645, column: 29)
!1990 = distinct !DILexicalBlock(scope: !1968, file: !141, line: 636, column: 23)
!1991 = !DILocation(line: 646, column: 29, scope: !1989)
!1992 = !DILocation(line: 646, column: 32, scope: !1989)
!1993 = !DILocation(line: 646, column: 46, scope: !1989)
!1994 = !DILocation(line: 645, column: 29, scope: !1990)
!1995 = !DILocalVariable(name: "j", scope: !1996, file: !141, line: 648, type: !149)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !141, line: 648, column: 29)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !141, line: 647, column: 27)
!1998 = !DILocation(line: 648, column: 41, scope: !1996)
!1999 = !DILocation(line: 648, column: 34, scope: !1996)
!2000 = !DILocation(line: 648, column: 48, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !141, line: 648, column: 29)
!2002 = !DILocation(line: 648, column: 52, scope: !2001)
!2003 = !DILocation(line: 648, column: 50, scope: !2001)
!2004 = !DILocation(line: 648, column: 29, scope: !1996)
!2005 = !DILocation(line: 649, column: 39, scope: !2001)
!2006 = !DILocation(line: 649, column: 43, scope: !2001)
!2007 = !DILocation(line: 649, column: 47, scope: !2001)
!2008 = !DILocation(line: 649, column: 45, scope: !2001)
!2009 = !DILocation(line: 649, column: 51, scope: !2001)
!2010 = !DILocation(line: 649, column: 49, scope: !2001)
!2011 = !DILocation(line: 649, column: 31, scope: !2001)
!2012 = !DILocation(line: 653, column: 35, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2001, file: !141, line: 650, column: 33)
!2014 = !DILocation(line: 654, column: 33, scope: !2013)
!2015 = !DILocation(line: 648, column: 60, scope: !2001)
!2016 = !DILocation(line: 648, column: 29, scope: !2001)
!2017 = distinct !{!2017, !2004, !2018, !449}
!2018 = !DILocation(line: 654, column: 33, scope: !1996)
!2019 = !DILocation(line: 655, column: 27, scope: !1997)
!2020 = !DILocation(line: 657, column: 43, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1990, file: !141, line: 657, column: 29)
!2022 = !DILocation(line: 657, column: 31, scope: !2021)
!2023 = !DILocation(line: 657, column: 29, scope: !1990)
!2024 = !DILocation(line: 658, column: 37, scope: !2021)
!2025 = !DILocation(line: 658, column: 27, scope: !2021)
!2026 = !DILocation(line: 659, column: 30, scope: !1990)
!2027 = !DILocation(line: 659, column: 27, scope: !1990)
!2028 = !DILocation(line: 664, column: 23, scope: !1939)
!2029 = !DILocation(line: 668, column: 40, scope: !1900)
!2030 = !DILocation(line: 668, column: 38, scope: !1900)
!2031 = !DILocation(line: 670, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1900, file: !141, line: 670, column: 17)
!2033 = !DILocation(line: 670, column: 19, scope: !2032)
!2034 = !DILocation(line: 670, column: 23, scope: !2032)
!2035 = !DILocation(line: 670, column: 27, scope: !2032)
!2036 = !DILocation(line: 670, column: 45, scope: !2032)
!2037 = !DILocation(line: 670, column: 50, scope: !2032)
!2038 = !DILocation(line: 670, column: 17, scope: !1900)
!2039 = !DILocalVariable(name: "ilim", scope: !2040, file: !141, line: 674, type: !149)
!2040 = distinct !DILexicalBlock(scope: !2032, file: !141, line: 671, column: 15)
!2041 = !DILocation(line: 674, column: 24, scope: !2040)
!2042 = !DILocation(line: 674, column: 31, scope: !2040)
!2043 = !DILocation(line: 674, column: 35, scope: !2040)
!2044 = !DILocation(line: 674, column: 33, scope: !2040)
!2045 = !DILocation(line: 676, column: 17, scope: !2040)
!2046 = !DILocation(line: 678, column: 25, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !141, line: 678, column: 25)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !141, line: 677, column: 19)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !141, line: 676, column: 17)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !141, line: 676, column: 17)
!2051 = !DILocation(line: 678, column: 43, scope: !2047)
!2052 = !DILocation(line: 678, column: 48, scope: !2047)
!2053 = !DILocation(line: 678, column: 25, scope: !2048)
!2054 = !DILocation(line: 680, column: 25, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2047, file: !141, line: 679, column: 23)
!2056 = !DILocation(line: 680, column: 25, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !141, line: 680, column: 25)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !141, line: 680, column: 25)
!2059 = !DILocation(line: 680, column: 25, scope: !2058)
!2060 = !DILocation(line: 680, column: 25, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !141, line: 680, column: 25)
!2062 = !DILocation(line: 680, column: 25, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !141, line: 680, column: 25)
!2064 = !DILocation(line: 680, column: 25, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !141, line: 680, column: 25)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !141, line: 680, column: 25)
!2067 = !DILocation(line: 680, column: 25, scope: !2066)
!2068 = !DILocation(line: 680, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !141, line: 680, column: 25)
!2070 = distinct !DILexicalBlock(scope: !2063, file: !141, line: 680, column: 25)
!2071 = !DILocation(line: 680, column: 25, scope: !2070)
!2072 = !DILocation(line: 680, column: 25, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !141, line: 680, column: 25)
!2074 = distinct !DILexicalBlock(scope: !2063, file: !141, line: 680, column: 25)
!2075 = !DILocation(line: 680, column: 25, scope: !2074)
!2076 = !DILocation(line: 680, column: 25, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !141, line: 680, column: 25)
!2078 = distinct !DILexicalBlock(scope: !2058, file: !141, line: 680, column: 25)
!2079 = !DILocation(line: 680, column: 25, scope: !2078)
!2080 = !DILocation(line: 681, column: 25, scope: !2055)
!2081 = !DILocation(line: 681, column: 25, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !141, line: 681, column: 25)
!2083 = distinct !DILexicalBlock(scope: !2055, file: !141, line: 681, column: 25)
!2084 = !DILocation(line: 681, column: 25, scope: !2083)
!2085 = !DILocation(line: 682, column: 25, scope: !2055)
!2086 = !DILocation(line: 682, column: 25, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !141, line: 682, column: 25)
!2088 = distinct !DILexicalBlock(scope: !2055, file: !141, line: 682, column: 25)
!2089 = !DILocation(line: 682, column: 25, scope: !2088)
!2090 = !DILocation(line: 683, column: 36, scope: !2055)
!2091 = !DILocation(line: 683, column: 38, scope: !2055)
!2092 = !DILocation(line: 683, column: 33, scope: !2055)
!2093 = !DILocation(line: 683, column: 29, scope: !2055)
!2094 = !DILocation(line: 683, column: 27, scope: !2055)
!2095 = !DILocation(line: 684, column: 23, scope: !2055)
!2096 = !DILocation(line: 685, column: 30, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2047, file: !141, line: 685, column: 30)
!2098 = !DILocation(line: 685, column: 30, scope: !2047)
!2099 = !DILocation(line: 687, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !141, line: 686, column: 23)
!2101 = !DILocation(line: 687, column: 25, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !141, line: 687, column: 25)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !141, line: 687, column: 25)
!2104 = !DILocation(line: 687, column: 25, scope: !2103)
!2105 = !DILocation(line: 688, column: 40, scope: !2100)
!2106 = !DILocation(line: 689, column: 23, scope: !2100)
!2107 = !DILocation(line: 690, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2048, file: !141, line: 690, column: 25)
!2109 = !DILocation(line: 690, column: 33, scope: !2108)
!2110 = !DILocation(line: 690, column: 35, scope: !2108)
!2111 = !DILocation(line: 690, column: 30, scope: !2108)
!2112 = !DILocation(line: 690, column: 25, scope: !2048)
!2113 = !DILocation(line: 691, column: 23, scope: !2108)
!2114 = !DILocation(line: 692, column: 21, scope: !2048)
!2115 = !DILocation(line: 692, column: 21, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !141, line: 692, column: 21)
!2117 = distinct !DILexicalBlock(scope: !2048, file: !141, line: 692, column: 21)
!2118 = !DILocation(line: 692, column: 21, scope: !2117)
!2119 = !DILocation(line: 692, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !141, line: 692, column: 21)
!2121 = !DILocation(line: 692, column: 21, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !141, line: 692, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !141, line: 692, column: 21)
!2124 = !DILocation(line: 692, column: 21, scope: !2123)
!2125 = !DILocation(line: 692, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !141, line: 692, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2120, file: !141, line: 692, column: 21)
!2128 = !DILocation(line: 692, column: 21, scope: !2127)
!2129 = !DILocation(line: 693, column: 21, scope: !2048)
!2130 = !DILocation(line: 693, column: 21, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !141, line: 693, column: 21)
!2132 = distinct !DILexicalBlock(scope: !2048, file: !141, line: 693, column: 21)
!2133 = !DILocation(line: 693, column: 21, scope: !2132)
!2134 = !DILocation(line: 694, column: 25, scope: !2048)
!2135 = !DILocation(line: 694, column: 29, scope: !2048)
!2136 = !DILocation(line: 694, column: 23, scope: !2048)
!2137 = !DILocation(line: 676, column: 17, scope: !2049)
!2138 = distinct !{!2138, !2139, !2140}
!2139 = !DILocation(line: 676, column: 17, scope: !2050)
!2140 = !DILocation(line: 695, column: 19, scope: !2050)
!2141 = !DILocation(line: 697, column: 17, scope: !2040)
!2142 = !DILocation(line: 700, column: 9, scope: !1651)
!2143 = !DILocation(line: 702, column: 16, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 702, column: 11)
!2145 = !DILocation(line: 702, column: 34, scope: !2144)
!2146 = !DILocation(line: 702, column: 37, scope: !2144)
!2147 = !DILocation(line: 702, column: 51, scope: !2144)
!2148 = !DILocation(line: 703, column: 15, scope: !2144)
!2149 = !DILocation(line: 703, column: 18, scope: !2144)
!2150 = !DILocation(line: 704, column: 14, scope: !2144)
!2151 = !DILocation(line: 704, column: 17, scope: !2144)
!2152 = !DILocation(line: 705, column: 14, scope: !2144)
!2153 = !DILocation(line: 705, column: 17, scope: !2144)
!2154 = !DILocation(line: 705, column: 33, scope: !2144)
!2155 = !DILocation(line: 705, column: 35, scope: !2144)
!2156 = !DILocation(line: 705, column: 51, scope: !2144)
!2157 = !DILocation(line: 705, column: 53, scope: !2144)
!2158 = !DILocation(line: 705, column: 47, scope: !2144)
!2159 = !DILocation(line: 705, column: 65, scope: !2144)
!2160 = !DILocation(line: 706, column: 11, scope: !2144)
!2161 = !DILocation(line: 706, column: 15, scope: !2144)
!2162 = !DILocation(line: 702, column: 11, scope: !1601)
!2163 = !DILocation(line: 707, column: 9, scope: !2144)
!2164 = !DILabel(scope: !1601, name: "store_escape", file: !141, line: 709)
!2165 = !DILocation(line: 709, column: 5, scope: !1601)
!2166 = !DILocation(line: 710, column: 7, scope: !1601)
!2167 = !DILocation(line: 710, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !141, line: 710, column: 7)
!2169 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 710, column: 7)
!2170 = !DILocation(line: 710, column: 7, scope: !2169)
!2171 = !DILocation(line: 710, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2169, file: !141, line: 710, column: 7)
!2173 = !DILocation(line: 710, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2172, file: !141, line: 710, column: 7)
!2175 = !DILocation(line: 710, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !141, line: 710, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !141, line: 710, column: 7)
!2178 = !DILocation(line: 710, column: 7, scope: !2177)
!2179 = !DILocation(line: 710, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !141, line: 710, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !141, line: 710, column: 7)
!2182 = !DILocation(line: 710, column: 7, scope: !2181)
!2183 = !DILocation(line: 710, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !141, line: 710, column: 7)
!2185 = distinct !DILexicalBlock(scope: !2174, file: !141, line: 710, column: 7)
!2186 = !DILocation(line: 710, column: 7, scope: !2185)
!2187 = !DILocation(line: 710, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !141, line: 710, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2169, file: !141, line: 710, column: 7)
!2190 = !DILocation(line: 710, column: 7, scope: !2189)
!2191 = !DILabel(scope: !1601, name: "store_c", file: !141, line: 712)
!2192 = !DILocation(line: 712, column: 5, scope: !1601)
!2193 = !DILocation(line: 713, column: 7, scope: !1601)
!2194 = !DILocation(line: 713, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !141, line: 713, column: 7)
!2196 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 713, column: 7)
!2197 = !DILocation(line: 713, column: 7, scope: !2196)
!2198 = !DILocation(line: 713, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !141, line: 713, column: 7)
!2200 = !DILocation(line: 713, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !141, line: 713, column: 7)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !141, line: 713, column: 7)
!2203 = !DILocation(line: 713, column: 7, scope: !2202)
!2204 = !DILocation(line: 713, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !141, line: 713, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !141, line: 713, column: 7)
!2207 = !DILocation(line: 713, column: 7, scope: !2206)
!2208 = !DILocation(line: 714, column: 7, scope: !1601)
!2209 = !DILocation(line: 714, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !141, line: 714, column: 7)
!2211 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 714, column: 7)
!2212 = !DILocation(line: 714, column: 7, scope: !2211)
!2213 = !DILocation(line: 716, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1601, file: !141, line: 716, column: 11)
!2215 = !DILocation(line: 716, column: 11, scope: !1601)
!2216 = !DILocation(line: 717, column: 38, scope: !2214)
!2217 = !DILocation(line: 717, column: 9, scope: !2214)
!2218 = !DILocation(line: 718, column: 5, scope: !1601)
!2219 = !DILocation(line: 395, column: 82, scope: !1590)
!2220 = !DILocation(line: 395, column: 3, scope: !1590)
!2221 = distinct !{!2221, !1599, !2222, !449}
!2222 = !DILocation(line: 718, column: 5, scope: !1586)
!2223 = !DILocation(line: 720, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 720, column: 7)
!2225 = !DILocation(line: 720, column: 11, scope: !2224)
!2226 = !DILocation(line: 720, column: 16, scope: !2224)
!2227 = !DILocation(line: 720, column: 19, scope: !2224)
!2228 = !DILocation(line: 720, column: 33, scope: !2224)
!2229 = !DILocation(line: 721, column: 7, scope: !2224)
!2230 = !DILocation(line: 721, column: 10, scope: !2224)
!2231 = !DILocation(line: 720, column: 7, scope: !1448)
!2232 = !DILocation(line: 722, column: 5, scope: !2224)
!2233 = !DILocation(line: 728, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 728, column: 7)
!2235 = !DILocation(line: 728, column: 21, scope: !2234)
!2236 = !DILocation(line: 728, column: 51, scope: !2234)
!2237 = !DILocation(line: 728, column: 56, scope: !2234)
!2238 = !DILocation(line: 729, column: 7, scope: !2234)
!2239 = !DILocation(line: 729, column: 10, scope: !2234)
!2240 = !DILocation(line: 728, column: 7, scope: !1448)
!2241 = !DILocation(line: 731, column: 11, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !141, line: 731, column: 11)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !141, line: 730, column: 5)
!2244 = !DILocation(line: 731, column: 11, scope: !2243)
!2245 = !DILocation(line: 732, column: 42, scope: !2242)
!2246 = !DILocation(line: 732, column: 50, scope: !2242)
!2247 = !DILocation(line: 732, column: 67, scope: !2242)
!2248 = !DILocation(line: 732, column: 72, scope: !2242)
!2249 = !DILocation(line: 734, column: 42, scope: !2242)
!2250 = !DILocation(line: 734, column: 49, scope: !2242)
!2251 = !DILocation(line: 735, column: 42, scope: !2242)
!2252 = !DILocation(line: 735, column: 54, scope: !2242)
!2253 = !DILocation(line: 732, column: 16, scope: !2242)
!2254 = !DILocation(line: 732, column: 9, scope: !2242)
!2255 = !DILocation(line: 736, column: 18, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2242, file: !141, line: 736, column: 16)
!2257 = !DILocation(line: 736, column: 29, scope: !2256)
!2258 = !DILocation(line: 736, column: 32, scope: !2256)
!2259 = !DILocation(line: 736, column: 16, scope: !2242)
!2260 = !DILocation(line: 739, column: 24, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !141, line: 737, column: 9)
!2262 = !DILocation(line: 739, column: 22, scope: !2261)
!2263 = !DILocation(line: 740, column: 15, scope: !2261)
!2264 = !DILocation(line: 741, column: 11, scope: !2261)
!2265 = !DILocation(line: 743, column: 5, scope: !2243)
!2266 = !DILocation(line: 745, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 745, column: 7)
!2268 = !DILocation(line: 745, column: 20, scope: !2267)
!2269 = !DILocation(line: 745, column: 24, scope: !2267)
!2270 = !DILocation(line: 745, column: 7, scope: !1448)
!2271 = !DILocation(line: 746, column: 5, scope: !2267)
!2272 = !DILocation(line: 746, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !141, line: 746, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2267, file: !141, line: 746, column: 5)
!2275 = !DILocation(line: 746, column: 12, scope: !2273)
!2276 = !DILocation(line: 746, column: 5, scope: !2274)
!2277 = !DILocation(line: 747, column: 7, scope: !2273)
!2278 = !DILocation(line: 747, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !141, line: 747, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2273, file: !141, line: 747, column: 7)
!2281 = !DILocation(line: 747, column: 7, scope: !2280)
!2282 = !DILocation(line: 746, column: 39, scope: !2273)
!2283 = !DILocation(line: 746, column: 5, scope: !2273)
!2284 = distinct !{!2284, !2276, !2285, !449}
!2285 = !DILocation(line: 747, column: 7, scope: !2274)
!2286 = !DILocation(line: 749, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 749, column: 7)
!2288 = !DILocation(line: 749, column: 13, scope: !2287)
!2289 = !DILocation(line: 749, column: 11, scope: !2287)
!2290 = !DILocation(line: 749, column: 7, scope: !1448)
!2291 = !DILocation(line: 750, column: 5, scope: !2287)
!2292 = !DILocation(line: 750, column: 12, scope: !2287)
!2293 = !DILocation(line: 750, column: 17, scope: !2287)
!2294 = !DILocation(line: 751, column: 10, scope: !1448)
!2295 = !DILocation(line: 751, column: 3, scope: !1448)
!2296 = !DILabel(scope: !1448, name: "force_outer_quoting_style", file: !141, line: 753)
!2297 = !DILocation(line: 753, column: 2, scope: !1448)
!2298 = !DILocation(line: 756, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !1448, file: !141, line: 756, column: 7)
!2300 = !DILocation(line: 756, column: 21, scope: !2299)
!2301 = !DILocation(line: 756, column: 51, scope: !2299)
!2302 = !DILocation(line: 756, column: 54, scope: !2299)
!2303 = !DILocation(line: 756, column: 7, scope: !1448)
!2304 = !DILocation(line: 757, column: 19, scope: !2299)
!2305 = !DILocation(line: 757, column: 5, scope: !2299)
!2306 = !DILocation(line: 758, column: 36, scope: !1448)
!2307 = !DILocation(line: 758, column: 44, scope: !1448)
!2308 = !DILocation(line: 758, column: 56, scope: !1448)
!2309 = !DILocation(line: 758, column: 61, scope: !1448)
!2310 = !DILocation(line: 759, column: 36, scope: !1448)
!2311 = !DILocation(line: 760, column: 36, scope: !1448)
!2312 = !DILocation(line: 760, column: 42, scope: !1448)
!2313 = !DILocation(line: 761, column: 36, scope: !1448)
!2314 = !DILocation(line: 761, column: 48, scope: !1448)
!2315 = !DILocation(line: 758, column: 10, scope: !1448)
!2316 = !DILocation(line: 758, column: 3, scope: !1448)
!2317 = !DILocation(line: 762, column: 1, scope: !1448)
!2318 = !DILocalVariable(name: "msgid", arg: 1, scope: !180, file: !141, line: 197, type: !6)
!2319 = !DILocation(line: 197, column: 28, scope: !180)
!2320 = !DILocalVariable(name: "s", arg: 2, scope: !180, file: !141, line: 197, type: !35)
!2321 = !DILocation(line: 197, column: 54, scope: !180)
!2322 = !DILocalVariable(name: "translation", scope: !180, file: !141, line: 199, type: !6)
!2323 = !DILocation(line: 199, column: 15, scope: !180)
!2324 = !DILocation(line: 199, column: 29, scope: !180)
!2325 = !DILocation(line: 201, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !180, file: !141, line: 201, column: 7)
!2327 = !DILocation(line: 201, column: 22, scope: !2326)
!2328 = !DILocation(line: 201, column: 19, scope: !2326)
!2329 = !DILocation(line: 201, column: 7, scope: !180)
!2330 = !DILocation(line: 202, column: 12, scope: !2326)
!2331 = !DILocation(line: 202, column: 5, scope: !2326)
!2332 = !DILocalVariable(name: "w", scope: !180, file: !141, line: 229, type: !1236)
!2333 = !DILocation(line: 229, column: 12, scope: !180)
!2334 = !DILocalVariable(name: "mbs", scope: !180, file: !141, line: 230, type: !1915)
!2335 = !DILocation(line: 230, column: 13, scope: !180)
!2336 = !DILocation(line: 230, column: 18, scope: !180)
!2337 = !DILocation(line: 231, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !180, file: !141, line: 231, column: 7)
!2339 = !DILocation(line: 231, column: 40, scope: !2338)
!2340 = !DILocation(line: 231, column: 45, scope: !2338)
!2341 = !DILocation(line: 231, column: 48, scope: !2338)
!2342 = !DILocation(line: 231, column: 50, scope: !2338)
!2343 = !DILocation(line: 231, column: 7, scope: !180)
!2344 = !DILocation(line: 232, column: 18, scope: !2338)
!2345 = !DILocation(line: 232, column: 27, scope: !2338)
!2346 = !DILocation(line: 232, column: 12, scope: !2338)
!2347 = !DILocation(line: 232, column: 5, scope: !2338)
!2348 = !DILocation(line: 234, column: 11, scope: !180)
!2349 = !DILocation(line: 234, column: 13, scope: !180)
!2350 = !DILocation(line: 234, column: 3, scope: !180)
!2351 = !DILocation(line: 235, column: 1, scope: !180)
!2352 = distinct !DISubprogram(name: "quotearg_alloc", scope: !141, file: !141, line: 788, type: !2353, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!54, !6, !149, !1288}
!2355 = !DILocalVariable(name: "arg", arg: 1, scope: !2352, file: !141, line: 788, type: !6)
!2356 = !DILocation(line: 788, column: 29, scope: !2352)
!2357 = !DILocalVariable(name: "argsize", arg: 2, scope: !2352, file: !141, line: 788, type: !149)
!2358 = !DILocation(line: 788, column: 41, scope: !2352)
!2359 = !DILocalVariable(name: "o", arg: 3, scope: !2352, file: !141, line: 789, type: !1288)
!2360 = !DILocation(line: 789, column: 47, scope: !2352)
!2361 = !DILocation(line: 791, column: 30, scope: !2352)
!2362 = !DILocation(line: 791, column: 35, scope: !2352)
!2363 = !DILocation(line: 791, column: 50, scope: !2352)
!2364 = !DILocation(line: 791, column: 10, scope: !2352)
!2365 = !DILocation(line: 791, column: 3, scope: !2352)
!2366 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !141, file: !141, line: 801, type: !2367, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!54, !6, !149, !300, !1288}
!2369 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !141, line: 801, type: !6)
!2370 = !DILocation(line: 801, column: 33, scope: !2366)
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2366, file: !141, line: 801, type: !149)
!2372 = !DILocation(line: 801, column: 45, scope: !2366)
!2373 = !DILocalVariable(name: "size", arg: 3, scope: !2366, file: !141, line: 801, type: !300)
!2374 = !DILocation(line: 801, column: 62, scope: !2366)
!2375 = !DILocalVariable(name: "o", arg: 4, scope: !2366, file: !141, line: 802, type: !1288)
!2376 = !DILocation(line: 802, column: 51, scope: !2366)
!2377 = !DILocalVariable(name: "p", scope: !2366, file: !141, line: 804, type: !1288)
!2378 = !DILocation(line: 804, column: 33, scope: !2366)
!2379 = !DILocation(line: 804, column: 37, scope: !2366)
!2380 = !DILocation(line: 804, column: 41, scope: !2366)
!2381 = !DILocalVariable(name: "saved_errno", scope: !2366, file: !141, line: 805, type: !51)
!2382 = !DILocation(line: 805, column: 7, scope: !2366)
!2383 = !DILocation(line: 805, column: 21, scope: !2366)
!2384 = !DILocalVariable(name: "flags", scope: !2366, file: !141, line: 807, type: !51)
!2385 = !DILocation(line: 807, column: 7, scope: !2366)
!2386 = !DILocation(line: 807, column: 15, scope: !2366)
!2387 = !DILocation(line: 807, column: 18, scope: !2366)
!2388 = !DILocation(line: 807, column: 27, scope: !2366)
!2389 = !DILocation(line: 807, column: 24, scope: !2366)
!2390 = !DILocalVariable(name: "bufsize", scope: !2366, file: !141, line: 808, type: !149)
!2391 = !DILocation(line: 808, column: 10, scope: !2366)
!2392 = !DILocation(line: 808, column: 55, scope: !2366)
!2393 = !DILocation(line: 808, column: 60, scope: !2366)
!2394 = !DILocation(line: 808, column: 69, scope: !2366)
!2395 = !DILocation(line: 808, column: 72, scope: !2366)
!2396 = !DILocation(line: 809, column: 46, scope: !2366)
!2397 = !DILocation(line: 809, column: 53, scope: !2366)
!2398 = !DILocation(line: 809, column: 56, scope: !2366)
!2399 = !DILocation(line: 810, column: 46, scope: !2366)
!2400 = !DILocation(line: 810, column: 49, scope: !2366)
!2401 = !DILocation(line: 811, column: 46, scope: !2366)
!2402 = !DILocation(line: 811, column: 49, scope: !2366)
!2403 = !DILocation(line: 808, column: 20, scope: !2366)
!2404 = !DILocation(line: 811, column: 62, scope: !2366)
!2405 = !DILocalVariable(name: "buf", scope: !2366, file: !141, line: 812, type: !54)
!2406 = !DILocation(line: 812, column: 9, scope: !2366)
!2407 = !DILocation(line: 812, column: 27, scope: !2366)
!2408 = !DILocation(line: 812, column: 15, scope: !2366)
!2409 = !DILocation(line: 813, column: 29, scope: !2366)
!2410 = !DILocation(line: 813, column: 34, scope: !2366)
!2411 = !DILocation(line: 813, column: 43, scope: !2366)
!2412 = !DILocation(line: 813, column: 48, scope: !2366)
!2413 = !DILocation(line: 813, column: 57, scope: !2366)
!2414 = !DILocation(line: 813, column: 60, scope: !2366)
!2415 = !DILocation(line: 813, column: 67, scope: !2366)
!2416 = !DILocation(line: 814, column: 29, scope: !2366)
!2417 = !DILocation(line: 814, column: 32, scope: !2366)
!2418 = !DILocation(line: 815, column: 29, scope: !2366)
!2419 = !DILocation(line: 815, column: 32, scope: !2366)
!2420 = !DILocation(line: 815, column: 44, scope: !2366)
!2421 = !DILocation(line: 815, column: 47, scope: !2366)
!2422 = !DILocation(line: 813, column: 3, scope: !2366)
!2423 = !DILocation(line: 816, column: 11, scope: !2366)
!2424 = !DILocation(line: 816, column: 3, scope: !2366)
!2425 = !DILocation(line: 816, column: 9, scope: !2366)
!2426 = !DILocation(line: 817, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2366, file: !141, line: 817, column: 7)
!2428 = !DILocation(line: 817, column: 7, scope: !2366)
!2429 = !DILocation(line: 818, column: 13, scope: !2427)
!2430 = !DILocation(line: 818, column: 21, scope: !2427)
!2431 = !DILocation(line: 818, column: 6, scope: !2427)
!2432 = !DILocation(line: 818, column: 11, scope: !2427)
!2433 = !DILocation(line: 818, column: 5, scope: !2427)
!2434 = !DILocation(line: 819, column: 10, scope: !2366)
!2435 = !DILocation(line: 819, column: 3, scope: !2366)
!2436 = distinct !DISubprogram(name: "quotearg_free", scope: !141, file: !141, line: 837, type: !102, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2437 = !DILocalVariable(name: "sv", scope: !2436, file: !141, line: 839, type: !188)
!2438 = !DILocation(line: 839, column: 19, scope: !2436)
!2439 = !DILocation(line: 839, column: 24, scope: !2436)
!2440 = !DILocalVariable(name: "i", scope: !2441, file: !141, line: 840, type: !51)
!2441 = distinct !DILexicalBlock(scope: !2436, file: !141, line: 840, column: 3)
!2442 = !DILocation(line: 840, column: 12, scope: !2441)
!2443 = !DILocation(line: 840, column: 8, scope: !2441)
!2444 = !DILocation(line: 840, column: 19, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !141, line: 840, column: 3)
!2446 = !DILocation(line: 840, column: 23, scope: !2445)
!2447 = !DILocation(line: 840, column: 21, scope: !2445)
!2448 = !DILocation(line: 840, column: 3, scope: !2441)
!2449 = !DILocation(line: 841, column: 11, scope: !2445)
!2450 = !DILocation(line: 841, column: 14, scope: !2445)
!2451 = !DILocation(line: 841, column: 17, scope: !2445)
!2452 = !DILocation(line: 841, column: 5, scope: !2445)
!2453 = !DILocation(line: 840, column: 32, scope: !2445)
!2454 = !DILocation(line: 840, column: 3, scope: !2445)
!2455 = distinct !{!2455, !2448, !2456, !449}
!2456 = !DILocation(line: 841, column: 20, scope: !2441)
!2457 = !DILocation(line: 842, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2436, file: !141, line: 842, column: 7)
!2459 = !DILocation(line: 842, column: 13, scope: !2458)
!2460 = !DILocation(line: 842, column: 17, scope: !2458)
!2461 = !DILocation(line: 842, column: 7, scope: !2436)
!2462 = !DILocation(line: 844, column: 13, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !141, line: 843, column: 5)
!2464 = !DILocation(line: 844, column: 19, scope: !2463)
!2465 = !DILocation(line: 844, column: 7, scope: !2463)
!2466 = !DILocation(line: 845, column: 21, scope: !2463)
!2467 = !DILocation(line: 846, column: 20, scope: !2463)
!2468 = !DILocation(line: 847, column: 5, scope: !2463)
!2469 = !DILocation(line: 848, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2436, file: !141, line: 848, column: 7)
!2471 = !DILocation(line: 848, column: 10, scope: !2470)
!2472 = !DILocation(line: 848, column: 7, scope: !2436)
!2473 = !DILocation(line: 850, column: 13, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !141, line: 849, column: 5)
!2475 = !DILocation(line: 850, column: 7, scope: !2474)
!2476 = !DILocation(line: 851, column: 15, scope: !2474)
!2477 = !DILocation(line: 852, column: 5, scope: !2474)
!2478 = !DILocation(line: 853, column: 10, scope: !2436)
!2479 = !DILocation(line: 854, column: 1, scope: !2436)
!2480 = distinct !DISubprogram(name: "quotearg_n", scope: !141, file: !141, line: 919, type: !2481, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!54, !51, !6}
!2483 = !DILocalVariable(name: "n", arg: 1, scope: !2480, file: !141, line: 919, type: !51)
!2484 = !DILocation(line: 919, column: 17, scope: !2480)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !141, line: 919, type: !6)
!2486 = !DILocation(line: 919, column: 32, scope: !2480)
!2487 = !DILocation(line: 921, column: 30, scope: !2480)
!2488 = !DILocation(line: 921, column: 33, scope: !2480)
!2489 = !DILocation(line: 921, column: 10, scope: !2480)
!2490 = !DILocation(line: 921, column: 3, scope: !2480)
!2491 = distinct !DISubprogram(name: "quotearg_n_options", scope: !141, file: !141, line: 866, type: !2492, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!54, !51, !6, !149, !1288}
!2494 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !141, line: 866, type: !51)
!2495 = !DILocation(line: 866, column: 25, scope: !2491)
!2496 = !DILocalVariable(name: "arg", arg: 2, scope: !2491, file: !141, line: 866, type: !6)
!2497 = !DILocation(line: 866, column: 40, scope: !2491)
!2498 = !DILocalVariable(name: "argsize", arg: 3, scope: !2491, file: !141, line: 866, type: !149)
!2499 = !DILocation(line: 866, column: 52, scope: !2491)
!2500 = !DILocalVariable(name: "options", arg: 4, scope: !2491, file: !141, line: 867, type: !1288)
!2501 = !DILocation(line: 867, column: 51, scope: !2491)
!2502 = !DILocalVariable(name: "saved_errno", scope: !2491, file: !141, line: 869, type: !51)
!2503 = !DILocation(line: 869, column: 7, scope: !2491)
!2504 = !DILocation(line: 869, column: 21, scope: !2491)
!2505 = !DILocalVariable(name: "sv", scope: !2491, file: !141, line: 871, type: !188)
!2506 = !DILocation(line: 871, column: 19, scope: !2491)
!2507 = !DILocation(line: 871, column: 24, scope: !2491)
!2508 = !DILocalVariable(name: "nslots_max", scope: !2491, file: !141, line: 873, type: !51)
!2509 = !DILocation(line: 873, column: 7, scope: !2491)
!2510 = !DILocation(line: 874, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2491, file: !141, line: 874, column: 7)
!2512 = !DILocation(line: 874, column: 12, scope: !2511)
!2513 = !DILocation(line: 874, column: 17, scope: !2511)
!2514 = !DILocation(line: 874, column: 20, scope: !2511)
!2515 = !DILocation(line: 874, column: 24, scope: !2511)
!2516 = !DILocation(line: 874, column: 22, scope: !2511)
!2517 = !DILocation(line: 874, column: 7, scope: !2491)
!2518 = !DILocation(line: 875, column: 5, scope: !2511)
!2519 = !DILocation(line: 877, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2491, file: !141, line: 877, column: 7)
!2521 = !DILocation(line: 877, column: 17, scope: !2520)
!2522 = !DILocation(line: 877, column: 14, scope: !2520)
!2523 = !DILocation(line: 877, column: 7, scope: !2491)
!2524 = !DILocalVariable(name: "preallocated", scope: !2525, file: !141, line: 879, type: !69)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !141, line: 878, column: 5)
!2526 = !DILocation(line: 879, column: 12, scope: !2525)
!2527 = !DILocation(line: 879, column: 28, scope: !2525)
!2528 = !DILocation(line: 879, column: 31, scope: !2525)
!2529 = !DILocalVariable(name: "new_nslots", scope: !2525, file: !141, line: 880, type: !308)
!2530 = !DILocation(line: 880, column: 13, scope: !2525)
!2531 = !DILocation(line: 880, column: 26, scope: !2525)
!2532 = !DILocation(line: 882, column: 31, scope: !2525)
!2533 = !DILocation(line: 882, column: 53, scope: !2525)
!2534 = !DILocation(line: 883, column: 31, scope: !2525)
!2535 = !DILocation(line: 883, column: 35, scope: !2525)
!2536 = !DILocation(line: 883, column: 33, scope: !2525)
!2537 = !DILocation(line: 883, column: 42, scope: !2525)
!2538 = !DILocation(line: 883, column: 47, scope: !2525)
!2539 = !DILocation(line: 882, column: 22, scope: !2525)
!2540 = !DILocation(line: 882, column: 20, scope: !2525)
!2541 = !DILocation(line: 882, column: 15, scope: !2525)
!2542 = !DILocation(line: 884, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2525, file: !141, line: 884, column: 11)
!2544 = !DILocation(line: 884, column: 11, scope: !2525)
!2545 = !DILocation(line: 885, column: 10, scope: !2543)
!2546 = !DILocation(line: 885, column: 15, scope: !2543)
!2547 = !DILocation(line: 885, column: 9, scope: !2543)
!2548 = !DILocation(line: 886, column: 15, scope: !2525)
!2549 = !DILocation(line: 886, column: 20, scope: !2525)
!2550 = !DILocation(line: 886, column: 18, scope: !2525)
!2551 = !DILocation(line: 886, column: 7, scope: !2525)
!2552 = !DILocation(line: 886, column: 32, scope: !2525)
!2553 = !DILocation(line: 886, column: 45, scope: !2525)
!2554 = !DILocation(line: 886, column: 43, scope: !2525)
!2555 = !DILocation(line: 886, column: 53, scope: !2525)
!2556 = !DILocation(line: 887, column: 16, scope: !2525)
!2557 = !DILocation(line: 887, column: 14, scope: !2525)
!2558 = !DILocation(line: 888, column: 5, scope: !2525)
!2559 = !DILocalVariable(name: "size", scope: !2560, file: !141, line: 891, type: !149)
!2560 = distinct !DILexicalBlock(scope: !2491, file: !141, line: 890, column: 3)
!2561 = !DILocation(line: 891, column: 12, scope: !2560)
!2562 = !DILocation(line: 891, column: 19, scope: !2560)
!2563 = !DILocation(line: 891, column: 22, scope: !2560)
!2564 = !DILocation(line: 891, column: 25, scope: !2560)
!2565 = !DILocalVariable(name: "val", scope: !2560, file: !141, line: 892, type: !54)
!2566 = !DILocation(line: 892, column: 11, scope: !2560)
!2567 = !DILocation(line: 892, column: 17, scope: !2560)
!2568 = !DILocation(line: 892, column: 20, scope: !2560)
!2569 = !DILocation(line: 892, column: 23, scope: !2560)
!2570 = !DILocalVariable(name: "flags", scope: !2560, file: !141, line: 894, type: !51)
!2571 = !DILocation(line: 894, column: 9, scope: !2560)
!2572 = !DILocation(line: 894, column: 17, scope: !2560)
!2573 = !DILocation(line: 894, column: 26, scope: !2560)
!2574 = !DILocation(line: 894, column: 32, scope: !2560)
!2575 = !DILocalVariable(name: "qsize", scope: !2560, file: !141, line: 895, type: !149)
!2576 = !DILocation(line: 895, column: 12, scope: !2560)
!2577 = !DILocation(line: 895, column: 46, scope: !2560)
!2578 = !DILocation(line: 895, column: 51, scope: !2560)
!2579 = !DILocation(line: 895, column: 57, scope: !2560)
!2580 = !DILocation(line: 895, column: 62, scope: !2560)
!2581 = !DILocation(line: 896, column: 46, scope: !2560)
!2582 = !DILocation(line: 896, column: 55, scope: !2560)
!2583 = !DILocation(line: 896, column: 62, scope: !2560)
!2584 = !DILocation(line: 897, column: 46, scope: !2560)
!2585 = !DILocation(line: 897, column: 55, scope: !2560)
!2586 = !DILocation(line: 898, column: 46, scope: !2560)
!2587 = !DILocation(line: 898, column: 55, scope: !2560)
!2588 = !DILocation(line: 899, column: 46, scope: !2560)
!2589 = !DILocation(line: 899, column: 55, scope: !2560)
!2590 = !DILocation(line: 895, column: 20, scope: !2560)
!2591 = !DILocation(line: 901, column: 9, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2560, file: !141, line: 901, column: 9)
!2593 = !DILocation(line: 901, column: 17, scope: !2592)
!2594 = !DILocation(line: 901, column: 14, scope: !2592)
!2595 = !DILocation(line: 901, column: 9, scope: !2560)
!2596 = !DILocation(line: 903, column: 29, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !141, line: 902, column: 7)
!2598 = !DILocation(line: 903, column: 35, scope: !2597)
!2599 = !DILocation(line: 903, column: 27, scope: !2597)
!2600 = !DILocation(line: 903, column: 9, scope: !2597)
!2601 = !DILocation(line: 903, column: 12, scope: !2597)
!2602 = !DILocation(line: 903, column: 15, scope: !2597)
!2603 = !DILocation(line: 903, column: 20, scope: !2597)
!2604 = !DILocation(line: 904, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2597, file: !141, line: 904, column: 13)
!2606 = !DILocation(line: 904, column: 17, scope: !2605)
!2607 = !DILocation(line: 904, column: 13, scope: !2597)
!2608 = !DILocation(line: 905, column: 17, scope: !2605)
!2609 = !DILocation(line: 905, column: 11, scope: !2605)
!2610 = !DILocation(line: 906, column: 39, scope: !2597)
!2611 = !DILocation(line: 906, column: 27, scope: !2597)
!2612 = !DILocation(line: 906, column: 25, scope: !2597)
!2613 = !DILocation(line: 906, column: 9, scope: !2597)
!2614 = !DILocation(line: 906, column: 12, scope: !2597)
!2615 = !DILocation(line: 906, column: 15, scope: !2597)
!2616 = !DILocation(line: 906, column: 19, scope: !2597)
!2617 = !DILocation(line: 907, column: 35, scope: !2597)
!2618 = !DILocation(line: 907, column: 40, scope: !2597)
!2619 = !DILocation(line: 907, column: 46, scope: !2597)
!2620 = !DILocation(line: 907, column: 51, scope: !2597)
!2621 = !DILocation(line: 907, column: 60, scope: !2597)
!2622 = !DILocation(line: 907, column: 69, scope: !2597)
!2623 = !DILocation(line: 908, column: 35, scope: !2597)
!2624 = !DILocation(line: 908, column: 42, scope: !2597)
!2625 = !DILocation(line: 908, column: 51, scope: !2597)
!2626 = !DILocation(line: 909, column: 35, scope: !2597)
!2627 = !DILocation(line: 909, column: 44, scope: !2597)
!2628 = !DILocation(line: 910, column: 35, scope: !2597)
!2629 = !DILocation(line: 910, column: 44, scope: !2597)
!2630 = !DILocation(line: 907, column: 9, scope: !2597)
!2631 = !DILocation(line: 911, column: 7, scope: !2597)
!2632 = !DILocation(line: 913, column: 13, scope: !2560)
!2633 = !DILocation(line: 913, column: 5, scope: !2560)
!2634 = !DILocation(line: 913, column: 11, scope: !2560)
!2635 = !DILocation(line: 914, column: 12, scope: !2560)
!2636 = !DILocation(line: 914, column: 5, scope: !2560)
!2637 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !141, file: !141, line: 925, type: !2638, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!54, !51, !6, !149}
!2640 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !141, line: 925, type: !51)
!2641 = !DILocation(line: 925, column: 21, scope: !2637)
!2642 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !141, line: 925, type: !6)
!2643 = !DILocation(line: 925, column: 36, scope: !2637)
!2644 = !DILocalVariable(name: "argsize", arg: 3, scope: !2637, file: !141, line: 925, type: !149)
!2645 = !DILocation(line: 925, column: 48, scope: !2637)
!2646 = !DILocation(line: 927, column: 30, scope: !2637)
!2647 = !DILocation(line: 927, column: 33, scope: !2637)
!2648 = !DILocation(line: 927, column: 38, scope: !2637)
!2649 = !DILocation(line: 927, column: 10, scope: !2637)
!2650 = !DILocation(line: 927, column: 3, scope: !2637)
!2651 = distinct !DISubprogram(name: "quotearg", scope: !141, file: !141, line: 931, type: !2652, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!54, !6}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2651, file: !141, line: 931, type: !6)
!2655 = !DILocation(line: 931, column: 23, scope: !2651)
!2656 = !DILocation(line: 933, column: 25, scope: !2651)
!2657 = !DILocation(line: 933, column: 10, scope: !2651)
!2658 = !DILocation(line: 933, column: 3, scope: !2651)
!2659 = distinct !DISubprogram(name: "quotearg_mem", scope: !141, file: !141, line: 937, type: !2660, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!54, !6, !149}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2659, file: !141, line: 937, type: !6)
!2663 = !DILocation(line: 937, column: 27, scope: !2659)
!2664 = !DILocalVariable(name: "argsize", arg: 2, scope: !2659, file: !141, line: 937, type: !149)
!2665 = !DILocation(line: 937, column: 39, scope: !2659)
!2666 = !DILocation(line: 939, column: 29, scope: !2659)
!2667 = !DILocation(line: 939, column: 34, scope: !2659)
!2668 = !DILocation(line: 939, column: 10, scope: !2659)
!2669 = !DILocation(line: 939, column: 3, scope: !2659)
!2670 = distinct !DISubprogram(name: "quotearg_n_style", scope: !141, file: !141, line: 943, type: !2671, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!54, !51, !35, !6}
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !141, line: 943, type: !51)
!2674 = !DILocation(line: 943, column: 23, scope: !2670)
!2675 = !DILocalVariable(name: "s", arg: 2, scope: !2670, file: !141, line: 943, type: !35)
!2676 = !DILocation(line: 943, column: 45, scope: !2670)
!2677 = !DILocalVariable(name: "arg", arg: 3, scope: !2670, file: !141, line: 943, type: !6)
!2678 = !DILocation(line: 943, column: 60, scope: !2670)
!2679 = !DILocalVariable(name: "o", scope: !2670, file: !141, line: 945, type: !1289)
!2680 = !DILocation(line: 945, column: 32, scope: !2670)
!2681 = !DILocation(line: 945, column: 64, scope: !2670)
!2682 = !DILocation(line: 945, column: 36, scope: !2670)
!2683 = !DILocation(line: 946, column: 30, scope: !2670)
!2684 = !DILocation(line: 946, column: 33, scope: !2670)
!2685 = !DILocation(line: 946, column: 10, scope: !2670)
!2686 = !DILocation(line: 946, column: 3, scope: !2670)
!2687 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !141, file: !141, line: 183, type: !2688, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!161, !35}
!2690 = !DILocalVariable(name: "style", arg: 1, scope: !2687, file: !141, line: 183, type: !35)
!2691 = !DILocation(line: 183, column: 48, scope: !2687)
!2692 = !DILocalVariable(name: "o", scope: !2687, file: !141, line: 185, type: !161)
!2693 = !DILocation(line: 185, column: 26, scope: !2687)
!2694 = !DILocation(line: 186, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !141, line: 186, column: 7)
!2696 = !DILocation(line: 186, column: 13, scope: !2695)
!2697 = !DILocation(line: 186, column: 7, scope: !2687)
!2698 = !DILocation(line: 187, column: 5, scope: !2695)
!2699 = !DILocation(line: 188, column: 13, scope: !2687)
!2700 = !DILocation(line: 188, column: 5, scope: !2687)
!2701 = !DILocation(line: 188, column: 11, scope: !2687)
!2702 = !DILocation(line: 189, column: 3, scope: !2687)
!2703 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !141, file: !141, line: 950, type: !2704, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!54, !51, !35, !6, !149}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !141, line: 950, type: !51)
!2707 = !DILocation(line: 950, column: 27, scope: !2703)
!2708 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !141, line: 950, type: !35)
!2709 = !DILocation(line: 950, column: 49, scope: !2703)
!2710 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !141, line: 951, type: !6)
!2711 = !DILocation(line: 951, column: 35, scope: !2703)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2703, file: !141, line: 951, type: !149)
!2713 = !DILocation(line: 951, column: 47, scope: !2703)
!2714 = !DILocalVariable(name: "o", scope: !2703, file: !141, line: 953, type: !1289)
!2715 = !DILocation(line: 953, column: 32, scope: !2703)
!2716 = !DILocation(line: 953, column: 64, scope: !2703)
!2717 = !DILocation(line: 953, column: 36, scope: !2703)
!2718 = !DILocation(line: 954, column: 30, scope: !2703)
!2719 = !DILocation(line: 954, column: 33, scope: !2703)
!2720 = !DILocation(line: 954, column: 38, scope: !2703)
!2721 = !DILocation(line: 954, column: 10, scope: !2703)
!2722 = !DILocation(line: 954, column: 3, scope: !2703)
!2723 = distinct !DISubprogram(name: "quotearg_style", scope: !141, file: !141, line: 958, type: !2724, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!54, !35, !6}
!2726 = !DILocalVariable(name: "s", arg: 1, scope: !2723, file: !141, line: 958, type: !35)
!2727 = !DILocation(line: 958, column: 36, scope: !2723)
!2728 = !DILocalVariable(name: "arg", arg: 2, scope: !2723, file: !141, line: 958, type: !6)
!2729 = !DILocation(line: 958, column: 51, scope: !2723)
!2730 = !DILocation(line: 960, column: 31, scope: !2723)
!2731 = !DILocation(line: 960, column: 34, scope: !2723)
!2732 = !DILocation(line: 960, column: 10, scope: !2723)
!2733 = !DILocation(line: 960, column: 3, scope: !2723)
!2734 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !141, file: !141, line: 964, type: !2735, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!54, !35, !6, !149}
!2737 = !DILocalVariable(name: "s", arg: 1, scope: !2734, file: !141, line: 964, type: !35)
!2738 = !DILocation(line: 964, column: 40, scope: !2734)
!2739 = !DILocalVariable(name: "arg", arg: 2, scope: !2734, file: !141, line: 964, type: !6)
!2740 = !DILocation(line: 964, column: 55, scope: !2734)
!2741 = !DILocalVariable(name: "argsize", arg: 3, scope: !2734, file: !141, line: 964, type: !149)
!2742 = !DILocation(line: 964, column: 67, scope: !2734)
!2743 = !DILocation(line: 966, column: 35, scope: !2734)
!2744 = !DILocation(line: 966, column: 38, scope: !2734)
!2745 = !DILocation(line: 966, column: 43, scope: !2734)
!2746 = !DILocation(line: 966, column: 10, scope: !2734)
!2747 = !DILocation(line: 966, column: 3, scope: !2734)
!2748 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !141, file: !141, line: 970, type: !2749, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!54, !6, !149, !8}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2748, file: !141, line: 970, type: !6)
!2752 = !DILocation(line: 970, column: 32, scope: !2748)
!2753 = !DILocalVariable(name: "argsize", arg: 2, scope: !2748, file: !141, line: 970, type: !149)
!2754 = !DILocation(line: 970, column: 44, scope: !2748)
!2755 = !DILocalVariable(name: "ch", arg: 3, scope: !2748, file: !141, line: 970, type: !8)
!2756 = !DILocation(line: 970, column: 58, scope: !2748)
!2757 = !DILocalVariable(name: "options", scope: !2748, file: !141, line: 972, type: !161)
!2758 = !DILocation(line: 972, column: 26, scope: !2748)
!2759 = !DILocation(line: 973, column: 13, scope: !2748)
!2760 = !DILocation(line: 974, column: 31, scope: !2748)
!2761 = !DILocation(line: 974, column: 3, scope: !2748)
!2762 = !DILocation(line: 975, column: 33, scope: !2748)
!2763 = !DILocation(line: 975, column: 38, scope: !2748)
!2764 = !DILocation(line: 975, column: 10, scope: !2748)
!2765 = !DILocation(line: 975, column: 3, scope: !2748)
!2766 = distinct !DISubprogram(name: "quotearg_char", scope: !141, file: !141, line: 979, type: !2767, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!54, !6, !8}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2766, file: !141, line: 979, type: !6)
!2770 = !DILocation(line: 979, column: 28, scope: !2766)
!2771 = !DILocalVariable(name: "ch", arg: 2, scope: !2766, file: !141, line: 979, type: !8)
!2772 = !DILocation(line: 979, column: 38, scope: !2766)
!2773 = !DILocation(line: 981, column: 29, scope: !2766)
!2774 = !DILocation(line: 981, column: 44, scope: !2766)
!2775 = !DILocation(line: 981, column: 10, scope: !2766)
!2776 = !DILocation(line: 981, column: 3, scope: !2766)
!2777 = distinct !DISubprogram(name: "quotearg_colon", scope: !141, file: !141, line: 985, type: !2652, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2778 = !DILocalVariable(name: "arg", arg: 1, scope: !2777, file: !141, line: 985, type: !6)
!2779 = !DILocation(line: 985, column: 29, scope: !2777)
!2780 = !DILocation(line: 987, column: 25, scope: !2777)
!2781 = !DILocation(line: 987, column: 10, scope: !2777)
!2782 = !DILocation(line: 987, column: 3, scope: !2777)
!2783 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !141, file: !141, line: 991, type: !2660, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2784 = !DILocalVariable(name: "arg", arg: 1, scope: !2783, file: !141, line: 991, type: !6)
!2785 = !DILocation(line: 991, column: 33, scope: !2783)
!2786 = !DILocalVariable(name: "argsize", arg: 2, scope: !2783, file: !141, line: 991, type: !149)
!2787 = !DILocation(line: 991, column: 45, scope: !2783)
!2788 = !DILocation(line: 993, column: 29, scope: !2783)
!2789 = !DILocation(line: 993, column: 34, scope: !2783)
!2790 = !DILocation(line: 993, column: 10, scope: !2783)
!2791 = !DILocation(line: 993, column: 3, scope: !2783)
!2792 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !141, file: !141, line: 997, type: !2671, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !141, line: 997, type: !51)
!2794 = !DILocation(line: 997, column: 29, scope: !2792)
!2795 = !DILocalVariable(name: "s", arg: 2, scope: !2792, file: !141, line: 997, type: !35)
!2796 = !DILocation(line: 997, column: 51, scope: !2792)
!2797 = !DILocalVariable(name: "arg", arg: 3, scope: !2792, file: !141, line: 997, type: !6)
!2798 = !DILocation(line: 997, column: 66, scope: !2792)
!2799 = !DILocalVariable(name: "options", scope: !2792, file: !141, line: 999, type: !161)
!2800 = !DILocation(line: 999, column: 26, scope: !2792)
!2801 = !DILocation(line: 1000, column: 41, scope: !2792)
!2802 = !DILocation(line: 1000, column: 13, scope: !2792)
!2803 = !DILocation(line: 1001, column: 3, scope: !2792)
!2804 = !DILocation(line: 1002, column: 30, scope: !2792)
!2805 = !DILocation(line: 1002, column: 33, scope: !2792)
!2806 = !DILocation(line: 1002, column: 10, scope: !2792)
!2807 = !DILocation(line: 1002, column: 3, scope: !2792)
!2808 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !141, file: !141, line: 1006, type: !2809, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!54, !51, !6, !6, !6}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !141, line: 1006, type: !51)
!2812 = !DILocation(line: 1006, column: 24, scope: !2808)
!2813 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2808, file: !141, line: 1006, type: !6)
!2814 = !DILocation(line: 1006, column: 39, scope: !2808)
!2815 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2808, file: !141, line: 1007, type: !6)
!2816 = !DILocation(line: 1007, column: 32, scope: !2808)
!2817 = !DILocalVariable(name: "arg", arg: 4, scope: !2808, file: !141, line: 1007, type: !6)
!2818 = !DILocation(line: 1007, column: 57, scope: !2808)
!2819 = !DILocation(line: 1009, column: 33, scope: !2808)
!2820 = !DILocation(line: 1009, column: 36, scope: !2808)
!2821 = !DILocation(line: 1009, column: 48, scope: !2808)
!2822 = !DILocation(line: 1009, column: 61, scope: !2808)
!2823 = !DILocation(line: 1009, column: 10, scope: !2808)
!2824 = !DILocation(line: 1009, column: 3, scope: !2808)
!2825 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !141, file: !141, line: 1014, type: !2826, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!54, !51, !6, !6, !6, !149}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2825, file: !141, line: 1014, type: !51)
!2829 = !DILocation(line: 1014, column: 28, scope: !2825)
!2830 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2825, file: !141, line: 1014, type: !6)
!2831 = !DILocation(line: 1014, column: 43, scope: !2825)
!2832 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2825, file: !141, line: 1015, type: !6)
!2833 = !DILocation(line: 1015, column: 36, scope: !2825)
!2834 = !DILocalVariable(name: "arg", arg: 4, scope: !2825, file: !141, line: 1016, type: !6)
!2835 = !DILocation(line: 1016, column: 36, scope: !2825)
!2836 = !DILocalVariable(name: "argsize", arg: 5, scope: !2825, file: !141, line: 1016, type: !149)
!2837 = !DILocation(line: 1016, column: 48, scope: !2825)
!2838 = !DILocalVariable(name: "o", scope: !2825, file: !141, line: 1018, type: !161)
!2839 = !DILocation(line: 1018, column: 26, scope: !2825)
!2840 = !DILocation(line: 1018, column: 30, scope: !2825)
!2841 = !DILocation(line: 1019, column: 27, scope: !2825)
!2842 = !DILocation(line: 1019, column: 39, scope: !2825)
!2843 = !DILocation(line: 1019, column: 3, scope: !2825)
!2844 = !DILocation(line: 1020, column: 30, scope: !2825)
!2845 = !DILocation(line: 1020, column: 33, scope: !2825)
!2846 = !DILocation(line: 1020, column: 38, scope: !2825)
!2847 = !DILocation(line: 1020, column: 10, scope: !2825)
!2848 = !DILocation(line: 1020, column: 3, scope: !2825)
!2849 = distinct !DISubprogram(name: "quotearg_custom", scope: !141, file: !141, line: 1024, type: !2850, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!54, !6, !6, !6}
!2852 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2849, file: !141, line: 1024, type: !6)
!2853 = !DILocation(line: 1024, column: 30, scope: !2849)
!2854 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2849, file: !141, line: 1024, type: !6)
!2855 = !DILocation(line: 1024, column: 54, scope: !2849)
!2856 = !DILocalVariable(name: "arg", arg: 3, scope: !2849, file: !141, line: 1025, type: !6)
!2857 = !DILocation(line: 1025, column: 30, scope: !2849)
!2858 = !DILocation(line: 1027, column: 32, scope: !2849)
!2859 = !DILocation(line: 1027, column: 44, scope: !2849)
!2860 = !DILocation(line: 1027, column: 57, scope: !2849)
!2861 = !DILocation(line: 1027, column: 10, scope: !2849)
!2862 = !DILocation(line: 1027, column: 3, scope: !2849)
!2863 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !141, file: !141, line: 1031, type: !2864, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!54, !6, !6, !6, !149}
!2866 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2863, file: !141, line: 1031, type: !6)
!2867 = !DILocation(line: 1031, column: 34, scope: !2863)
!2868 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2863, file: !141, line: 1031, type: !6)
!2869 = !DILocation(line: 1031, column: 58, scope: !2863)
!2870 = !DILocalVariable(name: "arg", arg: 3, scope: !2863, file: !141, line: 1032, type: !6)
!2871 = !DILocation(line: 1032, column: 34, scope: !2863)
!2872 = !DILocalVariable(name: "argsize", arg: 4, scope: !2863, file: !141, line: 1032, type: !149)
!2873 = !DILocation(line: 1032, column: 46, scope: !2863)
!2874 = !DILocation(line: 1034, column: 36, scope: !2863)
!2875 = !DILocation(line: 1034, column: 48, scope: !2863)
!2876 = !DILocation(line: 1034, column: 61, scope: !2863)
!2877 = !DILocation(line: 1035, column: 33, scope: !2863)
!2878 = !DILocation(line: 1034, column: 10, scope: !2863)
!2879 = !DILocation(line: 1034, column: 3, scope: !2863)
!2880 = distinct !DISubprogram(name: "quote_n_mem", scope: !141, file: !141, line: 1049, type: !2881, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!6, !51, !6, !149}
!2883 = !DILocalVariable(name: "n", arg: 1, scope: !2880, file: !141, line: 1049, type: !51)
!2884 = !DILocation(line: 1049, column: 18, scope: !2880)
!2885 = !DILocalVariable(name: "arg", arg: 2, scope: !2880, file: !141, line: 1049, type: !6)
!2886 = !DILocation(line: 1049, column: 33, scope: !2880)
!2887 = !DILocalVariable(name: "argsize", arg: 3, scope: !2880, file: !141, line: 1049, type: !149)
!2888 = !DILocation(line: 1049, column: 45, scope: !2880)
!2889 = !DILocation(line: 1051, column: 30, scope: !2880)
!2890 = !DILocation(line: 1051, column: 33, scope: !2880)
!2891 = !DILocation(line: 1051, column: 38, scope: !2880)
!2892 = !DILocation(line: 1051, column: 10, scope: !2880)
!2893 = !DILocation(line: 1051, column: 3, scope: !2880)
!2894 = distinct !DISubprogram(name: "quote_mem", scope: !141, file: !141, line: 1055, type: !2895, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!6, !6, !149}
!2897 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !141, line: 1055, type: !6)
!2898 = !DILocation(line: 1055, column: 24, scope: !2894)
!2899 = !DILocalVariable(name: "argsize", arg: 2, scope: !2894, file: !141, line: 1055, type: !149)
!2900 = !DILocation(line: 1055, column: 36, scope: !2894)
!2901 = !DILocation(line: 1057, column: 26, scope: !2894)
!2902 = !DILocation(line: 1057, column: 31, scope: !2894)
!2903 = !DILocation(line: 1057, column: 10, scope: !2894)
!2904 = !DILocation(line: 1057, column: 3, scope: !2894)
!2905 = distinct !DISubprogram(name: "quote_n", scope: !141, file: !141, line: 1061, type: !2906, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!6, !51, !6}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !141, line: 1061, type: !51)
!2909 = !DILocation(line: 1061, column: 14, scope: !2905)
!2910 = !DILocalVariable(name: "arg", arg: 2, scope: !2905, file: !141, line: 1061, type: !6)
!2911 = !DILocation(line: 1061, column: 29, scope: !2905)
!2912 = !DILocation(line: 1063, column: 23, scope: !2905)
!2913 = !DILocation(line: 1063, column: 26, scope: !2905)
!2914 = !DILocation(line: 1063, column: 10, scope: !2905)
!2915 = !DILocation(line: 1063, column: 3, scope: !2905)
!2916 = distinct !DISubprogram(name: "quote", scope: !141, file: !141, line: 1067, type: !2917, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !56)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!6, !6}
!2919 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !141, line: 1067, type: !6)
!2920 = !DILocation(line: 1067, column: 20, scope: !2916)
!2921 = !DILocation(line: 1069, column: 22, scope: !2916)
!2922 = !DILocation(line: 1069, column: 10, scope: !2916)
!2923 = !DILocation(line: 1069, column: 3, scope: !2916)
!2924 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !239, file: !239, line: 156, type: !2925, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !56)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!54, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !13, line: 92, baseType: !2930)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !13, line: 65, size: 576, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2941, !2942, !2943, !2944}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !2930, file: !13, line: 69, baseType: !54, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !2930, file: !13, line: 70, baseType: !54, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !2930, file: !13, line: 71, baseType: !54, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !2930, file: !13, line: 72, baseType: !54, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !2930, file: !13, line: 74, baseType: !2937, size: 128, offset: 256)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !686, line: 11, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2937, file: !686, line: 16, baseType: !271, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2937, file: !686, line: 21, baseType: !690, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !2930, file: !13, line: 75, baseType: !692, size: 32, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !2930, file: !13, line: 76, baseType: !692, size: 32, offset: 416)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !2930, file: !13, line: 77, baseType: !248, size: 16, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !2930, file: !13, line: 79, baseType: !2945, size: 64, offset: 480)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2930, file: !13, line: 79, size: 64, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !2945, file: !13, line: 79, baseType: !51, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !2945, file: !13, line: 79, baseType: !51, size: 32, offset: 32)
!2949 = !DILocalVariable(name: "ut", arg: 1, scope: !2924, file: !239, line: 156, type: !2927)
!2950 = !DILocation(line: 156, column: 42, scope: !2924)
!2951 = !DILocalVariable(name: "name", scope: !2924, file: !239, line: 158, type: !6)
!2952 = !DILocation(line: 158, column: 15, scope: !2924)
!2953 = !DILocation(line: 158, column: 22, scope: !2924)
!2954 = !DILocation(line: 158, column: 26, scope: !2924)
!2955 = !DILocalVariable(name: "len", scope: !2924, file: !239, line: 159, type: !308)
!2956 = !DILocation(line: 159, column: 9, scope: !2924)
!2957 = !DILocation(line: 159, column: 23, scope: !2924)
!2958 = !DILocation(line: 159, column: 15, scope: !2924)
!2959 = !DILocalVariable(name: "p", scope: !2924, file: !239, line: 160, type: !6)
!2960 = !DILocation(line: 160, column: 15, scope: !2924)
!2961 = !DILocation(line: 161, column: 12, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2924, file: !239, line: 161, column: 3)
!2963 = !DILocation(line: 161, column: 19, scope: !2962)
!2964 = !DILocation(line: 161, column: 17, scope: !2962)
!2965 = !DILocation(line: 161, column: 10, scope: !2962)
!2966 = !DILocation(line: 161, column: 8, scope: !2962)
!2967 = !DILocation(line: 161, column: 24, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2962, file: !239, line: 161, column: 3)
!2969 = !DILocation(line: 161, column: 31, scope: !2968)
!2970 = !DILocation(line: 161, column: 29, scope: !2968)
!2971 = !DILocation(line: 161, column: 33, scope: !2968)
!2972 = !DILocation(line: 161, column: 36, scope: !2968)
!2973 = !DILocation(line: 161, column: 42, scope: !2968)
!2974 = !DILocation(line: 0, scope: !2968)
!2975 = !DILocation(line: 161, column: 3, scope: !2962)
!2976 = !DILocation(line: 162, column: 5, scope: !2968)
!2977 = !DILocation(line: 161, column: 51, scope: !2968)
!2978 = !DILocation(line: 161, column: 3, scope: !2968)
!2979 = distinct !{!2979, !2975, !2980, !449}
!2980 = !DILocation(line: 162, column: 5, scope: !2962)
!2981 = !DILocation(line: 163, column: 21, scope: !2924)
!2982 = !DILocation(line: 163, column: 27, scope: !2924)
!2983 = !DILocation(line: 163, column: 31, scope: !2924)
!2984 = !DILocation(line: 163, column: 29, scope: !2924)
!2985 = !DILocation(line: 163, column: 10, scope: !2924)
!2986 = !DILocation(line: 163, column: 3, scope: !2924)
!2987 = distinct !DISubprogram(name: "read_utmp", scope: !239, file: !239, line: 977, type: !2988, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !56)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!51, !6, !307, !2990, !51}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2992 = !DILocalVariable(name: "file", arg: 1, scope: !2987, file: !239, line: 977, type: !6)
!2993 = !DILocation(line: 977, column: 24, scope: !2987)
!2994 = !DILocalVariable(name: "n_entries", arg: 2, scope: !2987, file: !239, line: 977, type: !307)
!2995 = !DILocation(line: 977, column: 37, scope: !2987)
!2996 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !2987, file: !239, line: 977, type: !2990)
!2997 = !DILocation(line: 977, column: 62, scope: !2987)
!2998 = !DILocalVariable(name: "options", arg: 4, scope: !2987, file: !239, line: 978, type: !51)
!2999 = !DILocation(line: 978, column: 16, scope: !2987)
!3000 = !DILocation(line: 986, column: 31, scope: !2987)
!3001 = !DILocation(line: 986, column: 37, scope: !2987)
!3002 = !DILocation(line: 986, column: 48, scope: !2987)
!3003 = !DILocation(line: 986, column: 58, scope: !2987)
!3004 = !DILocation(line: 986, column: 10, scope: !2987)
!3005 = !DILocation(line: 986, column: 3, scope: !2987)
!3006 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !239, file: !239, line: 320, type: !2988, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3007 = !DILocalVariable(name: "file", arg: 1, scope: !3006, file: !239, line: 320, type: !6)
!3008 = !DILocation(line: 320, column: 34, scope: !3006)
!3009 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3006, file: !239, line: 320, type: !307)
!3010 = !DILocation(line: 320, column: 47, scope: !3006)
!3011 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3006, file: !239, line: 320, type: !2990)
!3012 = !DILocation(line: 320, column: 72, scope: !3006)
!3013 = !DILocalVariable(name: "options", arg: 4, scope: !3006, file: !239, line: 321, type: !51)
!3014 = !DILocation(line: 321, column: 26, scope: !3006)
!3015 = !DILocation(line: 323, column: 8, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3006, file: !239, line: 323, column: 7)
!3017 = !DILocation(line: 323, column: 16, scope: !3016)
!3018 = !DILocation(line: 323, column: 39, scope: !3016)
!3019 = !DILocation(line: 324, column: 7, scope: !3016)
!3020 = !DILocation(line: 324, column: 11, scope: !3016)
!3021 = !DILocation(line: 324, column: 19, scope: !3016)
!3022 = !DILocation(line: 324, column: 72, scope: !3016)
!3023 = !DILocation(line: 323, column: 7, scope: !3006)
!3024 = !DILocation(line: 327, column: 8, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !239, line: 325, column: 5)
!3026 = !DILocation(line: 327, column: 18, scope: !3025)
!3027 = !DILocation(line: 328, column: 8, scope: !3025)
!3028 = !DILocation(line: 328, column: 17, scope: !3025)
!3029 = !DILocation(line: 329, column: 7, scope: !3025)
!3030 = !DILocalVariable(name: "a", scope: !3006, file: !239, line: 332, type: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !239, line: 202, size: 256, elements: !3032)
!3032 = !{!3033, !3035, !3036, !3037}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !3031, file: !239, line: 208, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !3031, file: !239, line: 211, baseType: !308, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !3031, file: !239, line: 214, baseType: !308, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !3031, file: !239, line: 218, baseType: !308, size: 64, offset: 192)
!3038 = !DILocation(line: 332, column: 21, scope: !3006)
!3039 = !DILocation(line: 342, column: 32, scope: !3006)
!3040 = !DILocation(line: 342, column: 3, scope: !3006)
!3041 = !DILocation(line: 344, column: 3, scope: !3006)
!3042 = !DILocalVariable(name: "file_is_utmp", scope: !3006, file: !239, line: 347, type: !69)
!3043 = !DILocation(line: 347, column: 8, scope: !3006)
!3044 = !DILocation(line: 347, column: 30, scope: !3006)
!3045 = !DILocation(line: 347, column: 23, scope: !3006)
!3046 = !DILocalVariable(name: "runlevel_ts", scope: !3006, file: !239, line: 349, type: !2937)
!3047 = !DILocation(line: 349, column: 19, scope: !3006)
!3048 = !DILocalVariable(name: "entry", scope: !3006, file: !239, line: 352, type: !801)
!3049 = !DILocation(line: 352, column: 15, scope: !3006)
!3050 = !DILocation(line: 354, column: 3, scope: !3006)
!3051 = !DILocation(line: 354, column: 19, scope: !3006)
!3052 = !DILocation(line: 354, column: 17, scope: !3006)
!3053 = !DILocation(line: 354, column: 36, scope: !3006)
!3054 = !DILocalVariable(name: "ut", scope: !3055, file: !239, line: 356, type: !242)
!3055 = distinct !DILexicalBlock(scope: !3006, file: !239, line: 355, column: 5)
!3056 = !DILocation(line: 356, column: 38, scope: !3055)
!3057 = !DILocation(line: 356, column: 77, scope: !3055)
!3058 = !DILocation(line: 356, column: 43, scope: !3055)
!3059 = !DILocalVariable(name: "ts", scope: !3055, file: !239, line: 358, type: !2937)
!3060 = !DILocation(line: 358, column: 23, scope: !3055)
!3061 = !DILocation(line: 360, column: 9, scope: !3055)
!3062 = !DILocation(line: 360, column: 21, scope: !3055)
!3063 = !DILocation(line: 360, column: 25, scope: !3055)
!3064 = !DILocation(line: 360, column: 31, scope: !3055)
!3065 = !DILocation(line: 360, column: 50, scope: !3055)
!3066 = !DILocation(line: 360, column: 54, scope: !3055)
!3067 = !DILocation(line: 360, column: 60, scope: !3055)
!3068 = !DILocation(line: 360, column: 68, scope: !3055)
!3069 = !DILocation(line: 365, column: 24, scope: !3055)
!3070 = !DILocation(line: 366, column: 21, scope: !3055)
!3071 = !DILocation(line: 366, column: 44, scope: !3055)
!3072 = !DILocation(line: 366, column: 35, scope: !3055)
!3073 = !DILocation(line: 368, column: 21, scope: !3055)
!3074 = !DILocation(line: 368, column: 25, scope: !3055)
!3075 = !DILocation(line: 368, column: 41, scope: !3055)
!3076 = !DILocation(line: 368, column: 45, scope: !3055)
!3077 = !DILocation(line: 368, column: 32, scope: !3055)
!3078 = !DILocation(line: 372, column: 21, scope: !3055)
!3079 = !DILocation(line: 372, column: 25, scope: !3055)
!3080 = !DILocation(line: 372, column: 43, scope: !3055)
!3081 = !DILocation(line: 372, column: 47, scope: !3055)
!3082 = !DILocation(line: 372, column: 34, scope: !3055)
!3083 = !DILocation(line: 374, column: 21, scope: !3055)
!3084 = !DILocation(line: 374, column: 25, scope: !3055)
!3085 = !DILocation(line: 374, column: 43, scope: !3055)
!3086 = !DILocation(line: 374, column: 47, scope: !3055)
!3087 = !DILocation(line: 374, column: 34, scope: !3055)
!3088 = !DILocation(line: 379, column: 21, scope: !3055)
!3089 = !DILocation(line: 379, column: 25, scope: !3055)
!3090 = !DILocation(line: 384, column: 21, scope: !3055)
!3091 = !DILocation(line: 384, column: 25, scope: !3055)
!3092 = !DILocation(line: 390, column: 21, scope: !3055)
!3093 = !DILocation(line: 390, column: 25, scope: !3055)
!3094 = !DILocation(line: 394, column: 21, scope: !3055)
!3095 = !DILocation(line: 394, column: 49, scope: !3055)
!3096 = !DILocation(line: 365, column: 11, scope: !3055)
!3097 = !DILocation(line: 397, column: 11, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3055, file: !239, line: 397, column: 11)
!3099 = !DILocation(line: 398, column: 11, scope: !3098)
!3100 = !DILocation(line: 398, column: 21, scope: !3098)
!3101 = !DILocation(line: 398, column: 14, scope: !3098)
!3102 = !DILocation(line: 399, column: 11, scope: !3098)
!3103 = !DILocation(line: 399, column: 21, scope: !3098)
!3104 = !DILocation(line: 399, column: 25, scope: !3098)
!3105 = !DILocation(line: 399, column: 14, scope: !3098)
!3106 = !DILocation(line: 397, column: 11, scope: !3055)
!3107 = !DILocation(line: 400, column: 23, scope: !3098)
!3108 = !DILocation(line: 400, column: 9, scope: !3098)
!3109 = distinct !{!3109, !3050, !3110, !449}
!3110 = !DILocation(line: 408, column: 5, scope: !3006)
!3111 = !DILocation(line: 410, column: 3, scope: !3006)
!3112 = !DILocation(line: 426, column: 8, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3006, file: !239, line: 426, column: 7)
!3114 = !DILocation(line: 426, column: 16, scope: !3113)
!3115 = !DILocation(line: 426, column: 69, scope: !3113)
!3116 = !DILocation(line: 427, column: 7, scope: !3113)
!3117 = !DILocation(line: 427, column: 10, scope: !3113)
!3118 = !DILocation(line: 426, column: 7, scope: !3006)
!3119 = !DILocalVariable(name: "i", scope: !3120, file: !239, line: 429, type: !308)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !239, line: 429, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !239, line: 428, column: 5)
!3122 = !DILocation(line: 429, column: 18, scope: !3120)
!3123 = !DILocation(line: 429, column: 12, scope: !3120)
!3124 = !DILocation(line: 429, column: 25, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !239, line: 429, column: 7)
!3126 = !DILocation(line: 429, column: 31, scope: !3125)
!3127 = !DILocation(line: 429, column: 27, scope: !3125)
!3128 = !DILocation(line: 429, column: 7, scope: !3120)
!3129 = !DILocalVariable(name: "ut", scope: !3130, file: !239, line: 431, type: !3034)
!3130 = distinct !DILexicalBlock(scope: !3125, file: !239, line: 430, column: 9)
!3131 = !DILocation(line: 431, column: 27, scope: !3130)
!3132 = !DILocation(line: 431, column: 35, scope: !3130)
!3133 = !DILocation(line: 431, column: 40, scope: !3130)
!3134 = !DILocation(line: 431, column: 33, scope: !3130)
!3135 = !DILocation(line: 432, column: 15, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3130, file: !239, line: 432, column: 15)
!3137 = !DILocation(line: 432, column: 15, scope: !3130)
!3138 = !DILocation(line: 435, column: 19, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !239, line: 435, column: 19)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !239, line: 433, column: 13)
!3141 = !DILocation(line: 435, column: 23, scope: !3139)
!3142 = !DILocation(line: 435, column: 29, scope: !3139)
!3143 = !DILocation(line: 435, column: 36, scope: !3139)
!3144 = !DILocation(line: 435, column: 42, scope: !3139)
!3145 = !DILocation(line: 435, column: 57, scope: !3139)
!3146 = !DILocation(line: 435, column: 64, scope: !3139)
!3147 = !DILocation(line: 435, column: 19, scope: !3140)
!3148 = !DILocation(line: 436, column: 17, scope: !3139)
!3149 = !DILocation(line: 436, column: 21, scope: !3139)
!3150 = !DILocation(line: 436, column: 29, scope: !3139)
!3151 = !DILocation(line: 437, column: 15, scope: !3140)
!3152 = !DILocation(line: 439, column: 9, scope: !3130)
!3153 = !DILocation(line: 429, column: 40, scope: !3125)
!3154 = !DILocation(line: 429, column: 7, scope: !3125)
!3155 = distinct !{!3155, !3128, !3156, !449}
!3156 = !DILocation(line: 439, column: 9, scope: !3120)
!3157 = !DILocation(line: 440, column: 12, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3121, file: !239, line: 440, column: 11)
!3159 = !DILocation(line: 440, column: 11, scope: !3121)
!3160 = !DILocalVariable(name: "boot_time", scope: !3161, file: !239, line: 443, type: !2937)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !239, line: 441, column: 9)
!3162 = !DILocation(line: 443, column: 27, scope: !3161)
!3163 = !DILocation(line: 444, column: 15, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !239, line: 444, column: 15)
!3165 = !DILocation(line: 444, column: 57, scope: !3164)
!3166 = !DILocation(line: 444, column: 15, scope: !3161)
!3167 = !DILocation(line: 445, column: 30, scope: !3164)
!3168 = !DILocation(line: 445, column: 17, scope: !3164)
!3169 = !DILocation(line: 445, column: 13, scope: !3164)
!3170 = !DILocation(line: 451, column: 9, scope: !3161)
!3171 = !DILocation(line: 452, column: 5, scope: !3121)
!3172 = !DILocation(line: 588, column: 8, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3006, file: !239, line: 588, column: 7)
!3174 = !DILocation(line: 588, column: 16, scope: !3173)
!3175 = !DILocation(line: 588, column: 69, scope: !3173)
!3176 = !DILocation(line: 589, column: 7, scope: !3173)
!3177 = !DILocation(line: 589, column: 17, scope: !3173)
!3178 = !DILocation(line: 589, column: 10, scope: !3173)
!3179 = !DILocation(line: 590, column: 7, scope: !3173)
!3180 = !DILocation(line: 590, column: 11, scope: !3173)
!3181 = !DILocation(line: 588, column: 7, scope: !3006)
!3182 = !DILocalVariable(name: "boot_time", scope: !3183, file: !239, line: 592, type: !2937)
!3183 = distinct !DILexicalBlock(scope: !3173, file: !239, line: 591, column: 5)
!3184 = !DILocation(line: 592, column: 23, scope: !3183)
!3185 = !DILocation(line: 593, column: 11, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !239, line: 593, column: 11)
!3187 = !DILocation(line: 593, column: 59, scope: !3186)
!3188 = !DILocation(line: 593, column: 11, scope: !3183)
!3189 = !DILocation(line: 594, column: 26, scope: !3186)
!3190 = !DILocation(line: 594, column: 13, scope: !3186)
!3191 = !DILocation(line: 594, column: 9, scope: !3186)
!3192 = !DILocation(line: 600, column: 5, scope: !3183)
!3193 = !DILocation(line: 688, column: 7, scope: !3006)
!3194 = !DILocation(line: 690, column: 18, scope: !3006)
!3195 = !DILocation(line: 690, column: 4, scope: !3006)
!3196 = !DILocation(line: 690, column: 14, scope: !3006)
!3197 = !DILocation(line: 691, column: 17, scope: !3006)
!3198 = !DILocation(line: 691, column: 4, scope: !3006)
!3199 = !DILocation(line: 691, column: 13, scope: !3006)
!3200 = !DILocation(line: 693, column: 3, scope: !3006)
!3201 = !DILocation(line: 694, column: 1, scope: !3006)
!3202 = distinct !DISubprogram(name: "add_utmp", scope: !239, file: !239, line: 227, type: !3203, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!3031, !3031, !51, !6, !308, !6, !308, !6, !308, !6, !308, !692, !248, !2937, !265, !51, !51}
!3205 = !DILocalVariable(name: "a", arg: 1, scope: !3202, file: !239, line: 227, type: !3031)
!3206 = !DILocation(line: 227, column: 29, scope: !3202)
!3207 = !DILocalVariable(name: "options", arg: 2, scope: !3202, file: !239, line: 227, type: !51)
!3208 = !DILocation(line: 227, column: 36, scope: !3202)
!3209 = !DILocalVariable(name: "user", arg: 3, scope: !3202, file: !239, line: 228, type: !6)
!3210 = !DILocation(line: 228, column: 23, scope: !3202)
!3211 = !DILocalVariable(name: "user_len", arg: 4, scope: !3202, file: !239, line: 228, type: !308)
!3212 = !DILocation(line: 228, column: 35, scope: !3202)
!3213 = !DILocalVariable(name: "id", arg: 5, scope: !3202, file: !239, line: 229, type: !6)
!3214 = !DILocation(line: 229, column: 23, scope: !3202)
!3215 = !DILocalVariable(name: "id_len", arg: 6, scope: !3202, file: !239, line: 229, type: !308)
!3216 = !DILocation(line: 229, column: 33, scope: !3202)
!3217 = !DILocalVariable(name: "line", arg: 7, scope: !3202, file: !239, line: 230, type: !6)
!3218 = !DILocation(line: 230, column: 23, scope: !3202)
!3219 = !DILocalVariable(name: "line_len", arg: 8, scope: !3202, file: !239, line: 230, type: !308)
!3220 = !DILocation(line: 230, column: 35, scope: !3202)
!3221 = !DILocalVariable(name: "host", arg: 9, scope: !3202, file: !239, line: 231, type: !6)
!3222 = !DILocation(line: 231, column: 23, scope: !3202)
!3223 = !DILocalVariable(name: "host_len", arg: 10, scope: !3202, file: !239, line: 231, type: !308)
!3224 = !DILocation(line: 231, column: 35, scope: !3202)
!3225 = !DILocalVariable(name: "pid", arg: 11, scope: !3202, file: !239, line: 232, type: !692)
!3226 = !DILocation(line: 232, column: 17, scope: !3202)
!3227 = !DILocalVariable(name: "type", arg: 12, scope: !3202, file: !239, line: 232, type: !248)
!3228 = !DILocation(line: 232, column: 28, scope: !3202)
!3229 = !DILocalVariable(name: "ts", arg: 13, scope: !3202, file: !239, line: 232, type: !2937)
!3230 = !DILocation(line: 232, column: 50, scope: !3202)
!3231 = !DILocalVariable(name: "session", arg: 14, scope: !3202, file: !239, line: 232, type: !265)
!3232 = !DILocation(line: 232, column: 59, scope: !3202)
!3233 = !DILocalVariable(name: "termination", arg: 15, scope: !3202, file: !239, line: 233, type: !51)
!3234 = !DILocation(line: 233, column: 15, scope: !3202)
!3235 = !DILocalVariable(name: "exit", arg: 16, scope: !3202, file: !239, line: 233, type: !51)
!3236 = !DILocation(line: 233, column: 32, scope: !3202)
!3237 = !DILocalVariable(name: "entry_bytes", scope: !3202, file: !239, line: 235, type: !51)
!3238 = !DILocation(line: 235, column: 7, scope: !3202)
!3239 = !DILocalVariable(name: "avail", scope: !3202, file: !239, line: 236, type: !308)
!3240 = !DILocation(line: 236, column: 9, scope: !3202)
!3241 = !DILocation(line: 236, column: 19, scope: !3202)
!3242 = !DILocation(line: 236, column: 34, scope: !3202)
!3243 = !DILocation(line: 236, column: 50, scope: !3202)
!3244 = !DILocation(line: 236, column: 46, scope: !3202)
!3245 = !DILocation(line: 236, column: 61, scope: !3202)
!3246 = !DILocation(line: 236, column: 57, scope: !3202)
!3247 = !DILocation(line: 236, column: 31, scope: !3202)
!3248 = !DILocalVariable(name: "needed_string_bytes", scope: !3202, file: !239, line: 237, type: !308)
!3249 = !DILocation(line: 237, column: 9, scope: !3202)
!3250 = !DILocation(line: 238, column: 6, scope: !3202)
!3251 = !DILocation(line: 238, column: 15, scope: !3202)
!3252 = !DILocation(line: 238, column: 23, scope: !3202)
!3253 = !DILocation(line: 238, column: 30, scope: !3202)
!3254 = !DILocation(line: 238, column: 20, scope: !3202)
!3255 = !DILocation(line: 238, column: 38, scope: !3202)
!3256 = !DILocation(line: 238, column: 47, scope: !3202)
!3257 = !DILocation(line: 238, column: 35, scope: !3202)
!3258 = !DILocation(line: 238, column: 55, scope: !3202)
!3259 = !DILocation(line: 238, column: 64, scope: !3202)
!3260 = !DILocation(line: 238, column: 52, scope: !3202)
!3261 = !DILocalVariable(name: "needed", scope: !3202, file: !239, line: 239, type: !308)
!3262 = !DILocation(line: 239, column: 9, scope: !3202)
!3263 = !DILocation(line: 239, column: 18, scope: !3202)
!3264 = !DILocation(line: 239, column: 32, scope: !3202)
!3265 = !DILocation(line: 239, column: 30, scope: !3202)
!3266 = !DILocation(line: 240, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3202, file: !239, line: 240, column: 7)
!3268 = !DILocation(line: 240, column: 15, scope: !3267)
!3269 = !DILocation(line: 240, column: 13, scope: !3267)
!3270 = !DILocation(line: 240, column: 7, scope: !3202)
!3271 = !DILocalVariable(name: "old_string_offset", scope: !3272, file: !239, line: 242, type: !308)
!3272 = distinct !DILexicalBlock(scope: !3267, file: !239, line: 241, column: 5)
!3273 = !DILocation(line: 242, column: 13, scope: !3272)
!3274 = !DILocation(line: 242, column: 35, scope: !3272)
!3275 = !DILocation(line: 242, column: 51, scope: !3272)
!3276 = !DILocation(line: 242, column: 47, scope: !3272)
!3277 = !DILocalVariable(name: "new", scope: !3272, file: !239, line: 243, type: !50)
!3278 = !DILocation(line: 243, column: 13, scope: !3272)
!3279 = !DILocation(line: 243, column: 30, scope: !3272)
!3280 = !DILocation(line: 243, column: 28, scope: !3272)
!3281 = !DILocation(line: 243, column: 39, scope: !3272)
!3282 = !DILocation(line: 243, column: 52, scope: !3272)
!3283 = !DILocation(line: 243, column: 61, scope: !3272)
!3284 = !DILocation(line: 243, column: 59, scope: !3272)
!3285 = !DILocation(line: 243, column: 19, scope: !3272)
!3286 = !DILocalVariable(name: "new_string_offset", scope: !3272, file: !239, line: 244, type: !308)
!3287 = !DILocation(line: 244, column: 13, scope: !3272)
!3288 = !DILocation(line: 244, column: 35, scope: !3272)
!3289 = !DILocation(line: 244, column: 51, scope: !3272)
!3290 = !DILocation(line: 244, column: 47, scope: !3272)
!3291 = !DILocation(line: 245, column: 16, scope: !3272)
!3292 = !DILocation(line: 245, column: 9, scope: !3272)
!3293 = !DILocation(line: 245, column: 14, scope: !3272)
!3294 = !DILocalVariable(name: "q", scope: !3272, file: !239, line: 246, type: !54)
!3295 = !DILocation(line: 246, column: 13, scope: !3272)
!3296 = !DILocation(line: 246, column: 17, scope: !3272)
!3297 = !DILocation(line: 247, column: 16, scope: !3272)
!3298 = !DILocation(line: 247, column: 20, scope: !3272)
!3299 = !DILocation(line: 247, column: 18, scope: !3272)
!3300 = !DILocation(line: 247, column: 39, scope: !3272)
!3301 = !DILocation(line: 247, column: 43, scope: !3272)
!3302 = !DILocation(line: 247, column: 41, scope: !3272)
!3303 = !DILocation(line: 247, column: 64, scope: !3272)
!3304 = !DILocation(line: 247, column: 7, scope: !3272)
!3305 = !DILocation(line: 248, column: 5, scope: !3272)
!3306 = !DILocalVariable(name: "ut", scope: !3202, file: !239, line: 249, type: !3034)
!3307 = !DILocation(line: 249, column: 19, scope: !3202)
!3308 = !DILocation(line: 249, column: 27, scope: !3202)
!3309 = !DILocation(line: 249, column: 34, scope: !3202)
!3310 = !DILocation(line: 249, column: 25, scope: !3202)
!3311 = !DILocalVariable(name: "stringlim", scope: !3202, file: !239, line: 250, type: !54)
!3312 = !DILocation(line: 250, column: 9, scope: !3202)
!3313 = !DILocation(line: 250, column: 32, scope: !3202)
!3314 = !DILocation(line: 250, column: 21, scope: !3202)
!3315 = !DILocation(line: 250, column: 41, scope: !3202)
!3316 = !DILocation(line: 250, column: 37, scope: !3202)
!3317 = !DILocalVariable(name: "p", scope: !3202, file: !239, line: 251, type: !54)
!3318 = !DILocation(line: 251, column: 9, scope: !3202)
!3319 = !DILocation(line: 251, column: 13, scope: !3202)
!3320 = !DILocation(line: 251, column: 27, scope: !3202)
!3321 = !DILocation(line: 251, column: 23, scope: !3202)
!3322 = !DILocation(line: 252, column: 4, scope: !3202)
!3323 = !DILocation(line: 252, column: 8, scope: !3202)
!3324 = !DILocation(line: 253, column: 29, scope: !3202)
!3325 = !DILocation(line: 253, column: 33, scope: !3202)
!3326 = !DILocation(line: 253, column: 31, scope: !3202)
!3327 = !DILocation(line: 253, column: 43, scope: !3202)
!3328 = !DILocation(line: 253, column: 49, scope: !3202)
!3329 = !DILocation(line: 253, column: 21, scope: !3202)
!3330 = !DILocation(line: 253, column: 19, scope: !3202)
!3331 = !DILocation(line: 253, column: 3, scope: !3202)
!3332 = !DILocation(line: 253, column: 7, scope: !3202)
!3333 = !DILocation(line: 253, column: 15, scope: !3202)
!3334 = !DILocation(line: 254, column: 4, scope: !3202)
!3335 = !DILocation(line: 254, column: 8, scope: !3202)
!3336 = !DILocation(line: 255, column: 29, scope: !3202)
!3337 = !DILocation(line: 255, column: 35, scope: !3202)
!3338 = !DILocation(line: 255, column: 31, scope: !3202)
!3339 = !DILocation(line: 255, column: 45, scope: !3202)
!3340 = !DILocation(line: 255, column: 51, scope: !3202)
!3341 = !DILocation(line: 255, column: 21, scope: !3202)
!3342 = !DILocation(line: 255, column: 19, scope: !3202)
!3343 = !DILocation(line: 255, column: 3, scope: !3202)
!3344 = !DILocation(line: 255, column: 7, scope: !3202)
!3345 = !DILocation(line: 255, column: 15, scope: !3202)
!3346 = !DILocation(line: 256, column: 4, scope: !3202)
!3347 = !DILocation(line: 256, column: 8, scope: !3202)
!3348 = !DILocation(line: 257, column: 29, scope: !3202)
!3349 = !DILocation(line: 257, column: 33, scope: !3202)
!3350 = !DILocation(line: 257, column: 31, scope: !3202)
!3351 = !DILocation(line: 257, column: 43, scope: !3202)
!3352 = !DILocation(line: 257, column: 49, scope: !3202)
!3353 = !DILocation(line: 257, column: 21, scope: !3202)
!3354 = !DILocation(line: 257, column: 19, scope: !3202)
!3355 = !DILocation(line: 257, column: 3, scope: !3202)
!3356 = !DILocation(line: 257, column: 7, scope: !3202)
!3357 = !DILocation(line: 257, column: 15, scope: !3202)
!3358 = !DILocation(line: 258, column: 4, scope: !3202)
!3359 = !DILocation(line: 258, column: 8, scope: !3202)
!3360 = !DILocation(line: 259, column: 29, scope: !3202)
!3361 = !DILocation(line: 259, column: 33, scope: !3202)
!3362 = !DILocation(line: 259, column: 31, scope: !3202)
!3363 = !DILocation(line: 259, column: 43, scope: !3202)
!3364 = !DILocation(line: 259, column: 49, scope: !3202)
!3365 = !DILocation(line: 259, column: 21, scope: !3202)
!3366 = !DILocation(line: 259, column: 3, scope: !3202)
!3367 = !DILocation(line: 259, column: 7, scope: !3202)
!3368 = !DILocation(line: 259, column: 15, scope: !3202)
!3369 = !DILocation(line: 260, column: 3, scope: !3202)
!3370 = !DILocation(line: 260, column: 7, scope: !3202)
!3371 = !DILocation(line: 260, column: 15, scope: !3202)
!3372 = !DILocation(line: 261, column: 16, scope: !3202)
!3373 = !DILocation(line: 261, column: 3, scope: !3202)
!3374 = !DILocation(line: 261, column: 7, scope: !3202)
!3375 = !DILocation(line: 261, column: 14, scope: !3202)
!3376 = !DILocation(line: 262, column: 20, scope: !3202)
!3377 = !DILocation(line: 262, column: 3, scope: !3202)
!3378 = !DILocation(line: 262, column: 7, scope: !3202)
!3379 = !DILocation(line: 262, column: 18, scope: !3202)
!3380 = !DILocation(line: 263, column: 17, scope: !3202)
!3381 = !DILocation(line: 263, column: 3, scope: !3202)
!3382 = !DILocation(line: 263, column: 7, scope: !3202)
!3383 = !DILocation(line: 263, column: 15, scope: !3202)
!3384 = !DILocation(line: 264, column: 31, scope: !3202)
!3385 = !DILocation(line: 264, column: 3, scope: !3202)
!3386 = !DILocation(line: 264, column: 7, scope: !3202)
!3387 = !DILocation(line: 264, column: 15, scope: !3202)
!3388 = !DILocation(line: 264, column: 29, scope: !3202)
!3389 = !DILocation(line: 265, column: 24, scope: !3202)
!3390 = !DILocation(line: 265, column: 3, scope: !3202)
!3391 = !DILocation(line: 265, column: 7, scope: !3202)
!3392 = !DILocation(line: 265, column: 15, scope: !3202)
!3393 = !DILocation(line: 265, column: 22, scope: !3202)
!3394 = !DILocation(line: 266, column: 29, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3202, file: !239, line: 266, column: 7)
!3396 = !DILocation(line: 266, column: 33, scope: !3395)
!3397 = !DILocation(line: 266, column: 7, scope: !3395)
!3398 = !DILocation(line: 266, column: 7, scope: !3202)
!3399 = !DILocation(line: 272, column: 42, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !239, line: 267, column: 5)
!3401 = !DILocation(line: 272, column: 46, scope: !3400)
!3402 = !DILocation(line: 272, column: 56, scope: !3400)
!3403 = !DILocation(line: 272, column: 54, scope: !3400)
!3404 = !DILocation(line: 272, column: 21, scope: !3400)
!3405 = !DILocation(line: 272, column: 7, scope: !3400)
!3406 = !DILocation(line: 272, column: 11, scope: !3400)
!3407 = !DILocation(line: 272, column: 19, scope: !3400)
!3408 = !DILocation(line: 273, column: 42, scope: !3400)
!3409 = !DILocation(line: 273, column: 46, scope: !3400)
!3410 = !DILocation(line: 273, column: 56, scope: !3400)
!3411 = !DILocation(line: 273, column: 54, scope: !3400)
!3412 = !DILocation(line: 273, column: 21, scope: !3400)
!3413 = !DILocation(line: 273, column: 7, scope: !3400)
!3414 = !DILocation(line: 273, column: 11, scope: !3400)
!3415 = !DILocation(line: 273, column: 19, scope: !3400)
!3416 = !DILocation(line: 274, column: 42, scope: !3400)
!3417 = !DILocation(line: 274, column: 46, scope: !3400)
!3418 = !DILocation(line: 274, column: 56, scope: !3400)
!3419 = !DILocation(line: 274, column: 54, scope: !3400)
!3420 = !DILocation(line: 274, column: 21, scope: !3400)
!3421 = !DILocation(line: 274, column: 7, scope: !3400)
!3422 = !DILocation(line: 274, column: 11, scope: !3400)
!3423 = !DILocation(line: 274, column: 19, scope: !3400)
!3424 = !DILocation(line: 275, column: 42, scope: !3400)
!3425 = !DILocation(line: 275, column: 46, scope: !3400)
!3426 = !DILocation(line: 275, column: 56, scope: !3400)
!3427 = !DILocation(line: 275, column: 54, scope: !3400)
!3428 = !DILocation(line: 275, column: 21, scope: !3400)
!3429 = !DILocation(line: 275, column: 7, scope: !3400)
!3430 = !DILocation(line: 275, column: 11, scope: !3400)
!3431 = !DILocation(line: 275, column: 19, scope: !3400)
!3432 = !DILocation(line: 276, column: 9, scope: !3400)
!3433 = !DILocation(line: 276, column: 15, scope: !3400)
!3434 = !DILocation(line: 277, column: 25, scope: !3400)
!3435 = !DILocation(line: 277, column: 9, scope: !3400)
!3436 = !DILocation(line: 277, column: 22, scope: !3400)
!3437 = !DILocation(line: 278, column: 5, scope: !3400)
!3438 = !DILocation(line: 279, column: 10, scope: !3202)
!3439 = !DILocation(line: 279, column: 3, scope: !3202)
!3440 = distinct !DISubprogram(name: "have_boot_time", scope: !239, file: !239, line: 302, type: !3441, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!69, !3031}
!3443 = !DILocalVariable(name: "a", arg: 1, scope: !3440, file: !239, line: 302, type: !3031)
!3444 = !DILocation(line: 302, column: 35, scope: !3440)
!3445 = !DILocalVariable(name: "i", scope: !3446, file: !239, line: 304, type: !308)
!3446 = distinct !DILexicalBlock(scope: !3440, file: !239, line: 304, column: 3)
!3447 = !DILocation(line: 304, column: 14, scope: !3446)
!3448 = !DILocation(line: 304, column: 8, scope: !3446)
!3449 = !DILocation(line: 304, column: 21, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !239, line: 304, column: 3)
!3451 = !DILocation(line: 304, column: 27, scope: !3450)
!3452 = !DILocation(line: 304, column: 23, scope: !3450)
!3453 = !DILocation(line: 304, column: 3, scope: !3446)
!3454 = !DILocalVariable(name: "ut", scope: !3455, file: !239, line: 306, type: !3034)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !239, line: 305, column: 5)
!3456 = !DILocation(line: 306, column: 23, scope: !3455)
!3457 = !DILocation(line: 306, column: 31, scope: !3455)
!3458 = !DILocation(line: 306, column: 36, scope: !3455)
!3459 = !DILocation(line: 306, column: 29, scope: !3455)
!3460 = !DILocation(line: 307, column: 11, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !239, line: 307, column: 11)
!3462 = !DILocation(line: 307, column: 11, scope: !3455)
!3463 = !DILocation(line: 308, column: 9, scope: !3461)
!3464 = !DILocation(line: 309, column: 5, scope: !3455)
!3465 = !DILocation(line: 304, column: 36, scope: !3450)
!3466 = !DILocation(line: 304, column: 3, scope: !3450)
!3467 = distinct !{!3467, !3453, !3468, !449}
!3468 = !DILocation(line: 309, column: 5, scope: !3446)
!3469 = !DILocation(line: 310, column: 3, scope: !3440)
!3470 = !DILocation(line: 311, column: 1, scope: !3440)
!3471 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !3472, file: !3472, line: 87, type: !3473, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3472 = !DIFile(filename: "./lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!51, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!3476 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3471, file: !3472, line: 87, type: !3475)
!3477 = !DILocation(line: 87, column: 48, scope: !3471)
!3478 = !DILocalVariable(name: "boot_touched_files", scope: !3471, file: !3472, line: 96, type: !3479)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !235)
!3480 = !DILocation(line: 96, column: 22, scope: !3471)
!3481 = !DILocalVariable(name: "i", scope: !3482, file: !3472, line: 105, type: !308)
!3482 = distinct !DILexicalBlock(scope: !3471, file: !3472, line: 105, column: 3)
!3483 = !DILocation(line: 105, column: 14, scope: !3482)
!3484 = !DILocation(line: 105, column: 8, scope: !3482)
!3485 = !DILocation(line: 105, column: 21, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !3472, line: 105, column: 3)
!3487 = !DILocation(line: 105, column: 23, scope: !3486)
!3488 = !DILocation(line: 105, column: 3, scope: !3482)
!3489 = !DILocalVariable(name: "filename", scope: !3490, file: !3472, line: 107, type: !6)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !3472, line: 106, column: 5)
!3491 = !DILocation(line: 107, column: 19, scope: !3490)
!3492 = !DILocation(line: 107, column: 49, scope: !3490)
!3493 = !DILocation(line: 107, column: 30, scope: !3490)
!3494 = !DILocalVariable(name: "statbuf", scope: !3490, file: !3472, line: 108, type: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3496, line: 44, size: 1024, elements: !3497)
!3496 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3497 = !{!3498, !3500, !3502, !3504, !3506, !3508, !3510, !3511, !3512, !3514, !3516, !3517, !3519, !3520, !3521, !3522}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3495, file: !3496, line: 46, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !251, line: 145, baseType: !151)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3495, file: !3496, line: 47, baseType: !3501, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !251, line: 148, baseType: !151)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3495, file: !3496, line: 48, baseType: !3503, size: 32, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !251, line: 150, baseType: !14)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3495, file: !3496, line: 49, baseType: !3505, size: 32, offset: 160)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !251, line: 151, baseType: !14)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3495, file: !3496, line: 50, baseType: !3507, size: 32, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !251, line: 146, baseType: !14)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3495, file: !3496, line: 51, baseType: !3509, size: 32, offset: 224)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !251, line: 147, baseType: !14)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3495, file: !3496, line: 52, baseType: !3499, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3495, file: !3496, line: 53, baseType: !3499, size: 64, offset: 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3495, file: !3496, line: 54, baseType: !3513, size: 64, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !251, line: 152, baseType: !265)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3495, file: !3496, line: 55, baseType: !3515, size: 32, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !251, line: 175, baseType: !51)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3495, file: !3496, line: 56, baseType: !51, size: 32, offset: 480)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3495, file: !3496, line: 57, baseType: !3518, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !251, line: 180, baseType: !265)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3495, file: !3496, line: 65, baseType: !2937, size: 128, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3495, file: !3496, line: 66, baseType: !2937, size: 128, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3495, file: !3496, line: 67, baseType: !2937, size: 128, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3495, file: !3496, line: 79, baseType: !3523, size: 64, offset: 960)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !136)
!3524 = !DILocation(line: 108, column: 19, scope: !3490)
!3525 = !DILocation(line: 109, column: 17, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3490, file: !3472, line: 109, column: 11)
!3527 = !DILocation(line: 109, column: 11, scope: !3526)
!3528 = !DILocation(line: 109, column: 37, scope: !3526)
!3529 = !DILocation(line: 109, column: 11, scope: !3490)
!3530 = !DILocalVariable(name: "boot_time", scope: !3531, file: !3472, line: 111, type: !2937)
!3531 = distinct !DILexicalBlock(scope: !3526, file: !3472, line: 110, column: 9)
!3532 = !DILocation(line: 111, column: 27, scope: !3531)
!3533 = !DILocation(line: 111, column: 39, scope: !3531)
!3534 = !DILocation(line: 116, column: 25, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !3472, line: 116, column: 15)
!3536 = !DILocation(line: 116, column: 32, scope: !3535)
!3537 = !DILocation(line: 116, column: 15, scope: !3531)
!3538 = !DILocation(line: 118, column: 16, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3535, file: !3472, line: 117, column: 13)
!3540 = !DILocation(line: 118, column: 30, scope: !3539)
!3541 = !DILocation(line: 119, column: 15, scope: !3539)
!3542 = !DILocation(line: 121, column: 9, scope: !3531)
!3543 = !DILocation(line: 122, column: 5, scope: !3490)
!3544 = !DILocation(line: 105, column: 56, scope: !3486)
!3545 = !DILocation(line: 105, column: 3, scope: !3486)
!3546 = distinct !{!3546, !3488, !3547, !449}
!3547 = !DILocation(line: 122, column: 5, scope: !3482)
!3548 = !DILocation(line: 123, column: 3, scope: !3471)
!3549 = !DILocation(line: 124, column: 1, scope: !3471)
!3550 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !3472, file: !3472, line: 134, type: !3473, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3551 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3550, file: !3472, line: 134, type: !3475)
!3552 = !DILocation(line: 134, column: 54, scope: !3550)
!3553 = !DILocalVariable(name: "uptime", scope: !3550, file: !3472, line: 136, type: !2937)
!3554 = !DILocation(line: 136, column: 19, scope: !3550)
!3555 = !DILocation(line: 137, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3550, file: !3472, line: 137, column: 7)
!3557 = !DILocation(line: 137, column: 34, scope: !3556)
!3558 = !DILocation(line: 137, column: 7, scope: !3550)
!3559 = !DILocalVariable(name: "result", scope: !3560, file: !3472, line: 139, type: !2937)
!3560 = distinct !DILexicalBlock(scope: !3556, file: !3472, line: 138, column: 5)
!3561 = !DILocation(line: 139, column: 23, scope: !3560)
!3562 = !DILocation(line: 145, column: 13, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !3472, line: 145, column: 11)
!3564 = !DILocation(line: 145, column: 11, scope: !3560)
!3565 = !DILocation(line: 146, column: 9, scope: !3563)
!3566 = !DILocation(line: 158, column: 18, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !3472, line: 158, column: 11)
!3568 = !DILocation(line: 158, column: 35, scope: !3567)
!3569 = !DILocation(line: 158, column: 26, scope: !3567)
!3570 = !DILocation(line: 158, column: 11, scope: !3560)
!3571 = !DILocation(line: 160, column: 18, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3567, file: !3472, line: 159, column: 9)
!3573 = !DILocation(line: 160, column: 26, scope: !3572)
!3574 = !DILocation(line: 161, column: 18, scope: !3572)
!3575 = !DILocation(line: 161, column: 25, scope: !3572)
!3576 = !DILocation(line: 162, column: 9, scope: !3572)
!3577 = !DILocation(line: 163, column: 31, scope: !3560)
!3578 = !DILocation(line: 163, column: 14, scope: !3560)
!3579 = !DILocation(line: 163, column: 21, scope: !3560)
!3580 = !DILocation(line: 164, column: 32, scope: !3560)
!3581 = !DILocation(line: 164, column: 14, scope: !3560)
!3582 = !DILocation(line: 164, column: 22, scope: !3560)
!3583 = !DILocation(line: 165, column: 8, scope: !3560)
!3584 = !DILocation(line: 165, column: 22, scope: !3560)
!3585 = !DILocation(line: 166, column: 7, scope: !3560)
!3586 = !DILocation(line: 168, column: 3, scope: !3550)
!3587 = !DILocation(line: 169, column: 1, scope: !3550)
!3588 = distinct !DISubprogram(name: "finish_utmp", scope: !239, file: !239, line: 284, type: !3589, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!3031, !3031}
!3591 = !DILocalVariable(name: "a", arg: 1, scope: !3588, file: !239, line: 284, type: !3031)
!3592 = !DILocation(line: 284, column: 32, scope: !3588)
!3593 = !DILocalVariable(name: "stringlim", scope: !3588, file: !239, line: 286, type: !54)
!3594 = !DILocation(line: 286, column: 9, scope: !3588)
!3595 = !DILocation(line: 286, column: 32, scope: !3588)
!3596 = !DILocation(line: 286, column: 21, scope: !3588)
!3597 = !DILocation(line: 286, column: 41, scope: !3588)
!3598 = !DILocation(line: 286, column: 37, scope: !3588)
!3599 = !DILocalVariable(name: "i", scope: !3600, file: !239, line: 288, type: !308)
!3600 = distinct !DILexicalBlock(scope: !3588, file: !239, line: 288, column: 3)
!3601 = !DILocation(line: 288, column: 14, scope: !3600)
!3602 = !DILocation(line: 288, column: 8, scope: !3600)
!3603 = !DILocation(line: 288, column: 21, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !239, line: 288, column: 3)
!3605 = !DILocation(line: 288, column: 27, scope: !3604)
!3606 = !DILocation(line: 288, column: 23, scope: !3604)
!3607 = !DILocation(line: 288, column: 3, scope: !3600)
!3608 = !DILocation(line: 290, column: 40, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3604, file: !239, line: 289, column: 5)
!3610 = !DILocation(line: 290, column: 45, scope: !3609)
!3611 = !DILocation(line: 290, column: 38, scope: !3609)
!3612 = !DILocation(line: 290, column: 48, scope: !3609)
!3613 = !DILocation(line: 290, column: 27, scope: !3609)
!3614 = !DILocation(line: 290, column: 58, scope: !3609)
!3615 = !DILocation(line: 290, column: 56, scope: !3609)
!3616 = !DILocation(line: 290, column: 9, scope: !3609)
!3617 = !DILocation(line: 290, column: 14, scope: !3609)
!3618 = !DILocation(line: 290, column: 7, scope: !3609)
!3619 = !DILocation(line: 290, column: 17, scope: !3609)
!3620 = !DILocation(line: 290, column: 25, scope: !3609)
!3621 = !DILocation(line: 291, column: 40, scope: !3609)
!3622 = !DILocation(line: 291, column: 45, scope: !3609)
!3623 = !DILocation(line: 291, column: 38, scope: !3609)
!3624 = !DILocation(line: 291, column: 48, scope: !3609)
!3625 = !DILocation(line: 291, column: 27, scope: !3609)
!3626 = !DILocation(line: 291, column: 58, scope: !3609)
!3627 = !DILocation(line: 291, column: 56, scope: !3609)
!3628 = !DILocation(line: 291, column: 9, scope: !3609)
!3629 = !DILocation(line: 291, column: 14, scope: !3609)
!3630 = !DILocation(line: 291, column: 7, scope: !3609)
!3631 = !DILocation(line: 291, column: 17, scope: !3609)
!3632 = !DILocation(line: 291, column: 25, scope: !3609)
!3633 = !DILocation(line: 292, column: 40, scope: !3609)
!3634 = !DILocation(line: 292, column: 45, scope: !3609)
!3635 = !DILocation(line: 292, column: 38, scope: !3609)
!3636 = !DILocation(line: 292, column: 48, scope: !3609)
!3637 = !DILocation(line: 292, column: 27, scope: !3609)
!3638 = !DILocation(line: 292, column: 58, scope: !3609)
!3639 = !DILocation(line: 292, column: 56, scope: !3609)
!3640 = !DILocation(line: 292, column: 9, scope: !3609)
!3641 = !DILocation(line: 292, column: 14, scope: !3609)
!3642 = !DILocation(line: 292, column: 7, scope: !3609)
!3643 = !DILocation(line: 292, column: 17, scope: !3609)
!3644 = !DILocation(line: 292, column: 25, scope: !3609)
!3645 = !DILocation(line: 293, column: 40, scope: !3609)
!3646 = !DILocation(line: 293, column: 45, scope: !3609)
!3647 = !DILocation(line: 293, column: 38, scope: !3609)
!3648 = !DILocation(line: 293, column: 48, scope: !3609)
!3649 = !DILocation(line: 293, column: 27, scope: !3609)
!3650 = !DILocation(line: 293, column: 58, scope: !3609)
!3651 = !DILocation(line: 293, column: 56, scope: !3609)
!3652 = !DILocation(line: 293, column: 9, scope: !3609)
!3653 = !DILocation(line: 293, column: 14, scope: !3609)
!3654 = !DILocation(line: 293, column: 7, scope: !3609)
!3655 = !DILocation(line: 293, column: 17, scope: !3609)
!3656 = !DILocation(line: 293, column: 25, scope: !3609)
!3657 = !DILocation(line: 294, column: 5, scope: !3609)
!3658 = !DILocation(line: 288, column: 36, scope: !3604)
!3659 = !DILocation(line: 288, column: 3, scope: !3604)
!3660 = distinct !{!3660, !3607, !3661, !449}
!3661 = !DILocation(line: 294, column: 5, scope: !3600)
!3662 = !DILocation(line: 296, column: 10, scope: !3588)
!3663 = !DILocation(line: 296, column: 3, scope: !3588)
!3664 = distinct !DISubprogram(name: "get_linux_uptime", scope: !3472, file: !3472, line: 27, type: !3473, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3665 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !3664, file: !3472, line: 27, type: !3475)
!3666 = !DILocation(line: 27, column: 36, scope: !3664)
!3667 = !DILocation(line: 33, column: 38, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !3472, line: 33, column: 7)
!3669 = !DILocation(line: 33, column: 7, scope: !3668)
!3670 = !DILocation(line: 33, column: 48, scope: !3668)
!3671 = !DILocation(line: 33, column: 7, scope: !3664)
!3672 = !DILocation(line: 34, column: 5, scope: !3668)
!3673 = !DILocalVariable(name: "fp", scope: !3664, file: !3472, line: 40, type: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !3677)
!3676 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !3679)
!3678 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3695, !3697, !3698, !3699, !3700, !3701, !3703, !3707, !3710, !3712, !3715, !3718, !3719, !3720, !3721, !3722}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3677, file: !3678, line: 51, baseType: !51, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3677, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3677, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3677, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3677, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3677, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3677, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3677, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3677, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3677, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3677, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3677, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3677, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3678, line: 36, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3677, file: !3678, line: 70, baseType: !3696, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3677, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3677, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3677, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3677, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3677, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!3702 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3677, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3705)
!3705 = !{!3706}
!3706 = !DISubrange(count: 1)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3677, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3678, line: 43, baseType: null)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3677, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !251, line: 153, baseType: !265)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3677, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3678, line: 37, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3677, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3678, line: 38, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3677, file: !3678, line: 93, baseType: !3696, size: 64, offset: 1344)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3677, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3677, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3677, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3677, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!3723 = !DILocation(line: 40, column: 9, scope: !3664)
!3724 = !DILocation(line: 40, column: 14, scope: !3664)
!3725 = !DILocation(line: 41, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3664, file: !3472, line: 41, column: 7)
!3727 = !DILocation(line: 41, column: 10, scope: !3726)
!3728 = !DILocation(line: 41, column: 7, scope: !3664)
!3729 = !DILocalVariable(name: "buf", scope: !3730, file: !3472, line: 43, type: !3731)
!3730 = distinct !DILexicalBlock(scope: !3726, file: !3472, line: 42, column: 5)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 264, elements: !3732)
!3732 = !{!3733}
!3733 = !DISubrange(count: 33)
!3734 = !DILocation(line: 43, column: 12, scope: !3730)
!3735 = !DILocalVariable(name: "n", scope: !3730, file: !3472, line: 44, type: !149)
!3736 = !DILocation(line: 44, column: 14, scope: !3730)
!3737 = !DILocation(line: 44, column: 18, scope: !3730)
!3738 = !DILocation(line: 45, column: 15, scope: !3730)
!3739 = !DILocation(line: 45, column: 7, scope: !3730)
!3740 = !DILocation(line: 46, column: 11, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3730, file: !3472, line: 46, column: 11)
!3742 = !DILocation(line: 46, column: 13, scope: !3741)
!3743 = !DILocation(line: 46, column: 11, scope: !3730)
!3744 = !DILocation(line: 48, column: 15, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !3472, line: 47, column: 9)
!3746 = !DILocation(line: 48, column: 11, scope: !3745)
!3747 = !DILocation(line: 48, column: 18, scope: !3745)
!3748 = !DILocalVariable(name: "s", scope: !3745, file: !3472, line: 50, type: !3749)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3750, line: 10, baseType: !271)
!3750 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!3751 = !DILocation(line: 50, column: 18, scope: !3745)
!3752 = !DILocalVariable(name: "p", scope: !3745, file: !3472, line: 51, type: !54)
!3753 = !DILocation(line: 51, column: 17, scope: !3745)
!3754 = !DILocation(line: 52, column: 20, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3745, file: !3472, line: 52, column: 11)
!3756 = !DILocation(line: 52, column: 18, scope: !3755)
!3757 = !DILocation(line: 52, column: 16, scope: !3755)
!3758 = !DILocation(line: 52, column: 33, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !3472, line: 52, column: 11)
!3760 = !DILocation(line: 52, column: 32, scope: !3759)
!3761 = !DILocation(line: 52, column: 29, scope: !3759)
!3762 = !DILocation(line: 52, column: 35, scope: !3759)
!3763 = !DILocation(line: 52, column: 39, scope: !3759)
!3764 = !DILocation(line: 52, column: 38, scope: !3759)
!3765 = !DILocation(line: 52, column: 41, scope: !3759)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 52, column: 11, scope: !3755)
!3768 = !DILocation(line: 53, column: 22, scope: !3759)
!3769 = !DILocation(line: 53, column: 20, scope: !3759)
!3770 = !DILocation(line: 53, column: 28, scope: !3759)
!3771 = !DILocation(line: 53, column: 27, scope: !3759)
!3772 = !DILocation(line: 53, column: 30, scope: !3759)
!3773 = !DILocation(line: 53, column: 26, scope: !3759)
!3774 = !DILocation(line: 53, column: 24, scope: !3759)
!3775 = !DILocation(line: 53, column: 15, scope: !3759)
!3776 = !DILocation(line: 53, column: 13, scope: !3759)
!3777 = !DILocation(line: 52, column: 50, scope: !3759)
!3778 = !DILocation(line: 52, column: 11, scope: !3759)
!3779 = distinct !{!3779, !3767, !3780, !449}
!3780 = !DILocation(line: 53, column: 35, scope: !3755)
!3781 = !DILocation(line: 54, column: 15, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3745, file: !3472, line: 54, column: 15)
!3783 = !DILocation(line: 54, column: 21, scope: !3782)
!3784 = !DILocation(line: 54, column: 19, scope: !3782)
!3785 = !DILocation(line: 54, column: 15, scope: !3745)
!3786 = !DILocalVariable(name: "ns", scope: !3787, file: !3472, line: 56, type: !265)
!3787 = distinct !DILexicalBlock(scope: !3782, file: !3472, line: 55, column: 13)
!3788 = !DILocation(line: 56, column: 20, scope: !3787)
!3789 = !DILocation(line: 57, column: 21, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3787, file: !3472, line: 57, column: 19)
!3791 = !DILocation(line: 57, column: 19, scope: !3790)
!3792 = !DILocation(line: 57, column: 24, scope: !3790)
!3793 = !DILocation(line: 57, column: 19, scope: !3787)
!3794 = !DILocalVariable(name: "i", scope: !3795, file: !3472, line: 58, type: !51)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !3472, line: 58, column: 17)
!3796 = !DILocation(line: 58, column: 26, scope: !3795)
!3797 = !DILocation(line: 58, column: 22, scope: !3795)
!3798 = !DILocation(line: 58, column: 33, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !3472, line: 58, column: 17)
!3800 = !DILocation(line: 58, column: 35, scope: !3799)
!3801 = !DILocation(line: 58, column: 17, scope: !3795)
!3802 = !DILocation(line: 59, column: 29, scope: !3799)
!3803 = !DILocation(line: 59, column: 27, scope: !3799)
!3804 = !DILocation(line: 59, column: 43, scope: !3799)
!3805 = !DILocation(line: 59, column: 42, scope: !3799)
!3806 = !DILocation(line: 59, column: 39, scope: !3799)
!3807 = !DILocation(line: 59, column: 45, scope: !3799)
!3808 = !DILocation(line: 59, column: 49, scope: !3799)
!3809 = !DILocation(line: 59, column: 48, scope: !3799)
!3810 = !DILocation(line: 59, column: 51, scope: !3799)
!3811 = !DILocation(line: 59, column: 35, scope: !3799)
!3812 = !DILocation(line: 59, column: 62, scope: !3799)
!3813 = !DILocation(line: 59, column: 60, scope: !3799)
!3814 = !DILocation(line: 59, column: 65, scope: !3799)
!3815 = !DILocation(line: 59, column: 34, scope: !3799)
!3816 = !DILocation(line: 59, column: 32, scope: !3799)
!3817 = !DILocation(line: 59, column: 22, scope: !3799)
!3818 = !DILocation(line: 59, column: 19, scope: !3799)
!3819 = !DILocation(line: 58, column: 41, scope: !3799)
!3820 = !DILocation(line: 58, column: 17, scope: !3799)
!3821 = distinct !{!3821, !3801, !3822, !449}
!3822 = !DILocation(line: 59, column: 74, scope: !3795)
!3823 = !DILocation(line: 60, column: 34, scope: !3787)
!3824 = !DILocation(line: 60, column: 15, scope: !3787)
!3825 = !DILocation(line: 60, column: 25, scope: !3787)
!3826 = !DILocation(line: 60, column: 32, scope: !3787)
!3827 = !DILocation(line: 61, column: 35, scope: !3787)
!3828 = !DILocation(line: 61, column: 15, scope: !3787)
!3829 = !DILocation(line: 61, column: 25, scope: !3787)
!3830 = !DILocation(line: 61, column: 33, scope: !3787)
!3831 = !DILocation(line: 62, column: 15, scope: !3787)
!3832 = !DILocation(line: 64, column: 9, scope: !3745)
!3833 = !DILocation(line: 65, column: 5, scope: !3730)
!3834 = !DILocalVariable(name: "info", scope: !3664, file: !3472, line: 70, type: !3835)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !3836, line: 8, size: 896, elements: !3837)
!3836 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!3837 = !{!3838, !3841, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3853, !3854, !3855, !3856, !3858}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !3835, file: !3836, line: 9, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !3840, line: 15, baseType: !265)
!3840 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !3835, file: !3836, line: 10, baseType: !3842, size: 192, offset: 64)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3843, size: 192, elements: !119)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3840, line: 16, baseType: !151)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !3835, file: !3836, line: 11, baseType: !3843, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !3835, file: !3836, line: 12, baseType: !3843, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !3835, file: !3836, line: 13, baseType: !3843, size: 64, offset: 384)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !3835, file: !3836, line: 14, baseType: !3843, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !3835, file: !3836, line: 15, baseType: !3843, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !3835, file: !3836, line: 16, baseType: !3843, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !3835, file: !3836, line: 17, baseType: !3851, size: 16, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !3852, line: 24, baseType: !52)
!3852 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3835, file: !3836, line: 18, baseType: !3851, size: 16, offset: 656)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !3835, file: !3836, line: 19, baseType: !3843, size: 64, offset: 704)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !3835, file: !3836, line: 20, baseType: !3843, size: 64, offset: 768)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !3835, file: !3836, line: 21, baseType: !3857, size: 32, offset: 832)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !3852, line: 27, baseType: !14)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !3835, file: !3836, line: 22, baseType: !3859, offset: 864)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !3860)
!3860 = !{!3861}
!3861 = !DISubrange(count: 0)
!3862 = !DILocation(line: 70, column: 18, scope: !3664)
!3863 = !DILocation(line: 71, column: 7, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3664, file: !3472, line: 71, column: 7)
!3865 = !DILocation(line: 71, column: 23, scope: !3864)
!3866 = !DILocation(line: 71, column: 7, scope: !3664)
!3867 = !DILocation(line: 73, column: 31, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3864, file: !3472, line: 72, column: 5)
!3869 = !DILocation(line: 73, column: 7, scope: !3868)
!3870 = !DILocation(line: 73, column: 17, scope: !3868)
!3871 = !DILocation(line: 73, column: 24, scope: !3868)
!3872 = !DILocation(line: 74, column: 7, scope: !3868)
!3873 = !DILocation(line: 74, column: 17, scope: !3868)
!3874 = !DILocation(line: 74, column: 25, scope: !3868)
!3875 = !DILocation(line: 75, column: 7, scope: !3868)
!3876 = !DILocation(line: 79, column: 3, scope: !3664)
!3877 = !DILocation(line: 80, column: 1, scope: !3664)
!3878 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !239, file: !239, line: 171, type: !3879, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !56)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!69, !2927, !51}
!3881 = !DILocalVariable(name: "ut", arg: 1, scope: !3878, file: !239, line: 171, type: !2927)
!3882 = !DILocation(line: 171, column: 42, scope: !3878)
!3883 = !DILocalVariable(name: "options", arg: 2, scope: !3878, file: !239, line: 171, type: !51)
!3884 = !DILocation(line: 171, column: 50, scope: !3878)
!3885 = !DILocalVariable(name: "boot_time", scope: !3878, file: !239, line: 180, type: !69)
!3886 = !DILocation(line: 180, column: 8, scope: !3878)
!3887 = !DILocation(line: 180, column: 20, scope: !3878)
!3888 = !DILocation(line: 181, column: 8, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3878, file: !239, line: 181, column: 7)
!3890 = !DILocation(line: 181, column: 16, scope: !3889)
!3891 = !DILocation(line: 181, column: 39, scope: !3889)
!3892 = !DILocation(line: 181, column: 43, scope: !3889)
!3893 = !DILocation(line: 181, column: 7, scope: !3878)
!3894 = !DILocation(line: 182, column: 5, scope: !3889)
!3895 = !DILocation(line: 183, column: 8, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3878, file: !239, line: 183, column: 7)
!3897 = !DILocation(line: 183, column: 16, scope: !3896)
!3898 = !DILocation(line: 183, column: 42, scope: !3896)
!3899 = !DILocation(line: 183, column: 45, scope: !3896)
!3900 = !DILocation(line: 183, column: 7, scope: !3878)
!3901 = !DILocation(line: 184, column: 5, scope: !3896)
!3902 = !DILocalVariable(name: "user_proc", scope: !3878, file: !239, line: 186, type: !69)
!3903 = !DILocation(line: 186, column: 8, scope: !3878)
!3904 = !DILocation(line: 186, column: 20, scope: !3878)
!3905 = !DILocation(line: 0, scope: !3878)
!3906 = !DILocation(line: 187, column: 8, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3878, file: !239, line: 187, column: 7)
!3908 = !DILocation(line: 187, column: 16, scope: !3907)
!3909 = !DILocation(line: 187, column: 42, scope: !3907)
!3910 = !DILocation(line: 187, column: 46, scope: !3907)
!3911 = !DILocation(line: 187, column: 7, scope: !3878)
!3912 = !DILocation(line: 188, column: 5, scope: !3907)
!3913 = !DILocation(line: 190, column: 8, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3878, file: !239, line: 190, column: 7)
!3915 = !DILocation(line: 190, column: 16, scope: !3914)
!3916 = !DILocation(line: 191, column: 7, scope: !3914)
!3917 = !DILocation(line: 191, column: 10, scope: !3914)
!3918 = !DILocation(line: 192, column: 7, scope: !3914)
!3919 = !DILocation(line: 192, column: 14, scope: !3914)
!3920 = !DILocation(line: 192, column: 12, scope: !3914)
!3921 = !DILocation(line: 193, column: 7, scope: !3914)
!3922 = !DILocation(line: 193, column: 17, scope: !3914)
!3923 = !DILocation(line: 193, column: 11, scope: !3914)
!3924 = !DILocation(line: 193, column: 33, scope: !3914)
!3925 = !DILocation(line: 193, column: 37, scope: !3914)
!3926 = !DILocation(line: 193, column: 40, scope: !3914)
!3927 = !DILocation(line: 193, column: 46, scope: !3914)
!3928 = !DILocation(line: 190, column: 7, scope: !3878)
!3929 = !DILocation(line: 194, column: 5, scope: !3914)
!3930 = !DILocation(line: 197, column: 3, scope: !3878)
!3931 = !DILocation(line: 198, column: 1, scope: !3878)
!3932 = distinct !DISubprogram(name: "get_stat_atime_ns", scope: !3933, file: !3933, line: 70, type: !3934, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3933 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!265, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3496, line: 44, size: 1024, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3957, !3958, !3959}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3938, file: !3496, line: 46, baseType: !3499, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3938, file: !3496, line: 47, baseType: !3501, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3938, file: !3496, line: 48, baseType: !3503, size: 32, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3938, file: !3496, line: 49, baseType: !3505, size: 32, offset: 160)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3938, file: !3496, line: 50, baseType: !3507, size: 32, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3938, file: !3496, line: 51, baseType: !3509, size: 32, offset: 224)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3938, file: !3496, line: 52, baseType: !3499, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3938, file: !3496, line: 53, baseType: !3499, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3938, file: !3496, line: 54, baseType: !3513, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3938, file: !3496, line: 55, baseType: !3515, size: 32, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3938, file: !3496, line: 56, baseType: !51, size: 32, offset: 480)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3938, file: !3496, line: 57, baseType: !3518, size: 64, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3938, file: !3496, line: 65, baseType: !3953, size: 128, offset: 576)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !686, line: 11, size: 128, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3953, file: !686, line: 16, baseType: !271, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3953, file: !686, line: 21, baseType: !690, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3938, file: !3496, line: 66, baseType: !3953, size: 128, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3938, file: !3496, line: 67, baseType: !3953, size: 128, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3938, file: !3496, line: 79, baseType: !3523, size: 64, offset: 960)
!3960 = !DILocalVariable(name: "st", arg: 1, scope: !3932, file: !3933, line: 70, type: !3936)
!3961 = !DILocation(line: 70, column: 39, scope: !3932)
!3962 = !DILocation(line: 73, column: 10, scope: !3932)
!3963 = !DILocation(line: 73, column: 38, scope: !3932)
!3964 = !DILocation(line: 73, column: 3, scope: !3932)
!3965 = distinct !DISubprogram(name: "get_stat_ctime_ns", scope: !3933, file: !3933, line: 83, type: !3934, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3966 = !DILocalVariable(name: "st", arg: 1, scope: !3965, file: !3933, line: 83, type: !3936)
!3967 = !DILocation(line: 83, column: 39, scope: !3965)
!3968 = !DILocation(line: 86, column: 10, scope: !3965)
!3969 = !DILocation(line: 86, column: 38, scope: !3965)
!3970 = !DILocation(line: 86, column: 3, scope: !3965)
!3971 = distinct !DISubprogram(name: "get_stat_mtime_ns", scope: !3933, file: !3933, line: 96, type: !3934, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3972 = !DILocalVariable(name: "st", arg: 1, scope: !3971, file: !3933, line: 96, type: !3936)
!3973 = !DILocation(line: 96, column: 39, scope: !3971)
!3974 = !DILocation(line: 99, column: 10, scope: !3971)
!3975 = !DILocation(line: 99, column: 38, scope: !3971)
!3976 = !DILocation(line: 99, column: 3, scope: !3971)
!3977 = distinct !DISubprogram(name: "get_stat_birthtime_ns", scope: !3933, file: !3933, line: 109, type: !3934, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3978 = !DILocalVariable(name: "st", arg: 1, scope: !3977, file: !3933, line: 109, type: !3936)
!3979 = !DILocation(line: 109, column: 54, scope: !3977)
!3980 = !DILocation(line: 116, column: 3, scope: !3977)
!3981 = distinct !DISubprogram(name: "get_stat_atime", scope: !3933, file: !3933, line: 147, type: !3982, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!3953, !3936}
!3984 = !DILocalVariable(name: "st", arg: 1, scope: !3981, file: !3933, line: 147, type: !3936)
!3985 = !DILocation(line: 147, column: 36, scope: !3981)
!3986 = !DILocation(line: 150, column: 10, scope: !3981)
!3987 = !DILocation(line: 150, column: 3, scope: !3981)
!3988 = distinct !DISubprogram(name: "get_stat_ctime", scope: !3933, file: !3933, line: 158, type: !3982, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3989 = !DILocalVariable(name: "st", arg: 1, scope: !3988, file: !3933, line: 158, type: !3936)
!3990 = !DILocation(line: 158, column: 36, scope: !3988)
!3991 = !DILocation(line: 161, column: 10, scope: !3988)
!3992 = !DILocation(line: 161, column: 3, scope: !3988)
!3993 = distinct !DISubprogram(name: "get_stat_mtime", scope: !3933, file: !3933, line: 169, type: !3982, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3994 = !DILocalVariable(name: "st", arg: 1, scope: !3993, file: !3933, line: 169, type: !3936)
!3995 = !DILocation(line: 169, column: 36, scope: !3993)
!3996 = !DILocation(line: 172, column: 10, scope: !3993)
!3997 = !DILocation(line: 172, column: 3, scope: !3993)
!3998 = distinct !DISubprogram(name: "get_stat_birthtime", scope: !3933, file: !3933, line: 181, type: !3982, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!3999 = !DILocalVariable(name: "st", arg: 1, scope: !3998, file: !3933, line: 181, type: !3936)
!4000 = !DILocation(line: 181, column: 51, scope: !3998)
!4001 = !DILocalVariable(name: "t", scope: !3998, file: !3933, line: 183, type: !3953)
!4002 = !DILocation(line: 183, column: 19, scope: !3998)
!4003 = !DILocation(line: 201, column: 7, scope: !3998)
!4004 = !DILocation(line: 216, column: 3, scope: !3998)
!4005 = distinct !DISubprogram(name: "stat_time_normalize", scope: !3933, file: !3933, line: 225, type: !4006, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!51, !51, !4008}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!4009 = !DILocalVariable(name: "result", arg: 1, scope: !4005, file: !3933, line: 225, type: !51)
!4010 = !DILocation(line: 225, column: 26, scope: !4005)
!4011 = !DILocalVariable(name: "st", arg: 2, scope: !4005, file: !3933, line: 225, type: !4008)
!4012 = !DILocation(line: 225, column: 58, scope: !4005)
!4013 = !DILocation(line: 256, column: 10, scope: !4005)
!4014 = !DILocation(line: 256, column: 3, scope: !4005)
!4015 = distinct !DISubprogram(name: "streq", scope: !4016, file: !4016, line: 1359, type: !4017, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !56)
!4016 = !DIFile(filename: "./lib/string.h", directory: "/src")
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!69, !6, !6}
!4019 = !DILocalVariable(name: "__s1", arg: 1, scope: !4015, file: !4016, line: 1359, type: !6)
!4020 = !DILocation(line: 1359, column: 20, scope: !4015)
!4021 = !DILocalVariable(name: "__s2", arg: 2, scope: !4015, file: !4016, line: 1359, type: !6)
!4022 = !DILocation(line: 1359, column: 38, scope: !4015)
!4023 = !DILocation(line: 1361, column: 19, scope: !4015)
!4024 = !DILocation(line: 1361, column: 25, scope: !4015)
!4025 = !DILocation(line: 1361, column: 11, scope: !4015)
!4026 = !DILocation(line: 1361, column: 10, scope: !4015)
!4027 = !DILocation(line: 1361, column: 3, scope: !4015)
!4028 = distinct !DISubprogram(name: "version_etc_arn", scope: !288, file: !288, line: 61, type: !4029, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !4031, !6, !6, !6, !4065, !149}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4033, file: !3678, line: 51, baseType: !51, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4033, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4033, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4033, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4033, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4033, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4033, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4033, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4033, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4033, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4033, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4033, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4033, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4033, file: !3678, line: 70, baseType: !4049, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4033, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4033, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4033, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4033, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4033, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4033, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4033, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4033, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4033, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4033, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4033, file: !3678, line: 93, baseType: !4049, size: 64, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4033, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4033, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4033, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4033, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4066 = !DILocalVariable(name: "stream", arg: 1, scope: !4028, file: !288, line: 61, type: !4031)
!4067 = !DILocation(line: 61, column: 24, scope: !4028)
!4068 = !DILocalVariable(name: "command_name", arg: 2, scope: !4028, file: !288, line: 62, type: !6)
!4069 = !DILocation(line: 62, column: 30, scope: !4028)
!4070 = !DILocalVariable(name: "package", arg: 3, scope: !4028, file: !288, line: 62, type: !6)
!4071 = !DILocation(line: 62, column: 56, scope: !4028)
!4072 = !DILocalVariable(name: "version", arg: 4, scope: !4028, file: !288, line: 63, type: !6)
!4073 = !DILocation(line: 63, column: 30, scope: !4028)
!4074 = !DILocalVariable(name: "authors", arg: 5, scope: !4028, file: !288, line: 64, type: !4065)
!4075 = !DILocation(line: 64, column: 39, scope: !4028)
!4076 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4028, file: !288, line: 64, type: !149)
!4077 = !DILocation(line: 64, column: 55, scope: !4028)
!4078 = !DILocation(line: 66, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4028, file: !288, line: 66, column: 7)
!4080 = !DILocation(line: 66, column: 7, scope: !4028)
!4081 = !DILocation(line: 67, column: 14, scope: !4079)
!4082 = !DILocation(line: 67, column: 38, scope: !4079)
!4083 = !DILocation(line: 67, column: 52, scope: !4079)
!4084 = !DILocation(line: 67, column: 61, scope: !4079)
!4085 = !DILocation(line: 67, column: 5, scope: !4079)
!4086 = !DILocation(line: 69, column: 14, scope: !4079)
!4087 = !DILocation(line: 69, column: 33, scope: !4079)
!4088 = !DILocation(line: 69, column: 42, scope: !4079)
!4089 = !DILocation(line: 69, column: 5, scope: !4079)
!4090 = !DILocation(line: 83, column: 12, scope: !4028)
!4091 = !DILocation(line: 83, column: 43, scope: !4028)
!4092 = !DILocation(line: 83, column: 3, scope: !4028)
!4093 = !DILocation(line: 85, column: 3, scope: !4028)
!4094 = !DILocation(line: 88, column: 12, scope: !4028)
!4095 = !DILocation(line: 88, column: 20, scope: !4028)
!4096 = !DILocation(line: 88, column: 3, scope: !4028)
!4097 = !DILocation(line: 95, column: 3, scope: !4028)
!4098 = !DILocation(line: 97, column: 11, scope: !4028)
!4099 = !DILocation(line: 97, column: 3, scope: !4028)
!4100 = !DILocation(line: 102, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4028, file: !288, line: 98, column: 5)
!4102 = !DILocation(line: 105, column: 16, scope: !4101)
!4103 = !DILocation(line: 105, column: 24, scope: !4101)
!4104 = !DILocation(line: 105, column: 47, scope: !4101)
!4105 = !DILocation(line: 105, column: 7, scope: !4101)
!4106 = !DILocation(line: 106, column: 7, scope: !4101)
!4107 = !DILocation(line: 109, column: 16, scope: !4101)
!4108 = !DILocation(line: 109, column: 24, scope: !4101)
!4109 = !DILocation(line: 109, column: 54, scope: !4101)
!4110 = !DILocation(line: 109, column: 66, scope: !4101)
!4111 = !DILocation(line: 109, column: 7, scope: !4101)
!4112 = !DILocation(line: 110, column: 7, scope: !4101)
!4113 = !DILocation(line: 113, column: 16, scope: !4101)
!4114 = !DILocation(line: 113, column: 24, scope: !4101)
!4115 = !DILocation(line: 114, column: 16, scope: !4101)
!4116 = !DILocation(line: 114, column: 28, scope: !4101)
!4117 = !DILocation(line: 114, column: 40, scope: !4101)
!4118 = !DILocation(line: 113, column: 7, scope: !4101)
!4119 = !DILocation(line: 115, column: 7, scope: !4101)
!4120 = !DILocation(line: 120, column: 16, scope: !4101)
!4121 = !DILocation(line: 120, column: 24, scope: !4101)
!4122 = !DILocation(line: 121, column: 16, scope: !4101)
!4123 = !DILocation(line: 121, column: 28, scope: !4101)
!4124 = !DILocation(line: 121, column: 40, scope: !4101)
!4125 = !DILocation(line: 121, column: 52, scope: !4101)
!4126 = !DILocation(line: 120, column: 7, scope: !4101)
!4127 = !DILocation(line: 122, column: 7, scope: !4101)
!4128 = !DILocation(line: 127, column: 16, scope: !4101)
!4129 = !DILocation(line: 127, column: 24, scope: !4101)
!4130 = !DILocation(line: 128, column: 16, scope: !4101)
!4131 = !DILocation(line: 128, column: 28, scope: !4101)
!4132 = !DILocation(line: 128, column: 40, scope: !4101)
!4133 = !DILocation(line: 128, column: 52, scope: !4101)
!4134 = !DILocation(line: 128, column: 64, scope: !4101)
!4135 = !DILocation(line: 127, column: 7, scope: !4101)
!4136 = !DILocation(line: 129, column: 7, scope: !4101)
!4137 = !DILocation(line: 134, column: 16, scope: !4101)
!4138 = !DILocation(line: 134, column: 24, scope: !4101)
!4139 = !DILocation(line: 135, column: 16, scope: !4101)
!4140 = !DILocation(line: 135, column: 28, scope: !4101)
!4141 = !DILocation(line: 135, column: 40, scope: !4101)
!4142 = !DILocation(line: 135, column: 52, scope: !4101)
!4143 = !DILocation(line: 135, column: 64, scope: !4101)
!4144 = !DILocation(line: 136, column: 16, scope: !4101)
!4145 = !DILocation(line: 134, column: 7, scope: !4101)
!4146 = !DILocation(line: 137, column: 7, scope: !4101)
!4147 = !DILocation(line: 142, column: 16, scope: !4101)
!4148 = !DILocation(line: 142, column: 24, scope: !4101)
!4149 = !DILocation(line: 143, column: 16, scope: !4101)
!4150 = !DILocation(line: 143, column: 28, scope: !4101)
!4151 = !DILocation(line: 143, column: 40, scope: !4101)
!4152 = !DILocation(line: 143, column: 52, scope: !4101)
!4153 = !DILocation(line: 143, column: 64, scope: !4101)
!4154 = !DILocation(line: 144, column: 16, scope: !4101)
!4155 = !DILocation(line: 144, column: 28, scope: !4101)
!4156 = !DILocation(line: 142, column: 7, scope: !4101)
!4157 = !DILocation(line: 145, column: 7, scope: !4101)
!4158 = !DILocation(line: 150, column: 16, scope: !4101)
!4159 = !DILocation(line: 150, column: 24, scope: !4101)
!4160 = !DILocation(line: 152, column: 17, scope: !4101)
!4161 = !DILocation(line: 152, column: 29, scope: !4101)
!4162 = !DILocation(line: 152, column: 41, scope: !4101)
!4163 = !DILocation(line: 152, column: 53, scope: !4101)
!4164 = !DILocation(line: 152, column: 65, scope: !4101)
!4165 = !DILocation(line: 153, column: 17, scope: !4101)
!4166 = !DILocation(line: 153, column: 29, scope: !4101)
!4167 = !DILocation(line: 153, column: 41, scope: !4101)
!4168 = !DILocation(line: 150, column: 7, scope: !4101)
!4169 = !DILocation(line: 154, column: 7, scope: !4101)
!4170 = !DILocation(line: 159, column: 16, scope: !4101)
!4171 = !DILocation(line: 159, column: 24, scope: !4101)
!4172 = !DILocation(line: 161, column: 16, scope: !4101)
!4173 = !DILocation(line: 161, column: 28, scope: !4101)
!4174 = !DILocation(line: 161, column: 40, scope: !4101)
!4175 = !DILocation(line: 161, column: 52, scope: !4101)
!4176 = !DILocation(line: 161, column: 64, scope: !4101)
!4177 = !DILocation(line: 162, column: 16, scope: !4101)
!4178 = !DILocation(line: 162, column: 28, scope: !4101)
!4179 = !DILocation(line: 162, column: 40, scope: !4101)
!4180 = !DILocation(line: 162, column: 52, scope: !4101)
!4181 = !DILocation(line: 159, column: 7, scope: !4101)
!4182 = !DILocation(line: 163, column: 7, scope: !4101)
!4183 = !DILocation(line: 170, column: 16, scope: !4101)
!4184 = !DILocation(line: 170, column: 24, scope: !4101)
!4185 = !DILocation(line: 172, column: 17, scope: !4101)
!4186 = !DILocation(line: 172, column: 29, scope: !4101)
!4187 = !DILocation(line: 172, column: 41, scope: !4101)
!4188 = !DILocation(line: 172, column: 53, scope: !4101)
!4189 = !DILocation(line: 172, column: 65, scope: !4101)
!4190 = !DILocation(line: 173, column: 17, scope: !4101)
!4191 = !DILocation(line: 173, column: 29, scope: !4101)
!4192 = !DILocation(line: 173, column: 41, scope: !4101)
!4193 = !DILocation(line: 173, column: 53, scope: !4101)
!4194 = !DILocation(line: 170, column: 7, scope: !4101)
!4195 = !DILocation(line: 174, column: 7, scope: !4101)
!4196 = !DILocation(line: 176, column: 1, scope: !4028)
!4197 = distinct !DISubprogram(name: "version_etc_ar", scope: !288, file: !288, line: 183, type: !4198, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !4031, !6, !6, !6, !4065}
!4200 = !DILocalVariable(name: "stream", arg: 1, scope: !4197, file: !288, line: 183, type: !4031)
!4201 = !DILocation(line: 183, column: 23, scope: !4197)
!4202 = !DILocalVariable(name: "command_name", arg: 2, scope: !4197, file: !288, line: 184, type: !6)
!4203 = !DILocation(line: 184, column: 29, scope: !4197)
!4204 = !DILocalVariable(name: "package", arg: 3, scope: !4197, file: !288, line: 184, type: !6)
!4205 = !DILocation(line: 184, column: 55, scope: !4197)
!4206 = !DILocalVariable(name: "version", arg: 4, scope: !4197, file: !288, line: 185, type: !6)
!4207 = !DILocation(line: 185, column: 29, scope: !4197)
!4208 = !DILocalVariable(name: "authors", arg: 5, scope: !4197, file: !288, line: 185, type: !4065)
!4209 = !DILocation(line: 185, column: 59, scope: !4197)
!4210 = !DILocalVariable(name: "n_authors", scope: !4197, file: !288, line: 187, type: !149)
!4211 = !DILocation(line: 187, column: 10, scope: !4197)
!4212 = !DILocation(line: 189, column: 18, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4197, file: !288, line: 189, column: 3)
!4214 = !DILocation(line: 189, column: 8, scope: !4213)
!4215 = !DILocation(line: 189, column: 23, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4213, file: !288, line: 189, column: 3)
!4217 = !DILocation(line: 189, column: 31, scope: !4216)
!4218 = !DILocation(line: 189, column: 3, scope: !4213)
!4219 = !DILocation(line: 189, column: 52, scope: !4216)
!4220 = !DILocation(line: 189, column: 3, scope: !4216)
!4221 = distinct !{!4221, !4218, !4222, !449}
!4222 = !DILocation(line: 190, column: 5, scope: !4213)
!4223 = !DILocation(line: 191, column: 20, scope: !4197)
!4224 = !DILocation(line: 191, column: 28, scope: !4197)
!4225 = !DILocation(line: 191, column: 42, scope: !4197)
!4226 = !DILocation(line: 191, column: 51, scope: !4197)
!4227 = !DILocation(line: 191, column: 60, scope: !4197)
!4228 = !DILocation(line: 191, column: 69, scope: !4197)
!4229 = !DILocation(line: 191, column: 3, scope: !4197)
!4230 = !DILocation(line: 192, column: 1, scope: !4197)
!4231 = distinct !DISubprogram(name: "version_etc_va", scope: !288, file: !288, line: 199, type: !4232, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !4031, !6, !6, !6, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 52, baseType: !4235)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 32, baseType: !4236)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4237, baseType: !4238)
!4237 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !88, size: 256, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243, !4244}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4238, file: !4237, line: 192, baseType: !50, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4238, file: !4237, line: 192, baseType: !50, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4238, file: !4237, line: 192, baseType: !50, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4238, file: !4237, line: 192, baseType: !51, size: 32, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4238, file: !4237, line: 192, baseType: !51, size: 32, offset: 224)
!4245 = !DILocalVariable(name: "stream", arg: 1, scope: !4231, file: !288, line: 199, type: !4031)
!4246 = !DILocation(line: 199, column: 23, scope: !4231)
!4247 = !DILocalVariable(name: "command_name", arg: 2, scope: !4231, file: !288, line: 200, type: !6)
!4248 = !DILocation(line: 200, column: 29, scope: !4231)
!4249 = !DILocalVariable(name: "package", arg: 3, scope: !4231, file: !288, line: 200, type: !6)
!4250 = !DILocation(line: 200, column: 55, scope: !4231)
!4251 = !DILocalVariable(name: "version", arg: 4, scope: !4231, file: !288, line: 201, type: !6)
!4252 = !DILocation(line: 201, column: 29, scope: !4231)
!4253 = !DILocalVariable(name: "authors", arg: 5, scope: !4231, file: !288, line: 201, type: !4234)
!4254 = !DILocation(line: 201, column: 46, scope: !4231)
!4255 = !DILocalVariable(name: "n_authors", scope: !4231, file: !288, line: 203, type: !149)
!4256 = !DILocation(line: 203, column: 10, scope: !4231)
!4257 = !DILocalVariable(name: "authtab", scope: !4231, file: !288, line: 204, type: !4258)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !157)
!4259 = !DILocation(line: 204, column: 15, scope: !4231)
!4260 = !DILocation(line: 206, column: 18, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4231, file: !288, line: 206, column: 3)
!4262 = !DILocation(line: 206, column: 8, scope: !4261)
!4263 = !DILocation(line: 207, column: 8, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !288, line: 206, column: 3)
!4265 = !DILocation(line: 207, column: 18, scope: !4264)
!4266 = !DILocation(line: 208, column: 10, scope: !4264)
!4267 = !DILocation(line: 208, column: 35, scope: !4264)
!4268 = !DILocation(line: 208, column: 22, scope: !4264)
!4269 = !DILocation(line: 208, column: 14, scope: !4264)
!4270 = !DILocation(line: 208, column: 33, scope: !4264)
!4271 = !DILocation(line: 208, column: 67, scope: !4264)
!4272 = !DILocation(line: 0, scope: !4264)
!4273 = !DILocation(line: 206, column: 3, scope: !4261)
!4274 = !DILocation(line: 209, column: 17, scope: !4264)
!4275 = !DILocation(line: 206, column: 3, scope: !4264)
!4276 = distinct !{!4276, !4273, !4277, !449}
!4277 = !DILocation(line: 210, column: 5, scope: !4261)
!4278 = !DILocation(line: 211, column: 20, scope: !4231)
!4279 = !DILocation(line: 211, column: 28, scope: !4231)
!4280 = !DILocation(line: 211, column: 42, scope: !4231)
!4281 = !DILocation(line: 211, column: 51, scope: !4231)
!4282 = !DILocation(line: 212, column: 20, scope: !4231)
!4283 = !DILocation(line: 212, column: 29, scope: !4231)
!4284 = !DILocation(line: 211, column: 3, scope: !4231)
!4285 = !DILocation(line: 213, column: 1, scope: !4231)
!4286 = distinct !DISubprogram(name: "version_etc", scope: !288, file: !288, line: 230, type: !4287, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4031, !6, !6, !6, null}
!4289 = !DILocalVariable(name: "stream", arg: 1, scope: !4286, file: !288, line: 230, type: !4031)
!4290 = !DILocation(line: 230, column: 20, scope: !4286)
!4291 = !DILocalVariable(name: "command_name", arg: 2, scope: !4286, file: !288, line: 231, type: !6)
!4292 = !DILocation(line: 231, column: 26, scope: !4286)
!4293 = !DILocalVariable(name: "package", arg: 3, scope: !4286, file: !288, line: 231, type: !6)
!4294 = !DILocation(line: 231, column: 52, scope: !4286)
!4295 = !DILocalVariable(name: "version", arg: 4, scope: !4286, file: !288, line: 232, type: !6)
!4296 = !DILocation(line: 232, column: 26, scope: !4286)
!4297 = !DILocalVariable(name: "authors", scope: !4286, file: !288, line: 234, type: !4234)
!4298 = !DILocation(line: 234, column: 11, scope: !4286)
!4299 = !DILocation(line: 235, column: 3, scope: !4286)
!4300 = !DILocation(line: 236, column: 19, scope: !4286)
!4301 = !DILocation(line: 236, column: 27, scope: !4286)
!4302 = !DILocation(line: 236, column: 41, scope: !4286)
!4303 = !DILocation(line: 236, column: 50, scope: !4286)
!4304 = !DILocation(line: 236, column: 3, scope: !4286)
!4305 = !DILocation(line: 237, column: 3, scope: !4286)
!4306 = !DILocation(line: 238, column: 1, scope: !4286)
!4307 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !288, file: !288, line: 241, type: !102, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4308 = !DILocation(line: 243, column: 3, scope: !4307)
!4309 = !DILocation(line: 248, column: 11, scope: !4307)
!4310 = !DILocation(line: 248, column: 3, scope: !4307)
!4311 = !DILocation(line: 254, column: 11, scope: !4307)
!4312 = !DILocation(line: 254, column: 3, scope: !4307)
!4313 = !DILocation(line: 259, column: 11, scope: !4307)
!4314 = !DILocation(line: 259, column: 3, scope: !4307)
!4315 = !DILocation(line: 261, column: 1, scope: !4307)
!4316 = distinct !DISubprogram(name: "xnrealloc", scope: !4317, file: !4317, line: 147, type: !4318, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4317 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!50, !50, !149, !149}
!4320 = !DILocalVariable(name: "p", arg: 1, scope: !4316, file: !4317, line: 147, type: !50)
!4321 = !DILocation(line: 147, column: 18, scope: !4316)
!4322 = !DILocalVariable(name: "n", arg: 2, scope: !4316, file: !4317, line: 147, type: !149)
!4323 = !DILocation(line: 147, column: 28, scope: !4316)
!4324 = !DILocalVariable(name: "s", arg: 3, scope: !4316, file: !4317, line: 147, type: !149)
!4325 = !DILocation(line: 147, column: 38, scope: !4316)
!4326 = !DILocation(line: 149, column: 25, scope: !4316)
!4327 = !DILocation(line: 149, column: 28, scope: !4316)
!4328 = !DILocation(line: 149, column: 31, scope: !4316)
!4329 = !DILocation(line: 149, column: 10, scope: !4316)
!4330 = !DILocation(line: 149, column: 3, scope: !4316)
!4331 = distinct !DISubprogram(name: "xreallocarray", scope: !294, file: !294, line: 83, type: !4318, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4332 = !DILocalVariable(name: "p", arg: 1, scope: !4331, file: !294, line: 83, type: !50)
!4333 = !DILocation(line: 83, column: 22, scope: !4331)
!4334 = !DILocalVariable(name: "n", arg: 2, scope: !4331, file: !294, line: 83, type: !149)
!4335 = !DILocation(line: 83, column: 32, scope: !4331)
!4336 = !DILocalVariable(name: "s", arg: 3, scope: !4331, file: !294, line: 83, type: !149)
!4337 = !DILocation(line: 83, column: 42, scope: !4331)
!4338 = !DILocation(line: 85, column: 39, scope: !4331)
!4339 = !DILocation(line: 85, column: 42, scope: !4331)
!4340 = !DILocation(line: 85, column: 45, scope: !4331)
!4341 = !DILocation(line: 85, column: 25, scope: !4331)
!4342 = !DILocation(line: 85, column: 10, scope: !4331)
!4343 = !DILocation(line: 85, column: 3, scope: !4331)
!4344 = distinct !DISubprogram(name: "check_nonnull", scope: !294, file: !294, line: 37, type: !4345, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!50, !50}
!4347 = !DILocalVariable(name: "p", arg: 1, scope: !4344, file: !294, line: 37, type: !50)
!4348 = !DILocation(line: 37, column: 22, scope: !4344)
!4349 = !DILocation(line: 39, column: 8, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4344, file: !294, line: 39, column: 7)
!4351 = !DILocation(line: 39, column: 7, scope: !4344)
!4352 = !DILocation(line: 40, column: 5, scope: !4350)
!4353 = !DILocation(line: 41, column: 10, scope: !4344)
!4354 = !DILocation(line: 41, column: 3, scope: !4344)
!4355 = distinct !DISubprogram(name: "xmalloc", scope: !294, file: !294, line: 47, type: !4356, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!50, !149}
!4358 = !DILocalVariable(name: "s", arg: 1, scope: !4355, file: !294, line: 47, type: !149)
!4359 = !DILocation(line: 47, column: 17, scope: !4355)
!4360 = !DILocation(line: 49, column: 33, scope: !4355)
!4361 = !DILocation(line: 49, column: 25, scope: !4355)
!4362 = !DILocation(line: 49, column: 10, scope: !4355)
!4363 = !DILocation(line: 49, column: 3, scope: !4355)
!4364 = distinct !DISubprogram(name: "ximalloc", scope: !294, file: !294, line: 53, type: !4365, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!50, !308}
!4367 = !DILocalVariable(name: "s", arg: 1, scope: !4364, file: !294, line: 53, type: !308)
!4368 = !DILocation(line: 53, column: 17, scope: !4364)
!4369 = !DILocation(line: 55, column: 34, scope: !4364)
!4370 = !DILocation(line: 55, column: 25, scope: !4364)
!4371 = !DILocation(line: 55, column: 10, scope: !4364)
!4372 = !DILocation(line: 55, column: 3, scope: !4364)
!4373 = distinct !DISubprogram(name: "xcharalloc", scope: !294, file: !294, line: 59, type: !4374, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!54, !149}
!4376 = !DILocalVariable(name: "n", arg: 1, scope: !4373, file: !294, line: 59, type: !149)
!4377 = !DILocation(line: 59, column: 20, scope: !4373)
!4378 = !DILocation(line: 61, column: 10, scope: !4373)
!4379 = !DILocation(line: 61, column: 3, scope: !4373)
!4380 = distinct !DISubprogram(name: "xrealloc", scope: !294, file: !294, line: 68, type: !4381, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!50, !50, !149}
!4383 = !DILocalVariable(name: "p", arg: 1, scope: !4380, file: !294, line: 68, type: !50)
!4384 = !DILocation(line: 68, column: 17, scope: !4380)
!4385 = !DILocalVariable(name: "s", arg: 2, scope: !4380, file: !294, line: 68, type: !149)
!4386 = !DILocation(line: 68, column: 27, scope: !4380)
!4387 = !DILocation(line: 70, column: 34, scope: !4380)
!4388 = !DILocation(line: 70, column: 37, scope: !4380)
!4389 = !DILocation(line: 70, column: 25, scope: !4380)
!4390 = !DILocation(line: 70, column: 10, scope: !4380)
!4391 = !DILocation(line: 70, column: 3, scope: !4380)
!4392 = distinct !DISubprogram(name: "xirealloc", scope: !294, file: !294, line: 74, type: !4393, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!50, !50, !308}
!4395 = !DILocalVariable(name: "p", arg: 1, scope: !4392, file: !294, line: 74, type: !50)
!4396 = !DILocation(line: 74, column: 18, scope: !4392)
!4397 = !DILocalVariable(name: "s", arg: 2, scope: !4392, file: !294, line: 74, type: !308)
!4398 = !DILocation(line: 74, column: 27, scope: !4392)
!4399 = !DILocation(line: 76, column: 35, scope: !4392)
!4400 = !DILocation(line: 76, column: 38, scope: !4392)
!4401 = !DILocation(line: 76, column: 25, scope: !4392)
!4402 = !DILocation(line: 76, column: 10, scope: !4392)
!4403 = !DILocation(line: 76, column: 3, scope: !4392)
!4404 = distinct !DISubprogram(name: "xireallocarray", scope: !294, file: !294, line: 89, type: !4405, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!50, !50, !308, !308}
!4407 = !DILocalVariable(name: "p", arg: 1, scope: !4404, file: !294, line: 89, type: !50)
!4408 = !DILocation(line: 89, column: 23, scope: !4404)
!4409 = !DILocalVariable(name: "n", arg: 2, scope: !4404, file: !294, line: 89, type: !308)
!4410 = !DILocation(line: 89, column: 32, scope: !4404)
!4411 = !DILocalVariable(name: "s", arg: 3, scope: !4404, file: !294, line: 89, type: !308)
!4412 = !DILocation(line: 89, column: 41, scope: !4404)
!4413 = !DILocation(line: 91, column: 40, scope: !4404)
!4414 = !DILocation(line: 91, column: 43, scope: !4404)
!4415 = !DILocation(line: 91, column: 46, scope: !4404)
!4416 = !DILocation(line: 91, column: 25, scope: !4404)
!4417 = !DILocation(line: 91, column: 10, scope: !4404)
!4418 = !DILocation(line: 91, column: 3, scope: !4404)
!4419 = distinct !DISubprogram(name: "xnmalloc", scope: !294, file: !294, line: 98, type: !4420, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!50, !149, !149}
!4422 = !DILocalVariable(name: "n", arg: 1, scope: !4419, file: !294, line: 98, type: !149)
!4423 = !DILocation(line: 98, column: 18, scope: !4419)
!4424 = !DILocalVariable(name: "s", arg: 2, scope: !4419, file: !294, line: 98, type: !149)
!4425 = !DILocation(line: 98, column: 28, scope: !4419)
!4426 = !DILocation(line: 100, column: 31, scope: !4419)
!4427 = !DILocation(line: 100, column: 34, scope: !4419)
!4428 = !DILocation(line: 100, column: 10, scope: !4419)
!4429 = !DILocation(line: 100, column: 3, scope: !4419)
!4430 = distinct !DISubprogram(name: "xinmalloc", scope: !294, file: !294, line: 104, type: !4431, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!50, !308, !308}
!4433 = !DILocalVariable(name: "n", arg: 1, scope: !4430, file: !294, line: 104, type: !308)
!4434 = !DILocation(line: 104, column: 18, scope: !4430)
!4435 = !DILocalVariable(name: "s", arg: 2, scope: !4430, file: !294, line: 104, type: !308)
!4436 = !DILocation(line: 104, column: 27, scope: !4430)
!4437 = !DILocation(line: 106, column: 32, scope: !4430)
!4438 = !DILocation(line: 106, column: 35, scope: !4430)
!4439 = !DILocation(line: 106, column: 10, scope: !4430)
!4440 = !DILocation(line: 106, column: 3, scope: !4430)
!4441 = distinct !DISubprogram(name: "x2realloc", scope: !294, file: !294, line: 116, type: !4442, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!50, !50, !300}
!4444 = !DILocalVariable(name: "p", arg: 1, scope: !4441, file: !294, line: 116, type: !50)
!4445 = !DILocation(line: 116, column: 18, scope: !4441)
!4446 = !DILocalVariable(name: "ps", arg: 2, scope: !4441, file: !294, line: 116, type: !300)
!4447 = !DILocation(line: 116, column: 29, scope: !4441)
!4448 = !DILocation(line: 118, column: 22, scope: !4441)
!4449 = !DILocation(line: 118, column: 25, scope: !4441)
!4450 = !DILocation(line: 118, column: 10, scope: !4441)
!4451 = !DILocation(line: 118, column: 3, scope: !4441)
!4452 = !DILocalVariable(name: "p", arg: 1, scope: !297, file: !294, line: 176, type: !50)
!4453 = !DILocation(line: 176, column: 19, scope: !297)
!4454 = !DILocalVariable(name: "pn", arg: 2, scope: !297, file: !294, line: 176, type: !300)
!4455 = !DILocation(line: 176, column: 30, scope: !297)
!4456 = !DILocalVariable(name: "s", arg: 3, scope: !297, file: !294, line: 176, type: !149)
!4457 = !DILocation(line: 176, column: 41, scope: !297)
!4458 = !DILocalVariable(name: "n", scope: !297, file: !294, line: 178, type: !149)
!4459 = !DILocation(line: 178, column: 10, scope: !297)
!4460 = !DILocation(line: 178, column: 15, scope: !297)
!4461 = !DILocation(line: 178, column: 14, scope: !297)
!4462 = !DILocation(line: 180, column: 9, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !297, file: !294, line: 180, column: 7)
!4464 = !DILocation(line: 180, column: 7, scope: !297)
!4465 = !DILocation(line: 182, column: 13, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !294, line: 182, column: 11)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !294, line: 181, column: 5)
!4468 = !DILocation(line: 182, column: 11, scope: !4467)
!4469 = !DILocation(line: 190, column: 32, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !294, line: 183, column: 9)
!4471 = !DILocation(line: 190, column: 30, scope: !4470)
!4472 = !DILocation(line: 190, column: 13, scope: !4470)
!4473 = !DILocation(line: 191, column: 17, scope: !4470)
!4474 = !DILocation(line: 191, column: 16, scope: !4470)
!4475 = !DILocation(line: 191, column: 13, scope: !4470)
!4476 = !DILocation(line: 192, column: 9, scope: !4470)
!4477 = !DILocation(line: 193, column: 5, scope: !4467)
!4478 = !DILocation(line: 197, column: 11, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !294, line: 197, column: 11)
!4480 = distinct !DILexicalBlock(scope: !4463, file: !294, line: 195, column: 5)
!4481 = !DILocation(line: 197, column: 11, scope: !4480)
!4482 = !DILocation(line: 198, column: 9, scope: !4479)
!4483 = !DILocation(line: 201, column: 22, scope: !297)
!4484 = !DILocation(line: 201, column: 25, scope: !297)
!4485 = !DILocation(line: 201, column: 28, scope: !297)
!4486 = !DILocation(line: 201, column: 7, scope: !297)
!4487 = !DILocation(line: 201, column: 5, scope: !297)
!4488 = !DILocation(line: 202, column: 9, scope: !297)
!4489 = !DILocation(line: 202, column: 4, scope: !297)
!4490 = !DILocation(line: 202, column: 7, scope: !297)
!4491 = !DILocation(line: 203, column: 10, scope: !297)
!4492 = !DILocation(line: 203, column: 3, scope: !297)
!4493 = !DILocalVariable(name: "pa", arg: 1, scope: !304, file: !294, line: 223, type: !50)
!4494 = !DILocation(line: 223, column: 16, scope: !304)
!4495 = !DILocalVariable(name: "pn", arg: 2, scope: !304, file: !294, line: 223, type: !307)
!4496 = !DILocation(line: 223, column: 27, scope: !304)
!4497 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !304, file: !294, line: 223, type: !308)
!4498 = !DILocation(line: 223, column: 37, scope: !304)
!4499 = !DILocalVariable(name: "n_max", arg: 4, scope: !304, file: !294, line: 223, type: !310)
!4500 = !DILocation(line: 223, column: 59, scope: !304)
!4501 = !DILocalVariable(name: "s", arg: 5, scope: !304, file: !294, line: 223, type: !308)
!4502 = !DILocation(line: 223, column: 72, scope: !304)
!4503 = !DILocalVariable(name: "n0", scope: !304, file: !294, line: 230, type: !308)
!4504 = !DILocation(line: 230, column: 9, scope: !304)
!4505 = !DILocation(line: 230, column: 15, scope: !304)
!4506 = !DILocation(line: 230, column: 14, scope: !304)
!4507 = !DILocalVariable(name: "n", scope: !304, file: !294, line: 237, type: !308)
!4508 = !DILocation(line: 237, column: 9, scope: !304)
!4509 = !DILocation(line: 238, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !304, file: !294, line: 238, column: 7)
!4511 = !DILocation(line: 238, column: 7, scope: !304)
!4512 = !DILocation(line: 239, column: 7, scope: !4510)
!4513 = !DILocation(line: 239, column: 5, scope: !4510)
!4514 = !DILocation(line: 240, column: 12, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !304, file: !294, line: 240, column: 7)
!4516 = !DILocation(line: 240, column: 9, scope: !4515)
!4517 = !DILocation(line: 240, column: 18, scope: !4515)
!4518 = !DILocation(line: 240, column: 21, scope: !4515)
!4519 = !DILocation(line: 240, column: 29, scope: !4515)
!4520 = !DILocation(line: 240, column: 27, scope: !4515)
!4521 = !DILocation(line: 240, column: 7, scope: !304)
!4522 = !DILocation(line: 241, column: 9, scope: !4515)
!4523 = !DILocation(line: 241, column: 7, scope: !4515)
!4524 = !DILocation(line: 241, column: 5, scope: !4515)
!4525 = !DILocalVariable(name: "nbytes", scope: !304, file: !294, line: 248, type: !308)
!4526 = !DILocation(line: 248, column: 9, scope: !304)
!4527 = !DILocalVariable(name: "adjusted_nbytes", scope: !304, file: !294, line: 252, type: !308)
!4528 = !DILocation(line: 252, column: 9, scope: !304)
!4529 = !DILocation(line: 253, column: 8, scope: !304)
!4530 = !DILocation(line: 255, column: 10, scope: !304)
!4531 = !DILocation(line: 255, column: 17, scope: !304)
!4532 = !DILocation(line: 256, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !304, file: !294, line: 256, column: 7)
!4534 = !DILocation(line: 256, column: 7, scope: !304)
!4535 = !DILocation(line: 258, column: 11, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !294, line: 257, column: 5)
!4537 = !DILocation(line: 258, column: 29, scope: !4536)
!4538 = !DILocation(line: 258, column: 27, scope: !4536)
!4539 = !DILocation(line: 258, column: 9, scope: !4536)
!4540 = !DILocation(line: 259, column: 16, scope: !4536)
!4541 = !DILocation(line: 259, column: 34, scope: !4536)
!4542 = !DILocation(line: 259, column: 52, scope: !4536)
!4543 = !DILocation(line: 259, column: 50, scope: !4536)
!4544 = !DILocation(line: 259, column: 32, scope: !4536)
!4545 = !DILocation(line: 259, column: 14, scope: !4536)
!4546 = !DILocation(line: 260, column: 5, scope: !4536)
!4547 = !DILocation(line: 262, column: 9, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !304, file: !294, line: 262, column: 7)
!4549 = !DILocation(line: 262, column: 7, scope: !304)
!4550 = !DILocation(line: 263, column: 6, scope: !4548)
!4551 = !DILocation(line: 263, column: 9, scope: !4548)
!4552 = !DILocation(line: 263, column: 5, scope: !4548)
!4553 = !DILocation(line: 264, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !304, file: !294, line: 264, column: 7)
!4555 = !DILocation(line: 264, column: 11, scope: !4554)
!4556 = !DILocation(line: 264, column: 9, scope: !4554)
!4557 = !DILocation(line: 264, column: 16, scope: !4554)
!4558 = !DILocation(line: 264, column: 14, scope: !4554)
!4559 = !DILocation(line: 265, column: 7, scope: !4554)
!4560 = !DILocation(line: 265, column: 11, scope: !4554)
!4561 = !DILocation(line: 266, column: 11, scope: !4554)
!4562 = !DILocation(line: 266, column: 20, scope: !4554)
!4563 = !DILocation(line: 266, column: 17, scope: !4554)
!4564 = !DILocation(line: 266, column: 26, scope: !4554)
!4565 = !DILocation(line: 266, column: 29, scope: !4554)
!4566 = !DILocation(line: 266, column: 37, scope: !4554)
!4567 = !DILocation(line: 266, column: 35, scope: !4554)
!4568 = !DILocation(line: 267, column: 11, scope: !4554)
!4569 = !DILocation(line: 267, column: 14, scope: !4554)
!4570 = !DILocation(line: 264, column: 7, scope: !304)
!4571 = !DILocation(line: 268, column: 5, scope: !4554)
!4572 = !DILocation(line: 269, column: 18, scope: !304)
!4573 = !DILocation(line: 269, column: 22, scope: !304)
!4574 = !DILocation(line: 269, column: 8, scope: !304)
!4575 = !DILocation(line: 269, column: 6, scope: !304)
!4576 = !DILocation(line: 270, column: 9, scope: !304)
!4577 = !DILocation(line: 270, column: 4, scope: !304)
!4578 = !DILocation(line: 270, column: 7, scope: !304)
!4579 = !DILocation(line: 271, column: 10, scope: !304)
!4580 = !DILocation(line: 271, column: 3, scope: !304)
!4581 = distinct !DISubprogram(name: "xzalloc", scope: !294, file: !294, line: 279, type: !4356, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4582 = !DILocalVariable(name: "s", arg: 1, scope: !4581, file: !294, line: 279, type: !149)
!4583 = !DILocation(line: 279, column: 17, scope: !4581)
!4584 = !DILocation(line: 281, column: 19, scope: !4581)
!4585 = !DILocation(line: 281, column: 10, scope: !4581)
!4586 = !DILocation(line: 281, column: 3, scope: !4581)
!4587 = distinct !DISubprogram(name: "xcalloc", scope: !294, file: !294, line: 294, type: !4420, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4588 = !DILocalVariable(name: "n", arg: 1, scope: !4587, file: !294, line: 294, type: !149)
!4589 = !DILocation(line: 294, column: 17, scope: !4587)
!4590 = !DILocalVariable(name: "s", arg: 2, scope: !4587, file: !294, line: 294, type: !149)
!4591 = !DILocation(line: 294, column: 27, scope: !4587)
!4592 = !DILocation(line: 296, column: 33, scope: !4587)
!4593 = !DILocation(line: 296, column: 36, scope: !4587)
!4594 = !DILocation(line: 296, column: 25, scope: !4587)
!4595 = !DILocation(line: 296, column: 10, scope: !4587)
!4596 = !DILocation(line: 296, column: 3, scope: !4587)
!4597 = distinct !DISubprogram(name: "xizalloc", scope: !294, file: !294, line: 285, type: !4365, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4598 = !DILocalVariable(name: "s", arg: 1, scope: !4597, file: !294, line: 285, type: !308)
!4599 = !DILocation(line: 285, column: 17, scope: !4597)
!4600 = !DILocation(line: 287, column: 20, scope: !4597)
!4601 = !DILocation(line: 287, column: 10, scope: !4597)
!4602 = !DILocation(line: 287, column: 3, scope: !4597)
!4603 = distinct !DISubprogram(name: "xicalloc", scope: !294, file: !294, line: 300, type: !4431, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4604 = !DILocalVariable(name: "n", arg: 1, scope: !4603, file: !294, line: 300, type: !308)
!4605 = !DILocation(line: 300, column: 17, scope: !4603)
!4606 = !DILocalVariable(name: "s", arg: 2, scope: !4603, file: !294, line: 300, type: !308)
!4607 = !DILocation(line: 300, column: 26, scope: !4603)
!4608 = !DILocation(line: 302, column: 34, scope: !4603)
!4609 = !DILocation(line: 302, column: 37, scope: !4603)
!4610 = !DILocation(line: 302, column: 25, scope: !4603)
!4611 = !DILocation(line: 302, column: 10, scope: !4603)
!4612 = !DILocation(line: 302, column: 3, scope: !4603)
!4613 = distinct !DISubprogram(name: "xmemdup", scope: !294, file: !294, line: 310, type: !4614, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!50, !801, !149}
!4616 = !DILocalVariable(name: "p", arg: 1, scope: !4613, file: !294, line: 310, type: !801)
!4617 = !DILocation(line: 310, column: 22, scope: !4613)
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4613, file: !294, line: 310, type: !149)
!4619 = !DILocation(line: 310, column: 32, scope: !4613)
!4620 = !DILocation(line: 312, column: 27, scope: !4613)
!4621 = !DILocation(line: 312, column: 18, scope: !4613)
!4622 = !DILocation(line: 312, column: 31, scope: !4613)
!4623 = !DILocation(line: 312, column: 34, scope: !4613)
!4624 = !DILocation(line: 312, column: 10, scope: !4613)
!4625 = !DILocation(line: 312, column: 3, scope: !4613)
!4626 = distinct !DISubprogram(name: "ximemdup", scope: !294, file: !294, line: 316, type: !4627, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!50, !801, !308}
!4629 = !DILocalVariable(name: "p", arg: 1, scope: !4626, file: !294, line: 316, type: !801)
!4630 = !DILocation(line: 316, column: 23, scope: !4626)
!4631 = !DILocalVariable(name: "s", arg: 2, scope: !4626, file: !294, line: 316, type: !308)
!4632 = !DILocation(line: 316, column: 32, scope: !4626)
!4633 = !DILocation(line: 318, column: 28, scope: !4626)
!4634 = !DILocation(line: 318, column: 18, scope: !4626)
!4635 = !DILocation(line: 318, column: 32, scope: !4626)
!4636 = !DILocation(line: 318, column: 35, scope: !4626)
!4637 = !DILocation(line: 318, column: 10, scope: !4626)
!4638 = !DILocation(line: 318, column: 3, scope: !4626)
!4639 = distinct !DISubprogram(name: "ximemdup0", scope: !294, file: !294, line: 325, type: !4640, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!54, !801, !308}
!4642 = !DILocalVariable(name: "p", arg: 1, scope: !4639, file: !294, line: 325, type: !801)
!4643 = !DILocation(line: 325, column: 24, scope: !4639)
!4644 = !DILocalVariable(name: "s", arg: 2, scope: !4639, file: !294, line: 325, type: !308)
!4645 = !DILocation(line: 325, column: 33, scope: !4639)
!4646 = !DILocalVariable(name: "result", scope: !4639, file: !294, line: 327, type: !54)
!4647 = !DILocation(line: 327, column: 9, scope: !4639)
!4648 = !DILocation(line: 327, column: 28, scope: !4639)
!4649 = !DILocation(line: 327, column: 30, scope: !4639)
!4650 = !DILocation(line: 327, column: 18, scope: !4639)
!4651 = !DILocation(line: 328, column: 3, scope: !4639)
!4652 = !DILocation(line: 328, column: 10, scope: !4639)
!4653 = !DILocation(line: 328, column: 13, scope: !4639)
!4654 = !DILocation(line: 329, column: 18, scope: !4639)
!4655 = !DILocation(line: 329, column: 26, scope: !4639)
!4656 = !DILocation(line: 329, column: 29, scope: !4639)
!4657 = !DILocation(line: 329, column: 10, scope: !4639)
!4658 = !DILocation(line: 329, column: 3, scope: !4639)
!4659 = distinct !DISubprogram(name: "xstrdup", scope: !294, file: !294, line: 335, type: !2652, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !56)
!4660 = !DILocalVariable(name: "string", arg: 1, scope: !4659, file: !294, line: 335, type: !6)
!4661 = !DILocation(line: 335, column: 22, scope: !4659)
!4662 = !DILocation(line: 337, column: 19, scope: !4659)
!4663 = !DILocation(line: 337, column: 35, scope: !4659)
!4664 = !DILocation(line: 337, column: 27, scope: !4659)
!4665 = !DILocation(line: 337, column: 43, scope: !4659)
!4666 = !DILocation(line: 337, column: 10, scope: !4659)
!4667 = !DILocation(line: 337, column: 3, scope: !4659)
!4668 = distinct !DISubprogram(name: "xalloc_die", scope: !313, file: !313, line: 32, type: !102, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !56)
!4669 = !DILocalVariable(name: "__errstatus", scope: !4670, file: !313, line: 34, type: !4671)
!4670 = distinct !DILexicalBlock(scope: !4668, file: !313, line: 34, column: 3)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!4672 = !DILocation(line: 34, column: 3, scope: !4670)
!4673 = !DILocation(line: 40, column: 3, scope: !4668)
!4674 = distinct !DISubprogram(name: "rpl_fopen", scope: !315, file: !315, line: 46, type: !4675, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !56)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!4677, !6, !6}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4679, file: !3678, line: 51, baseType: !51, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4679, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4679, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4679, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4679, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4679, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4679, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4679, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4679, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4679, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4679, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4679, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4679, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4679, file: !3678, line: 70, baseType: !4695, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4679, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4679, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4679, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4679, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4679, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4679, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4679, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4679, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4679, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4679, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4679, file: !3678, line: 93, baseType: !4695, size: 64, offset: 1344)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4679, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4679, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4679, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4679, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!4711 = !DILocalVariable(name: "filename", arg: 1, scope: !4674, file: !315, line: 46, type: !6)
!4712 = !DILocation(line: 46, column: 24, scope: !4674)
!4713 = !DILocalVariable(name: "mode", arg: 2, scope: !4674, file: !315, line: 46, type: !6)
!4714 = !DILocation(line: 46, column: 46, scope: !4674)
!4715 = !DILocalVariable(name: "open_direction", scope: !4674, file: !315, line: 54, type: !51)
!4716 = !DILocation(line: 54, column: 7, scope: !4674)
!4717 = !DILocalVariable(name: "open_flags", scope: !4674, file: !315, line: 55, type: !51)
!4718 = !DILocation(line: 55, column: 7, scope: !4674)
!4719 = !DILocalVariable(name: "open_flags_gnu", scope: !4674, file: !315, line: 57, type: !69)
!4720 = !DILocation(line: 57, column: 8, scope: !4674)
!4721 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4674, file: !315, line: 59, type: !4722)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 648, elements: !4723)
!4723 = !{!4724}
!4724 = !DISubrange(count: 81)
!4725 = !DILocation(line: 59, column: 8, scope: !4674)
!4726 = !DILocalVariable(name: "p", scope: !4727, file: !315, line: 62, type: !6)
!4727 = distinct !DILexicalBlock(scope: !4674, file: !315, line: 61, column: 3)
!4728 = !DILocation(line: 62, column: 17, scope: !4727)
!4729 = !DILocation(line: 62, column: 21, scope: !4727)
!4730 = !DILocalVariable(name: "q", scope: !4727, file: !315, line: 64, type: !54)
!4731 = !DILocation(line: 64, column: 11, scope: !4727)
!4732 = !DILocation(line: 64, column: 15, scope: !4727)
!4733 = !DILocation(line: 67, column: 5, scope: !4727)
!4734 = !DILocation(line: 67, column: 13, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4736, file: !315, line: 67, column: 5)
!4736 = distinct !DILexicalBlock(scope: !4727, file: !315, line: 67, column: 5)
!4737 = !DILocation(line: 67, column: 12, scope: !4735)
!4738 = !DILocation(line: 67, column: 15, scope: !4735)
!4739 = !DILocation(line: 67, column: 5, scope: !4736)
!4740 = !DILocation(line: 69, column: 18, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !315, line: 68, column: 7)
!4742 = !DILocation(line: 69, column: 17, scope: !4741)
!4743 = !DILocation(line: 69, column: 9, scope: !4741)
!4744 = !DILocation(line: 72, column: 28, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4741, file: !315, line: 70, column: 11)
!4746 = !DILocation(line: 74, column: 17, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4745, file: !315, line: 74, column: 17)
!4748 = !DILocation(line: 74, column: 21, scope: !4747)
!4749 = !DILocation(line: 74, column: 37, scope: !4747)
!4750 = !DILocation(line: 74, column: 19, scope: !4747)
!4751 = !DILocation(line: 74, column: 17, scope: !4745)
!4752 = !DILocation(line: 75, column: 23, scope: !4747)
!4753 = !DILocation(line: 75, column: 22, scope: !4747)
!4754 = !DILocation(line: 75, column: 17, scope: !4747)
!4755 = !DILocation(line: 75, column: 20, scope: !4747)
!4756 = !DILocation(line: 75, column: 15, scope: !4747)
!4757 = !DILocation(line: 77, column: 13, scope: !4745)
!4758 = !DILocation(line: 79, column: 28, scope: !4745)
!4759 = !DILocation(line: 80, column: 24, scope: !4745)
!4760 = !DILocation(line: 82, column: 17, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4745, file: !315, line: 82, column: 17)
!4762 = !DILocation(line: 82, column: 21, scope: !4761)
!4763 = !DILocation(line: 82, column: 37, scope: !4761)
!4764 = !DILocation(line: 82, column: 19, scope: !4761)
!4765 = !DILocation(line: 82, column: 17, scope: !4745)
!4766 = !DILocation(line: 83, column: 23, scope: !4761)
!4767 = !DILocation(line: 83, column: 22, scope: !4761)
!4768 = !DILocation(line: 83, column: 17, scope: !4761)
!4769 = !DILocation(line: 83, column: 20, scope: !4761)
!4770 = !DILocation(line: 83, column: 15, scope: !4761)
!4771 = !DILocation(line: 85, column: 13, scope: !4745)
!4772 = !DILocation(line: 87, column: 28, scope: !4745)
!4773 = !DILocation(line: 88, column: 24, scope: !4745)
!4774 = !DILocation(line: 90, column: 17, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4745, file: !315, line: 90, column: 17)
!4776 = !DILocation(line: 90, column: 21, scope: !4775)
!4777 = !DILocation(line: 90, column: 37, scope: !4775)
!4778 = !DILocation(line: 90, column: 19, scope: !4775)
!4779 = !DILocation(line: 90, column: 17, scope: !4745)
!4780 = !DILocation(line: 91, column: 23, scope: !4775)
!4781 = !DILocation(line: 91, column: 22, scope: !4775)
!4782 = !DILocation(line: 91, column: 17, scope: !4775)
!4783 = !DILocation(line: 91, column: 20, scope: !4775)
!4784 = !DILocation(line: 91, column: 15, scope: !4775)
!4785 = !DILocation(line: 93, column: 13, scope: !4745)
!4786 = !DILocation(line: 98, column: 24, scope: !4745)
!4787 = !DILocation(line: 100, column: 17, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4745, file: !315, line: 100, column: 17)
!4789 = !DILocation(line: 100, column: 21, scope: !4788)
!4790 = !DILocation(line: 100, column: 37, scope: !4788)
!4791 = !DILocation(line: 100, column: 19, scope: !4788)
!4792 = !DILocation(line: 100, column: 17, scope: !4745)
!4793 = !DILocation(line: 101, column: 23, scope: !4788)
!4794 = !DILocation(line: 101, column: 22, scope: !4788)
!4795 = !DILocation(line: 101, column: 17, scope: !4788)
!4796 = !DILocation(line: 101, column: 20, scope: !4788)
!4797 = !DILocation(line: 101, column: 15, scope: !4788)
!4798 = !DILocation(line: 103, column: 13, scope: !4745)
!4799 = !DILocation(line: 105, column: 28, scope: !4745)
!4800 = !DILocation(line: 107, column: 17, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4745, file: !315, line: 107, column: 17)
!4802 = !DILocation(line: 107, column: 21, scope: !4801)
!4803 = !DILocation(line: 107, column: 37, scope: !4801)
!4804 = !DILocation(line: 107, column: 19, scope: !4801)
!4805 = !DILocation(line: 107, column: 17, scope: !4745)
!4806 = !DILocation(line: 108, column: 23, scope: !4801)
!4807 = !DILocation(line: 108, column: 22, scope: !4801)
!4808 = !DILocation(line: 108, column: 17, scope: !4801)
!4809 = !DILocation(line: 108, column: 20, scope: !4801)
!4810 = !DILocation(line: 108, column: 15, scope: !4801)
!4811 = !DILocation(line: 110, column: 13, scope: !4745)
!4812 = !DILocation(line: 113, column: 24, scope: !4745)
!4813 = !DILocation(line: 114, column: 28, scope: !4745)
!4814 = !DILocation(line: 115, column: 13, scope: !4745)
!4815 = !DILocation(line: 117, column: 24, scope: !4745)
!4816 = !DILocation(line: 118, column: 28, scope: !4745)
!4817 = !DILocation(line: 119, column: 13, scope: !4745)
!4818 = !DILocation(line: 122, column: 13, scope: !4745)
!4819 = !DILocalVariable(name: "len", scope: !4820, file: !315, line: 128, type: !149)
!4820 = distinct !DILexicalBlock(scope: !4741, file: !315, line: 127, column: 9)
!4821 = !DILocation(line: 128, column: 18, scope: !4820)
!4822 = !DILocation(line: 128, column: 32, scope: !4820)
!4823 = !DILocation(line: 128, column: 24, scope: !4820)
!4824 = !DILocation(line: 129, column: 15, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !315, line: 129, column: 15)
!4826 = !DILocation(line: 129, column: 21, scope: !4825)
!4827 = !DILocation(line: 129, column: 37, scope: !4825)
!4828 = !DILocation(line: 129, column: 50, scope: !4825)
!4829 = !DILocation(line: 129, column: 48, scope: !4825)
!4830 = !DILocation(line: 129, column: 19, scope: !4825)
!4831 = !DILocation(line: 129, column: 15, scope: !4820)
!4832 = !DILocation(line: 130, column: 19, scope: !4825)
!4833 = !DILocation(line: 130, column: 35, scope: !4825)
!4834 = !DILocation(line: 130, column: 48, scope: !4825)
!4835 = !DILocation(line: 130, column: 46, scope: !4825)
!4836 = !DILocation(line: 130, column: 17, scope: !4825)
!4837 = !DILocation(line: 130, column: 13, scope: !4825)
!4838 = !DILocation(line: 131, column: 19, scope: !4820)
!4839 = !DILocation(line: 131, column: 22, scope: !4820)
!4840 = !DILocation(line: 131, column: 25, scope: !4820)
!4841 = !DILocation(line: 131, column: 11, scope: !4820)
!4842 = !DILocation(line: 132, column: 16, scope: !4820)
!4843 = !DILocation(line: 132, column: 13, scope: !4820)
!4844 = !DILocation(line: 135, column: 9, scope: !4741)
!4845 = !DILocation(line: 67, column: 25, scope: !4735)
!4846 = !DILocation(line: 67, column: 5, scope: !4735)
!4847 = distinct !{!4847, !4739, !4848, !449}
!4848 = !DILocation(line: 136, column: 7, scope: !4736)
!4849 = !DILocation(line: 138, column: 6, scope: !4727)
!4850 = !DILocation(line: 138, column: 8, scope: !4727)
!4851 = !DILocation(line: 197, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4674, file: !315, line: 197, column: 7)
!4853 = !DILocation(line: 197, column: 7, scope: !4674)
!4854 = !DILocalVariable(name: "fd", scope: !4855, file: !315, line: 199, type: !51)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !315, line: 198, column: 5)
!4856 = !DILocation(line: 199, column: 11, scope: !4855)
!4857 = !DILocation(line: 199, column: 22, scope: !4855)
!4858 = !DILocation(line: 199, column: 32, scope: !4855)
!4859 = !DILocation(line: 199, column: 49, scope: !4855)
!4860 = !DILocation(line: 199, column: 47, scope: !4855)
!4861 = !DILocation(line: 199, column: 16, scope: !4855)
!4862 = !DILocation(line: 201, column: 11, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4855, file: !315, line: 201, column: 11)
!4864 = !DILocation(line: 201, column: 14, scope: !4863)
!4865 = !DILocation(line: 201, column: 11, scope: !4855)
!4866 = !DILocation(line: 202, column: 9, scope: !4863)
!4867 = !DILocalVariable(name: "fp", scope: !4855, file: !315, line: 204, type: !4677)
!4868 = !DILocation(line: 204, column: 13, scope: !4855)
!4869 = !DILocation(line: 204, column: 26, scope: !4855)
!4870 = !DILocation(line: 204, column: 30, scope: !4855)
!4871 = !DILocation(line: 204, column: 18, scope: !4855)
!4872 = !DILocation(line: 205, column: 11, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4855, file: !315, line: 205, column: 11)
!4874 = !DILocation(line: 205, column: 14, scope: !4873)
!4875 = !DILocation(line: 205, column: 11, scope: !4855)
!4876 = !DILocalVariable(name: "saved_errno", scope: !4877, file: !315, line: 207, type: !51)
!4877 = distinct !DILexicalBlock(scope: !4873, file: !315, line: 206, column: 9)
!4878 = !DILocation(line: 207, column: 15, scope: !4877)
!4879 = !DILocation(line: 207, column: 29, scope: !4877)
!4880 = !DILocation(line: 208, column: 18, scope: !4877)
!4881 = !DILocation(line: 208, column: 11, scope: !4877)
!4882 = !DILocation(line: 209, column: 19, scope: !4877)
!4883 = !DILocation(line: 209, column: 11, scope: !4877)
!4884 = !DILocation(line: 209, column: 17, scope: !4877)
!4885 = !DILocation(line: 210, column: 9, scope: !4877)
!4886 = !DILocation(line: 211, column: 14, scope: !4855)
!4887 = !DILocation(line: 211, column: 7, scope: !4855)
!4888 = !DILocation(line: 217, column: 10, scope: !4674)
!4889 = !DILocation(line: 219, column: 22, scope: !4674)
!4890 = !DILocation(line: 219, column: 32, scope: !4674)
!4891 = !DILocation(line: 219, column: 10, scope: !4674)
!4892 = !DILocation(line: 219, column: 3, scope: !4674)
!4893 = !DILocation(line: 220, column: 1, scope: !4674)
!4894 = distinct !DISubprogram(name: "orig_fopen", scope: !315, file: !315, line: 30, type: !4675, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !314, retainedNodes: !56)
!4895 = !DILocalVariable(name: "filename", arg: 1, scope: !4894, file: !315, line: 30, type: !6)
!4896 = !DILocation(line: 30, column: 25, scope: !4894)
!4897 = !DILocalVariable(name: "mode", arg: 2, scope: !4894, file: !315, line: 30, type: !6)
!4898 = !DILocation(line: 30, column: 47, scope: !4894)
!4899 = !DILocation(line: 32, column: 17, scope: !4894)
!4900 = !DILocation(line: 32, column: 27, scope: !4894)
!4901 = !DILocation(line: 32, column: 10, scope: !4894)
!4902 = !DILocation(line: 32, column: 3, scope: !4894)
!4903 = distinct !DISubprogram(name: "c32isprint", scope: !4904, file: !4904, line: 41, type: !4905, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !56)
!4904 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!51, !4907}
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4908, line: 20, baseType: !14)
!4908 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4909 = !DILocalVariable(name: "wc", arg: 1, scope: !4903, file: !4904, line: 41, type: !4907)
!4910 = !DILocation(line: 41, column: 14, scope: !4903)
!4911 = !DILocation(line: 66, column: 22, scope: !4903)
!4912 = !DILocation(line: 66, column: 10, scope: !4903)
!4913 = !DILocation(line: 66, column: 3, scope: !4903)
!4914 = distinct !DISubprogram(name: "close_stream", scope: !319, file: !319, line: 55, type: !4915, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !318, retainedNodes: !56)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!51, !4917}
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !4919)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !4920)
!4920 = !{!4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4919, file: !3678, line: 51, baseType: !51, size: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4919, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4919, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4919, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4919, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4919, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4919, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4919, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4919, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4919, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4919, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4919, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4919, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4919, file: !3678, line: 70, baseType: !4935, size: 64, offset: 832)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4919, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4919, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4919, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4919, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4919, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4919, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4919, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4919, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4919, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4919, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4919, file: !3678, line: 93, baseType: !4935, size: 64, offset: 1344)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4919, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4919, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4919, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4919, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!4951 = !DILocalVariable(name: "stream", arg: 1, scope: !4914, file: !319, line: 55, type: !4917)
!4952 = !DILocation(line: 55, column: 21, scope: !4914)
!4953 = !DILocalVariable(name: "some_pending", scope: !4914, file: !319, line: 57, type: !4954)
!4954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!4955 = !DILocation(line: 57, column: 14, scope: !4914)
!4956 = !DILocation(line: 57, column: 42, scope: !4914)
!4957 = !DILocation(line: 57, column: 30, scope: !4914)
!4958 = !DILocation(line: 57, column: 50, scope: !4914)
!4959 = !DILocalVariable(name: "prev_fail", scope: !4914, file: !319, line: 58, type: !4954)
!4960 = !DILocation(line: 58, column: 14, scope: !4914)
!4961 = !DILocation(line: 58, column: 27, scope: !4914)
!4962 = !DILocation(line: 58, column: 43, scope: !4914)
!4963 = !DILocalVariable(name: "fclose_fail", scope: !4914, file: !319, line: 59, type: !4954)
!4964 = !DILocation(line: 59, column: 14, scope: !4914)
!4965 = !DILocation(line: 59, column: 37, scope: !4914)
!4966 = !DILocation(line: 59, column: 29, scope: !4914)
!4967 = !DILocation(line: 59, column: 45, scope: !4914)
!4968 = !DILocation(line: 69, column: 7, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4914, file: !319, line: 69, column: 7)
!4970 = !DILocation(line: 69, column: 17, scope: !4969)
!4971 = !DILocation(line: 69, column: 21, scope: !4969)
!4972 = !DILocation(line: 69, column: 33, scope: !4969)
!4973 = !DILocation(line: 69, column: 37, scope: !4969)
!4974 = !DILocation(line: 69, column: 50, scope: !4969)
!4975 = !DILocation(line: 69, column: 53, scope: !4969)
!4976 = !DILocation(line: 69, column: 59, scope: !4969)
!4977 = !DILocation(line: 69, column: 7, scope: !4914)
!4978 = !DILocation(line: 71, column: 13, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !319, line: 71, column: 11)
!4980 = distinct !DILexicalBlock(scope: !4969, file: !319, line: 70, column: 5)
!4981 = !DILocation(line: 71, column: 11, scope: !4980)
!4982 = !DILocation(line: 72, column: 9, scope: !4979)
!4983 = !DILocation(line: 72, column: 15, scope: !4979)
!4984 = !DILocation(line: 73, column: 7, scope: !4980)
!4985 = !DILocation(line: 76, column: 3, scope: !4914)
!4986 = !DILocation(line: 77, column: 1, scope: !4914)
!4987 = distinct !DISubprogram(name: "rpl_fclose", scope: !321, file: !321, line: 58, type: !4988, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !320, retainedNodes: !56)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!51, !4990}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !4992)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !4993)
!4993 = !{!4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4992, file: !3678, line: 51, baseType: !51, size: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4992, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4992, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4992, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4992, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4992, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4992, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4992, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4992, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4992, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4992, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4992, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4992, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4992, file: !3678, line: 70, baseType: !5008, size: 64, offset: 832)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4992, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4992, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4992, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4992, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4992, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4992, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4992, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4992, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4992, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4992, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4992, file: !3678, line: 93, baseType: !5008, size: 64, offset: 1344)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4992, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4992, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4992, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4992, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!5024 = !DILocalVariable(name: "fp", arg: 1, scope: !4987, file: !321, line: 58, type: !4990)
!5025 = !DILocation(line: 58, column: 19, scope: !4987)
!5026 = !DILocalVariable(name: "saved_errno", scope: !4987, file: !321, line: 60, type: !51)
!5027 = !DILocation(line: 60, column: 7, scope: !4987)
!5028 = !DILocalVariable(name: "fd", scope: !4987, file: !321, line: 63, type: !51)
!5029 = !DILocation(line: 63, column: 7, scope: !4987)
!5030 = !DILocation(line: 63, column: 20, scope: !4987)
!5031 = !DILocation(line: 63, column: 12, scope: !4987)
!5032 = !DILocation(line: 64, column: 7, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4987, file: !321, line: 64, column: 7)
!5034 = !DILocation(line: 64, column: 10, scope: !5033)
!5035 = !DILocation(line: 64, column: 7, scope: !4987)
!5036 = !DILocation(line: 65, column: 28, scope: !5033)
!5037 = !DILocation(line: 65, column: 12, scope: !5033)
!5038 = !DILocation(line: 65, column: 5, scope: !5033)
!5039 = !DILocation(line: 70, column: 9, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4987, file: !321, line: 70, column: 7)
!5041 = !DILocation(line: 70, column: 23, scope: !5040)
!5042 = !DILocation(line: 70, column: 41, scope: !5040)
!5043 = !DILocation(line: 70, column: 33, scope: !5040)
!5044 = !DILocation(line: 70, column: 26, scope: !5040)
!5045 = !DILocation(line: 70, column: 59, scope: !5040)
!5046 = !DILocation(line: 71, column: 7, scope: !5040)
!5047 = !DILocation(line: 71, column: 18, scope: !5040)
!5048 = !DILocation(line: 71, column: 10, scope: !5040)
!5049 = !DILocation(line: 70, column: 7, scope: !4987)
!5050 = !DILocation(line: 72, column: 19, scope: !5040)
!5051 = !DILocation(line: 72, column: 17, scope: !5040)
!5052 = !DILocation(line: 72, column: 5, scope: !5040)
!5053 = !DILocalVariable(name: "result", scope: !4987, file: !321, line: 74, type: !51)
!5054 = !DILocation(line: 74, column: 7, scope: !4987)
!5055 = !DILocation(line: 100, column: 28, scope: !4987)
!5056 = !DILocation(line: 100, column: 12, scope: !4987)
!5057 = !DILocation(line: 100, column: 10, scope: !4987)
!5058 = !DILocation(line: 105, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4987, file: !321, line: 105, column: 7)
!5060 = !DILocation(line: 105, column: 19, scope: !5059)
!5061 = !DILocation(line: 105, column: 7, scope: !4987)
!5062 = !DILocation(line: 107, column: 15, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !321, line: 106, column: 5)
!5064 = !DILocation(line: 107, column: 7, scope: !5063)
!5065 = !DILocation(line: 107, column: 13, scope: !5063)
!5066 = !DILocation(line: 108, column: 14, scope: !5063)
!5067 = !DILocation(line: 109, column: 5, scope: !5063)
!5068 = !DILocation(line: 111, column: 10, scope: !4987)
!5069 = !DILocation(line: 111, column: 3, scope: !4987)
!5070 = !DILocation(line: 112, column: 1, scope: !4987)
!5071 = distinct !DISubprogram(name: "rpl_fflush", scope: !323, file: !323, line: 130, type: !5072, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !322, retainedNodes: !56)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!51, !5074}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !5076)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5076, file: !3678, line: 51, baseType: !51, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5076, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5076, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5076, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5076, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5076, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5076, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5076, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5076, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5076, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5076, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5076, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5076, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5076, file: !3678, line: 70, baseType: !5092, size: 64, offset: 832)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5076, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5076, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5076, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5076, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5076, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5076, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5076, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5076, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5076, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5076, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5076, file: !3678, line: 93, baseType: !5092, size: 64, offset: 1344)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5076, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5076, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5076, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5076, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!5108 = !DILocalVariable(name: "stream", arg: 1, scope: !5071, file: !323, line: 130, type: !5074)
!5109 = !DILocation(line: 130, column: 19, scope: !5071)
!5110 = !DILocation(line: 151, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5071, file: !323, line: 151, column: 7)
!5112 = !DILocation(line: 151, column: 14, scope: !5111)
!5113 = !DILocation(line: 151, column: 22, scope: !5111)
!5114 = !DILocation(line: 151, column: 27, scope: !5111)
!5115 = !DILocation(line: 151, column: 7, scope: !5071)
!5116 = !DILocation(line: 152, column: 20, scope: !5111)
!5117 = !DILocation(line: 152, column: 12, scope: !5111)
!5118 = !DILocation(line: 152, column: 5, scope: !5111)
!5119 = !DILocation(line: 157, column: 44, scope: !5071)
!5120 = !DILocation(line: 157, column: 3, scope: !5071)
!5121 = !DILocation(line: 159, column: 18, scope: !5071)
!5122 = !DILocation(line: 159, column: 10, scope: !5071)
!5123 = !DILocation(line: 159, column: 3, scope: !5071)
!5124 = !DILocation(line: 236, column: 1, scope: !5071)
!5125 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !323, file: !323, line: 42, type: !5126, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !322, retainedNodes: !56)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !5074}
!5128 = !DILocalVariable(name: "fp", arg: 1, scope: !5125, file: !323, line: 42, type: !5074)
!5129 = !DILocation(line: 42, column: 48, scope: !5125)
!5130 = !DILocation(line: 44, column: 7, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5125, file: !323, line: 44, column: 7)
!5132 = !DILocation(line: 44, column: 12, scope: !5131)
!5133 = !DILocation(line: 44, column: 19, scope: !5131)
!5134 = !DILocation(line: 44, column: 7, scope: !5125)
!5135 = !DILocation(line: 46, column: 13, scope: !5131)
!5136 = !DILocation(line: 46, column: 5, scope: !5131)
!5137 = !DILocation(line: 47, column: 1, scope: !5125)
!5138 = distinct !DISubprogram(name: "rpl_fseeko", scope: !325, file: !325, line: 28, type: !5139, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !324, retainedNodes: !56)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!51, !5141, !5175, !51}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3676, line: 7, baseType: !5143)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3678, line: 49, size: 1728, elements: !5144)
!5144 = !{!5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5143, file: !3678, line: 51, baseType: !51, size: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5143, file: !3678, line: 54, baseType: !54, size: 64, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5143, file: !3678, line: 55, baseType: !54, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5143, file: !3678, line: 56, baseType: !54, size: 64, offset: 192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5143, file: !3678, line: 57, baseType: !54, size: 64, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5143, file: !3678, line: 58, baseType: !54, size: 64, offset: 320)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5143, file: !3678, line: 59, baseType: !54, size: 64, offset: 384)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5143, file: !3678, line: 60, baseType: !54, size: 64, offset: 448)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5143, file: !3678, line: 61, baseType: !54, size: 64, offset: 512)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5143, file: !3678, line: 64, baseType: !54, size: 64, offset: 576)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5143, file: !3678, line: 65, baseType: !54, size: 64, offset: 640)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5143, file: !3678, line: 66, baseType: !54, size: 64, offset: 704)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5143, file: !3678, line: 68, baseType: !3693, size: 64, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5143, file: !3678, line: 70, baseType: !5159, size: 64, offset: 832)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5143, file: !3678, line: 72, baseType: !51, size: 32, offset: 896)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5143, file: !3678, line: 73, baseType: !51, size: 32, offset: 928)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5143, file: !3678, line: 74, baseType: !3513, size: 64, offset: 960)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5143, file: !3678, line: 77, baseType: !52, size: 16, offset: 1024)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5143, file: !3678, line: 78, baseType: !3702, size: 8, offset: 1040)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5143, file: !3678, line: 79, baseType: !3704, size: 8, offset: 1048)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5143, file: !3678, line: 81, baseType: !3708, size: 64, offset: 1088)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5143, file: !3678, line: 89, baseType: !3711, size: 64, offset: 1152)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5143, file: !3678, line: 91, baseType: !3713, size: 64, offset: 1216)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5143, file: !3678, line: 92, baseType: !3716, size: 64, offset: 1280)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5143, file: !3678, line: 93, baseType: !5159, size: 64, offset: 1344)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5143, file: !3678, line: 94, baseType: !50, size: 64, offset: 1408)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5143, file: !3678, line: 95, baseType: !149, size: 64, offset: 1472)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5143, file: !3678, line: 96, baseType: !51, size: 32, offset: 1536)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5143, file: !3678, line: 98, baseType: !278, size: 160, offset: 1568)
!5175 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !82, line: 63, baseType: !3513)
!5176 = !DILocalVariable(name: "fp", arg: 1, scope: !5138, file: !325, line: 28, type: !5141)
!5177 = !DILocation(line: 28, column: 15, scope: !5138)
!5178 = !DILocalVariable(name: "offset", arg: 2, scope: !5138, file: !325, line: 28, type: !5175)
!5179 = !DILocation(line: 28, column: 25, scope: !5138)
!5180 = !DILocalVariable(name: "whence", arg: 3, scope: !5138, file: !325, line: 28, type: !51)
!5181 = !DILocation(line: 28, column: 37, scope: !5138)
!5182 = !DILocation(line: 55, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5138, file: !325, line: 55, column: 7)
!5184 = !DILocation(line: 55, column: 12, scope: !5183)
!5185 = !DILocation(line: 55, column: 28, scope: !5183)
!5186 = !DILocation(line: 55, column: 33, scope: !5183)
!5187 = !DILocation(line: 55, column: 25, scope: !5183)
!5188 = !DILocation(line: 56, column: 7, scope: !5183)
!5189 = !DILocation(line: 56, column: 10, scope: !5183)
!5190 = !DILocation(line: 56, column: 15, scope: !5183)
!5191 = !DILocation(line: 56, column: 32, scope: !5183)
!5192 = !DILocation(line: 56, column: 37, scope: !5183)
!5193 = !DILocation(line: 56, column: 29, scope: !5183)
!5194 = !DILocation(line: 57, column: 7, scope: !5183)
!5195 = !DILocation(line: 57, column: 10, scope: !5183)
!5196 = !DILocation(line: 57, column: 15, scope: !5183)
!5197 = !DILocation(line: 57, column: 29, scope: !5183)
!5198 = !DILocation(line: 55, column: 7, scope: !5138)
!5199 = !DILocalVariable(name: "pos", scope: !5200, file: !325, line: 123, type: !5175)
!5200 = distinct !DILexicalBlock(scope: !5183, file: !325, line: 119, column: 5)
!5201 = !DILocation(line: 123, column: 13, scope: !5200)
!5202 = !DILocation(line: 123, column: 34, scope: !5200)
!5203 = !DILocation(line: 123, column: 26, scope: !5200)
!5204 = !DILocation(line: 123, column: 39, scope: !5200)
!5205 = !DILocation(line: 123, column: 47, scope: !5200)
!5206 = !DILocation(line: 123, column: 19, scope: !5200)
!5207 = !DILocation(line: 124, column: 11, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !325, line: 124, column: 11)
!5209 = !DILocation(line: 124, column: 15, scope: !5208)
!5210 = !DILocation(line: 124, column: 11, scope: !5200)
!5211 = !DILocation(line: 130, column: 11, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5208, file: !325, line: 125, column: 9)
!5213 = !DILocation(line: 135, column: 7, scope: !5200)
!5214 = !DILocation(line: 135, column: 12, scope: !5200)
!5215 = !DILocation(line: 135, column: 19, scope: !5200)
!5216 = !DILocation(line: 136, column: 22, scope: !5200)
!5217 = !DILocation(line: 136, column: 7, scope: !5200)
!5218 = !DILocation(line: 136, column: 12, scope: !5200)
!5219 = !DILocation(line: 136, column: 20, scope: !5200)
!5220 = !DILocation(line: 167, column: 7, scope: !5200)
!5221 = !DILocation(line: 169, column: 18, scope: !5138)
!5222 = !DILocation(line: 169, column: 22, scope: !5138)
!5223 = !DILocation(line: 169, column: 30, scope: !5138)
!5224 = !DILocation(line: 169, column: 10, scope: !5138)
!5225 = !DILocation(line: 169, column: 3, scope: !5138)
!5226 = !DILocation(line: 170, column: 1, scope: !5138)
!5227 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5228, file: !5228, line: 43, type: !5229, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !56)
!5228 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5229 = !DISubroutineType(types: !74)
!5230 = !DILocation(line: 45, column: 3, scope: !5227)
!5231 = !DILocation(line: 45, column: 9, scope: !5227)
!5232 = !DILocation(line: 46, column: 3, scope: !5227)
!5233 = distinct !DISubprogram(name: "imalloc", scope: !5228, file: !5228, line: 55, type: !4365, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !56)
!5234 = !DILocalVariable(name: "s", arg: 1, scope: !5233, file: !5228, line: 55, type: !308)
!5235 = !DILocation(line: 55, column: 16, scope: !5233)
!5236 = !DILocation(line: 57, column: 10, scope: !5233)
!5237 = !DILocation(line: 57, column: 12, scope: !5233)
!5238 = !DILocation(line: 57, column: 34, scope: !5233)
!5239 = !DILocation(line: 57, column: 26, scope: !5233)
!5240 = !DILocation(line: 57, column: 39, scope: !5233)
!5241 = !DILocation(line: 57, column: 3, scope: !5233)
!5242 = distinct !DISubprogram(name: "irealloc", scope: !5228, file: !5228, line: 66, type: !4393, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !56)
!5243 = !DILocalVariable(name: "p", arg: 1, scope: !5242, file: !5228, line: 66, type: !50)
!5244 = !DILocation(line: 66, column: 17, scope: !5242)
!5245 = !DILocalVariable(name: "s", arg: 2, scope: !5242, file: !5228, line: 66, type: !308)
!5246 = !DILocation(line: 66, column: 26, scope: !5242)
!5247 = !DILocation(line: 68, column: 10, scope: !5242)
!5248 = !DILocation(line: 68, column: 12, scope: !5242)
!5249 = !DILocation(line: 68, column: 35, scope: !5242)
!5250 = !DILocation(line: 68, column: 38, scope: !5242)
!5251 = !DILocation(line: 68, column: 26, scope: !5242)
!5252 = !DILocation(line: 68, column: 43, scope: !5242)
!5253 = !DILocation(line: 68, column: 3, scope: !5242)
!5254 = distinct !DISubprogram(name: "icalloc", scope: !5228, file: !5228, line: 77, type: !4431, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !56)
!5255 = !DILocalVariable(name: "n", arg: 1, scope: !5254, file: !5228, line: 77, type: !308)
!5256 = !DILocation(line: 77, column: 16, scope: !5254)
!5257 = !DILocalVariable(name: "s", arg: 2, scope: !5254, file: !5228, line: 77, type: !308)
!5258 = !DILocation(line: 77, column: 25, scope: !5254)
!5259 = !DILocation(line: 79, column: 18, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5254, file: !5228, line: 79, column: 7)
!5261 = !DILocation(line: 79, column: 16, scope: !5260)
!5262 = !DILocation(line: 79, column: 7, scope: !5254)
!5263 = !DILocation(line: 81, column: 11, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !5228, line: 81, column: 11)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !5228, line: 80, column: 5)
!5266 = !DILocation(line: 81, column: 13, scope: !5264)
!5267 = !DILocation(line: 81, column: 11, scope: !5265)
!5268 = !DILocation(line: 82, column: 16, scope: !5264)
!5269 = !DILocation(line: 82, column: 9, scope: !5264)
!5270 = !DILocation(line: 83, column: 9, scope: !5265)
!5271 = !DILocation(line: 84, column: 5, scope: !5265)
!5272 = !DILocation(line: 85, column: 18, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5254, file: !5228, line: 85, column: 7)
!5274 = !DILocation(line: 85, column: 16, scope: !5273)
!5275 = !DILocation(line: 85, column: 7, scope: !5254)
!5276 = !DILocation(line: 87, column: 11, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !5228, line: 87, column: 11)
!5278 = distinct !DILexicalBlock(scope: !5273, file: !5228, line: 86, column: 5)
!5279 = !DILocation(line: 87, column: 13, scope: !5277)
!5280 = !DILocation(line: 87, column: 11, scope: !5278)
!5281 = !DILocation(line: 88, column: 16, scope: !5277)
!5282 = !DILocation(line: 88, column: 9, scope: !5277)
!5283 = !DILocation(line: 89, column: 9, scope: !5278)
!5284 = !DILocation(line: 90, column: 5, scope: !5278)
!5285 = !DILocation(line: 91, column: 18, scope: !5254)
!5286 = !DILocation(line: 91, column: 21, scope: !5254)
!5287 = !DILocation(line: 91, column: 10, scope: !5254)
!5288 = !DILocation(line: 91, column: 3, scope: !5254)
!5289 = !DILocation(line: 92, column: 1, scope: !5254)
!5290 = distinct !DISubprogram(name: "ireallocarray", scope: !5228, file: !5228, line: 98, type: !4405, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !56)
!5291 = !DILocalVariable(name: "p", arg: 1, scope: !5290, file: !5228, line: 98, type: !50)
!5292 = !DILocation(line: 98, column: 22, scope: !5290)
!5293 = !DILocalVariable(name: "n", arg: 2, scope: !5290, file: !5228, line: 98, type: !308)
!5294 = !DILocation(line: 98, column: 31, scope: !5290)
!5295 = !DILocalVariable(name: "s", arg: 3, scope: !5290, file: !5228, line: 98, type: !308)
!5296 = !DILocation(line: 98, column: 40, scope: !5290)
!5297 = !DILocation(line: 100, column: 11, scope: !5290)
!5298 = !DILocation(line: 100, column: 13, scope: !5290)
!5299 = !DILocation(line: 100, column: 25, scope: !5290)
!5300 = !DILocation(line: 100, column: 28, scope: !5290)
!5301 = !DILocation(line: 100, column: 30, scope: !5290)
!5302 = !DILocation(line: 101, column: 27, scope: !5290)
!5303 = !DILocation(line: 101, column: 30, scope: !5290)
!5304 = !DILocation(line: 101, column: 33, scope: !5290)
!5305 = !DILocation(line: 101, column: 13, scope: !5290)
!5306 = !DILocation(line: 102, column: 13, scope: !5290)
!5307 = !DILocation(line: 100, column: 3, scope: !5290)
!5308 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !218, file: !218, line: 100, type: !5309, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !217, retainedNodes: !56)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!149, !5311, !6, !149, !5312}
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!5313 = !DILocalVariable(name: "pwc", arg: 1, scope: !5308, file: !218, line: 100, type: !5311)
!5314 = !DILocation(line: 100, column: 21, scope: !5308)
!5315 = !DILocalVariable(name: "s", arg: 2, scope: !5308, file: !218, line: 100, type: !6)
!5316 = !DILocation(line: 100, column: 38, scope: !5308)
!5317 = !DILocalVariable(name: "n", arg: 3, scope: !5308, file: !218, line: 100, type: !149)
!5318 = !DILocation(line: 100, column: 48, scope: !5308)
!5319 = !DILocalVariable(name: "ps", arg: 4, scope: !5308, file: !218, line: 100, type: !5312)
!5320 = !DILocation(line: 100, column: 62, scope: !5308)
!5321 = !DILocation(line: 105, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5308, file: !218, line: 105, column: 7)
!5323 = !DILocation(line: 105, column: 9, scope: !5322)
!5324 = !DILocation(line: 105, column: 7, scope: !5308)
!5325 = !DILocation(line: 107, column: 11, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !218, line: 106, column: 5)
!5327 = !DILocation(line: 108, column: 9, scope: !5326)
!5328 = !DILocation(line: 109, column: 9, scope: !5326)
!5329 = !DILocation(line: 110, column: 5, scope: !5326)
!5330 = !DILocation(line: 117, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5308, file: !218, line: 117, column: 7)
!5332 = !DILocation(line: 117, column: 10, scope: !5331)
!5333 = !DILocation(line: 117, column: 7, scope: !5308)
!5334 = !DILocation(line: 118, column: 8, scope: !5331)
!5335 = !DILocation(line: 118, column: 5, scope: !5331)
!5336 = !DILocalVariable(name: "ret", scope: !5308, file: !218, line: 130, type: !149)
!5337 = !DILocation(line: 130, column: 10, scope: !5308)
!5338 = !DILocation(line: 130, column: 26, scope: !5308)
!5339 = !DILocation(line: 130, column: 31, scope: !5308)
!5340 = !DILocation(line: 130, column: 34, scope: !5308)
!5341 = !DILocation(line: 130, column: 37, scope: !5308)
!5342 = !DILocation(line: 130, column: 16, scope: !5308)
!5343 = !DILocation(line: 135, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5308, file: !218, line: 135, column: 7)
!5345 = !DILocation(line: 135, column: 11, scope: !5344)
!5346 = !DILocation(line: 135, column: 25, scope: !5344)
!5347 = !DILocation(line: 135, column: 39, scope: !5344)
!5348 = !DILocation(line: 135, column: 30, scope: !5344)
!5349 = !DILocation(line: 135, column: 7, scope: !5308)
!5350 = !DILocation(line: 137, column: 14, scope: !5344)
!5351 = !DILocation(line: 137, column: 5, scope: !5344)
!5352 = !DILocation(line: 138, column: 7, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5308, file: !218, line: 138, column: 7)
!5354 = !DILocation(line: 138, column: 11, scope: !5353)
!5355 = !DILocation(line: 138, column: 7, scope: !5308)
!5356 = !DILocation(line: 139, column: 5, scope: !5353)
!5357 = !DILocation(line: 143, column: 22, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5308, file: !218, line: 143, column: 7)
!5359 = !DILocation(line: 143, column: 19, scope: !5358)
!5360 = !DILocation(line: 143, column: 26, scope: !5358)
!5361 = !DILocation(line: 143, column: 29, scope: !5358)
!5362 = !DILocation(line: 143, column: 31, scope: !5358)
!5363 = !DILocation(line: 143, column: 36, scope: !5358)
!5364 = !DILocation(line: 143, column: 41, scope: !5358)
!5365 = !DILocation(line: 143, column: 7, scope: !5308)
!5366 = !DILocation(line: 145, column: 11, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !218, line: 145, column: 11)
!5368 = distinct !DILexicalBlock(scope: !5358, file: !218, line: 144, column: 5)
!5369 = !DILocation(line: 145, column: 15, scope: !5367)
!5370 = !DILocation(line: 145, column: 11, scope: !5368)
!5371 = !DILocation(line: 146, column: 33, scope: !5367)
!5372 = !DILocation(line: 146, column: 32, scope: !5367)
!5373 = !DILocation(line: 146, column: 16, scope: !5367)
!5374 = !DILocation(line: 146, column: 10, scope: !5367)
!5375 = !DILocation(line: 146, column: 14, scope: !5367)
!5376 = !DILocation(line: 146, column: 9, scope: !5367)
!5377 = !DILocation(line: 147, column: 7, scope: !5368)
!5378 = !DILocation(line: 151, column: 10, scope: !5308)
!5379 = !DILocation(line: 151, column: 3, scope: !5308)
!5380 = !DILocation(line: 286, column: 1, scope: !5308)
!5381 = distinct !DISubprogram(name: "mbszero", scope: !5382, file: !5382, line: 1135, type: !5383, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !328, retainedNodes: !56)
!5382 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5383 = !DISubroutineType(types: !5384)
!5384 = !{null, !5385}
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !5387)
!5387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !5388)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !5389)
!5389 = !{!5390, !5391}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5388, file: !225, line: 15, baseType: !51, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5388, file: !225, line: 20, baseType: !5392, size: 32, offset: 32)
!5392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5388, file: !225, line: 16, size: 32, elements: !5393)
!5393 = !{!5394, !5395}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5392, file: !225, line: 18, baseType: !14, size: 32)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5392, file: !225, line: 19, baseType: !234, size: 32)
!5396 = !DILocalVariable(name: "ps", arg: 1, scope: !5381, file: !5382, line: 1135, type: !5385)
!5397 = !DILocation(line: 1135, column: 21, scope: !5381)
!5398 = !DILocation(line: 1137, column: 11, scope: !5381)
!5399 = !DILocation(line: 1137, column: 3, scope: !5381)
!5400 = !DILocation(line: 1138, column: 1, scope: !5381)
!5401 = distinct !DISubprogram(name: "memeq", scope: !4016, file: !4016, line: 974, type: !5402, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !330, retainedNodes: !56)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!69, !801, !801, !149}
!5404 = !DILocalVariable(name: "__s1", arg: 1, scope: !5401, file: !4016, line: 974, type: !801)
!5405 = !DILocation(line: 974, column: 20, scope: !5401)
!5406 = !DILocalVariable(name: "__s2", arg: 2, scope: !5401, file: !4016, line: 974, type: !801)
!5407 = !DILocation(line: 974, column: 38, scope: !5401)
!5408 = !DILocalVariable(name: "__n", arg: 3, scope: !5401, file: !4016, line: 974, type: !149)
!5409 = !DILocation(line: 974, column: 51, scope: !5401)
!5410 = !DILocation(line: 976, column: 19, scope: !5401)
!5411 = !DILocation(line: 976, column: 25, scope: !5401)
!5412 = !DILocation(line: 976, column: 31, scope: !5401)
!5413 = !DILocation(line: 976, column: 11, scope: !5401)
!5414 = !DILocation(line: 976, column: 10, scope: !5401)
!5415 = !DILocation(line: 976, column: 3, scope: !5401)
!5416 = distinct !DISubprogram(name: "rpl_realloc", scope: !5417, file: !5417, line: 2057, type: !4381, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !332, retainedNodes: !56)
!5417 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5418 = !DILocalVariable(name: "ptr", arg: 1, scope: !5416, file: !5417, line: 2057, type: !50)
!5419 = !DILocation(line: 2057, column: 20, scope: !5416)
!5420 = !DILocalVariable(name: "size", arg: 2, scope: !5416, file: !5417, line: 2057, type: !149)
!5421 = !DILocation(line: 2057, column: 32, scope: !5416)
!5422 = !DILocation(line: 2059, column: 19, scope: !5416)
!5423 = !DILocation(line: 2059, column: 24, scope: !5416)
!5424 = !DILocation(line: 2059, column: 31, scope: !5416)
!5425 = !DILocation(line: 2059, column: 10, scope: !5416)
!5426 = !DILocation(line: 2059, column: 3, scope: !5416)
!5427 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !335, file: !335, line: 27, type: !4318, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !56)
!5428 = !DILocalVariable(name: "ptr", arg: 1, scope: !5427, file: !335, line: 27, type: !50)
!5429 = !DILocation(line: 27, column: 21, scope: !5427)
!5430 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5427, file: !335, line: 27, type: !149)
!5431 = !DILocation(line: 27, column: 33, scope: !5427)
!5432 = !DILocalVariable(name: "size", arg: 3, scope: !5427, file: !335, line: 27, type: !149)
!5433 = !DILocation(line: 27, column: 47, scope: !5427)
!5434 = !DILocalVariable(name: "nbytes", scope: !5427, file: !335, line: 29, type: !149)
!5435 = !DILocation(line: 29, column: 10, scope: !5427)
!5436 = !DILocation(line: 30, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5427, file: !335, line: 30, column: 7)
!5438 = !DILocation(line: 30, column: 7, scope: !5427)
!5439 = !DILocation(line: 32, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5437, file: !335, line: 31, column: 5)
!5441 = !DILocation(line: 32, column: 13, scope: !5440)
!5442 = !DILocation(line: 33, column: 7, scope: !5440)
!5443 = !DILocation(line: 37, column: 19, scope: !5427)
!5444 = !DILocation(line: 37, column: 24, scope: !5427)
!5445 = !DILocation(line: 37, column: 10, scope: !5427)
!5446 = !DILocation(line: 37, column: 3, scope: !5427)
!5447 = !DILocation(line: 38, column: 1, scope: !5427)
!5448 = distinct !DISubprogram(name: "hard_locale", scope: !338, file: !338, line: 28, type: !5449, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !337, retainedNodes: !56)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!69, !51}
!5451 = !DILocalVariable(name: "category", arg: 1, scope: !5448, file: !338, line: 28, type: !51)
!5452 = !DILocation(line: 28, column: 18, scope: !5448)
!5453 = !DILocalVariable(name: "locale", scope: !5448, file: !338, line: 30, type: !5454)
!5454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !5455)
!5455 = !{!5456}
!5456 = !DISubrange(count: 257)
!5457 = !DILocation(line: 30, column: 8, scope: !5448)
!5458 = !DILocation(line: 32, column: 25, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5448, file: !338, line: 32, column: 7)
!5460 = !DILocation(line: 32, column: 35, scope: !5459)
!5461 = !DILocation(line: 32, column: 7, scope: !5459)
!5462 = !DILocation(line: 32, column: 7, scope: !5448)
!5463 = !DILocation(line: 33, column: 5, scope: !5459)
!5464 = !DILocation(line: 35, column: 16, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5448, file: !338, line: 35, column: 7)
!5466 = !DILocation(line: 35, column: 9, scope: !5465)
!5467 = !DILocation(line: 35, column: 29, scope: !5465)
!5468 = !DILocation(line: 35, column: 39, scope: !5465)
!5469 = !DILocation(line: 35, column: 32, scope: !5465)
!5470 = !DILocation(line: 35, column: 7, scope: !5448)
!5471 = !DILocation(line: 36, column: 5, scope: !5465)
!5472 = !DILocation(line: 46, column: 3, scope: !5448)
!5473 = !DILocation(line: 47, column: 1, scope: !5448)
!5474 = distinct !DISubprogram(name: "setlocale_null_r", scope: !340, file: !340, line: 154, type: !5475, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !56)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!51, !51, !54, !149}
!5477 = !DILocalVariable(name: "category", arg: 1, scope: !5474, file: !340, line: 154, type: !51)
!5478 = !DILocation(line: 154, column: 23, scope: !5474)
!5479 = !DILocalVariable(name: "buf", arg: 2, scope: !5474, file: !340, line: 154, type: !54)
!5480 = !DILocation(line: 154, column: 39, scope: !5474)
!5481 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5474, file: !340, line: 154, type: !149)
!5482 = !DILocation(line: 154, column: 51, scope: !5474)
!5483 = !DILocation(line: 159, column: 37, scope: !5474)
!5484 = !DILocation(line: 159, column: 47, scope: !5474)
!5485 = !DILocation(line: 159, column: 52, scope: !5474)
!5486 = !DILocation(line: 159, column: 10, scope: !5474)
!5487 = !DILocation(line: 159, column: 3, scope: !5474)
!5488 = distinct !DISubprogram(name: "setlocale_null", scope: !340, file: !340, line: 186, type: !5489, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !56)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!6, !51}
!5491 = !DILocalVariable(name: "category", arg: 1, scope: !5488, file: !340, line: 186, type: !51)
!5492 = !DILocation(line: 186, column: 21, scope: !5488)
!5493 = !DILocation(line: 189, column: 35, scope: !5488)
!5494 = !DILocation(line: 189, column: 10, scope: !5488)
!5495 = !DILocation(line: 189, column: 3, scope: !5488)
!5496 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !342, file: !342, line: 35, type: !5489, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !341, retainedNodes: !56)
!5497 = !DILocalVariable(name: "category", arg: 1, scope: !5496, file: !342, line: 35, type: !51)
!5498 = !DILocation(line: 35, column: 30, scope: !5496)
!5499 = !DILocalVariable(name: "result", scope: !5496, file: !342, line: 37, type: !6)
!5500 = !DILocation(line: 37, column: 15, scope: !5496)
!5501 = !DILocation(line: 37, column: 35, scope: !5496)
!5502 = !DILocation(line: 37, column: 24, scope: !5496)
!5503 = !DILocation(line: 62, column: 10, scope: !5496)
!5504 = !DILocation(line: 62, column: 3, scope: !5496)
!5505 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !342, file: !342, line: 66, type: !5475, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !341, retainedNodes: !56)
!5506 = !DILocalVariable(name: "category", arg: 1, scope: !5505, file: !342, line: 66, type: !51)
!5507 = !DILocation(line: 66, column: 32, scope: !5505)
!5508 = !DILocalVariable(name: "buf", arg: 2, scope: !5505, file: !342, line: 66, type: !54)
!5509 = !DILocation(line: 66, column: 48, scope: !5505)
!5510 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5505, file: !342, line: 66, type: !149)
!5511 = !DILocation(line: 66, column: 60, scope: !5505)
!5512 = !DILocalVariable(name: "result", scope: !5505, file: !342, line: 111, type: !6)
!5513 = !DILocation(line: 111, column: 15, scope: !5505)
!5514 = !DILocation(line: 111, column: 49, scope: !5505)
!5515 = !DILocation(line: 111, column: 24, scope: !5505)
!5516 = !DILocation(line: 113, column: 7, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5505, file: !342, line: 113, column: 7)
!5518 = !DILocation(line: 113, column: 14, scope: !5517)
!5519 = !DILocation(line: 113, column: 7, scope: !5505)
!5520 = !DILocation(line: 116, column: 11, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !342, line: 116, column: 11)
!5522 = distinct !DILexicalBlock(scope: !5517, file: !342, line: 114, column: 5)
!5523 = !DILocation(line: 116, column: 19, scope: !5521)
!5524 = !DILocation(line: 116, column: 11, scope: !5522)
!5525 = !DILocation(line: 120, column: 9, scope: !5521)
!5526 = !DILocation(line: 120, column: 16, scope: !5521)
!5527 = !DILocation(line: 121, column: 7, scope: !5522)
!5528 = !DILocalVariable(name: "length", scope: !5529, file: !342, line: 125, type: !149)
!5529 = distinct !DILexicalBlock(scope: !5517, file: !342, line: 124, column: 5)
!5530 = !DILocation(line: 125, column: 14, scope: !5529)
!5531 = !DILocation(line: 125, column: 31, scope: !5529)
!5532 = !DILocation(line: 125, column: 23, scope: !5529)
!5533 = !DILocation(line: 126, column: 11, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !342, line: 126, column: 11)
!5535 = !DILocation(line: 126, column: 20, scope: !5534)
!5536 = !DILocation(line: 126, column: 18, scope: !5534)
!5537 = !DILocation(line: 126, column: 11, scope: !5529)
!5538 = !DILocation(line: 128, column: 19, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5534, file: !342, line: 127, column: 9)
!5540 = !DILocation(line: 128, column: 24, scope: !5539)
!5541 = !DILocation(line: 128, column: 32, scope: !5539)
!5542 = !DILocation(line: 128, column: 39, scope: !5539)
!5543 = !DILocation(line: 128, column: 11, scope: !5539)
!5544 = !DILocation(line: 129, column: 11, scope: !5539)
!5545 = !DILocation(line: 133, column: 15, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5547, file: !342, line: 133, column: 15)
!5547 = distinct !DILexicalBlock(scope: !5534, file: !342, line: 132, column: 9)
!5548 = !DILocation(line: 133, column: 23, scope: !5546)
!5549 = !DILocation(line: 133, column: 15, scope: !5547)
!5550 = !DILocation(line: 138, column: 23, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5546, file: !342, line: 134, column: 13)
!5552 = !DILocation(line: 138, column: 28, scope: !5551)
!5553 = !DILocation(line: 138, column: 36, scope: !5551)
!5554 = !DILocation(line: 138, column: 44, scope: !5551)
!5555 = !DILocation(line: 138, column: 15, scope: !5551)
!5556 = !DILocation(line: 139, column: 15, scope: !5551)
!5557 = !DILocation(line: 139, column: 19, scope: !5551)
!5558 = !DILocation(line: 139, column: 27, scope: !5551)
!5559 = !DILocation(line: 139, column: 32, scope: !5551)
!5560 = !DILocation(line: 140, column: 13, scope: !5551)
!5561 = !DILocation(line: 141, column: 11, scope: !5547)
!5562 = !DILocation(line: 145, column: 1, scope: !5505)
