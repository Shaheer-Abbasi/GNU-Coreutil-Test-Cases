; ModuleID = 'src/stdbuf.stripped.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon = type { i64, i32, i8* }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.char_directives = type { i64, %struct.char_directive*, i64, i64, [7 x %struct.char_directive] }
%struct.char_directive = type { i8*, i8*, i32, i8*, i8*, i64, i8*, i8*, i64, i8, i64 }
%struct.arguments = type { i64, %struct.argument*, [7 x %struct.argument] }
%struct.argument = type { i32, %union.anon.37 }
%union.anon.37 = type { fp128 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"  -i, --input=MODE   adjust standard input stream buffering\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"  -o, --output=MODE  adjust standard output stream buffering\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"  -e, --error=MODE   adjust standard error stream buffering\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"\0AIf MODE is 'L' the corresponding stream will be line buffered.\0AThis option is invalid with standard input.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\0AIf MODE is '0' the corresponding stream will be unbuffered.\0A\00", align 1
@.str.11 = private unnamed_addr constant [311 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G,T,P,E,Z,Y,R,Q.\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.12 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"+i:o:e:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@stdbuf = internal unnamed_addr global [3 x %struct.anon] zeroinitializer, align 8
@optarg = external local_unnamed_addr global i8*, align 8
@.str.19 = private unnamed_addr constant [45 x i8] c"line buffering standard input is meaningless\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal unnamed_addr global i8* null, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.52 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.57 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.61 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.62 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"EGkKMPQRTYZ0\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"%s%c=L\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"_STDBUF_\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"%s%c=%zu\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"failed to update the environment with %s\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"/usr/local/libexec/coreutils\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"libstdbuf.so\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"failed to find %s\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"%s=%s:%s\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), align 8
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.92 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.94 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.88 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.89 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.107 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.108 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.113 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.114 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.115 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.116 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.117 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.118 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.119 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.120 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.114, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.119, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.120, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.123 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.121 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.124 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.130 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.132 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.133 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.134 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.135 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.136 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.137 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.138 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.139 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.140 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.141 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.142 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.143 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.144 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.145 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.150 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.151 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.152 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.153 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.154 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.155 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.170 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.168 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.169 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@stdlib_allocator = dso_local local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8
@.str.206 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@printf_fetchargs.wide_null_string = internal constant [7 x i32] [i32 40, i32 78, i32 85, i32 76, i32 76, i32 41, i32 0], align 4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35
  br label %72

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35
  tail call fastcc void @oputs_(i8* noundef %19)
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35
  tail call fastcc void @oputs_(i8* noundef %20)
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35
  tail call fastcc void @oputs_(i8* noundef %21)
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35
  tail call fastcc void @oputs_(i8* noundef %22)
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35
  tail call fastcc void @oputs_(i8* noundef %23)
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %26 = tail call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25)
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %29 = tail call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28)
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([311 x i8], [311 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %32 = tail call i32 @fputs_unlocked(i8* noundef %30, %struct._IO_FILE* noundef %31)
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([267 x i8], [267 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %35 = tail call i32 @fputs_unlocked(i8* noundef %33, %struct._IO_FILE* noundef %34)
  %36 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #35
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #35
  %38 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %38) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %38, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35
  %39 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %40

40:                                               ; preds = %45, %9
  %41 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %42 = phi %struct.infomap* [ %46, %45 ], [ %39, %9 ]
  %43 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %41) #36
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 1
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !16
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %40, !llvm.loop !18

50:                                               ; preds = %45, %40
  %51 = phi %struct.infomap* [ %42, %40 ], [ %46, %45 ]
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %51, i64 0, i32 1
  %53 = load i8*, i8** %52, align 8, !tbaa !20
  %54 = icmp eq i8* %53, null
  %55 = select i1 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %53
  tail call void @emit_bug_reporting_address() #35
  %56 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35
  %57 = icmp eq i8* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = tail call i32 @strncmp(i8* noundef nonnull %56, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 noundef 3) #36
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #35
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %64 = tail call i32 @fputs_unlocked(i8* noundef %62, %struct._IO_FILE* noundef %63) #35
  br label %65

65:                                               ; preds = %50, %58, %61
  %66 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0), i32 noundef 5) #35
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %66, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #35
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #35
  %69 = icmp eq i8* %55, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %68, i8* noundef %55, i8* noundef %70) #35
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %38) #35
  br label %72

72:                                               ; preds = %65, %4
  tail call void @exit(i32 noundef %0) #37
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 {
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !tbaa !21
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #35
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #36
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
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #36
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36
  %26 = icmp eq i8* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8* %24, %25
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38
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
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #36
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
  %69 = tail call i16** @__ctype_b_loc() #38
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
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 noundef 6) #36
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i64 noundef 9) #36
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35
  br label %106

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* noundef %109)
  %111 = ptrtoint i8* %59 to i64
  %112 = sub i64 %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119)
  br label %121

121:                                              ; preds = %106, %19
  ret void
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
declare i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 {
  %3 = alloca i8*, align 8
  %4 = alloca [3 x i8*], align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %9) #35
  %10 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #35
  %11 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #35
  %12 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #35
  store volatile i32 125, i32* @exit_failure, align 4, !tbaa !21
  %13 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35
  %14 = bitcast i64* %8 to i8*
  br label %15

15:                                               ; preds = %50, %2
  %16 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35
  switch i32 %16, label %63 [
    i32 -1, label %64
    i32 -3, label %59
    i32 -2, label %58
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ]

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %15, %18, %17
  %20 = phi i64 [ 0, %17 ], [ 1, %18 ], [ 2, %15 ]
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1
  store i32 %16, i32* %21, align 8, !tbaa !28
  %22 = load i8*, i8** @optarg, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %26, %19
  %24 = phi i8* [ %27, %26 ], [ %22, %19 ]
  %25 = load i8, i8* %24, align 1, !tbaa !23
  switch i8 %25, label %28 [
    i8 32, label %26
    i8 9, label %26
    i8 10, label %26
    i8 11, label %26
    i8 12, label %26
    i8 13, label %26
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23
  %27 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %27, i8** @optarg, align 8, !tbaa !12
  br label %23, !llvm.loop !31

28:                                               ; preds = %23
  %29 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2
  store i8* %24, i8** %29, align 8, !tbaa !32
  %30 = icmp eq i32 %16, 105
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8, i8* %24, align 1, !tbaa !23
  %33 = icmp eq i8 %32, 76
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %35) #35
  call void @usage(i32 noundef 125) #39
  unreachable

36:                                               ; preds = %31, %28
  %37 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %24, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #35
  %40 = call i32 @xstrtoumax(i8* noundef nonnull %24, i8** noundef null, i32 noundef 10, i64* noundef nonnull %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0)) #35
  switch i32 %40, label %43 [
    i32 0, label %46
    i32 1, label %41
  ]

41:                                               ; preds = %39
  %42 = tail call i32* @__errno_location() #38
  br label %51

43:                                               ; preds = %39
  %44 = tail call i32* @__errno_location() #38
  %45 = load i32, i32* %44, align 4, !tbaa !21
  br label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0
  %48 = tail call i32* @__errno_location() #38
  store i32 0, i32* %48, align 4, !tbaa !21
  %49 = load i64, i64* %8, align 8, !tbaa !33
  store i64 %49, i64* %47, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #35
  br label %50

50:                                               ; preds = %46, %36
  br label %15, !llvm.loop !34

51:                                               ; preds = %41, %43
  %52 = phi i32* [ %42, %41 ], [ %44, %43 ]
  %53 = phi i32 [ 75, %41 ], [ %45, %43 ]
  store i32 %53, i32* %52, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #35
  %54 = load i32, i32* %52, align 4, !tbaa !21
  %55 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35
  %56 = load i8*, i8** @optarg, align 8, !tbaa !12
  %57 = call i8* @quote(i8* noundef %56) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %54, i8* noundef %55, i8* noundef %57) #35
  unreachable

58:                                               ; preds = %15
  call void @usage(i32 noundef 0) #39
  unreachable

59:                                               ; preds = %15
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %61 = load i8*, i8** @Version, align 8, !tbaa !12
  %62 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #35
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* noundef %61, i8* noundef %62, i8* noundef null) #35
  call void @exit(i32 noundef 0) #37
  unreachable

63:                                               ; preds = %15
  call void @usage(i32 noundef 125) #39
  unreachable

64:                                               ; preds = %15
  %65 = load i32, i32* @optind, align 4, !tbaa !21
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66
  %68 = icmp slt i32 %65, %0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %70) #35
  call void @usage(i32 noundef 125) #39
  unreachable

71:                                               ; preds = %64
  %72 = bitcast i8** %7 to i8*
  %73 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 8, !tbaa !32
  %74 = icmp eq i8* %73, null
  br i1 %74, label %103, label %75

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #35
  %76 = load i8, i8* %73, align 1, !tbaa !23
  %77 = icmp eq i8 %76, 76
  %78 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !tbaa !28
  %79 = add i32 %78, -97
  %80 = icmp ult i32 %79, 26
  %81 = add nsw i32 %78, -32
  %82 = select i1 %80, i32 %81, i32 %78
  br i1 %77, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %82) #35
  br label %88

85:                                               ; preds = %75
  %86 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 8, !tbaa !35
  %87 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %82, i64 noundef %86) #35
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %84, %83 ], [ %87, %85 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %146, %119, %88
  call void @xalloc_die() #37
  unreachable

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8, !tbaa !12
  %94 = call i32 @putenv(i8* noundef %93) #35
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %149, %122, %92
  %97 = tail call i32* @__errno_location() #38
  %98 = load i32, i32* %97, align 4, !tbaa !21
  %99 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #35
  %100 = load i8*, i8** %7, align 8, !tbaa !12
  %101 = call i8* @quote(i8* noundef %100) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %98, i8* noundef %99, i8* noundef %101) #35
  unreachable

102:                                              ; preds = %92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #35
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !tbaa !32
  %105 = icmp eq i8* %104, null
  br i1 %105, label %126, label %106

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #35
  %107 = load i8, i8* %104, align 1, !tbaa !23
  %108 = icmp eq i8 %107, 76
  %109 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 8, !tbaa !28
  %110 = add i32 %109, -97
  %111 = icmp ult i32 %110, 26
  %112 = add nsw i32 %109, -32
  %113 = select i1 %111, i32 %112, i32 %109
  br i1 %108, label %117, label %114

114:                                              ; preds = %106
  %115 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !tbaa !35
  %116 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %113, i64 noundef %115) #35
  br label %119

117:                                              ; preds = %106
  %118 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %113) #35
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %118, %117 ], [ %116, %114 ]
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %91, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8, !tbaa !12
  %124 = call i32 @putenv(i8* noundef %123) #35
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %96

126:                                              ; preds = %103
  %127 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 8, !tbaa !32
  %128 = icmp eq i8* %127, null
  br i1 %128, label %154, label %132

129:                                              ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #35
  %130 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 8, !tbaa !32
  %131 = icmp eq i8* %130, null
  br i1 %131, label %157, label %132

132:                                              ; preds = %129, %126
  %133 = phi i8* [ %130, %129 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #35
  %134 = load i8, i8* %133, align 1, !tbaa !23
  %135 = icmp eq i8 %134, 76
  %136 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !tbaa !28
  %137 = add i32 %136, -97
  %138 = icmp ult i32 %137, 26
  %139 = add nsw i32 %136, -32
  %140 = select i1 %138, i32 %139, i32 %136
  br i1 %135, label %144, label %141

141:                                              ; preds = %132
  %142 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 8, !tbaa !35
  %143 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %140, i64 noundef %142) #35
  br label %146

144:                                              ; preds = %132
  %145 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %140) #35
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %145, %144 ], [ %143, %141 ]
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %91, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** %7, align 8, !tbaa !12
  %151 = call i32 @putenv(i8* noundef %150) #35
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %96

153:                                              ; preds = %149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #35
  br label %157

154:                                              ; preds = %126
  br i1 %74, label %155, label %157

155:                                              ; preds = %154
  %156 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %156) #35
  call void @usage(i32 noundef 125) #39
  unreachable

157:                                              ; preds = %129, %153, %154
  %158 = load i8*, i8** @program_name, align 8, !tbaa !12
  %159 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %158, i32 noundef 47) #36
  %160 = icmp eq i8* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = call noalias nonnull i8* @dir_name(i8* noundef %158) #35
  store i8* %162, i8** @program_path, align 8, !tbaa !12
  br label %194

163:                                              ; preds = %157
  %164 = call noalias i8* @xreadlink(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0)) #35
  %165 = icmp eq i8* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = call noalias nonnull i8* @dir_name(i8* noundef nonnull %164) #35
  store i8* %167, i8** @program_path, align 8, !tbaa !12
  br label %185

168:                                              ; preds = %163
  %169 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0)) #35
  %170 = icmp eq i8* %169, null
  br i1 %170, label %188, label %171

171:                                              ; preds = %168
  %172 = call noalias nonnull i8* @xstrdup(i8* noundef nonnull %169) #35
  %173 = call i8* @strtok(i8* noundef nonnull %172, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0)) #35
  %174 = icmp eq i8* %173, null
  br i1 %174, label %188, label %175

175:                                              ; preds = %171, %182
  %176 = phi i8* [ %183, %182 ], [ %173, %171 ]
  %177 = call noalias nonnull i8* @file_name_concat(i8* noundef nonnull %176, i8* noundef %158, i8** noundef null) #35
  %178 = call i32 @access(i8* noundef nonnull %177, i32 noundef 1) #35
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call noalias nonnull i8* @dir_name(i8* noundef nonnull %177) #35
  store i8* %181, i8** @program_path, align 8, !tbaa !12
  call void @free(i8* noundef nonnull %177) #35
  br label %185

182:                                              ; preds = %175
  call void @free(i8* noundef nonnull %177) #35
  %183 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0)) #35
  %184 = icmp eq i8* %183, null
  br i1 %184, label %188, label %175, !llvm.loop !36

185:                                              ; preds = %166, %180
  %186 = phi i8* [ %181, %180 ], [ %167, %166 ]
  %187 = phi i8* [ %172, %180 ], [ %164, %166 ]
  call void @free(i8* noundef %187) #35
  br label %194

188:                                              ; preds = %182, %168, %171
  %189 = phi i8* [ %172, %171 ], [ null, %168 ], [ %172, %182 ]
  %190 = load i8*, i8** @program_path, align 8, !tbaa !12
  call void @free(i8* noundef %189) #35
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call noalias nonnull i8* @xstrdup(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)) #35
  store i8* %193, i8** @program_path, align 8, !tbaa !12
  br label %194

194:                                              ; preds = %185, %161, %192, %188
  %195 = phi i8* [ %186, %185 ], [ %162, %161 ], [ %193, %192 ], [ %190, %188 ]
  %196 = call i8* @getenv(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)) #35
  %197 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %197) #35
  %198 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %198) #35
  %199 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %195, i8** %199, align 8, !tbaa !12
  %200 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i64 0, i64 0), i8** %200, align 8, !tbaa !12
  %201 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  store i8* null, i8** %201, align 8, !tbaa !12
  %202 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %202) #35
  %203 = bitcast %struct.stat* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %203) #35
  %204 = load i8, i8* %195, align 1, !tbaa !23
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %226, %194
  %207 = call noalias nonnull i8* @xstrdup(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0)) #35
  store i8* %207, i8** %5, align 8, !tbaa !12
  br label %229

208:                                              ; preds = %194, %226
  %209 = phi i8* [ %221, %226 ], [ %195, %194 ]
  %210 = phi i8** [ %220, %226 ], [ %199, %194 ]
  %211 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %209, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0)) #35
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  call void @xalloc_die() #37
  unreachable

214:                                              ; preds = %208
  %215 = load i8*, i8** %5, align 8, !tbaa !12
  %216 = call i32 @stat(i8* noundef %215, %struct.stat* noundef nonnull %6) #35
  %217 = icmp eq i32 %216, 0
  %218 = load i8*, i8** %5, align 8, !tbaa !12
  br i1 %217, label %229, label %219

219:                                              ; preds = %214
  call void @free(i8* noundef %218) #35
  %220 = getelementptr inbounds i8*, i8** %210, i64 1
  %221 = load i8*, i8** %220, align 8, !tbaa !12
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0), i32 noundef 5) #35
  %225 = call i8* @quote(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0)) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %224, i8* noundef %225) #35
  unreachable

226:                                              ; preds = %219
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %203) #35
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %203) #35
  %227 = load i8, i8* %221, align 1, !tbaa !23
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %206, label %208

229:                                              ; preds = %214, %206
  %230 = phi i8* [ %207, %206 ], [ %218, %214 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %203) #35
  %231 = icmp eq i8* %196, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0), i8* noundef nonnull %196, i8* noundef %230) #35
  br label %236

234:                                              ; preds = %229
  %235 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef nonnull %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0), i8* noundef %230) #35
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call void @xalloc_die() #37
  unreachable

240:                                              ; preds = %236
  %241 = load i8*, i8** %5, align 8, !tbaa !12
  call void @free(i8* noundef %241) #35
  %242 = load i8*, i8** %3, align 8, !tbaa !12
  %243 = call i32 @putenv(i8* noundef %242) #35
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %240
  %246 = tail call i32* @__errno_location() #38
  %247 = load i32, i32* %246, align 4, !tbaa !21
  %248 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #35
  %249 = load i8*, i8** %3, align 8, !tbaa !12
  %250 = call i8* @quote(i8* noundef %249) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %247, i8* noundef %248, i8* noundef %250) #35
  unreachable

251:                                              ; preds = %240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %202) #35
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %198) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %197) #35
  %252 = load i8*, i8** @program_path, align 8, !tbaa !12
  call void @free(i8* noundef %252) #35
  %253 = load i8*, i8** %67, align 8, !tbaa !12
  %254 = call i32 @execvp(i8* noundef %253, i8** noundef nonnull %67) #35
  %255 = tail call i32* @__errno_location() #38
  %256 = load i32, i32* %255, align 4, !tbaa !21
  %257 = icmp eq i32 %256, 2
  %258 = select i1 %257, i32 127, i32 126
  %259 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35
  %260 = load i8*, i8** %67, align 8, !tbaa !12
  %261 = call i8* @quote(i8* noundef %260) #35
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %256, i8* noundef %259, i8* noundef %261) #35
  ret i32 %258
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @putenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i8* @strtok(i8* noundef, i8* nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @access(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) #14

; Function Attrs: nofree nounwind
declare noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !37, !range !39
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.36, i64 0, i64 0), i32 noundef 5) #35
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #38
  %16 = load i32, i32* %15, align 4, !tbaa !21
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.37, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.38, i64 0, i64 0), i8* noundef %12) #35
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %21) #37
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #37
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @dir_name(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @mdir_name(i8* noundef %0) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @dir_len(i8* noundef %0) local_unnamed_addr #17 {
  %2 = load i8, i8* %0, align 1, !tbaa !23
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* noundef nonnull %0) #36
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = call i64 @llvm.umin.i64(i64 %8, i64 %4)
  br label %10

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ]
  %12 = icmp ugt i64 %11, %4
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = add i64 %11, -1
  %15 = getelementptr inbounds i8, i8* %0, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %10, label %18, !llvm.loop !40

18:                                               ; preds = %13, %10
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ]
  ret i64 %19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mdir_name(i8* noundef %0) local_unnamed_addr #18 {
  %2 = load i8, i8* %0, align 1, !tbaa !23
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* noundef nonnull %0) #36
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4) #35
  br label %10

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ]
  %12 = icmp ugt i64 %11, %4
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = add i64 %11, -1
  %15 = getelementptr inbounds i8, i8* %0, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %10, label %18, !llvm.loop !41

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ]
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = add i64 %19, 1
  %23 = add i64 %22, %21
  %24 = tail call noalias i8* @malloc(i64 noundef %23) #35
  %25 = icmp eq i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %24, i8* noundef nonnull align 1 %0, i64 noundef %19, i1 noundef false) #35
  br i1 %20, label %27, label %28

27:                                               ; preds = %26
  store i8 46, i8* %24, align 1, !tbaa !23
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi i64 [ 1, %27 ], [ %19, %26 ]
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  store i8 0, i8* %30, align 1, !tbaa !23
  br label %31

31:                                               ; preds = %18, %28
  ret i8* %24
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #20 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #35
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #36
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef %11) #35
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !42
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !noalias !43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !noalias !43
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !21
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.88, i64 0, i64 0), i32 noundef 5) #35
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.89, i64 0, i64 0), i8* noundef %21) #35
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !49
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !50

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !47
  store i8 10, i8* %27, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !42
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #20 {
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
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36
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
  tail call void %25() #35
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #36
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.92, i64 0, i64 0), i8* noundef %30) #35
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.94, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !42
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !42
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) local_unnamed_addr #12 {
  %4 = tail call noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #18 {
  %4 = tail call i8* @last_component(i8* noundef %0) #36
  %5 = tail call i64 @base_len(i8* noundef %4) #36
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = add i64 %8, %5
  %10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #36
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = add i64 %9, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !23
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 47
  %20 = xor i1 %19, true
  %21 = select i1 %19, i8 0, i8 47
  br label %26

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !tbaa !23
  %24 = icmp eq i8 %23, 47
  %25 = select i1 %24, i8 46, i8 0
  br label %26

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ]
  %29 = zext i1 %27 to i64
  %30 = add i64 %10, 1
  %31 = add i64 %30, %9
  %32 = add i64 %31, %29
  %33 = tail call noalias i8* @malloc(i64 noundef %32) #35
  %34 = icmp eq i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %33, i8* noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #35
  %36 = getelementptr inbounds i8, i8* %33, i64 %9
  store i8 %28, i8* %36, align 1, !tbaa !23
  %37 = getelementptr inbounds i8, i8* %36, i64 %29
  %38 = icmp eq i8** %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !tbaa !12
  br label %40

40:                                               ; preds = %39, %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %37, i8* noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #35
  %41 = getelementptr inbounds i8, i8* %37, i64 %10
  store i8 0, i8* %41, align 1, !tbaa !23
  br label %42

42:                                               ; preds = %26, %40
  ret i8* %33
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #22 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #23 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36
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
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i64 0, i64 0), i64 7) #35
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.108, i64 0, i64 0), i64 noundef 3) #36
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
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #38
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #22 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !51
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 {
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
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !53
  store i32 %1, i32* %5, align 4, !tbaa !53
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !51
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #37
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !55
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #38
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !53
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !55
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
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35
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
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.121, i64 0, i64 0), i32 noundef 5) #35
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.121, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), i32 noundef 5) #35
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35
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
  br i1 %96, label %97, label %85, !llvm.loop !56

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36
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
  call void @abort() #37
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %102 ]
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
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35
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
  %300 = tail call i16** @__ctype_b_loc() #38
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35
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
  br i1 %328, label %348, label %319, !llvm.loop !57

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
  br i1 %339, label %340, label %332, !llvm.loop !58

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !21
  %342 = call i32 @iswprint(i32 noundef %341) #35
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35
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
  br label %132, !llvm.loop !59

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
  br i1 %630, label %631, label %619, !llvm.loop !60

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

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2
  %6 = tail call i32* @__errno_location() #38
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !53
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !55
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42
  %21 = load i32, i32* %11, align 8, !tbaa !51
  %22 = load i8*, i8** %14, align 8, !tbaa !54
  %23 = load i8*, i8** %16, align 8, !tbaa !55
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #38
  %8 = load i32, i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !53
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !55
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42
  %24 = load i32, i32* %14, align 8, !tbaa !51
  %25 = load i8*, i8** %17, align 8, !tbaa !54
  %26 = load i8*, i8** %19, align 8, !tbaa !55
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !21
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !33
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
  %8 = load i8*, i8** %7, align 8, !tbaa !61
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !61
  tail call void @free(i8* noundef %13) #35
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !63

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !64
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !61
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #35
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 {
  %5 = alloca i64, align 8
  %6 = tail call i32* @__errno_location() #38
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #37
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !33
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !65
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !33
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35
  %34 = load i64, i64* %5, align 8, !tbaa !33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !53
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !51
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !55
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !64
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42
  store i8* %60, i8** %41, align 8, !tbaa !61
  %61 = load i32, i32* %46, align 8, !tbaa !51
  %62 = load i8*, i8** %49, align 8, !tbaa !54
  %63 = load i8*, i8** %51, align 8, !tbaa !55
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ]
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !alias.scope !66
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #37, !noalias !66
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !51, !alias.scope !66
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !alias.scope !69
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #37, !noalias !69
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !51, !alias.scope !69
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72) #35
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !alias.scope !72
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #37, !noalias !72
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !51, !alias.scope !72
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75) #35
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !alias.scope !75
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #37, !noalias !75
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !51, !alias.scope !75
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !78
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
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !tbaa.struct !78
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
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !tbaa.struct !78
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !21
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !tbaa.struct !78
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !21
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #37, !noalias !79
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !78
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !21
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !21
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !tbaa.struct !78
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !51
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #37
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !55
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !78
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !51
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #37
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !55
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !tbaa.struct !78
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !51
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #37
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !55
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !tbaa.struct !78
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !51
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #37
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !55
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.130, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.132, i64 0, i64 0), i32 noundef 5) #35
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.134, i64 0, i64 0), i32 noundef 5) #35
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.135, i64 0, i64 0)) #35
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.136, i64 0, i64 0), i32 noundef 5) #35
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.137, i64 0, i64 0), i32 noundef 5) #35
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.138, i64 0, i64 0), i32 noundef 5) #35
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.139, i64 0, i64 0), i32 noundef 5) #35
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.140, i64 0, i64 0), i32 noundef 5) #35
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.141, i64 0, i64 0), i32 noundef 5) #35
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
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.142, i64 0, i64 0), i32 noundef 5) #35
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
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.143, i64 0, i64 0), i32 noundef 5) #35
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
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.144, i64 0, i64 0), i32 noundef 5) #35
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
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.145, i64 0, i64 0), i32 noundef 5) #35
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
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35
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
  br i1 %10, label %12, label %6, !llvm.loop !82

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35
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
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !42
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.150, i64 0, i64 0), i32 noundef 5) #35
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0)) #35
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.151, i64 0, i64 0), i32 noundef 5) #35
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.153, i64 0, i64 0)) #35
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.154, i64 0, i64 0), i32 noundef 5) #35
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.155, i64 0, i64 0)) #35
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #30 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #30 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #30 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 {
  %3 = load i64, i64* %1, align 8, !tbaa !33
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #37
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #37
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !33
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8, !tbaa !33
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
  tail call void @xalloc_die() #37
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #37
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !33
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = load i64, i64* %1, align 8, !tbaa !33
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
  store i64 0, i64* %1, align 8, !tbaa !33
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
  tail call void @xalloc_die() #37
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #37
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !33
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #30 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #30 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #37
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.169, i64 0, i64 0), i32 noundef 5) #35
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i64 0, i64 0), i8* noundef %2) #35
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #37
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @xreadlink(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @areadlink(i8* noundef %0) #35
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #38
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @xalloc_die() #37
  unreachable

9:                                                ; preds = %4, %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #35
  %8 = icmp eq i8** %1, null
  %9 = tail call i16** @__ctype_b_loc() #38
  %10 = load i16*, i16** %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ]
  %13 = load i8, i8* %12, align 1, !tbaa !23
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14
  %16 = load i16, i16* %15, align 2, !tbaa !24
  %17 = and i16 %16, 8192
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds i8, i8* %12, i64 1
  br i1 %18, label %20, label %11, !llvm.loop !83

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1
  %22 = icmp eq i8 %13, 45
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !tbaa !12
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #38
  store i32 0, i32* %25, align 4, !tbaa !21
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #35
  %27 = load i8*, i8** %21, align 8, !tbaa !12
  %28 = icmp eq i8* %27, %0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null
  br i1 %30, label %387, label %31

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !tbaa !23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %387, label %34

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #36
  %37 = icmp eq i8* %36, null
  br i1 %37, label %387, label %45

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !tbaa !21
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ]

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ]
  %43 = icmp eq i8* %4, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64 %26, i64* %3, align 8, !tbaa !33
  br label %387

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !tbaa !23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %384, label %50

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #36
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  store i64 %47, i64* %3, align 8, !tbaa !33
  %55 = or i32 %46, 2
  br label %387

56:                                               ; preds = %50
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
  ]

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #36
  %59 = icmp eq i8* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1
  %62 = load i8, i8* %61, align 1, !tbaa !23
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2
  %65 = load i8, i8* %64, align 1, !tbaa !23
  %66 = icmp eq i8 %65, 66
  %67 = select i1 %66, i64 3, i64 1
  br label %69

68:                                               ; preds = %60, %60
  br label %69

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
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
  ]

72:                                               ; preds = %69
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %74 = extractvalue { i64, i1 } %73, 1
  %75 = mul i64 %47, %70
  %76 = select i1 %74, i64 -1, i64 %75
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #35
  %78 = extractvalue { i64, i1 } %77, 1
  %79 = mul i64 %76, %70
  %80 = select i1 %78, i64 -1, i64 %79
  %81 = or i1 %74, %78
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #35
  %83 = extractvalue { i64, i1 } %82, 1
  %84 = mul i64 %80, %70
  %85 = select i1 %83, i64 -1, i64 %84
  %86 = or i1 %81, %83
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #35
  %88 = extractvalue { i64, i1 } %87, 1
  %89 = mul i64 %85, %70
  %90 = select i1 %88, i64 -1, i64 %89
  %91 = or i1 %86, %88
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #35
  %93 = extractvalue { i64, i1 } %92, 1
  %94 = mul i64 %90, %70
  %95 = select i1 %93, i64 -1, i64 %94
  %96 = or i1 %91, %93
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #35
  %98 = extractvalue { i64, i1 } %97, 1
  %99 = mul i64 %95, %70
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %96, %98
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #35
  %103 = extractvalue { i64, i1 } %102, 1
  %104 = mul i64 %100, %70
  %105 = select i1 %103, i64 -1, i64 %104
  %106 = or i1 %101, %103
  %107 = zext i1 %106 to i32
  br label %373

108:                                              ; preds = %69
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %110 = extractvalue { i64, i1 } %109, 1
  %111 = mul i64 %47, %70
  %112 = select i1 %110, i64 -1, i64 %111
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #35
  %114 = extractvalue { i64, i1 } %113, 1
  %115 = mul i64 %112, %70
  %116 = select i1 %114, i64 -1, i64 %115
  %117 = or i1 %110, %114
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #35
  %119 = extractvalue { i64, i1 } %118, 1
  %120 = mul i64 %116, %70
  %121 = select i1 %119, i64 -1, i64 %120
  %122 = or i1 %117, %119
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #35
  %124 = extractvalue { i64, i1 } %123, 1
  %125 = mul i64 %121, %70
  %126 = select i1 %124, i64 -1, i64 %125
  %127 = or i1 %122, %124
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #35
  %129 = extractvalue { i64, i1 } %128, 1
  %130 = mul i64 %126, %70
  %131 = select i1 %129, i64 -1, i64 %130
  %132 = or i1 %127, %129
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #35
  %134 = extractvalue { i64, i1 } %133, 1
  %135 = mul i64 %131, %70
  %136 = select i1 %134, i64 -1, i64 %135
  %137 = or i1 %132, %134
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #35
  %139 = extractvalue { i64, i1 } %138, 1
  %140 = mul i64 %136, %70
  %141 = select i1 %139, i64 -1, i64 %140
  %142 = or i1 %137, %139
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #35
  %144 = extractvalue { i64, i1 } %143, 1
  %145 = mul i64 %141, %70
  %146 = select i1 %144, i64 -1, i64 %145
  %147 = or i1 %142, %144
  %148 = zext i1 %147 to i32
  br label %373

149:                                              ; preds = %69
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %151 = extractvalue { i64, i1 } %150, 1
  %152 = mul i64 %47, %70
  %153 = select i1 %151, i64 -1, i64 %152
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #35
  %155 = extractvalue { i64, i1 } %154, 1
  %156 = mul i64 %153, %70
  %157 = select i1 %155, i64 -1, i64 %156
  %158 = or i1 %151, %155
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #35
  %160 = extractvalue { i64, i1 } %159, 1
  %161 = mul i64 %157, %70
  %162 = select i1 %160, i64 -1, i64 %161
  %163 = or i1 %158, %160
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #35
  %165 = extractvalue { i64, i1 } %164, 1
  %166 = mul i64 %162, %70
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = or i1 %163, %165
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #35
  %170 = extractvalue { i64, i1 } %169, 1
  %171 = mul i64 %167, %70
  %172 = select i1 %170, i64 -1, i64 %171
  %173 = or i1 %168, %170
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #35
  %175 = extractvalue { i64, i1 } %174, 1
  %176 = mul i64 %172, %70
  %177 = select i1 %175, i64 -1, i64 %176
  %178 = or i1 %173, %175
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #35
  %180 = extractvalue { i64, i1 } %179, 1
  %181 = mul i64 %177, %70
  %182 = select i1 %180, i64 -1, i64 %181
  %183 = or i1 %178, %180
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #35
  %185 = extractvalue { i64, i1 } %184, 1
  %186 = mul i64 %182, %70
  %187 = select i1 %185, i64 -1, i64 %186
  %188 = or i1 %183, %185
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #35
  %190 = extractvalue { i64, i1 } %189, 1
  %191 = mul i64 %187, %70
  %192 = select i1 %190, i64 -1, i64 %191
  %193 = or i1 %188, %190
  %194 = zext i1 %193 to i32
  br label %373

195:                                              ; preds = %69
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %197 = extractvalue { i64, i1 } %196, 1
  %198 = mul i64 %47, %70
  %199 = select i1 %197, i64 -1, i64 %198
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #35
  %201 = extractvalue { i64, i1 } %200, 1
  %202 = mul i64 %199, %70
  %203 = select i1 %201, i64 -1, i64 %202
  %204 = or i1 %197, %201
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #35
  %206 = extractvalue { i64, i1 } %205, 1
  %207 = mul i64 %203, %70
  %208 = select i1 %206, i64 -1, i64 %207
  %209 = or i1 %204, %206
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #35
  %211 = extractvalue { i64, i1 } %210, 1
  %212 = mul i64 %208, %70
  %213 = select i1 %211, i64 -1, i64 %212
  %214 = or i1 %209, %211
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #35
  %216 = extractvalue { i64, i1 } %215, 1
  %217 = mul i64 %213, %70
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %214, %216
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #35
  %221 = extractvalue { i64, i1 } %220, 1
  %222 = mul i64 %218, %70
  %223 = select i1 %221, i64 -1, i64 %222
  %224 = or i1 %219, %221
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #35
  %226 = extractvalue { i64, i1 } %225, 1
  %227 = mul i64 %223, %70
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %224, %226
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #35
  %231 = extractvalue { i64, i1 } %230, 1
  %232 = mul i64 %228, %70
  %233 = select i1 %231, i64 -1, i64 %232
  %234 = or i1 %229, %231
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #35
  %236 = extractvalue { i64, i1 } %235, 1
  %237 = mul i64 %233, %70
  %238 = select i1 %236, i64 -1, i64 %237
  %239 = or i1 %234, %236
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #35
  %241 = extractvalue { i64, i1 } %240, 1
  %242 = mul i64 %238, %70
  %243 = select i1 %241, i64 -1, i64 %242
  %244 = or i1 %239, %241
  %245 = zext i1 %244 to i32
  br label %373

246:                                              ; preds = %69
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %248 = extractvalue { i64, i1 } %247, 1
  %249 = mul i64 %47, %70
  %250 = select i1 %248, i64 -1, i64 %249
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #35
  %252 = extractvalue { i64, i1 } %251, 1
  %253 = mul i64 %250, %70
  %254 = select i1 %252, i64 -1, i64 %253
  %255 = or i1 %248, %252
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #35
  %257 = extractvalue { i64, i1 } %256, 1
  %258 = mul i64 %254, %70
  %259 = select i1 %257, i64 -1, i64 %258
  %260 = or i1 %255, %257
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #35
  %262 = extractvalue { i64, i1 } %261, 1
  %263 = mul i64 %259, %70
  %264 = select i1 %262, i64 -1, i64 %263
  %265 = or i1 %260, %262
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #35
  %267 = extractvalue { i64, i1 } %266, 1
  %268 = mul i64 %264, %70
  %269 = select i1 %267, i64 -1, i64 %268
  %270 = or i1 %265, %267
  %271 = zext i1 %270 to i32
  br label %373

272:                                              ; preds = %69
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %274 = extractvalue { i64, i1 } %273, 1
  %275 = mul i64 %47, %70
  %276 = select i1 %274, i64 -1, i64 %275
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #35
  %278 = extractvalue { i64, i1 } %277, 1
  %279 = mul i64 %276, %70
  %280 = select i1 %278, i64 -1, i64 %279
  %281 = or i1 %274, %278
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #35
  %283 = extractvalue { i64, i1 } %282, 1
  %284 = mul i64 %280, %70
  %285 = select i1 %283, i64 -1, i64 %284
  %286 = or i1 %281, %283
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #35
  %288 = extractvalue { i64, i1 } %287, 1
  %289 = mul i64 %285, %70
  %290 = select i1 %288, i64 -1, i64 %289
  %291 = or i1 %286, %288
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #35
  %293 = extractvalue { i64, i1 } %292, 1
  %294 = mul i64 %290, %70
  %295 = select i1 %293, i64 -1, i64 %294
  %296 = or i1 %291, %293
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #35
  %298 = extractvalue { i64, i1 } %297, 1
  %299 = mul i64 %295, %70
  %300 = select i1 %298, i64 -1, i64 %299
  %301 = or i1 %296, %298
  %302 = zext i1 %301 to i32
  br label %373

303:                                              ; preds = %69
  %304 = icmp ugt i64 %47, 36028797018963967
  %305 = shl i64 %47, 9
  %306 = select i1 %304, i64 -1, i64 %305
  %307 = zext i1 %304 to i32
  br label %373

308:                                              ; preds = %69
  %309 = icmp ugt i64 %47, 18014398509481983
  %310 = shl i64 %47, 10
  %311 = select i1 %309, i64 -1, i64 %310
  %312 = zext i1 %309 to i32
  br label %373

313:                                              ; preds = %69, %69
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %315 = extractvalue { i64, i1 } %314, 1
  %316 = mul i64 %47, %70
  %317 = select i1 %315, i64 -1, i64 %316
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #35
  %319 = extractvalue { i64, i1 } %318, 1
  %320 = mul i64 %317, %70
  %321 = select i1 %319, i64 -1, i64 %320
  %322 = or i1 %315, %319
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #35
  %324 = extractvalue { i64, i1 } %323, 1
  %325 = mul i64 %321, %70
  %326 = select i1 %324, i64 -1, i64 %325
  %327 = or i1 %322, %324
  %328 = zext i1 %327 to i32
  br label %373

329:                                              ; preds = %69, %69
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %331 = extractvalue { i64, i1 } %330, 1
  %332 = mul i64 %47, %70
  %333 = select i1 %331, i64 -1, i64 %332
  %334 = zext i1 %331 to i32
  br label %373

335:                                              ; preds = %69, %69
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %337 = extractvalue { i64, i1 } %336, 1
  %338 = mul i64 %47, %70
  %339 = select i1 %337, i64 -1, i64 %338
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #35
  %341 = extractvalue { i64, i1 } %340, 1
  %342 = mul i64 %339, %70
  %343 = select i1 %341, i64 -1, i64 %342
  %344 = or i1 %337, %341
  %345 = zext i1 %344 to i32
  br label %373

346:                                              ; preds = %69, %69
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35
  %348 = extractvalue { i64, i1 } %347, 1
  %349 = mul i64 %47, %70
  %350 = select i1 %348, i64 -1, i64 %349
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #35
  %352 = extractvalue { i64, i1 } %351, 1
  %353 = mul i64 %350, %70
  %354 = select i1 %352, i64 -1, i64 %353
  %355 = or i1 %348, %352
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #35
  %357 = extractvalue { i64, i1 } %356, 1
  %358 = mul i64 %354, %70
  %359 = select i1 %357, i64 -1, i64 %358
  %360 = or i1 %355, %357
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #35
  %362 = extractvalue { i64, i1 } %361, 1
  %363 = mul i64 %359, %70
  %364 = select i1 %362, i64 -1, i64 %363
  %365 = or i1 %360, %362
  %366 = zext i1 %365 to i32
  br label %373

367:                                              ; preds = %69
  %368 = shl i64 %47, 1
  %369 = icmp sgt i64 %47, -1
  %370 = select i1 %369, i64 %368, i64 -1
  %371 = lshr i64 %47, 63
  %372 = trunc i64 %371 to i32
  br label %373

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ]
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ]
  %376 = or i32 %375, %46
  %377 = getelementptr inbounds i8, i8* %27, i64 %71
  store i8* %377, i8** %21, align 8, !tbaa !12
  %378 = load i8, i8* %377, align 1, !tbaa !23
  %379 = icmp eq i8 %378, 0
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380
  br label %384

382:                                              ; preds = %69
  store i64 %47, i64* %3, align 8, !tbaa !33
  %383 = or i32 %46, 2
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ]
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ]
  store i64 %385, i64* %3, align 8, !tbaa !33
  br label %387

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #35
  ret i32 %388
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_asprintf(i8** noundef nonnull %0, i8* noundef nonnull %1, ...) local_unnamed_addr #12 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #35
  call void @llvm.va_start(i8* nonnull %5)
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !42
  %7 = call i32 @rpl_vasprintf(i8** noundef nonnull %0, i8* noundef nonnull %1, %"struct.std::__va_list"* noundef nonnull %4) #35
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35
  call void @llvm.va_end(i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #35
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_vasprintf(i8** nocapture noundef nonnull writeonly %0, i8* noundef nonnull %1, %"struct.std::__va_list"* nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #35
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35
  %8 = bitcast %"struct.std::__va_list"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !42
  %9 = call i8* @vasnprintf(i8* noundef null, i64* noundef nonnull %4, i8* noundef nonnull %1, %"struct.std::__va_list"* noundef nonnull %5) #35
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35
  %10 = icmp eq i8* %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8, !tbaa !33
  %13 = icmp ugt i64 %12, 2147483647
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  call void @free(i8* noundef nonnull %9) #35
  %15 = load i64, i64* %4, align 8, !tbaa !33
  %16 = icmp slt i64 %15, 0
  %17 = select i1 %16, i32 12, i32 75
  %18 = tail call i32* @__errno_location() #38
  store i32 %17, i32* %18, align 4, !tbaa !21
  br label %21

19:                                               ; preds = %11
  store i8* %9, i8** %0, align 8, !tbaa !12
  %20 = trunc i64 %12 to i32
  br label %21

21:                                               ; preds = %3, %19, %14
  %22 = phi i32 [ -1, %14 ], [ %20, %19 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #35
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i8* @areadlink(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @careadlinkat(i32 noundef -100, i8* noundef %0, i8* noundef null, i64 noundef 0, %struct.allocator* noundef null, i64 (i32, i8*, i8*, i64)* noundef nonnull @careadlinkatcwd) #35
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i64 @careadlinkatcwd(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef %2, i64 noundef %3) #12 {
  %5 = icmp eq i32 %0, -100
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @abort() #37
  unreachable

7:                                                ; preds = %4
  %8 = tail call i64 @readlink(i8* noundef %1, i8* noundef %2, i64 noundef %3) #35
  ret i64 %8
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #22 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, i8* %3, align 1, !tbaa !23
  %5 = icmp eq i8 %4, 47
  %6 = getelementptr inbounds i8, i8* %3, i64 1
  br i1 %5, label %2, label %7, !llvm.loop !84

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ]
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ]
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ]
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ]

12:                                               ; preds = %7
  ret i8* %9

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ]
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  %18 = getelementptr inbounds i8, i8* %11, i64 1
  %19 = load i8, i8* %18, align 1, !tbaa !23
  br label %7, !llvm.loop !85
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #17 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ]
  %7 = icmp ugt i64 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = add i64 %6, -1
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !23
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %5, label %13, !llvm.loop !86

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ]
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @careadlinkat(i32 noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, %struct.allocator* noundef readonly %4, i64 (i32, i8*, i8*, i64)* nocapture noundef readonly %5) local_unnamed_addr #12 {
  %7 = alloca [1024 x i8], align 1
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #35
  %9 = icmp eq %struct.allocator* %4, null
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4
  %11 = icmp eq i8* %2, null
  %12 = select i1 %11, i64 1024, i64 %3
  %13 = select i1 %11, i8* %8, i8* %2
  %14 = icmp ult i64 %12, 9223372036854775807
  %15 = select i1 %14, i64 %12, i64 9223372036854775807
  %16 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2
  %17 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0
  br label %18

18:                                               ; preds = %60, %6
  %19 = phi i64 [ %15, %6 ], [ %62, %60 ]
  %20 = phi i8* [ %13, %6 ], [ %64, %60 ]
  %21 = call i64 %5(i32 noundef %0, i8* noundef %1, i8* noundef nonnull %20, i64 noundef %19) #35
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = icmp eq i8* %20, %13
  br i1 %24, label %74, label %25

25:                                               ; preds = %23
  %26 = tail call i32* @__errno_location() #38
  %27 = load i32, i32* %26, align 4, !tbaa !21
  %28 = load void (i8*)*, void (i8*)** %16, align 8, !tbaa !87
  call void %28(i8* noundef nonnull %20) #35
  store i32 %27, i32* %26, align 4, !tbaa !21
  br label %74

29:                                               ; preds = %18
  %30 = icmp slt i64 %21, %19
  br i1 %30, label %31, label %52

31:                                               ; preds = %29
  %32 = add nuw nsw i64 %21, 1
  %33 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 0, i8* %33, align 1, !tbaa !23
  %34 = icmp eq i8* %20, %8
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %17, align 8, !tbaa !89
  %37 = call i8* %36(i64 noundef %32) #35
  %38 = icmp eq i8* %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %37, i8* noundef nonnull align 1 %8, i64 noundef %32, i1 noundef false) #35
  br label %74

40:                                               ; preds = %31
  %41 = icmp sge i64 %32, %19
  %42 = icmp eq i8* %20, %13
  %43 = or i1 %42, %41
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !tbaa !90
  %47 = icmp eq i8* (i8*, i64)* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = call i8* %46(i8* noundef nonnull %20, i64 noundef %32) #35
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48, %44, %40
  br label %74

52:                                               ; preds = %29
  %53 = icmp eq i8* %20, %13
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %16, align 8, !tbaa !87
  call void %55(i8* noundef nonnull %20) #35
  br label %56

56:                                               ; preds = %54, %52
  %57 = icmp sgt i64 %19, 4611686018427387902
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = tail call i32* @__errno_location() #38
  store i32 36, i32* %59, align 4, !tbaa !21
  br label %74

60:                                               ; preds = %56
  %61 = shl nsw i64 %19, 1
  %62 = or i64 %61, 1
  %63 = load i8* (i64)*, i8* (i64)** %17, align 8, !tbaa !89
  %64 = call i8* %63(i64 noundef %62) #35
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %18

66:                                               ; preds = %60, %35
  %67 = phi i64 [ %32, %35 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3
  %69 = load void (i64)*, void (i64)** %68, align 8, !tbaa !91
  %70 = icmp eq void (i64)* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void %69(i64 noundef %67) #35
  br label %72

72:                                               ; preds = %71, %66
  %73 = tail call i32* @__errno_location() #38
  store i32 12, i32* %73, align 4, !tbaa !21
  br label %74

74:                                               ; preds = %23, %25, %39, %48, %51, %58, %72
  %75 = phi i8* [ null, %72 ], [ %37, %39 ], [ null, %58 ], [ %49, %48 ], [ %20, %51 ], [ null, %23 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #35
  ret i8* %75
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !92
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38
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
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38
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
declare noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !92
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35
  br label %15

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !94
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !95
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !96
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !92
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !92
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !97
  br label %30

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %30

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36
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
  tail call void @abort() #37
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35
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
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 {
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
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #38
  store i32 12, i32* %14, align 4, !tbaa !21
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vasnprintf(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca %struct.char_directives, align 8
  %6 = alloca %struct.arguments, align 16
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to %struct.__mbstate_t*
  %10 = alloca [64 x i8], align 1
  %11 = alloca i64, align 8
  %12 = bitcast i64* %11 to %struct.__mbstate_t*
  %13 = alloca [64 x i8], align 1
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca [64 x i8], align 1
  %17 = alloca i64, align 8
  %18 = bitcast i64* %17 to %struct.__mbstate_t*
  %19 = alloca [64 x i8], align 1
  %20 = alloca [2 x i32], align 4
  %21 = alloca i32, align 4
  %22 = bitcast %struct.char_directives* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 648, i8* nonnull %22) #35
  %23 = bitcast %struct.arguments* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %23) #35
  %24 = call i32 @printf_parse(i8* noundef %2, %struct.char_directives* noundef nonnull %5, %struct.arguments* noundef nonnull %6) #35
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %1653, label %26

26:                                               ; preds = %4
  %27 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %27) #35
  %28 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %27, i8* noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !42
  %29 = call i32 @printf_fetchargs(%"struct.std::__va_list"* noundef nonnull %7, %struct.arguments* noundef nonnull %6) #35
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #35
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %1637, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 2
  %33 = load i64, i64* %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 3
  %35 = load i64, i64* %34, align 8, !tbaa !100
  %36 = call i64 @llvm.uadd.sat.i64(i64 %33, i64 7) #35
  %37 = call i64 @llvm.uadd.sat.i64(i64 %36, i64 %35) #35
  %38 = call i64 @llvm.uadd.sat.i64(i64 %37, i64 6) #35
  %39 = icmp ult i64 %38, 4000
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = alloca i8, i64 %38, align 16
  br label %47

42:                                               ; preds = %31
  %43 = icmp eq i64 %38, -1
  br i1 %43, label %1637, label %44

44:                                               ; preds = %42
  %45 = call noalias i8* @malloc(i64 noundef %38) #35
  %46 = icmp eq i8* %45, null
  br i1 %46, label %1637, label %47

47:                                               ; preds = %44, %40
  %48 = phi i8* [ null, %40 ], [ %45, %44 ]
  %49 = phi i8* [ %41, %40 ], [ %45, %44 ]
  %50 = icmp eq i8* %0, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %1, align 8, !tbaa !33
  br label %53

53:                                               ; preds = %47, %51
  %54 = phi i64 [ %52, %51 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 1
  %56 = load %struct.char_directive*, %struct.char_directive** %55, align 8, !tbaa !101
  %57 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 0
  %58 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i64 0, i32 1
  %59 = bitcast i64* %8 to i8*
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %61 = bitcast i64* %11 to i8*
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %63 = bitcast i64* %17 to i8*
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %65 = bitcast i64* %14 to i8*
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %67 = bitcast [2 x i32]* %20 to i8*
  %68 = getelementptr inbounds i8, i8* %49, i64 1
  %69 = getelementptr inbounds i8, i8* %49, i64 2
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %71 = bitcast i32* %21 to i8*
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  br label %73

73:                                               ; preds = %1545, %53
  %74 = phi %struct.char_directive* [ %56, %53 ], [ %1552, %1545 ]
  %75 = phi i64 [ 0, %53 ], [ %1551, %1545 ]
  %76 = phi i8* [ %2, %53 ], [ %1550, %1545 ]
  %77 = phi i64 [ 0, %53 ], [ %1546, %1545 ]
  %78 = phi i64 [ %54, %53 ], [ %1547, %1545 ]
  %79 = phi i8* [ %0, %53 ], [ %1548, %1545 ]
  %80 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 0
  %81 = load i8*, i8** %80, align 8, !tbaa !102
  %82 = icmp eq i8* %76, %81
  br i1 %82, label %115, label %83

83:                                               ; preds = %73
  %84 = ptrtoint i8* %81 to i64
  %85 = ptrtoint i8* %76 to i64
  %86 = sub i64 %84, %85
  %87 = call i64 @llvm.uadd.sat.i64(i64 %77, i64 %86) #35
  %88 = icmp ugt i64 %87, %78
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = icmp eq i64 %78, 0
  %91 = icmp sgt i64 %78, -1
  %92 = shl i64 %78, 1
  %93 = select i1 %91, i64 %92, i64 -1
  %94 = select i1 %90, i64 12, i64 %93
  %95 = icmp ugt i64 %87, %94
  %96 = select i1 %95, i64 %87, i64 %94
  %97 = icmp eq i64 %96, -1
  br i1 %97, label %1612, label %98

98:                                               ; preds = %89
  %99 = icmp eq i8* %79, %0
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = call noalias i8* @malloc(i64 noundef %96) #35
  br label %104

102:                                              ; preds = %98
  %103 = call i8* @realloc(i8* noundef %79, i64 noundef %96) #35
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  %106 = icmp eq i8* %105, null
  br i1 %106, label %1612, label %107

107:                                              ; preds = %104
  %108 = icmp ne i64 %77, 0
  %109 = select i1 %99, i1 %108, i1 false
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %105, i8* noundef nonnull align 1 %0, i64 noundef %77, i1 noundef false) #35
  br label %111

111:                                              ; preds = %107, %110, %83
  %112 = phi i64 [ %78, %83 ], [ %96, %110 ], [ %96, %107 ]
  %113 = phi i8* [ %79, %83 ], [ %105, %110 ], [ %105, %107 ]
  %114 = getelementptr inbounds i8, i8* %113, i64 %77
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %114, i8* noundef nonnull align 1 %76, i64 noundef %86, i1 noundef false) #35
  br label %115

115:                                              ; preds = %111, %73
  %116 = phi i64 [ %87, %111 ], [ %77, %73 ]
  %117 = phi i64 [ %112, %111 ], [ %78, %73 ]
  %118 = phi i8* [ %113, %111 ], [ %79, %73 ]
  %119 = load i64, i64* %57, align 8, !tbaa !104
  %120 = icmp eq i64 %75, %119
  br i1 %120, label %1553, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 9
  %123 = load i8, i8* %122, align 8, !tbaa !105
  %124 = icmp eq i8 %123, 37
  %125 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 10
  %126 = load i64, i64* %125, align 8, !tbaa !106
  %127 = icmp eq i64 %126, -1
  br i1 %124, label %128, label %159

128:                                              ; preds = %121
  br i1 %127, label %130, label %129

129:                                              ; preds = %128
  call void @abort() #37
  unreachable

130:                                              ; preds = %128
  %131 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 1) #35
  %132 = icmp ugt i64 %131, %117
  br i1 %132, label %133, label %155

133:                                              ; preds = %130
  %134 = icmp eq i64 %117, 0
  %135 = icmp sgt i64 %117, -1
  %136 = shl i64 %117, 1
  %137 = select i1 %135, i64 %136, i64 -1
  %138 = select i1 %134, i64 12, i64 %137
  %139 = icmp ugt i64 %131, %138
  %140 = select i1 %139, i64 %131, i64 %138
  %141 = icmp eq i64 %140, -1
  br i1 %141, label %1612, label %142

142:                                              ; preds = %133
  %143 = icmp eq i8* %118, %0
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = call noalias i8* @malloc(i64 noundef %140) #35
  br label %148

146:                                              ; preds = %142
  %147 = call i8* @realloc(i8* noundef %118, i64 noundef %140) #35
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i8* [ %145, %144 ], [ %147, %146 ]
  %150 = icmp eq i8* %149, null
  br i1 %150, label %1612, label %151

151:                                              ; preds = %148
  %152 = icmp ne i64 %116, 0
  %153 = select i1 %143, i1 %152, i1 false
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %149, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %155

155:                                              ; preds = %151, %154, %130
  %156 = phi i64 [ %117, %130 ], [ %140, %154 ], [ %140, %151 ]
  %157 = phi i8* [ %118, %130 ], [ %149, %154 ], [ %149, %151 ]
  %158 = getelementptr inbounds i8, i8* %157, i64 %116
  store i8 37, i8* %158, align 1, !tbaa !23
  br label %1545

159:                                              ; preds = %121
  br i1 %127, label %160, label %161

160:                                              ; preds = %159
  call void @abort() #37
  unreachable

161:                                              ; preds = %159
  switch i8 %123, label %635 [
    i8 110, label %162
    i8 115, label %163
  ]

162:                                              ; preds = %161
  call void @abort() #37
  unreachable

163:                                              ; preds = %161
  %164 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %165 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 0
  %166 = load i32, i32* %165, align 16, !tbaa !109
  %167 = icmp eq i32 %166, 32
  %168 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 2
  %169 = load i32, i32* %168, align 8, !tbaa !111
  %170 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 3
  %171 = load i8*, i8** %170, align 8, !tbaa !112
  %172 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 4
  %173 = load i8*, i8** %172, align 8, !tbaa !113
  %174 = icmp eq i8* %171, %173
  br i1 %167, label %309, label %175

175:                                              ; preds = %163
  br i1 %174, label %210, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 5
  %178 = load i64, i64* %177, align 8, !tbaa !114
  %179 = icmp eq i64 %178, -1
  br i1 %179, label %194, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %178, i32 0
  %182 = load i32, i32* %181, align 16, !tbaa !109
  %183 = icmp eq i32 %182, 5
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  call void @abort() #37
  unreachable

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %178, i32 1
  %187 = bitcast %union.anon.37* %186 to i32*
  %188 = load i32, i32* %187, align 16, !tbaa !23
  %189 = sext i32 %188 to i64
  %190 = icmp slt i32 %188, 0
  %191 = sub nsw i64 0, %189
  %192 = select i1 %190, i64 %191, i64 %189
  %193 = select i1 %190, i32 2, i32 %169
  br label %206

194:                                              ; preds = %176, %194
  %195 = phi i8* [ %200, %194 ], [ %171, %176 ]
  %196 = phi i64 [ %204, %194 ], [ 0, %176 ]
  %197 = icmp ult i64 %196, 1844674407370955162
  %198 = mul i64 %196, 10
  %199 = select i1 %197, i64 %198, i64 -1
  %200 = getelementptr inbounds i8, i8* %195, i64 1
  %201 = load i8, i8* %195, align 1, !tbaa !23
  %202 = zext i8 %201 to i64
  %203 = add nsw i64 %202, -48
  %204 = call i64 @llvm.uadd.sat.i64(i64 %199, i64 %203) #35
  %205 = icmp eq i8* %200, %173
  br i1 %205, label %206, label %194, !llvm.loop !115

206:                                              ; preds = %194, %185
  %207 = phi i64 [ %192, %185 ], [ %204, %194 ]
  %208 = phi i32 [ %193, %185 ], [ %169, %194 ]
  %209 = icmp ugt i64 %207, 2147483647
  br i1 %209, label %1609, label %210

210:                                              ; preds = %206, %175
  %211 = phi i64 [ 0, %175 ], [ %207, %206 ]
  %212 = phi i32 [ %169, %175 ], [ %208, %206 ]
  %213 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 6
  %214 = load i8*, i8** %213, align 8, !tbaa !116
  %215 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 7
  %216 = load i8*, i8** %215, align 8, !tbaa !117
  %217 = icmp eq i8* %214, %216
  br i1 %217, label %254, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 8
  %220 = load i64, i64* %219, align 8, !tbaa !118
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = getelementptr inbounds i8, i8* %214, i64 1
  %224 = icmp eq i8* %223, %216
  br i1 %224, label %248, label %236

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %220, i32 0
  %227 = load i32, i32* %226, align 16, !tbaa !109
  %228 = icmp eq i32 %227, 5
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @abort() #37
  unreachable

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %220, i32 1
  %232 = bitcast %union.anon.37* %231 to i32*
  %233 = load i32, i32* %232, align 16, !tbaa !23
  %234 = icmp sgt i32 %233, -1
  %235 = sext i32 %233 to i64
  br i1 %234, label %248, label %254

236:                                              ; preds = %222, %236
  %237 = phi i8* [ %246, %236 ], [ %223, %222 ]
  %238 = phi i64 [ %245, %236 ], [ 0, %222 ]
  %239 = icmp ult i64 %238, 1844674407370955162
  %240 = mul i64 %238, 10
  %241 = select i1 %239, i64 %240, i64 -1
  %242 = load i8, i8* %237, align 1, !tbaa !23
  %243 = zext i8 %242 to i64
  %244 = add nsw i64 %243, -48
  %245 = call i64 @llvm.uadd.sat.i64(i64 %241, i64 %244) #35
  %246 = getelementptr inbounds i8, i8* %237, i64 1
  %247 = icmp eq i8* %246, %216
  br i1 %247, label %248, label %236, !llvm.loop !119

248:                                              ; preds = %236, %222, %230
  %249 = phi i64 [ %235, %230 ], [ 0, %222 ], [ %245, %236 ]
  %250 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 1
  %251 = bitcast %union.anon.37* %250 to i8**
  %252 = load i8*, i8** %251, align 16, !tbaa !23
  %253 = call i64 @strnlen(i8* noundef %252, i64 noundef %249) #36
  br label %259

254:                                              ; preds = %230, %210
  %255 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 1
  %256 = bitcast %union.anon.37* %255 to i8**
  %257 = load i8*, i8** %256, align 16, !tbaa !23
  %258 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %257) #36
  br label %259

259:                                              ; preds = %254, %248
  %260 = phi i8* [ %252, %248 ], [ %257, %254 ]
  %261 = phi i64 [ %253, %248 ], [ %258, %254 ]
  %262 = select i1 %174, i64 0, i64 %261
  %263 = icmp ugt i64 %211, %262
  %264 = sub i64 %211, %262
  %265 = call i64 @llvm.usub.sat.i64(i64 %211, i64 %262)
  %266 = add i64 %265, %261
  %267 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 %266) #35
  %268 = icmp ugt i64 %267, %117
  br i1 %268, label %269, label %291

269:                                              ; preds = %259
  %270 = icmp eq i64 %117, 0
  %271 = icmp sgt i64 %117, -1
  %272 = shl i64 %117, 1
  %273 = select i1 %271, i64 %272, i64 -1
  %274 = select i1 %270, i64 12, i64 %273
  %275 = icmp ugt i64 %267, %274
  %276 = select i1 %275, i64 %267, i64 %274
  %277 = icmp eq i64 %276, -1
  br i1 %277, label %1612, label %278

278:                                              ; preds = %269
  %279 = icmp eq i8* %118, %0
  br i1 %279, label %280, label %282

280:                                              ; preds = %278
  %281 = call noalias i8* @malloc(i64 noundef %276) #35
  br label %284

282:                                              ; preds = %278
  %283 = call i8* @realloc(i8* noundef %118, i64 noundef %276) #35
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi i8* [ %281, %280 ], [ %283, %282 ]
  %286 = icmp eq i8* %285, null
  br i1 %286, label %1612, label %287

287:                                              ; preds = %284
  %288 = icmp ne i64 %116, 0
  %289 = select i1 %279, i1 %288, i1 false
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %285, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %291

291:                                              ; preds = %287, %290, %259
  %292 = phi i64 [ %117, %259 ], [ %276, %290 ], [ %276, %287 ]
  %293 = phi i8* [ %118, %259 ], [ %285, %290 ], [ %285, %287 ]
  %294 = and i32 %212, 2
  %295 = icmp eq i32 %294, 0
  %296 = select i1 %263, i1 %295, i1 false
  br i1 %296, label %297, label %300

297:                                              ; preds = %291
  %298 = getelementptr inbounds i8, i8* %293, i64 %116
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %298, i8 noundef 32, i64 noundef %264, i1 noundef false) #35
  %299 = add i64 %264, %116
  br label %300

300:                                              ; preds = %297, %291
  %301 = phi i64 [ %299, %297 ], [ %116, %291 ]
  %302 = getelementptr inbounds i8, i8* %293, i64 %301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %302, i8* noundef nonnull align 1 %260, i64 noundef %261, i1 noundef false) #35
  %303 = add i64 %301, %261
  %304 = xor i1 %263, true
  %305 = select i1 %304, i1 true, i1 %295
  br i1 %305, label %1545, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds i8, i8* %293, i64 %303
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %307, i8 noundef 32, i64 noundef %264, i1 noundef false) #35
  %308 = add i64 %303, %264
  br label %1545

309:                                              ; preds = %163
  br i1 %174, label %344, label %310

310:                                              ; preds = %309
  %311 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 5
  %312 = load i64, i64* %311, align 8, !tbaa !114
  %313 = icmp eq i64 %312, -1
  br i1 %313, label %328, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %312, i32 0
  %316 = load i32, i32* %315, align 16, !tbaa !109
  %317 = icmp eq i32 %316, 5
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  call void @abort() #37
  unreachable

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %312, i32 1
  %321 = bitcast %union.anon.37* %320 to i32*
  %322 = load i32, i32* %321, align 16, !tbaa !23
  %323 = sext i32 %322 to i64
  %324 = icmp slt i32 %322, 0
  %325 = sub nsw i64 0, %323
  %326 = select i1 %324, i64 %325, i64 %323
  %327 = select i1 %324, i32 2, i32 %169
  br label %340

328:                                              ; preds = %310, %328
  %329 = phi i8* [ %334, %328 ], [ %171, %310 ]
  %330 = phi i64 [ %338, %328 ], [ 0, %310 ]
  %331 = icmp ult i64 %330, 1844674407370955162
  %332 = mul i64 %330, 10
  %333 = select i1 %331, i64 %332, i64 -1
  %334 = getelementptr inbounds i8, i8* %329, i64 1
  %335 = load i8, i8* %329, align 1, !tbaa !23
  %336 = zext i8 %335 to i64
  %337 = add nsw i64 %336, -48
  %338 = call i64 @llvm.uadd.sat.i64(i64 %333, i64 %337) #35
  %339 = icmp eq i8* %334, %173
  br i1 %339, label %340, label %328, !llvm.loop !120

340:                                              ; preds = %328, %319
  %341 = phi i64 [ %326, %319 ], [ %338, %328 ]
  %342 = phi i32 [ %327, %319 ], [ %169, %328 ]
  %343 = icmp ugt i64 %341, 2147483647
  br i1 %343, label %1609, label %344

344:                                              ; preds = %340, %309
  %345 = phi i64 [ 0, %309 ], [ %341, %340 ]
  %346 = phi i32 [ %169, %309 ], [ %342, %340 ]
  %347 = xor i1 %174, true
  %348 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 6
  %349 = load i8*, i8** %348, align 8, !tbaa !116
  %350 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 7
  %351 = load i8*, i8** %350, align 8, !tbaa !117
  %352 = icmp eq i8* %349, %351
  br i1 %352, label %419, label %353

353:                                              ; preds = %344
  %354 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 8
  %355 = load i64, i64* %354, align 8, !tbaa !118
  %356 = icmp eq i64 %355, -1
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = getelementptr inbounds i8, i8* %349, i64 1
  %359 = icmp eq i8* %358, %351
  br i1 %359, label %360, label %375

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 1
  %362 = bitcast %union.anon.37* %361 to i32**
  %363 = load i32*, i32** %362, align 16, !tbaa !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #35
  br label %414

364:                                              ; preds = %353
  %365 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %355, i32 0
  %366 = load i32, i32* %365, align 16, !tbaa !109
  %367 = icmp eq i32 %366, 5
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  call void @abort() #37
  unreachable

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %355, i32 1
  %371 = bitcast %union.anon.37* %370 to i32*
  %372 = load i32, i32* %371, align 16, !tbaa !23
  %373 = icmp sgt i32 %372, -1
  %374 = sext i32 %372 to i64
  br i1 %373, label %387, label %419

375:                                              ; preds = %357, %375
  %376 = phi i8* [ %385, %375 ], [ %358, %357 ]
  %377 = phi i64 [ %384, %375 ], [ 0, %357 ]
  %378 = icmp ult i64 %377, 1844674407370955162
  %379 = mul i64 %377, 10
  %380 = select i1 %378, i64 %379, i64 -1
  %381 = load i8, i8* %376, align 1, !tbaa !23
  %382 = zext i8 %381 to i64
  %383 = add nsw i64 %382, -48
  %384 = call i64 @llvm.uadd.sat.i64(i64 %380, i64 %383) #35
  %385 = getelementptr inbounds i8, i8* %376, i64 1
  %386 = icmp eq i8* %385, %351
  br i1 %386, label %387, label %375, !llvm.loop !121

387:                                              ; preds = %375, %369
  %388 = phi i64 [ %374, %369 ], [ %384, %375 ]
  %389 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 1
  %390 = bitcast %union.anon.37* %389 to i32**
  %391 = load i32*, i32** %390, align 16, !tbaa !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #35
  store i64 0, i64* %8, align 8
  %392 = icmp eq i64 %388, 0
  br i1 %392, label %414, label %393

393:                                              ; preds = %387, %407
  %394 = phi i64 [ %412, %407 ], [ %388, %387 ]
  %395 = phi i32* [ %408, %407 ], [ %391, %387 ]
  %396 = phi i64 [ %411, %407 ], [ 0, %387 ]
  %397 = load i32, i32* %395, align 4, !tbaa !21
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %414, label %399

399:                                              ; preds = %393
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %60) #35
  %400 = call i64 @wcrtomb(i8* noundef nonnull %60, i32 noundef %397, %struct.__mbstate_t* noundef nonnull %9) #35
  %401 = and i64 %400, 2147483648
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %418

403:                                              ; preds = %399
  %404 = and i64 %400, 4294967295
  %405 = icmp ult i64 %394, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %403
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %60) #35
  br label %414

407:                                              ; preds = %403
  %408 = getelementptr inbounds i32, i32* %395, i64 1
  %409 = shl i64 %400, 32
  %410 = ashr exact i64 %409, 32
  %411 = add i64 %410, %396
  %412 = sub i64 %394, %410
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %60) #35
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %393

414:                                              ; preds = %407, %393, %360, %387, %406
  %415 = phi i32* [ %391, %406 ], [ %391, %387 ], [ %363, %360 ], [ %391, %393 ], [ %391, %407 ]
  %416 = phi i64 [ %396, %406 ], [ 0, %387 ], [ 0, %360 ], [ %411, %407 ], [ %396, %393 ]
  %417 = phi i32* [ %395, %406 ], [ %391, %387 ], [ %363, %360 ], [ %408, %407 ], [ %395, %393 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #35
  br label %442

418:                                              ; preds = %399
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %60) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #35
  br label %1615

419:                                              ; preds = %344, %369
  %420 = getelementptr inbounds %struct.argument, %struct.argument* %164, i64 %126, i32 1
  %421 = bitcast %union.anon.37* %420 to i32**
  %422 = load i32*, i32** %421, align 16, !tbaa !23
  br i1 %174, label %439, label %423

423:                                              ; preds = %419
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #35
  store i64 0, i64* %11, align 8
  br label %424

424:                                              ; preds = %430, %423
  %425 = phi i64 [ 0, %423 ], [ %437, %430 ]
  %426 = phi i32* [ %422, %423 ], [ %434, %430 ]
  %427 = load i32, i32* %426, align 4, !tbaa !21
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35
  br label %442

430:                                              ; preds = %424
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %62) #35
  %431 = call i64 @wcrtomb(i8* noundef nonnull %62, i32 noundef %427, %struct.__mbstate_t* noundef nonnull %12) #35
  %432 = and i64 %431, 2147483648
  %433 = icmp eq i64 %432, 0
  %434 = getelementptr inbounds i32, i32* %426, i64 1
  %435 = shl i64 %431, 32
  %436 = ashr exact i64 %435, 32
  %437 = add i64 %436, %425
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %62) #35
  br i1 %433, label %424, label %438

438:                                              ; preds = %430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35
  br label %1615

439:                                              ; preds = %419
  %440 = call i64 @wcslen(i32* noundef %422) #36
  %441 = getelementptr inbounds i32, i32* %422, i64 %440
  br label %442

442:                                              ; preds = %429, %414, %439
  %443 = phi i1 [ false, %439 ], [ true, %414 ], [ false, %429 ]
  %444 = phi i32* [ %422, %439 ], [ %415, %414 ], [ %422, %429 ]
  %445 = phi i64 [ 0, %439 ], [ %416, %414 ], [ %425, %429 ]
  %446 = phi i32* [ %441, %439 ], [ %417, %414 ], [ %426, %429 ]
  %447 = select i1 %174, i64 0, i64 %445
  %448 = icmp ugt i64 %345, %447
  %449 = and i32 %346, 2
  %450 = icmp eq i32 %449, 0
  %451 = select i1 %448, i1 %450, i1 false
  br i1 %451, label %452, label %483

452:                                              ; preds = %442
  %453 = sub i64 %345, %447
  %454 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 %453) #35
  %455 = icmp ugt i64 %454, %117
  br i1 %455, label %456, label %478

456:                                              ; preds = %452
  %457 = icmp eq i64 %117, 0
  %458 = icmp sgt i64 %117, -1
  %459 = shl i64 %117, 1
  %460 = select i1 %458, i64 %459, i64 -1
  %461 = select i1 %457, i64 12, i64 %460
  %462 = icmp ugt i64 %454, %461
  %463 = select i1 %462, i64 %454, i64 %461
  %464 = icmp eq i64 %463, -1
  br i1 %464, label %1612, label %465

465:                                              ; preds = %456
  %466 = icmp eq i8* %118, %0
  br i1 %466, label %467, label %469

467:                                              ; preds = %465
  %468 = call noalias i8* @malloc(i64 noundef %463) #35
  br label %471

469:                                              ; preds = %465
  %470 = call i8* @realloc(i8* noundef %118, i64 noundef %463) #35
  br label %471

471:                                              ; preds = %469, %467
  %472 = phi i8* [ %468, %467 ], [ %470, %469 ]
  %473 = icmp eq i8* %472, null
  br i1 %473, label %1612, label %474

474:                                              ; preds = %471
  %475 = icmp ne i64 %116, 0
  %476 = select i1 %466, i1 %475, i1 false
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %472, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %478

478:                                              ; preds = %474, %477, %452
  %479 = phi i64 [ %117, %452 ], [ %463, %477 ], [ %463, %474 ]
  %480 = phi i8* [ %118, %452 ], [ %472, %477 ], [ %472, %474 ]
  %481 = getelementptr inbounds i8, i8* %480, i64 %116
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %481, i8 noundef 32, i64 noundef %453, i1 noundef false) #35
  %482 = add i64 %453, %116
  br label %483

483:                                              ; preds = %478, %442
  %484 = phi i64 [ %482, %478 ], [ %116, %442 ]
  %485 = phi i64 [ %479, %478 ], [ %117, %442 ]
  %486 = phi i8* [ %480, %478 ], [ %118, %442 ]
  %487 = select i1 %443, i1 true, i1 %347
  br i1 %487, label %488, label %544

488:                                              ; preds = %483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #35
  store i64 0, i64* %14, align 8
  %489 = call i64 @llvm.uadd.sat.i64(i64 %484, i64 %445) #35
  %490 = icmp ugt i64 %489, %485
  br i1 %490, label %491, label %513

491:                                              ; preds = %488
  %492 = icmp eq i64 %485, 0
  %493 = icmp sgt i64 %485, -1
  %494 = shl i64 %485, 1
  %495 = select i1 %493, i64 %494, i64 -1
  %496 = select i1 %492, i64 12, i64 %495
  %497 = icmp ugt i64 %489, %496
  %498 = select i1 %497, i64 %489, i64 %496
  %499 = icmp eq i64 %498, -1
  br i1 %499, label %542, label %500

500:                                              ; preds = %491
  %501 = icmp eq i8* %486, %0
  br i1 %501, label %502, label %504

502:                                              ; preds = %500
  %503 = call noalias i8* @malloc(i64 noundef %498) #35
  br label %506

504:                                              ; preds = %500
  %505 = call i8* @realloc(i8* noundef %486, i64 noundef %498) #35
  br label %506

506:                                              ; preds = %504, %502
  %507 = phi i8* [ %503, %502 ], [ %505, %504 ]
  %508 = icmp eq i8* %507, null
  br i1 %508, label %542, label %509

509:                                              ; preds = %506
  %510 = icmp ne i64 %484, 0
  %511 = select i1 %501, i1 %510, i1 false
  br i1 %511, label %512, label %513

512:                                              ; preds = %509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %507, i8* noundef nonnull align 1 %0, i64 noundef %484, i1 noundef false) #35
  br label %513

513:                                              ; preds = %509, %512, %488
  %514 = phi i64 [ %485, %488 ], [ %498, %512 ], [ %498, %509 ]
  %515 = phi i8* [ %486, %488 ], [ %507, %512 ], [ %507, %509 ]
  %516 = icmp eq i64 %445, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %533, %513
  %518 = phi i32* [ %444, %513 ], [ %538, %533 ]
  %519 = phi i64 [ %484, %513 ], [ %537, %533 ]
  %520 = icmp eq i32* %518, %446
  br i1 %520, label %543, label %541

521:                                              ; preds = %513, %533
  %522 = phi i64 [ %537, %533 ], [ %484, %513 ]
  %523 = phi i32* [ %538, %533 ], [ %444, %513 ]
  %524 = phi i64 [ %539, %533 ], [ %445, %513 ]
  %525 = load i32, i32* %523, align 4, !tbaa !21
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %521
  call void @abort() #37
  unreachable

528:                                              ; preds = %521
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %66) #35
  %529 = call i64 @wcrtomb(i8* noundef nonnull %66, i32 noundef %525, %struct.__mbstate_t* noundef nonnull %15) #35
  %530 = trunc i64 %529 to i32
  %531 = icmp slt i32 %530, 1
  br i1 %531, label %532, label %533

532:                                              ; preds = %528
  call void @abort() #37
  unreachable

533:                                              ; preds = %528
  %534 = getelementptr inbounds i8, i8* %515, i64 %522
  %535 = shl i64 %529, 32
  %536 = ashr exact i64 %535, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %534, i8* noundef nonnull align 1 %66, i64 noundef %536, i1 noundef false) #35
  %537 = add i64 %536, %522
  %538 = getelementptr inbounds i32, i32* %523, i64 1
  %539 = sub i64 %524, %536
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %66) #35
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %517, label %521, !llvm.loop !122

541:                                              ; preds = %517
  call void @abort() #37
  unreachable

542:                                              ; preds = %491, %506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #35
  br label %1612

543:                                              ; preds = %517
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #35
  br label %596

544:                                              ; preds = %483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #35
  store i64 0, i64* %17, align 8
  %545 = icmp ult i32* %444, %446
  br i1 %545, label %550, label %546

546:                                              ; preds = %589, %544
  %547 = phi i64 [ %484, %544 ], [ %593, %589 ]
  %548 = phi i64 [ %485, %544 ], [ %590, %589 ]
  %549 = phi i8* [ %486, %544 ], [ %591, %589 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #35
  br label %596

550:                                              ; preds = %544, %589
  %551 = phi i8* [ %591, %589 ], [ %486, %544 ]
  %552 = phi i64 [ %590, %589 ], [ %485, %544 ]
  %553 = phi i64 [ %593, %589 ], [ %484, %544 ]
  %554 = phi i32* [ %594, %589 ], [ %444, %544 ]
  %555 = load i32, i32* %554, align 4, !tbaa !21
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %550
  call void @abort() #37
  unreachable

558:                                              ; preds = %550
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %64) #35
  %559 = call i64 @wcrtomb(i8* noundef nonnull %64, i32 noundef %555, %struct.__mbstate_t* noundef nonnull %18) #35
  %560 = trunc i64 %559 to i32
  %561 = icmp slt i32 %560, 1
  br i1 %561, label %634, label %562

562:                                              ; preds = %558
  %563 = shl i64 %559, 32
  %564 = ashr exact i64 %563, 32
  %565 = call i64 @llvm.uadd.sat.i64(i64 %553, i64 %564) #35
  %566 = icmp ugt i64 %565, %552
  br i1 %566, label %567, label %589

567:                                              ; preds = %562
  %568 = icmp eq i64 %552, 0
  %569 = icmp sgt i64 %552, -1
  %570 = shl i64 %552, 1
  %571 = select i1 %569, i64 %570, i64 -1
  %572 = select i1 %568, i64 12, i64 %571
  %573 = icmp ugt i64 %565, %572
  %574 = select i1 %573, i64 %565, i64 %572
  %575 = icmp eq i64 %574, -1
  br i1 %575, label %633, label %576

576:                                              ; preds = %567
  %577 = icmp eq i8* %551, %0
  br i1 %577, label %578, label %580

578:                                              ; preds = %576
  %579 = call noalias i8* @malloc(i64 noundef %574) #35
  br label %582

580:                                              ; preds = %576
  %581 = call i8* @realloc(i8* noundef %551, i64 noundef %574) #35
  br label %582

582:                                              ; preds = %580, %578
  %583 = phi i8* [ %579, %578 ], [ %581, %580 ]
  %584 = icmp eq i8* %583, null
  br i1 %584, label %633, label %585

585:                                              ; preds = %582
  %586 = icmp ne i64 %553, 0
  %587 = select i1 %577, i1 %586, i1 false
  br i1 %587, label %588, label %589

588:                                              ; preds = %585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %583, i8* noundef nonnull align 1 %0, i64 noundef %553, i1 noundef false) #35
  br label %589

589:                                              ; preds = %585, %588, %562
  %590 = phi i64 [ %552, %562 ], [ %574, %588 ], [ %574, %585 ]
  %591 = phi i8* [ %551, %562 ], [ %583, %588 ], [ %583, %585 ]
  %592 = getelementptr inbounds i8, i8* %591, i64 %553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %592, i8* noundef nonnull align 1 %64, i64 noundef %564, i1 noundef false) #35
  %593 = add i64 %564, %553
  %594 = getelementptr inbounds i32, i32* %554, i64 1
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %64) #35
  %595 = icmp ult i32* %594, %446
  br i1 %595, label %550, label %546, !llvm.loop !123

596:                                              ; preds = %546, %543
  %597 = phi i64 [ %519, %543 ], [ %547, %546 ]
  %598 = phi i64 [ %514, %543 ], [ %548, %546 ]
  %599 = phi i8* [ %515, %543 ], [ %549, %546 ]
  %600 = xor i1 %448, true
  %601 = select i1 %600, i1 true, i1 %450
  br i1 %601, label %1545, label %602

602:                                              ; preds = %596
  %603 = sub i64 %345, %447
  %604 = call i64 @llvm.uadd.sat.i64(i64 %597, i64 %603) #35
  %605 = icmp ugt i64 %604, %598
  br i1 %605, label %606, label %628

606:                                              ; preds = %602
  %607 = icmp eq i64 %598, 0
  %608 = icmp sgt i64 %598, -1
  %609 = shl i64 %598, 1
  %610 = select i1 %608, i64 %609, i64 -1
  %611 = select i1 %607, i64 12, i64 %610
  %612 = icmp ugt i64 %604, %611
  %613 = select i1 %612, i64 %604, i64 %611
  %614 = icmp eq i64 %613, -1
  br i1 %614, label %1612, label %615

615:                                              ; preds = %606
  %616 = icmp eq i8* %599, %0
  br i1 %616, label %617, label %619

617:                                              ; preds = %615
  %618 = call noalias i8* @malloc(i64 noundef %613) #35
  br label %621

619:                                              ; preds = %615
  %620 = call i8* @realloc(i8* noundef %599, i64 noundef %613) #35
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi i8* [ %618, %617 ], [ %620, %619 ]
  %623 = icmp eq i8* %622, null
  br i1 %623, label %1612, label %624

624:                                              ; preds = %621
  %625 = icmp ne i64 %597, 0
  %626 = select i1 %616, i1 %625, i1 false
  br i1 %626, label %627, label %628

627:                                              ; preds = %624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %622, i8* noundef nonnull align 1 %0, i64 noundef %597, i1 noundef false) #35
  br label %628

628:                                              ; preds = %624, %627, %602
  %629 = phi i64 [ %598, %602 ], [ %613, %627 ], [ %613, %624 ]
  %630 = phi i8* [ %599, %602 ], [ %622, %627 ], [ %622, %624 ]
  %631 = getelementptr inbounds i8, i8* %630, i64 %597
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %631, i8 noundef 32, i64 noundef %603, i1 noundef false) #35
  %632 = add i64 %597, %603
  br label %1545

633:                                              ; preds = %582, %567
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %64) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #35
  br label %1612

634:                                              ; preds = %558
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %64) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #35
  br label %1615

635:                                              ; preds = %161
  %636 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %637 = getelementptr inbounds %struct.argument, %struct.argument* %636, i64 %126, i32 0
  %638 = load i32, i32* %637, align 16, !tbaa !109
  %639 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 2
  %640 = load i32, i32* %639, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #35
  store i8 37, i8* %49, align 1, !tbaa !23
  %641 = and i32 %640, 1
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %644, label %643

643:                                              ; preds = %635
  store i8 39, i8* %68, align 1, !tbaa !23
  br label %644

644:                                              ; preds = %643, %635
  %645 = phi i8* [ %69, %643 ], [ %68, %635 ]
  %646 = and i32 %640, 2
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %650, label %648

648:                                              ; preds = %644
  %649 = getelementptr inbounds i8, i8* %645, i64 1
  store i8 45, i8* %645, align 1, !tbaa !23
  br label %650

650:                                              ; preds = %648, %644
  %651 = phi i8* [ %649, %648 ], [ %645, %644 ]
  %652 = and i32 %640, 4
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds i8, i8* %651, i64 1
  store i8 43, i8* %651, align 1, !tbaa !23
  br label %656

656:                                              ; preds = %654, %650
  %657 = phi i8* [ %655, %654 ], [ %651, %650 ]
  %658 = and i32 %640, 8
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %656
  %661 = getelementptr inbounds i8, i8* %657, i64 1
  store i8 32, i8* %657, align 1, !tbaa !23
  br label %662

662:                                              ; preds = %660, %656
  %663 = phi i8* [ %661, %660 ], [ %657, %656 ]
  %664 = and i32 %640, 16
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds i8, i8* %663, i64 1
  store i8 35, i8* %663, align 1, !tbaa !23
  br label %668

668:                                              ; preds = %666, %662
  %669 = phi i8* [ %667, %666 ], [ %663, %662 ]
  %670 = and i32 %640, 64
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %674, label %672

672:                                              ; preds = %668
  %673 = getelementptr inbounds i8, i8* %669, i64 1
  store i8 73, i8* %669, align 1, !tbaa !23
  br label %674

674:                                              ; preds = %672, %668
  %675 = phi i8* [ %673, %672 ], [ %669, %668 ]
  %676 = and i32 %640, 32
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %680, label %678

678:                                              ; preds = %674
  %679 = getelementptr inbounds i8, i8* %675, i64 1
  store i8 48, i8* %675, align 1, !tbaa !23
  br label %680

680:                                              ; preds = %678, %674
  %681 = phi i8* [ %679, %678 ], [ %675, %674 ]
  %682 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 3
  %683 = load i8*, i8** %682, align 8, !tbaa !112
  %684 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 4
  %685 = load i8*, i8** %684, align 8, !tbaa !113
  %686 = icmp eq i8* %683, %685
  br i1 %686, label %724, label %687

687:                                              ; preds = %680
  %688 = ptrtoint i8* %685 to i64
  %689 = ptrtoint i8* %683 to i64
  %690 = sub i64 %688, %689
  %691 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 5
  %692 = load i64, i64* %691, align 8, !tbaa !114
  %693 = icmp eq i64 %692, -1
  br i1 %693, label %706, label %694

694:                                              ; preds = %687
  %695 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %696 = getelementptr inbounds %struct.argument, %struct.argument* %695, i64 %692, i32 0
  %697 = load i32, i32* %696, align 16, !tbaa !109
  %698 = icmp eq i32 %697, 5
  br i1 %698, label %700, label %699

699:                                              ; preds = %694
  call void @abort() #37
  unreachable

700:                                              ; preds = %694
  %701 = getelementptr inbounds %struct.argument, %struct.argument* %695, i64 %692, i32 1
  %702 = bitcast %union.anon.37* %701 to i32*
  %703 = load i32, i32* %702, align 16, !tbaa !23
  %704 = call i32 @llvm.abs.i32(i32 %703, i1 false)
  %705 = zext i32 %704 to i64
  br label %718

706:                                              ; preds = %687, %706
  %707 = phi i64 [ %716, %706 ], [ 0, %687 ]
  %708 = phi i8* [ %712, %706 ], [ %683, %687 ]
  %709 = icmp ult i64 %707, 1844674407370955162
  %710 = mul i64 %707, 10
  %711 = select i1 %709, i64 %710, i64 -1
  %712 = getelementptr inbounds i8, i8* %708, i64 1
  %713 = load i8, i8* %708, align 1, !tbaa !23
  %714 = zext i8 %713 to i64
  %715 = add nsw i64 %714, -48
  %716 = call i64 @llvm.uadd.sat.i64(i64 %711, i64 %715) #35
  %717 = icmp eq i8* %712, %685
  br i1 %717, label %718, label %706, !llvm.loop !124

718:                                              ; preds = %706, %700
  %719 = phi i64 [ %705, %700 ], [ %716, %706 ]
  %720 = icmp ugt i64 %719, 2147483647
  br i1 %720, label %721, label %722

721:                                              ; preds = %718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1609

722:                                              ; preds = %718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %681, i8* noundef nonnull align 1 %683, i64 noundef %690, i1 noundef false) #35
  %723 = getelementptr inbounds i8, i8* %681, i64 %690
  br label %724

724:                                              ; preds = %722, %680
  %725 = phi i8* [ %723, %722 ], [ %681, %680 ]
  %726 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 6
  %727 = load i8*, i8** %726, align 8, !tbaa !116
  %728 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 7
  %729 = load i8*, i8** %728, align 8, !tbaa !117
  %730 = icmp eq i8* %727, %729
  br i1 %730, label %736, label %731

731:                                              ; preds = %724
  %732 = ptrtoint i8* %729 to i64
  %733 = ptrtoint i8* %727 to i64
  %734 = sub i64 %732, %733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %725, i8* noundef nonnull align 1 %727, i64 noundef %734, i1 noundef false) #35
  %735 = getelementptr inbounds i8, i8* %725, i64 %734
  br label %736

736:                                              ; preds = %731, %724
  %737 = phi i8* [ %735, %731 ], [ %725, %724 ]
  switch i32 %638, label %745 [
    i32 9, label %738
    i32 10, label %738
    i32 7, label %740
    i32 8, label %740
    i32 17, label %740
    i32 18, label %740
    i32 21, label %740
    i32 22, label %740
    i32 23, label %740
    i32 24, label %740
    i32 25, label %740
    i32 26, label %740
    i32 30, label %740
    i32 32, label %740
    i32 28, label %743
  ]

738:                                              ; preds = %736, %736
  %739 = getelementptr inbounds i8, i8* %737, i64 1
  store i8 108, i8* %737, align 1, !tbaa !23
  br label %740

740:                                              ; preds = %736, %736, %736, %736, %736, %736, %736, %736, %736, %736, %736, %736, %738
  %741 = phi i8* [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %737, %736 ], [ %739, %738 ]
  %742 = getelementptr inbounds i8, i8* %741, i64 1
  store i8 108, i8* %741, align 1, !tbaa !23
  br label %745

743:                                              ; preds = %736
  %744 = getelementptr inbounds i8, i8* %737, i64 1
  store i8 76, i8* %737, align 1, !tbaa !23
  br label %745

745:                                              ; preds = %736, %743, %740
  %746 = phi i8* [ %737, %736 ], [ %744, %743 ], [ %742, %740 ]
  %747 = load i8, i8* %122, align 8, !tbaa !105
  store i8 %747, i8* %746, align 1, !tbaa !23
  %748 = getelementptr inbounds i8, i8* %746, i64 1
  store i8 0, i8* %748, align 1, !tbaa !23
  %749 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 5
  %750 = load i64, i64* %749, align 8, !tbaa !114
  %751 = icmp eq i64 %750, -1
  br i1 %751, label %762, label %752

752:                                              ; preds = %745
  %753 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %754 = getelementptr inbounds %struct.argument, %struct.argument* %753, i64 %750, i32 0
  %755 = load i32, i32* %754, align 16, !tbaa !109
  %756 = icmp eq i32 %755, 5
  br i1 %756, label %758, label %757

757:                                              ; preds = %752
  call void @abort() #37
  unreachable

758:                                              ; preds = %752
  %759 = getelementptr inbounds %struct.argument, %struct.argument* %753, i64 %750, i32 1
  %760 = bitcast %union.anon.37* %759 to i32*
  %761 = load i32, i32* %760, align 16, !tbaa !23
  store i32 %761, i32* %70, align 4, !tbaa !21
  br label %762

762:                                              ; preds = %758, %745
  %763 = phi i32 [ 1, %758 ], [ 0, %745 ]
  %764 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 8
  %765 = load i64, i64* %764, align 8, !tbaa !118
  %766 = icmp eq i64 %765, -1
  br i1 %766, label %780, label %767

767:                                              ; preds = %762
  %768 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %769 = getelementptr inbounds %struct.argument, %struct.argument* %768, i64 %765, i32 0
  %770 = load i32, i32* %769, align 16, !tbaa !109
  %771 = icmp eq i32 %770, 5
  br i1 %771, label %773, label %772

772:                                              ; preds = %767
  call void @abort() #37
  unreachable

773:                                              ; preds = %767
  %774 = getelementptr inbounds %struct.argument, %struct.argument* %768, i64 %765, i32 1
  %775 = bitcast %union.anon.37* %774 to i32*
  %776 = load i32, i32* %775, align 16, !tbaa !23
  %777 = add nuw nsw i32 %763, 1
  %778 = zext i32 %763 to i64
  %779 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %778
  store i32 %776, i32* %779, align 4, !tbaa !21
  br label %780

780:                                              ; preds = %773, %762
  %781 = phi i32 [ %777, %773 ], [ %763, %762 ]
  %782 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 2) #35
  %783 = icmp ugt i64 %782, %117
  br i1 %783, label %784, label %806

784:                                              ; preds = %780
  %785 = icmp eq i64 %117, 0
  %786 = icmp sgt i64 %117, -1
  %787 = shl i64 %117, 1
  %788 = select i1 %786, i64 %787, i64 -1
  %789 = select i1 %785, i64 12, i64 %788
  %790 = icmp ugt i64 %782, %789
  %791 = select i1 %790, i64 %782, i64 %789
  %792 = icmp eq i64 %791, -1
  br i1 %792, label %1541, label %793

793:                                              ; preds = %784
  %794 = icmp eq i8* %118, %0
  br i1 %794, label %795, label %797

795:                                              ; preds = %793
  %796 = call noalias i8* @malloc(i64 noundef %791) #35
  br label %799

797:                                              ; preds = %793
  %798 = call i8* @realloc(i8* noundef %118, i64 noundef %791) #35
  br label %799

799:                                              ; preds = %797, %795
  %800 = phi i8* [ %796, %795 ], [ %798, %797 ]
  %801 = icmp eq i8* %800, null
  br i1 %801, label %1541, label %802

802:                                              ; preds = %799
  %803 = icmp ne i64 %116, 0
  %804 = select i1 %794, i1 %803, i1 false
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %800, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %806

806:                                              ; preds = %802, %805, %780
  %807 = phi i64 [ %117, %780 ], [ %791, %805 ], [ %791, %802 ]
  %808 = phi i8* [ %118, %780 ], [ %800, %805 ], [ %800, %802 ]
  %809 = getelementptr inbounds i8, i8* %808, i64 %116
  store i8 0, i8* %809, align 1, !tbaa !23
  %810 = tail call i32* @__errno_location() #38
  %811 = load i32, i32* %810, align 4, !tbaa !21
  %812 = icmp ne i64 %116, 0
  br label %813

813:                                              ; preds = %1535, %806
  %814 = phi i64 [ %807, %806 ], [ %1536, %1535 ]
  %815 = phi i8* [ %808, %806 ], [ %1537, %1535 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71) #35
  store i32 -1, i32* %21, align 4, !tbaa !21
  %816 = sub i64 %814, %116
  %817 = icmp ult i64 %816, 2147483647
  %818 = select i1 %817, i64 %816, i64 2147483647
  store i32 0, i32* %810, align 4, !tbaa !21
  switch i32 %638, label %1467 [
    i32 1, label %819
    i32 2, label %839
    i32 3, label %859
    i32 4, label %879
    i32 5, label %899
    i32 6, label %918
    i32 7, label %937
    i32 8, label %956
    i32 9, label %975
    i32 10, label %994
    i32 11, label %1013
    i32 12, label %1035
    i32 13, label %1057
    i32 14, label %1079
    i32 15, label %1101
    i32 16, label %1120
    i32 17, label %1139
    i32 18, label %1158
    i32 19, label %1177
    i32 20, label %1199
    i32 21, label %1221
    i32 22, label %1240
    i32 23, label %1259
    i32 24, label %1278
    i32 25, label %1297
    i32 26, label %1316
    i32 27, label %1335
    i32 28, label %1354
    i32 29, label %1372
    i32 30, label %1391
    i32 31, label %1410
    i32 32, label %1429
    i32 33, label %1448
  ]

819:                                              ; preds = %813
  %820 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %821 = load i64, i64* %125, align 8, !tbaa !106
  %822 = getelementptr inbounds %struct.argument, %struct.argument* %820, i64 %821, i32 1
  %823 = bitcast %union.anon.37* %822 to i8*
  %824 = load i8, i8* %823, align 16, !tbaa !23
  %825 = sext i8 %824 to i32
  switch i32 %781, label %838 [
    i32 0, label %826
    i32 1, label %829
    i32 2, label %833
  ]

826:                                              ; preds = %819
  %827 = getelementptr inbounds i8, i8* %815, i64 %116
  %828 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %827, i64 noundef %818, i8* noundef %49, i32 noundef %825, i32* noundef nonnull %21) #35
  br label %1468

829:                                              ; preds = %819
  %830 = getelementptr inbounds i8, i8* %815, i64 %116
  %831 = load i32, i32* %70, align 4, !tbaa !21
  %832 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %830, i64 noundef %818, i8* noundef %49, i32 noundef %831, i32 noundef %825, i32* noundef nonnull %21) #35
  br label %1468

833:                                              ; preds = %819
  %834 = getelementptr inbounds i8, i8* %815, i64 %116
  %835 = load i32, i32* %70, align 4, !tbaa !21
  %836 = load i32, i32* %72, align 4, !tbaa !21
  %837 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %834, i64 noundef %818, i8* noundef %49, i32 noundef %835, i32 noundef %836, i32 noundef %825, i32* noundef nonnull %21) #35
  br label %1468

838:                                              ; preds = %819
  call void @abort() #37
  unreachable

839:                                              ; preds = %813
  %840 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %841 = load i64, i64* %125, align 8, !tbaa !106
  %842 = getelementptr inbounds %struct.argument, %struct.argument* %840, i64 %841, i32 1
  %843 = bitcast %union.anon.37* %842 to i8*
  %844 = load i8, i8* %843, align 16, !tbaa !23
  %845 = zext i8 %844 to i32
  switch i32 %781, label %858 [
    i32 0, label %846
    i32 1, label %849
    i32 2, label %853
  ]

846:                                              ; preds = %839
  %847 = getelementptr inbounds i8, i8* %815, i64 %116
  %848 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %847, i64 noundef %818, i8* noundef %49, i32 noundef %845, i32* noundef nonnull %21) #35
  br label %1468

849:                                              ; preds = %839
  %850 = getelementptr inbounds i8, i8* %815, i64 %116
  %851 = load i32, i32* %70, align 4, !tbaa !21
  %852 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %850, i64 noundef %818, i8* noundef %49, i32 noundef %851, i32 noundef %845, i32* noundef nonnull %21) #35
  br label %1468

853:                                              ; preds = %839
  %854 = getelementptr inbounds i8, i8* %815, i64 %116
  %855 = load i32, i32* %70, align 4, !tbaa !21
  %856 = load i32, i32* %72, align 4, !tbaa !21
  %857 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %854, i64 noundef %818, i8* noundef %49, i32 noundef %855, i32 noundef %856, i32 noundef %845, i32* noundef nonnull %21) #35
  br label %1468

858:                                              ; preds = %839
  call void @abort() #37
  unreachable

859:                                              ; preds = %813
  %860 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %861 = load i64, i64* %125, align 8, !tbaa !106
  %862 = getelementptr inbounds %struct.argument, %struct.argument* %860, i64 %861, i32 1
  %863 = bitcast %union.anon.37* %862 to i16*
  %864 = load i16, i16* %863, align 16, !tbaa !23
  %865 = sext i16 %864 to i32
  switch i32 %781, label %878 [
    i32 0, label %866
    i32 1, label %869
    i32 2, label %873
  ]

866:                                              ; preds = %859
  %867 = getelementptr inbounds i8, i8* %815, i64 %116
  %868 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %867, i64 noundef %818, i8* noundef %49, i32 noundef %865, i32* noundef nonnull %21) #35
  br label %1468

869:                                              ; preds = %859
  %870 = getelementptr inbounds i8, i8* %815, i64 %116
  %871 = load i32, i32* %70, align 4, !tbaa !21
  %872 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %870, i64 noundef %818, i8* noundef %49, i32 noundef %871, i32 noundef %865, i32* noundef nonnull %21) #35
  br label %1468

873:                                              ; preds = %859
  %874 = getelementptr inbounds i8, i8* %815, i64 %116
  %875 = load i32, i32* %70, align 4, !tbaa !21
  %876 = load i32, i32* %72, align 4, !tbaa !21
  %877 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %874, i64 noundef %818, i8* noundef %49, i32 noundef %875, i32 noundef %876, i32 noundef %865, i32* noundef nonnull %21) #35
  br label %1468

878:                                              ; preds = %859
  call void @abort() #37
  unreachable

879:                                              ; preds = %813
  %880 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %881 = load i64, i64* %125, align 8, !tbaa !106
  %882 = getelementptr inbounds %struct.argument, %struct.argument* %880, i64 %881, i32 1
  %883 = bitcast %union.anon.37* %882 to i16*
  %884 = load i16, i16* %883, align 16, !tbaa !23
  %885 = zext i16 %884 to i32
  switch i32 %781, label %898 [
    i32 0, label %886
    i32 1, label %889
    i32 2, label %893
  ]

886:                                              ; preds = %879
  %887 = getelementptr inbounds i8, i8* %815, i64 %116
  %888 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %887, i64 noundef %818, i8* noundef %49, i32 noundef %885, i32* noundef nonnull %21) #35
  br label %1468

889:                                              ; preds = %879
  %890 = getelementptr inbounds i8, i8* %815, i64 %116
  %891 = load i32, i32* %70, align 4, !tbaa !21
  %892 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %890, i64 noundef %818, i8* noundef %49, i32 noundef %891, i32 noundef %885, i32* noundef nonnull %21) #35
  br label %1468

893:                                              ; preds = %879
  %894 = getelementptr inbounds i8, i8* %815, i64 %116
  %895 = load i32, i32* %70, align 4, !tbaa !21
  %896 = load i32, i32* %72, align 4, !tbaa !21
  %897 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %894, i64 noundef %818, i8* noundef %49, i32 noundef %895, i32 noundef %896, i32 noundef %885, i32* noundef nonnull %21) #35
  br label %1468

898:                                              ; preds = %879
  call void @abort() #37
  unreachable

899:                                              ; preds = %813
  %900 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %901 = load i64, i64* %125, align 8, !tbaa !106
  %902 = getelementptr inbounds %struct.argument, %struct.argument* %900, i64 %901, i32 1
  %903 = bitcast %union.anon.37* %902 to i32*
  %904 = load i32, i32* %903, align 16, !tbaa !23
  switch i32 %781, label %917 [
    i32 0, label %905
    i32 1, label %908
    i32 2, label %912
  ]

905:                                              ; preds = %899
  %906 = getelementptr inbounds i8, i8* %815, i64 %116
  %907 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %906, i64 noundef %818, i8* noundef %49, i32 noundef %904, i32* noundef nonnull %21) #35
  br label %1468

908:                                              ; preds = %899
  %909 = getelementptr inbounds i8, i8* %815, i64 %116
  %910 = load i32, i32* %70, align 4, !tbaa !21
  %911 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %909, i64 noundef %818, i8* noundef %49, i32 noundef %910, i32 noundef %904, i32* noundef nonnull %21) #35
  br label %1468

912:                                              ; preds = %899
  %913 = getelementptr inbounds i8, i8* %815, i64 %116
  %914 = load i32, i32* %70, align 4, !tbaa !21
  %915 = load i32, i32* %72, align 4, !tbaa !21
  %916 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %913, i64 noundef %818, i8* noundef %49, i32 noundef %914, i32 noundef %915, i32 noundef %904, i32* noundef nonnull %21) #35
  br label %1468

917:                                              ; preds = %899
  call void @abort() #37
  unreachable

918:                                              ; preds = %813
  %919 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %920 = load i64, i64* %125, align 8, !tbaa !106
  %921 = getelementptr inbounds %struct.argument, %struct.argument* %919, i64 %920, i32 1
  %922 = bitcast %union.anon.37* %921 to i32*
  %923 = load i32, i32* %922, align 16, !tbaa !23
  switch i32 %781, label %936 [
    i32 0, label %924
    i32 1, label %927
    i32 2, label %931
  ]

924:                                              ; preds = %918
  %925 = getelementptr inbounds i8, i8* %815, i64 %116
  %926 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %925, i64 noundef %818, i8* noundef %49, i32 noundef %923, i32* noundef nonnull %21) #35
  br label %1468

927:                                              ; preds = %918
  %928 = getelementptr inbounds i8, i8* %815, i64 %116
  %929 = load i32, i32* %70, align 4, !tbaa !21
  %930 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %928, i64 noundef %818, i8* noundef %49, i32 noundef %929, i32 noundef %923, i32* noundef nonnull %21) #35
  br label %1468

931:                                              ; preds = %918
  %932 = getelementptr inbounds i8, i8* %815, i64 %116
  %933 = load i32, i32* %70, align 4, !tbaa !21
  %934 = load i32, i32* %72, align 4, !tbaa !21
  %935 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %932, i64 noundef %818, i8* noundef %49, i32 noundef %933, i32 noundef %934, i32 noundef %923, i32* noundef nonnull %21) #35
  br label %1468

936:                                              ; preds = %918
  call void @abort() #37
  unreachable

937:                                              ; preds = %813
  %938 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %939 = load i64, i64* %125, align 8, !tbaa !106
  %940 = getelementptr inbounds %struct.argument, %struct.argument* %938, i64 %939, i32 1
  %941 = bitcast %union.anon.37* %940 to i64*
  %942 = load i64, i64* %941, align 16, !tbaa !23
  switch i32 %781, label %955 [
    i32 0, label %943
    i32 1, label %946
    i32 2, label %950
  ]

943:                                              ; preds = %937
  %944 = getelementptr inbounds i8, i8* %815, i64 %116
  %945 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %944, i64 noundef %818, i8* noundef %49, i64 noundef %942, i32* noundef nonnull %21) #35
  br label %1468

946:                                              ; preds = %937
  %947 = getelementptr inbounds i8, i8* %815, i64 %116
  %948 = load i32, i32* %70, align 4, !tbaa !21
  %949 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %947, i64 noundef %818, i8* noundef %49, i32 noundef %948, i64 noundef %942, i32* noundef nonnull %21) #35
  br label %1468

950:                                              ; preds = %937
  %951 = getelementptr inbounds i8, i8* %815, i64 %116
  %952 = load i32, i32* %70, align 4, !tbaa !21
  %953 = load i32, i32* %72, align 4, !tbaa !21
  %954 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %951, i64 noundef %818, i8* noundef %49, i32 noundef %952, i32 noundef %953, i64 noundef %942, i32* noundef nonnull %21) #35
  br label %1468

955:                                              ; preds = %937
  call void @abort() #37
  unreachable

956:                                              ; preds = %813
  %957 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %958 = load i64, i64* %125, align 8, !tbaa !106
  %959 = getelementptr inbounds %struct.argument, %struct.argument* %957, i64 %958, i32 1
  %960 = bitcast %union.anon.37* %959 to i64*
  %961 = load i64, i64* %960, align 16, !tbaa !23
  switch i32 %781, label %974 [
    i32 0, label %962
    i32 1, label %965
    i32 2, label %969
  ]

962:                                              ; preds = %956
  %963 = getelementptr inbounds i8, i8* %815, i64 %116
  %964 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %963, i64 noundef %818, i8* noundef %49, i64 noundef %961, i32* noundef nonnull %21) #35
  br label %1468

965:                                              ; preds = %956
  %966 = getelementptr inbounds i8, i8* %815, i64 %116
  %967 = load i32, i32* %70, align 4, !tbaa !21
  %968 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %966, i64 noundef %818, i8* noundef %49, i32 noundef %967, i64 noundef %961, i32* noundef nonnull %21) #35
  br label %1468

969:                                              ; preds = %956
  %970 = getelementptr inbounds i8, i8* %815, i64 %116
  %971 = load i32, i32* %70, align 4, !tbaa !21
  %972 = load i32, i32* %72, align 4, !tbaa !21
  %973 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %970, i64 noundef %818, i8* noundef %49, i32 noundef %971, i32 noundef %972, i64 noundef %961, i32* noundef nonnull %21) #35
  br label %1468

974:                                              ; preds = %956
  call void @abort() #37
  unreachable

975:                                              ; preds = %813
  %976 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %977 = load i64, i64* %125, align 8, !tbaa !106
  %978 = getelementptr inbounds %struct.argument, %struct.argument* %976, i64 %977, i32 1
  %979 = bitcast %union.anon.37* %978 to i64*
  %980 = load i64, i64* %979, align 16, !tbaa !23
  switch i32 %781, label %993 [
    i32 0, label %981
    i32 1, label %984
    i32 2, label %988
  ]

981:                                              ; preds = %975
  %982 = getelementptr inbounds i8, i8* %815, i64 %116
  %983 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %982, i64 noundef %818, i8* noundef %49, i64 noundef %980, i32* noundef nonnull %21) #35
  br label %1468

984:                                              ; preds = %975
  %985 = getelementptr inbounds i8, i8* %815, i64 %116
  %986 = load i32, i32* %70, align 4, !tbaa !21
  %987 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %985, i64 noundef %818, i8* noundef %49, i32 noundef %986, i64 noundef %980, i32* noundef nonnull %21) #35
  br label %1468

988:                                              ; preds = %975
  %989 = getelementptr inbounds i8, i8* %815, i64 %116
  %990 = load i32, i32* %70, align 4, !tbaa !21
  %991 = load i32, i32* %72, align 4, !tbaa !21
  %992 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %989, i64 noundef %818, i8* noundef %49, i32 noundef %990, i32 noundef %991, i64 noundef %980, i32* noundef nonnull %21) #35
  br label %1468

993:                                              ; preds = %975
  call void @abort() #37
  unreachable

994:                                              ; preds = %813
  %995 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %996 = load i64, i64* %125, align 8, !tbaa !106
  %997 = getelementptr inbounds %struct.argument, %struct.argument* %995, i64 %996, i32 1
  %998 = bitcast %union.anon.37* %997 to i64*
  %999 = load i64, i64* %998, align 16, !tbaa !23
  switch i32 %781, label %1012 [
    i32 0, label %1000
    i32 1, label %1003
    i32 2, label %1007
  ]

1000:                                             ; preds = %994
  %1001 = getelementptr inbounds i8, i8* %815, i64 %116
  %1002 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1001, i64 noundef %818, i8* noundef %49, i64 noundef %999, i32* noundef nonnull %21) #35
  br label %1468

1003:                                             ; preds = %994
  %1004 = getelementptr inbounds i8, i8* %815, i64 %116
  %1005 = load i32, i32* %70, align 4, !tbaa !21
  %1006 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1004, i64 noundef %818, i8* noundef %49, i32 noundef %1005, i64 noundef %999, i32* noundef nonnull %21) #35
  br label %1468

1007:                                             ; preds = %994
  %1008 = getelementptr inbounds i8, i8* %815, i64 %116
  %1009 = load i32, i32* %70, align 4, !tbaa !21
  %1010 = load i32, i32* %72, align 4, !tbaa !21
  %1011 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1008, i64 noundef %818, i8* noundef %49, i32 noundef %1009, i32 noundef %1010, i64 noundef %999, i32* noundef nonnull %21) #35
  br label %1468

1012:                                             ; preds = %994
  call void @abort() #37
  unreachable

1013:                                             ; preds = %813
  %1014 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1015 = load i64, i64* %125, align 8, !tbaa !106
  %1016 = getelementptr inbounds %struct.argument, %struct.argument* %1014, i64 %1015, i32 1
  %1017 = bitcast %union.anon.37* %1016 to i8*
  %1018 = load i8, i8* %1017, align 16, !tbaa !23
  switch i32 %781, label %1034 [
    i32 0, label %1019
    i32 1, label %1023
    i32 2, label %1028
  ]

1019:                                             ; preds = %1013
  %1020 = getelementptr inbounds i8, i8* %815, i64 %116
  %1021 = sext i8 %1018 to i32
  %1022 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1020, i64 noundef %818, i8* noundef %49, i32 noundef %1021, i32* noundef nonnull %21) #35
  br label %1468

1023:                                             ; preds = %1013
  %1024 = getelementptr inbounds i8, i8* %815, i64 %116
  %1025 = load i32, i32* %70, align 4, !tbaa !21
  %1026 = sext i8 %1018 to i32
  %1027 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1024, i64 noundef %818, i8* noundef %49, i32 noundef %1025, i32 noundef %1026, i32* noundef nonnull %21) #35
  br label %1468

1028:                                             ; preds = %1013
  %1029 = getelementptr inbounds i8, i8* %815, i64 %116
  %1030 = load i32, i32* %70, align 4, !tbaa !21
  %1031 = load i32, i32* %72, align 4, !tbaa !21
  %1032 = sext i8 %1018 to i32
  %1033 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1029, i64 noundef %818, i8* noundef %49, i32 noundef %1030, i32 noundef %1031, i32 noundef %1032, i32* noundef nonnull %21) #35
  br label %1468

1034:                                             ; preds = %1013
  call void @abort() #37
  unreachable

1035:                                             ; preds = %813
  %1036 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1037 = load i64, i64* %125, align 8, !tbaa !106
  %1038 = getelementptr inbounds %struct.argument, %struct.argument* %1036, i64 %1037, i32 1
  %1039 = bitcast %union.anon.37* %1038 to i8*
  %1040 = load i8, i8* %1039, align 16, !tbaa !23
  switch i32 %781, label %1056 [
    i32 0, label %1041
    i32 1, label %1045
    i32 2, label %1050
  ]

1041:                                             ; preds = %1035
  %1042 = getelementptr inbounds i8, i8* %815, i64 %116
  %1043 = zext i8 %1040 to i32
  %1044 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1042, i64 noundef %818, i8* noundef %49, i32 noundef %1043, i32* noundef nonnull %21) #35
  br label %1468

1045:                                             ; preds = %1035
  %1046 = getelementptr inbounds i8, i8* %815, i64 %116
  %1047 = load i32, i32* %70, align 4, !tbaa !21
  %1048 = zext i8 %1040 to i32
  %1049 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1046, i64 noundef %818, i8* noundef %49, i32 noundef %1047, i32 noundef %1048, i32* noundef nonnull %21) #35
  br label %1468

1050:                                             ; preds = %1035
  %1051 = getelementptr inbounds i8, i8* %815, i64 %116
  %1052 = load i32, i32* %70, align 4, !tbaa !21
  %1053 = load i32, i32* %72, align 4, !tbaa !21
  %1054 = zext i8 %1040 to i32
  %1055 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1051, i64 noundef %818, i8* noundef %49, i32 noundef %1052, i32 noundef %1053, i32 noundef %1054, i32* noundef nonnull %21) #35
  br label %1468

1056:                                             ; preds = %1035
  call void @abort() #37
  unreachable

1057:                                             ; preds = %813
  %1058 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1059 = load i64, i64* %125, align 8, !tbaa !106
  %1060 = getelementptr inbounds %struct.argument, %struct.argument* %1058, i64 %1059, i32 1
  %1061 = bitcast %union.anon.37* %1060 to i16*
  %1062 = load i16, i16* %1061, align 16, !tbaa !23
  switch i32 %781, label %1078 [
    i32 0, label %1063
    i32 1, label %1067
    i32 2, label %1072
  ]

1063:                                             ; preds = %1057
  %1064 = getelementptr inbounds i8, i8* %815, i64 %116
  %1065 = sext i16 %1062 to i32
  %1066 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1064, i64 noundef %818, i8* noundef %49, i32 noundef %1065, i32* noundef nonnull %21) #35
  br label %1468

1067:                                             ; preds = %1057
  %1068 = getelementptr inbounds i8, i8* %815, i64 %116
  %1069 = load i32, i32* %70, align 4, !tbaa !21
  %1070 = sext i16 %1062 to i32
  %1071 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1068, i64 noundef %818, i8* noundef %49, i32 noundef %1069, i32 noundef %1070, i32* noundef nonnull %21) #35
  br label %1468

1072:                                             ; preds = %1057
  %1073 = getelementptr inbounds i8, i8* %815, i64 %116
  %1074 = load i32, i32* %70, align 4, !tbaa !21
  %1075 = load i32, i32* %72, align 4, !tbaa !21
  %1076 = sext i16 %1062 to i32
  %1077 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1073, i64 noundef %818, i8* noundef %49, i32 noundef %1074, i32 noundef %1075, i32 noundef %1076, i32* noundef nonnull %21) #35
  br label %1468

1078:                                             ; preds = %1057
  call void @abort() #37
  unreachable

1079:                                             ; preds = %813
  %1080 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1081 = load i64, i64* %125, align 8, !tbaa !106
  %1082 = getelementptr inbounds %struct.argument, %struct.argument* %1080, i64 %1081, i32 1
  %1083 = bitcast %union.anon.37* %1082 to i16*
  %1084 = load i16, i16* %1083, align 16, !tbaa !23
  switch i32 %781, label %1100 [
    i32 0, label %1085
    i32 1, label %1089
    i32 2, label %1094
  ]

1085:                                             ; preds = %1079
  %1086 = getelementptr inbounds i8, i8* %815, i64 %116
  %1087 = zext i16 %1084 to i32
  %1088 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1086, i64 noundef %818, i8* noundef %49, i32 noundef %1087, i32* noundef nonnull %21) #35
  br label %1468

1089:                                             ; preds = %1079
  %1090 = getelementptr inbounds i8, i8* %815, i64 %116
  %1091 = load i32, i32* %70, align 4, !tbaa !21
  %1092 = zext i16 %1084 to i32
  %1093 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1090, i64 noundef %818, i8* noundef %49, i32 noundef %1091, i32 noundef %1092, i32* noundef nonnull %21) #35
  br label %1468

1094:                                             ; preds = %1079
  %1095 = getelementptr inbounds i8, i8* %815, i64 %116
  %1096 = load i32, i32* %70, align 4, !tbaa !21
  %1097 = load i32, i32* %72, align 4, !tbaa !21
  %1098 = zext i16 %1084 to i32
  %1099 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1095, i64 noundef %818, i8* noundef %49, i32 noundef %1096, i32 noundef %1097, i32 noundef %1098, i32* noundef nonnull %21) #35
  br label %1468

1100:                                             ; preds = %1079
  call void @abort() #37
  unreachable

1101:                                             ; preds = %813
  %1102 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1103 = load i64, i64* %125, align 8, !tbaa !106
  %1104 = getelementptr inbounds %struct.argument, %struct.argument* %1102, i64 %1103, i32 1
  %1105 = bitcast %union.anon.37* %1104 to i32*
  %1106 = load i32, i32* %1105, align 16, !tbaa !23
  switch i32 %781, label %1119 [
    i32 0, label %1107
    i32 1, label %1110
    i32 2, label %1114
  ]

1107:                                             ; preds = %1101
  %1108 = getelementptr inbounds i8, i8* %815, i64 %116
  %1109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1108, i64 noundef %818, i8* noundef %49, i32 noundef %1106, i32* noundef nonnull %21) #35
  br label %1468

1110:                                             ; preds = %1101
  %1111 = getelementptr inbounds i8, i8* %815, i64 %116
  %1112 = load i32, i32* %70, align 4, !tbaa !21
  %1113 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1111, i64 noundef %818, i8* noundef %49, i32 noundef %1112, i32 noundef %1106, i32* noundef nonnull %21) #35
  br label %1468

1114:                                             ; preds = %1101
  %1115 = getelementptr inbounds i8, i8* %815, i64 %116
  %1116 = load i32, i32* %70, align 4, !tbaa !21
  %1117 = load i32, i32* %72, align 4, !tbaa !21
  %1118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1115, i64 noundef %818, i8* noundef %49, i32 noundef %1116, i32 noundef %1117, i32 noundef %1106, i32* noundef nonnull %21) #35
  br label %1468

1119:                                             ; preds = %1101
  call void @abort() #37
  unreachable

1120:                                             ; preds = %813
  %1121 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1122 = load i64, i64* %125, align 8, !tbaa !106
  %1123 = getelementptr inbounds %struct.argument, %struct.argument* %1121, i64 %1122, i32 1
  %1124 = bitcast %union.anon.37* %1123 to i32*
  %1125 = load i32, i32* %1124, align 16, !tbaa !23
  switch i32 %781, label %1138 [
    i32 0, label %1126
    i32 1, label %1129
    i32 2, label %1133
  ]

1126:                                             ; preds = %1120
  %1127 = getelementptr inbounds i8, i8* %815, i64 %116
  %1128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1127, i64 noundef %818, i8* noundef %49, i32 noundef %1125, i32* noundef nonnull %21) #35
  br label %1468

1129:                                             ; preds = %1120
  %1130 = getelementptr inbounds i8, i8* %815, i64 %116
  %1131 = load i32, i32* %70, align 4, !tbaa !21
  %1132 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1130, i64 noundef %818, i8* noundef %49, i32 noundef %1131, i32 noundef %1125, i32* noundef nonnull %21) #35
  br label %1468

1133:                                             ; preds = %1120
  %1134 = getelementptr inbounds i8, i8* %815, i64 %116
  %1135 = load i32, i32* %70, align 4, !tbaa !21
  %1136 = load i32, i32* %72, align 4, !tbaa !21
  %1137 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1134, i64 noundef %818, i8* noundef %49, i32 noundef %1135, i32 noundef %1136, i32 noundef %1125, i32* noundef nonnull %21) #35
  br label %1468

1138:                                             ; preds = %1120
  call void @abort() #37
  unreachable

1139:                                             ; preds = %813
  %1140 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1141 = load i64, i64* %125, align 8, !tbaa !106
  %1142 = getelementptr inbounds %struct.argument, %struct.argument* %1140, i64 %1141, i32 1
  %1143 = bitcast %union.anon.37* %1142 to i64*
  %1144 = load i64, i64* %1143, align 16, !tbaa !23
  switch i32 %781, label %1157 [
    i32 0, label %1145
    i32 1, label %1148
    i32 2, label %1152
  ]

1145:                                             ; preds = %1139
  %1146 = getelementptr inbounds i8, i8* %815, i64 %116
  %1147 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1146, i64 noundef %818, i8* noundef %49, i64 noundef %1144, i32* noundef nonnull %21) #35
  br label %1468

1148:                                             ; preds = %1139
  %1149 = getelementptr inbounds i8, i8* %815, i64 %116
  %1150 = load i32, i32* %70, align 4, !tbaa !21
  %1151 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1149, i64 noundef %818, i8* noundef %49, i32 noundef %1150, i64 noundef %1144, i32* noundef nonnull %21) #35
  br label %1468

1152:                                             ; preds = %1139
  %1153 = getelementptr inbounds i8, i8* %815, i64 %116
  %1154 = load i32, i32* %70, align 4, !tbaa !21
  %1155 = load i32, i32* %72, align 4, !tbaa !21
  %1156 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1153, i64 noundef %818, i8* noundef %49, i32 noundef %1154, i32 noundef %1155, i64 noundef %1144, i32* noundef nonnull %21) #35
  br label %1468

1157:                                             ; preds = %1139
  call void @abort() #37
  unreachable

1158:                                             ; preds = %813
  %1159 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1160 = load i64, i64* %125, align 8, !tbaa !106
  %1161 = getelementptr inbounds %struct.argument, %struct.argument* %1159, i64 %1160, i32 1
  %1162 = bitcast %union.anon.37* %1161 to i64*
  %1163 = load i64, i64* %1162, align 16, !tbaa !23
  switch i32 %781, label %1176 [
    i32 0, label %1164
    i32 1, label %1167
    i32 2, label %1171
  ]

1164:                                             ; preds = %1158
  %1165 = getelementptr inbounds i8, i8* %815, i64 %116
  %1166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1165, i64 noundef %818, i8* noundef %49, i64 noundef %1163, i32* noundef nonnull %21) #35
  br label %1468

1167:                                             ; preds = %1158
  %1168 = getelementptr inbounds i8, i8* %815, i64 %116
  %1169 = load i32, i32* %70, align 4, !tbaa !21
  %1170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1168, i64 noundef %818, i8* noundef %49, i32 noundef %1169, i64 noundef %1163, i32* noundef nonnull %21) #35
  br label %1468

1171:                                             ; preds = %1158
  %1172 = getelementptr inbounds i8, i8* %815, i64 %116
  %1173 = load i32, i32* %70, align 4, !tbaa !21
  %1174 = load i32, i32* %72, align 4, !tbaa !21
  %1175 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1172, i64 noundef %818, i8* noundef %49, i32 noundef %1173, i32 noundef %1174, i64 noundef %1163, i32* noundef nonnull %21) #35
  br label %1468

1176:                                             ; preds = %1158
  call void @abort() #37
  unreachable

1177:                                             ; preds = %813
  %1178 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1179 = load i64, i64* %125, align 8, !tbaa !106
  %1180 = getelementptr inbounds %struct.argument, %struct.argument* %1178, i64 %1179, i32 1
  %1181 = bitcast %union.anon.37* %1180 to i8*
  %1182 = load i8, i8* %1181, align 16, !tbaa !23
  switch i32 %781, label %1198 [
    i32 0, label %1183
    i32 1, label %1187
    i32 2, label %1192
  ]

1183:                                             ; preds = %1177
  %1184 = getelementptr inbounds i8, i8* %815, i64 %116
  %1185 = sext i8 %1182 to i32
  %1186 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1184, i64 noundef %818, i8* noundef %49, i32 noundef %1185, i32* noundef nonnull %21) #35
  br label %1468

1187:                                             ; preds = %1177
  %1188 = getelementptr inbounds i8, i8* %815, i64 %116
  %1189 = load i32, i32* %70, align 4, !tbaa !21
  %1190 = sext i8 %1182 to i32
  %1191 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1188, i64 noundef %818, i8* noundef %49, i32 noundef %1189, i32 noundef %1190, i32* noundef nonnull %21) #35
  br label %1468

1192:                                             ; preds = %1177
  %1193 = getelementptr inbounds i8, i8* %815, i64 %116
  %1194 = load i32, i32* %70, align 4, !tbaa !21
  %1195 = load i32, i32* %72, align 4, !tbaa !21
  %1196 = sext i8 %1182 to i32
  %1197 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1193, i64 noundef %818, i8* noundef %49, i32 noundef %1194, i32 noundef %1195, i32 noundef %1196, i32* noundef nonnull %21) #35
  br label %1468

1198:                                             ; preds = %1177
  call void @abort() #37
  unreachable

1199:                                             ; preds = %813
  %1200 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1201 = load i64, i64* %125, align 8, !tbaa !106
  %1202 = getelementptr inbounds %struct.argument, %struct.argument* %1200, i64 %1201, i32 1
  %1203 = bitcast %union.anon.37* %1202 to i8*
  %1204 = load i8, i8* %1203, align 16, !tbaa !23
  switch i32 %781, label %1220 [
    i32 0, label %1205
    i32 1, label %1209
    i32 2, label %1214
  ]

1205:                                             ; preds = %1199
  %1206 = getelementptr inbounds i8, i8* %815, i64 %116
  %1207 = zext i8 %1204 to i32
  %1208 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1206, i64 noundef %818, i8* noundef %49, i32 noundef %1207, i32* noundef nonnull %21) #35
  br label %1468

1209:                                             ; preds = %1199
  %1210 = getelementptr inbounds i8, i8* %815, i64 %116
  %1211 = load i32, i32* %70, align 4, !tbaa !21
  %1212 = zext i8 %1204 to i32
  %1213 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1210, i64 noundef %818, i8* noundef %49, i32 noundef %1211, i32 noundef %1212, i32* noundef nonnull %21) #35
  br label %1468

1214:                                             ; preds = %1199
  %1215 = getelementptr inbounds i8, i8* %815, i64 %116
  %1216 = load i32, i32* %70, align 4, !tbaa !21
  %1217 = load i32, i32* %72, align 4, !tbaa !21
  %1218 = zext i8 %1204 to i32
  %1219 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1215, i64 noundef %818, i8* noundef %49, i32 noundef %1216, i32 noundef %1217, i32 noundef %1218, i32* noundef nonnull %21) #35
  br label %1468

1220:                                             ; preds = %1199
  call void @abort() #37
  unreachable

1221:                                             ; preds = %813
  %1222 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1223 = load i64, i64* %125, align 8, !tbaa !106
  %1224 = getelementptr inbounds %struct.argument, %struct.argument* %1222, i64 %1223, i32 1
  %1225 = bitcast %union.anon.37* %1224 to i64*
  %1226 = load i64, i64* %1225, align 16, !tbaa !23
  switch i32 %781, label %1239 [
    i32 0, label %1227
    i32 1, label %1230
    i32 2, label %1234
  ]

1227:                                             ; preds = %1221
  %1228 = getelementptr inbounds i8, i8* %815, i64 %116
  %1229 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1228, i64 noundef %818, i8* noundef %49, i64 noundef %1226, i32* noundef nonnull %21) #35
  br label %1468

1230:                                             ; preds = %1221
  %1231 = getelementptr inbounds i8, i8* %815, i64 %116
  %1232 = load i32, i32* %70, align 4, !tbaa !21
  %1233 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1231, i64 noundef %818, i8* noundef %49, i32 noundef %1232, i64 noundef %1226, i32* noundef nonnull %21) #35
  br label %1468

1234:                                             ; preds = %1221
  %1235 = getelementptr inbounds i8, i8* %815, i64 %116
  %1236 = load i32, i32* %70, align 4, !tbaa !21
  %1237 = load i32, i32* %72, align 4, !tbaa !21
  %1238 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1235, i64 noundef %818, i8* noundef %49, i32 noundef %1236, i32 noundef %1237, i64 noundef %1226, i32* noundef nonnull %21) #35
  br label %1468

1239:                                             ; preds = %1221
  call void @abort() #37
  unreachable

1240:                                             ; preds = %813
  %1241 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1242 = load i64, i64* %125, align 8, !tbaa !106
  %1243 = getelementptr inbounds %struct.argument, %struct.argument* %1241, i64 %1242, i32 1
  %1244 = bitcast %union.anon.37* %1243 to i64*
  %1245 = load i64, i64* %1244, align 16, !tbaa !23
  switch i32 %781, label %1258 [
    i32 0, label %1246
    i32 1, label %1249
    i32 2, label %1253
  ]

1246:                                             ; preds = %1240
  %1247 = getelementptr inbounds i8, i8* %815, i64 %116
  %1248 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1247, i64 noundef %818, i8* noundef %49, i64 noundef %1245, i32* noundef nonnull %21) #35
  br label %1468

1249:                                             ; preds = %1240
  %1250 = getelementptr inbounds i8, i8* %815, i64 %116
  %1251 = load i32, i32* %70, align 4, !tbaa !21
  %1252 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1250, i64 noundef %818, i8* noundef %49, i32 noundef %1251, i64 noundef %1245, i32* noundef nonnull %21) #35
  br label %1468

1253:                                             ; preds = %1240
  %1254 = getelementptr inbounds i8, i8* %815, i64 %116
  %1255 = load i32, i32* %70, align 4, !tbaa !21
  %1256 = load i32, i32* %72, align 4, !tbaa !21
  %1257 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1254, i64 noundef %818, i8* noundef %49, i32 noundef %1255, i32 noundef %1256, i64 noundef %1245, i32* noundef nonnull %21) #35
  br label %1468

1258:                                             ; preds = %1240
  call void @abort() #37
  unreachable

1259:                                             ; preds = %813
  %1260 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1261 = load i64, i64* %125, align 8, !tbaa !106
  %1262 = getelementptr inbounds %struct.argument, %struct.argument* %1260, i64 %1261, i32 1
  %1263 = bitcast %union.anon.37* %1262 to i64*
  %1264 = load i64, i64* %1263, align 16, !tbaa !23
  switch i32 %781, label %1277 [
    i32 0, label %1265
    i32 1, label %1268
    i32 2, label %1272
  ]

1265:                                             ; preds = %1259
  %1266 = getelementptr inbounds i8, i8* %815, i64 %116
  %1267 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1266, i64 noundef %818, i8* noundef %49, i64 noundef %1264, i32* noundef nonnull %21) #35
  br label %1468

1268:                                             ; preds = %1259
  %1269 = getelementptr inbounds i8, i8* %815, i64 %116
  %1270 = load i32, i32* %70, align 4, !tbaa !21
  %1271 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1269, i64 noundef %818, i8* noundef %49, i32 noundef %1270, i64 noundef %1264, i32* noundef nonnull %21) #35
  br label %1468

1272:                                             ; preds = %1259
  %1273 = getelementptr inbounds i8, i8* %815, i64 %116
  %1274 = load i32, i32* %70, align 4, !tbaa !21
  %1275 = load i32, i32* %72, align 4, !tbaa !21
  %1276 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1273, i64 noundef %818, i8* noundef %49, i32 noundef %1274, i32 noundef %1275, i64 noundef %1264, i32* noundef nonnull %21) #35
  br label %1468

1277:                                             ; preds = %1259
  call void @abort() #37
  unreachable

1278:                                             ; preds = %813
  %1279 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1280 = load i64, i64* %125, align 8, !tbaa !106
  %1281 = getelementptr inbounds %struct.argument, %struct.argument* %1279, i64 %1280, i32 1
  %1282 = bitcast %union.anon.37* %1281 to i64*
  %1283 = load i64, i64* %1282, align 16, !tbaa !23
  switch i32 %781, label %1296 [
    i32 0, label %1284
    i32 1, label %1287
    i32 2, label %1291
  ]

1284:                                             ; preds = %1278
  %1285 = getelementptr inbounds i8, i8* %815, i64 %116
  %1286 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1285, i64 noundef %818, i8* noundef %49, i64 noundef %1283, i32* noundef nonnull %21) #35
  br label %1468

1287:                                             ; preds = %1278
  %1288 = getelementptr inbounds i8, i8* %815, i64 %116
  %1289 = load i32, i32* %70, align 4, !tbaa !21
  %1290 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1288, i64 noundef %818, i8* noundef %49, i32 noundef %1289, i64 noundef %1283, i32* noundef nonnull %21) #35
  br label %1468

1291:                                             ; preds = %1278
  %1292 = getelementptr inbounds i8, i8* %815, i64 %116
  %1293 = load i32, i32* %70, align 4, !tbaa !21
  %1294 = load i32, i32* %72, align 4, !tbaa !21
  %1295 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1292, i64 noundef %818, i8* noundef %49, i32 noundef %1293, i32 noundef %1294, i64 noundef %1283, i32* noundef nonnull %21) #35
  br label %1468

1296:                                             ; preds = %1278
  call void @abort() #37
  unreachable

1297:                                             ; preds = %813
  %1298 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1299 = load i64, i64* %125, align 8, !tbaa !106
  %1300 = getelementptr inbounds %struct.argument, %struct.argument* %1298, i64 %1299, i32 1
  %1301 = bitcast %union.anon.37* %1300 to i64*
  %1302 = load i64, i64* %1301, align 16, !tbaa !23
  switch i32 %781, label %1315 [
    i32 0, label %1303
    i32 1, label %1306
    i32 2, label %1310
  ]

1303:                                             ; preds = %1297
  %1304 = getelementptr inbounds i8, i8* %815, i64 %116
  %1305 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1304, i64 noundef %818, i8* noundef %49, i64 noundef %1302, i32* noundef nonnull %21) #35
  br label %1468

1306:                                             ; preds = %1297
  %1307 = getelementptr inbounds i8, i8* %815, i64 %116
  %1308 = load i32, i32* %70, align 4, !tbaa !21
  %1309 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1307, i64 noundef %818, i8* noundef %49, i32 noundef %1308, i64 noundef %1302, i32* noundef nonnull %21) #35
  br label %1468

1310:                                             ; preds = %1297
  %1311 = getelementptr inbounds i8, i8* %815, i64 %116
  %1312 = load i32, i32* %70, align 4, !tbaa !21
  %1313 = load i32, i32* %72, align 4, !tbaa !21
  %1314 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1311, i64 noundef %818, i8* noundef %49, i32 noundef %1312, i32 noundef %1313, i64 noundef %1302, i32* noundef nonnull %21) #35
  br label %1468

1315:                                             ; preds = %1297
  call void @abort() #37
  unreachable

1316:                                             ; preds = %813
  %1317 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1318 = load i64, i64* %125, align 8, !tbaa !106
  %1319 = getelementptr inbounds %struct.argument, %struct.argument* %1317, i64 %1318, i32 1
  %1320 = bitcast %union.anon.37* %1319 to i64*
  %1321 = load i64, i64* %1320, align 16, !tbaa !23
  switch i32 %781, label %1334 [
    i32 0, label %1322
    i32 1, label %1325
    i32 2, label %1329
  ]

1322:                                             ; preds = %1316
  %1323 = getelementptr inbounds i8, i8* %815, i64 %116
  %1324 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1323, i64 noundef %818, i8* noundef %49, i64 noundef %1321, i32* noundef nonnull %21) #35
  br label %1468

1325:                                             ; preds = %1316
  %1326 = getelementptr inbounds i8, i8* %815, i64 %116
  %1327 = load i32, i32* %70, align 4, !tbaa !21
  %1328 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1326, i64 noundef %818, i8* noundef %49, i32 noundef %1327, i64 noundef %1321, i32* noundef nonnull %21) #35
  br label %1468

1329:                                             ; preds = %1316
  %1330 = getelementptr inbounds i8, i8* %815, i64 %116
  %1331 = load i32, i32* %70, align 4, !tbaa !21
  %1332 = load i32, i32* %72, align 4, !tbaa !21
  %1333 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1330, i64 noundef %818, i8* noundef %49, i32 noundef %1331, i32 noundef %1332, i64 noundef %1321, i32* noundef nonnull %21) #35
  br label %1468

1334:                                             ; preds = %1316
  call void @abort() #37
  unreachable

1335:                                             ; preds = %813
  %1336 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1337 = load i64, i64* %125, align 8, !tbaa !106
  %1338 = getelementptr inbounds %struct.argument, %struct.argument* %1336, i64 %1337, i32 1
  %1339 = bitcast %union.anon.37* %1338 to double*
  %1340 = load double, double* %1339, align 16, !tbaa !23
  switch i32 %781, label %1353 [
    i32 0, label %1341
    i32 1, label %1344
    i32 2, label %1348
  ]

1341:                                             ; preds = %1335
  %1342 = getelementptr inbounds i8, i8* %815, i64 %116
  %1343 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1342, i64 noundef %818, i8* noundef %49, double noundef %1340, i32* noundef nonnull %21) #35
  br label %1468

1344:                                             ; preds = %1335
  %1345 = getelementptr inbounds i8, i8* %815, i64 %116
  %1346 = load i32, i32* %70, align 4, !tbaa !21
  %1347 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1345, i64 noundef %818, i8* noundef %49, i32 noundef %1346, double noundef %1340, i32* noundef nonnull %21) #35
  br label %1468

1348:                                             ; preds = %1335
  %1349 = getelementptr inbounds i8, i8* %815, i64 %116
  %1350 = load i32, i32* %70, align 4, !tbaa !21
  %1351 = load i32, i32* %72, align 4, !tbaa !21
  %1352 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1349, i64 noundef %818, i8* noundef %49, i32 noundef %1350, i32 noundef %1351, double noundef %1340, i32* noundef nonnull %21) #35
  br label %1468

1353:                                             ; preds = %1335
  call void @abort() #37
  unreachable

1354:                                             ; preds = %813
  %1355 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1356 = load i64, i64* %125, align 8, !tbaa !106
  %1357 = getelementptr inbounds %struct.argument, %struct.argument* %1355, i64 %1356, i32 1, i32 0
  %1358 = load fp128, fp128* %1357, align 16, !tbaa !23
  switch i32 %781, label %1371 [
    i32 0, label %1359
    i32 1, label %1362
    i32 2, label %1366
  ]

1359:                                             ; preds = %1354
  %1360 = getelementptr inbounds i8, i8* %815, i64 %116
  %1361 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1360, i64 noundef %818, i8* noundef %49, fp128 noundef %1358, i32* noundef nonnull %21) #35
  br label %1468

1362:                                             ; preds = %1354
  %1363 = getelementptr inbounds i8, i8* %815, i64 %116
  %1364 = load i32, i32* %70, align 4, !tbaa !21
  %1365 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1363, i64 noundef %818, i8* noundef %49, i32 noundef %1364, fp128 noundef %1358, i32* noundef nonnull %21) #35
  br label %1468

1366:                                             ; preds = %1354
  %1367 = getelementptr inbounds i8, i8* %815, i64 %116
  %1368 = load i32, i32* %70, align 4, !tbaa !21
  %1369 = load i32, i32* %72, align 4, !tbaa !21
  %1370 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1367, i64 noundef %818, i8* noundef %49, i32 noundef %1368, i32 noundef %1369, fp128 noundef %1358, i32* noundef nonnull %21) #35
  br label %1468

1371:                                             ; preds = %1354
  call void @abort() #37
  unreachable

1372:                                             ; preds = %813
  %1373 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1374 = load i64, i64* %125, align 8, !tbaa !106
  %1375 = getelementptr inbounds %struct.argument, %struct.argument* %1373, i64 %1374, i32 1
  %1376 = bitcast %union.anon.37* %1375 to i32*
  %1377 = load i32, i32* %1376, align 16, !tbaa !23
  switch i32 %781, label %1390 [
    i32 0, label %1378
    i32 1, label %1381
    i32 2, label %1385
  ]

1378:                                             ; preds = %1372
  %1379 = getelementptr inbounds i8, i8* %815, i64 %116
  %1380 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1379, i64 noundef %818, i8* noundef %49, i32 noundef %1377, i32* noundef nonnull %21) #35
  br label %1468

1381:                                             ; preds = %1372
  %1382 = getelementptr inbounds i8, i8* %815, i64 %116
  %1383 = load i32, i32* %70, align 4, !tbaa !21
  %1384 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1382, i64 noundef %818, i8* noundef %49, i32 noundef %1383, i32 noundef %1377, i32* noundef nonnull %21) #35
  br label %1468

1385:                                             ; preds = %1372
  %1386 = getelementptr inbounds i8, i8* %815, i64 %116
  %1387 = load i32, i32* %70, align 4, !tbaa !21
  %1388 = load i32, i32* %72, align 4, !tbaa !21
  %1389 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1386, i64 noundef %818, i8* noundef %49, i32 noundef %1387, i32 noundef %1388, i32 noundef %1377, i32* noundef nonnull %21) #35
  br label %1468

1390:                                             ; preds = %1372
  call void @abort() #37
  unreachable

1391:                                             ; preds = %813
  %1392 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1393 = load i64, i64* %125, align 8, !tbaa !106
  %1394 = getelementptr inbounds %struct.argument, %struct.argument* %1392, i64 %1393, i32 1
  %1395 = bitcast %union.anon.37* %1394 to i32*
  %1396 = load i32, i32* %1395, align 16, !tbaa !23
  switch i32 %781, label %1409 [
    i32 0, label %1397
    i32 1, label %1400
    i32 2, label %1404
  ]

1397:                                             ; preds = %1391
  %1398 = getelementptr inbounds i8, i8* %815, i64 %116
  %1399 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1398, i64 noundef %818, i8* noundef %49, i32 noundef %1396, i32* noundef nonnull %21) #35
  br label %1468

1400:                                             ; preds = %1391
  %1401 = getelementptr inbounds i8, i8* %815, i64 %116
  %1402 = load i32, i32* %70, align 4, !tbaa !21
  %1403 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1401, i64 noundef %818, i8* noundef %49, i32 noundef %1402, i32 noundef %1396, i32* noundef nonnull %21) #35
  br label %1468

1404:                                             ; preds = %1391
  %1405 = getelementptr inbounds i8, i8* %815, i64 %116
  %1406 = load i32, i32* %70, align 4, !tbaa !21
  %1407 = load i32, i32* %72, align 4, !tbaa !21
  %1408 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1405, i64 noundef %818, i8* noundef %49, i32 noundef %1406, i32 noundef %1407, i32 noundef %1396, i32* noundef nonnull %21) #35
  br label %1468

1409:                                             ; preds = %1391
  call void @abort() #37
  unreachable

1410:                                             ; preds = %813
  %1411 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1412 = load i64, i64* %125, align 8, !tbaa !106
  %1413 = getelementptr inbounds %struct.argument, %struct.argument* %1411, i64 %1412, i32 1
  %1414 = bitcast %union.anon.37* %1413 to i8**
  %1415 = load i8*, i8** %1414, align 16, !tbaa !23
  switch i32 %781, label %1428 [
    i32 0, label %1416
    i32 1, label %1419
    i32 2, label %1423
  ]

1416:                                             ; preds = %1410
  %1417 = getelementptr inbounds i8, i8* %815, i64 %116
  %1418 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1417, i64 noundef %818, i8* noundef %49, i8* noundef %1415, i32* noundef nonnull %21) #35
  br label %1468

1419:                                             ; preds = %1410
  %1420 = getelementptr inbounds i8, i8* %815, i64 %116
  %1421 = load i32, i32* %70, align 4, !tbaa !21
  %1422 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1420, i64 noundef %818, i8* noundef %49, i32 noundef %1421, i8* noundef %1415, i32* noundef nonnull %21) #35
  br label %1468

1423:                                             ; preds = %1410
  %1424 = getelementptr inbounds i8, i8* %815, i64 %116
  %1425 = load i32, i32* %70, align 4, !tbaa !21
  %1426 = load i32, i32* %72, align 4, !tbaa !21
  %1427 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1424, i64 noundef %818, i8* noundef %49, i32 noundef %1425, i32 noundef %1426, i8* noundef %1415, i32* noundef nonnull %21) #35
  br label %1468

1428:                                             ; preds = %1410
  call void @abort() #37
  unreachable

1429:                                             ; preds = %813
  %1430 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1431 = load i64, i64* %125, align 8, !tbaa !106
  %1432 = getelementptr inbounds %struct.argument, %struct.argument* %1430, i64 %1431, i32 1
  %1433 = bitcast %union.anon.37* %1432 to i32**
  %1434 = load i32*, i32** %1433, align 16, !tbaa !23
  switch i32 %781, label %1447 [
    i32 0, label %1435
    i32 1, label %1438
    i32 2, label %1442
  ]

1435:                                             ; preds = %1429
  %1436 = getelementptr inbounds i8, i8* %815, i64 %116
  %1437 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1436, i64 noundef %818, i8* noundef %49, i32* noundef %1434, i32* noundef nonnull %21) #35
  br label %1468

1438:                                             ; preds = %1429
  %1439 = getelementptr inbounds i8, i8* %815, i64 %116
  %1440 = load i32, i32* %70, align 4, !tbaa !21
  %1441 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1439, i64 noundef %818, i8* noundef %49, i32 noundef %1440, i32* noundef %1434, i32* noundef nonnull %21) #35
  br label %1468

1442:                                             ; preds = %1429
  %1443 = getelementptr inbounds i8, i8* %815, i64 %116
  %1444 = load i32, i32* %70, align 4, !tbaa !21
  %1445 = load i32, i32* %72, align 4, !tbaa !21
  %1446 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1443, i64 noundef %818, i8* noundef %49, i32 noundef %1444, i32 noundef %1445, i32* noundef %1434, i32* noundef nonnull %21) #35
  br label %1468

1447:                                             ; preds = %1429
  call void @abort() #37
  unreachable

1448:                                             ; preds = %813
  %1449 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1450 = load i64, i64* %125, align 8, !tbaa !106
  %1451 = getelementptr inbounds %struct.argument, %struct.argument* %1449, i64 %1450, i32 1
  %1452 = bitcast %union.anon.37* %1451 to i8**
  %1453 = load i8*, i8** %1452, align 16, !tbaa !23
  switch i32 %781, label %1466 [
    i32 0, label %1454
    i32 1, label %1457
    i32 2, label %1461
  ]

1454:                                             ; preds = %1448
  %1455 = getelementptr inbounds i8, i8* %815, i64 %116
  %1456 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1455, i64 noundef %818, i8* noundef %49, i8* noundef %1453, i32* noundef nonnull %21) #35
  br label %1468

1457:                                             ; preds = %1448
  %1458 = getelementptr inbounds i8, i8* %815, i64 %116
  %1459 = load i32, i32* %70, align 4, !tbaa !21
  %1460 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1458, i64 noundef %818, i8* noundef %49, i32 noundef %1459, i8* noundef %1453, i32* noundef nonnull %21) #35
  br label %1468

1461:                                             ; preds = %1448
  %1462 = getelementptr inbounds i8, i8* %815, i64 %116
  %1463 = load i32, i32* %70, align 4, !tbaa !21
  %1464 = load i32, i32* %72, align 4, !tbaa !21
  %1465 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1462, i64 noundef %818, i8* noundef %49, i32 noundef %1463, i32 noundef %1464, i8* noundef %1453, i32* noundef nonnull %21) #35
  br label %1468

1466:                                             ; preds = %1448
  call void @abort() #37
  unreachable

1467:                                             ; preds = %813
  call void @abort() #37
  unreachable

1468:                                             ; preds = %1454, %1457, %1461, %1435, %1438, %1442, %1416, %1419, %1423, %1397, %1400, %1404, %1378, %1381, %1385, %1359, %1362, %1366, %1341, %1344, %1348, %1322, %1325, %1329, %1303, %1306, %1310, %1284, %1287, %1291, %1265, %1268, %1272, %1246, %1249, %1253, %1227, %1230, %1234, %1205, %1209, %1214, %1183, %1187, %1192, %1164, %1167, %1171, %1145, %1148, %1152, %1126, %1129, %1133, %1107, %1110, %1114, %1085, %1089, %1094, %1063, %1067, %1072, %1041, %1045, %1050, %1019, %1023, %1028, %1000, %1003, %1007, %981, %984, %988, %962, %965, %969, %943, %946, %950, %924, %927, %931, %905, %908, %912, %886, %889, %893, %866, %869, %873, %846, %849, %853, %826, %829, %833
  %1469 = phi i32 [ %837, %833 ], [ %832, %829 ], [ %828, %826 ], [ %857, %853 ], [ %852, %849 ], [ %848, %846 ], [ %877, %873 ], [ %872, %869 ], [ %868, %866 ], [ %897, %893 ], [ %892, %889 ], [ %888, %886 ], [ %916, %912 ], [ %911, %908 ], [ %907, %905 ], [ %935, %931 ], [ %930, %927 ], [ %926, %924 ], [ %954, %950 ], [ %949, %946 ], [ %945, %943 ], [ %973, %969 ], [ %968, %965 ], [ %964, %962 ], [ %992, %988 ], [ %987, %984 ], [ %983, %981 ], [ %1011, %1007 ], [ %1006, %1003 ], [ %1002, %1000 ], [ %1033, %1028 ], [ %1027, %1023 ], [ %1022, %1019 ], [ %1055, %1050 ], [ %1049, %1045 ], [ %1044, %1041 ], [ %1077, %1072 ], [ %1071, %1067 ], [ %1066, %1063 ], [ %1099, %1094 ], [ %1093, %1089 ], [ %1088, %1085 ], [ %1118, %1114 ], [ %1113, %1110 ], [ %1109, %1107 ], [ %1137, %1133 ], [ %1132, %1129 ], [ %1128, %1126 ], [ %1156, %1152 ], [ %1151, %1148 ], [ %1147, %1145 ], [ %1175, %1171 ], [ %1170, %1167 ], [ %1166, %1164 ], [ %1197, %1192 ], [ %1191, %1187 ], [ %1186, %1183 ], [ %1219, %1214 ], [ %1213, %1209 ], [ %1208, %1205 ], [ %1238, %1234 ], [ %1233, %1230 ], [ %1229, %1227 ], [ %1257, %1253 ], [ %1252, %1249 ], [ %1248, %1246 ], [ %1276, %1272 ], [ %1271, %1268 ], [ %1267, %1265 ], [ %1295, %1291 ], [ %1290, %1287 ], [ %1286, %1284 ], [ %1314, %1310 ], [ %1309, %1306 ], [ %1305, %1303 ], [ %1333, %1329 ], [ %1328, %1325 ], [ %1324, %1322 ], [ %1352, %1348 ], [ %1347, %1344 ], [ %1343, %1341 ], [ %1370, %1366 ], [ %1365, %1362 ], [ %1361, %1359 ], [ %1389, %1385 ], [ %1384, %1381 ], [ %1380, %1378 ], [ %1408, %1404 ], [ %1403, %1400 ], [ %1399, %1397 ], [ %1427, %1423 ], [ %1422, %1419 ], [ %1418, %1416 ], [ %1446, %1442 ], [ %1441, %1438 ], [ %1437, %1435 ], [ %1465, %1461 ], [ %1460, %1457 ], [ %1456, %1454 ]
  %1470 = load i32, i32* %21, align 4, !tbaa !21
  %1471 = icmp sgt i32 %1470, -1
  br i1 %1471, label %1472, label %1483

1472:                                             ; preds = %1468
  %1473 = zext i32 %1470 to i64
  %1474 = icmp ugt i64 %818, %1473
  br i1 %1474, label %1475, label %1481

1475:                                             ; preds = %1472
  %1476 = getelementptr inbounds i8, i8* %815, i64 %116
  %1477 = getelementptr inbounds i8, i8* %1476, i64 %1473
  %1478 = load i8, i8* %1477, align 1, !tbaa !23
  %1479 = icmp eq i8 %1478, 0
  br i1 %1479, label %1481, label %1480

1480:                                             ; preds = %1475
  call void @abort() #37
  unreachable

1481:                                             ; preds = %1475, %1472
  %1482 = icmp sgt i32 %1469, %1470
  br i1 %1482, label %1490, label %1500

1483:                                             ; preds = %1468
  %1484 = load i8, i8* %748, align 1, !tbaa !23
  %1485 = icmp eq i8 %1484, 0
  br i1 %1485, label %1487, label %1486

1486:                                             ; preds = %1483
  store i8 0, i8* %748, align 1, !tbaa !23
  br label %1535

1487:                                             ; preds = %1483
  %1488 = icmp slt i32 %1469, 0
  br i1 %1488, label %1492, label %1489

1489:                                             ; preds = %1487
  store i32 %1469, i32* %21, align 4, !tbaa !21
  br label %1500

1490:                                             ; preds = %1481
  store i32 %1469, i32* %21, align 4, !tbaa !21
  %1491 = icmp slt i32 %1469, 0
  br i1 %1491, label %1492, label %1500

1492:                                             ; preds = %1487, %1490
  %1493 = load i32, i32* %810, align 4, !tbaa !21
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1495, label %1542

1495:                                             ; preds = %1492
  %1496 = load i8, i8* %122, align 8, !tbaa !105
  %1497 = and i8 %1496, -17
  %1498 = icmp eq i8 %1497, 99
  %1499 = select i1 %1498, i32 84, i32 22
  store i32 %1499, i32* %810, align 4, !tbaa !21
  br label %1542

1500:                                             ; preds = %1481, %1489, %1490
  %1501 = phi i32 [ %1469, %1489 ], [ %1469, %1490 ], [ %1470, %1481 ]
  %1502 = add nuw i32 %1501, 1
  %1503 = zext i32 %1502 to i64
  %1504 = icmp ugt i64 %818, %1503
  br i1 %1504, label %1538, label %1505

1505:                                             ; preds = %1500
  %1506 = icmp ugt i64 %816, 2147483646
  br i1 %1506, label %1544, label %1507

1507:                                             ; preds = %1505
  %1508 = add nuw i32 %1501, 2
  %1509 = zext i32 %1508 to i64
  %1510 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 %1509) #35
  %1511 = icmp sgt i64 %814, -1
  %1512 = shl i64 %814, 1
  %1513 = select i1 %1511, i64 %1512, i64 -1
  %1514 = icmp ult i64 %1510, %1513
  %1515 = select i1 %1514, i64 %1513, i64 %1510
  %1516 = icmp ugt i64 %1515, %814
  br i1 %1516, label %1517, label %1535

1517:                                             ; preds = %1507
  %1518 = icmp eq i64 %814, 0
  %1519 = select i1 %1518, i64 12, i64 %1513
  %1520 = icmp ugt i64 %1515, %1519
  %1521 = select i1 %1520, i64 %1515, i64 %1519
  %1522 = icmp eq i64 %1521, -1
  br i1 %1522, label %1543, label %1523

1523:                                             ; preds = %1517
  %1524 = icmp eq i8* %815, %0
  br i1 %1524, label %1525, label %1527

1525:                                             ; preds = %1523
  %1526 = call noalias i8* @malloc(i64 noundef %1521) #35
  br label %1529

1527:                                             ; preds = %1523
  %1528 = call i8* @realloc(i8* noundef %815, i64 noundef %1521) #35
  br label %1529

1529:                                             ; preds = %1527, %1525
  %1530 = phi i8* [ %1526, %1525 ], [ %1528, %1527 ]
  %1531 = icmp eq i8* %1530, null
  br i1 %1531, label %1543, label %1532

1532:                                             ; preds = %1529
  %1533 = select i1 %1524, i1 %812, i1 false
  br i1 %1533, label %1534, label %1535

1534:                                             ; preds = %1532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1530, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %1535

1535:                                             ; preds = %1532, %1534, %1507, %1486
  %1536 = phi i64 [ %814, %1486 ], [ %814, %1507 ], [ %1521, %1534 ], [ %1521, %1532 ]
  %1537 = phi i8* [ %815, %1486 ], [ %815, %1507 ], [ %1530, %1534 ], [ %1530, %1532 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #35
  br label %813

1538:                                             ; preds = %1500
  %1539 = zext i32 %1501 to i64
  %1540 = add i64 %116, %1539
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #35
  store i32 %811, i32* %810, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1545

1541:                                             ; preds = %784, %799
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1612

1542:                                             ; preds = %1495, %1492
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1618

1543:                                             ; preds = %1529, %1517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1612

1544:                                             ; preds = %1505
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35
  br label %1609

1545:                                             ; preds = %596, %628, %300, %306, %1538, %155
  %1546 = phi i64 [ %131, %155 ], [ %1540, %1538 ], [ %303, %300 ], [ %308, %306 ], [ %597, %596 ], [ %632, %628 ]
  %1547 = phi i64 [ %156, %155 ], [ %814, %1538 ], [ %292, %300 ], [ %292, %306 ], [ %598, %596 ], [ %629, %628 ]
  %1548 = phi i8* [ %157, %155 ], [ %815, %1538 ], [ %293, %300 ], [ %293, %306 ], [ %599, %596 ], [ %630, %628 ]
  %1549 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 0, i32 1
  %1550 = load i8*, i8** %1549, align 8, !tbaa !125
  %1551 = add i64 %75, 1
  %1552 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %74, i64 1
  br label %73

1553:                                             ; preds = %115
  %1554 = call i64 @llvm.uadd.sat.i64(i64 %116, i64 1) #35
  %1555 = icmp ugt i64 %1554, %117
  br i1 %1555, label %1556, label %1578

1556:                                             ; preds = %1553
  %1557 = icmp eq i64 %117, 0
  %1558 = icmp sgt i64 %117, -1
  %1559 = shl i64 %117, 1
  %1560 = select i1 %1558, i64 %1559, i64 -1
  %1561 = select i1 %1557, i64 12, i64 %1560
  %1562 = icmp ugt i64 %1554, %1561
  %1563 = select i1 %1562, i64 %1554, i64 %1561
  %1564 = icmp eq i64 %1563, -1
  br i1 %1564, label %1612, label %1565

1565:                                             ; preds = %1556
  %1566 = icmp eq i8* %118, %0
  br i1 %1566, label %1567, label %1569

1567:                                             ; preds = %1565
  %1568 = call noalias i8* @malloc(i64 noundef %1563) #35
  br label %1571

1569:                                             ; preds = %1565
  %1570 = call i8* @realloc(i8* noundef %118, i64 noundef %1563) #35
  br label %1571

1571:                                             ; preds = %1569, %1567
  %1572 = phi i8* [ %1568, %1567 ], [ %1570, %1569 ]
  %1573 = icmp eq i8* %1572, null
  br i1 %1573, label %1612, label %1574

1574:                                             ; preds = %1571
  %1575 = icmp ne i64 %116, 0
  %1576 = select i1 %1566, i1 %1575, i1 false
  br i1 %1576, label %1577, label %1578

1577:                                             ; preds = %1574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1572, i8* noundef nonnull align 1 %0, i64 noundef %116, i1 noundef false) #35
  br label %1578

1578:                                             ; preds = %1574, %1577, %1553
  %1579 = phi i64 [ %117, %1553 ], [ %1563, %1577 ], [ %1563, %1574 ]
  %1580 = phi i8* [ %118, %1553 ], [ %1572, %1577 ], [ %1572, %1574 ]
  %1581 = getelementptr inbounds i8, i8* %1580, i64 %116
  store i8 0, i8* %1581, align 1, !tbaa !23
  %1582 = icmp eq i8* %1580, %0
  br i1 %1582, label %1592, label %1583

1583:                                             ; preds = %1578
  %1584 = add i64 %116, 1
  %1585 = icmp ult i64 %1584, %1579
  br i1 %1585, label %1586, label %1592

1586:                                             ; preds = %1583
  %1587 = icmp eq i64 %1584, 0
  %1588 = select i1 %1587, i64 1, i64 %1584
  %1589 = call i8* @realloc(i8* noundef nonnull %1580, i64 noundef %1588) #35
  %1590 = icmp eq i8* %1589, null
  %1591 = select i1 %1590, i8* %1580, i8* %1589
  br label %1592

1592:                                             ; preds = %1586, %1583, %1578
  %1593 = phi i8* [ %1591, %1586 ], [ %1580, %1583 ], [ %0, %1578 ]
  %1594 = icmp eq i8* %48, null
  br i1 %1594, label %1596, label %1595

1595:                                             ; preds = %1592
  call void @free(i8* noundef nonnull %48) #35
  br label %1596

1596:                                             ; preds = %1595, %1592
  %1597 = load %struct.char_directive*, %struct.char_directive** %55, align 8, !tbaa !101
  %1598 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 4, i64 0
  %1599 = icmp eq %struct.char_directive* %1597, %1598
  br i1 %1599, label %1602, label %1600

1600:                                             ; preds = %1596
  %1601 = bitcast %struct.char_directive* %1597 to i8*
  call void @free(i8* noundef %1601) #35
  br label %1602

1602:                                             ; preds = %1600, %1596
  %1603 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1604 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i64 0, i32 2, i64 0
  %1605 = icmp eq %struct.argument* %1603, %1604
  br i1 %1605, label %1608, label %1606

1606:                                             ; preds = %1602
  %1607 = bitcast %struct.argument* %1603 to i8*
  call void @free(i8* noundef %1607) #35
  br label %1608

1608:                                             ; preds = %1606, %1602
  store i64 %116, i64* %1, align 8, !tbaa !33
  br label %1653

1609:                                             ; preds = %340, %206, %1544, %721
  %1610 = phi i8* [ %815, %1544 ], [ %118, %721 ], [ %118, %206 ], [ %118, %340 ]
  %1611 = tail call i32* @__errno_location() #38
  store i32 75, i32* %1611, align 4, !tbaa !21
  br label %1618

1612:                                             ; preds = %269, %284, %621, %606, %471, %456, %148, %133, %104, %89, %633, %542, %1556, %1571, %1543, %1541
  %1613 = phi i8* [ %118, %1541 ], [ %815, %1543 ], [ %118, %1556 ], [ %118, %1571 ], [ %486, %542 ], [ %551, %633 ], [ %118, %269 ], [ %118, %284 ], [ %599, %621 ], [ %599, %606 ], [ %118, %471 ], [ %118, %456 ], [ %118, %148 ], [ %118, %133 ], [ %79, %104 ], [ %79, %89 ]
  %1614 = tail call i32* @__errno_location() #38
  store i32 12, i32* %1614, align 4, !tbaa !21
  br label %1618

1615:                                             ; preds = %634, %438, %418
  %1616 = phi i8* [ %118, %418 ], [ %551, %634 ], [ %118, %438 ]
  %1617 = tail call i32* @__errno_location() #38
  store i32 84, i32* %1617, align 4, !tbaa !21
  br label %1618

1618:                                             ; preds = %1542, %1615, %1612, %1609
  %1619 = phi i8* [ %1613, %1612 ], [ %1610, %1609 ], [ %1616, %1615 ], [ %815, %1542 ]
  %1620 = icmp eq i8* %1619, %0
  br i1 %1620, label %1622, label %1621

1621:                                             ; preds = %1618
  call void @free(i8* noundef %1619) #35
  br label %1622

1622:                                             ; preds = %1621, %1618
  %1623 = icmp eq i8* %48, null
  br i1 %1623, label %1625, label %1624

1624:                                             ; preds = %1622
  call void @free(i8* noundef nonnull %48) #35
  br label %1625

1625:                                             ; preds = %1624, %1622
  %1626 = load %struct.char_directive*, %struct.char_directive** %55, align 8, !tbaa !101
  %1627 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 4, i64 0
  %1628 = icmp eq %struct.char_directive* %1626, %1627
  br i1 %1628, label %1631, label %1629

1629:                                             ; preds = %1625
  %1630 = bitcast %struct.char_directive* %1626 to i8*
  call void @free(i8* noundef %1630) #35
  br label %1631

1631:                                             ; preds = %1629, %1625
  %1632 = load %struct.argument*, %struct.argument** %58, align 8, !tbaa !107
  %1633 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i64 0, i32 2, i64 0
  %1634 = icmp eq %struct.argument* %1632, %1633
  br i1 %1634, label %1653, label %1635

1635:                                             ; preds = %1631
  %1636 = bitcast %struct.argument* %1632 to i8*
  call void @free(i8* noundef %1636) #35
  br label %1653

1637:                                             ; preds = %26, %42, %44
  %1638 = phi i32 [ 12, %44 ], [ 12, %42 ], [ 22, %26 ]
  %1639 = tail call i32* @__errno_location() #38
  store i32 %1638, i32* %1639, align 4, !tbaa !21
  %1640 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 1
  %1641 = load %struct.char_directive*, %struct.char_directive** %1640, align 8, !tbaa !101
  %1642 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %5, i64 0, i32 4, i64 0
  %1643 = icmp eq %struct.char_directive* %1641, %1642
  br i1 %1643, label %1646, label %1644

1644:                                             ; preds = %1637
  %1645 = bitcast %struct.char_directive* %1641 to i8*
  call void @free(i8* noundef %1645) #35
  br label %1646

1646:                                             ; preds = %1644, %1637
  %1647 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i64 0, i32 1
  %1648 = load %struct.argument*, %struct.argument** %1647, align 8, !tbaa !107
  %1649 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i64 0, i32 2, i64 0
  %1650 = icmp eq %struct.argument* %1648, %1649
  br i1 %1650, label %1653, label %1651

1651:                                             ; preds = %1646
  %1652 = bitcast %struct.argument* %1648 to i8*
  call void @free(i8* noundef %1652) #35
  br label %1653

1653:                                             ; preds = %1631, %1635, %1608, %1646, %1651, %4
  %1654 = phi i8* [ null, %4 ], [ null, %1651 ], [ null, %1646 ], [ null, %1631 ], [ null, %1635 ], [ %1593, %1608 ]
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %23) #35
  call void @llvm.lifetime.end.p0i8(i64 648, i8* nonnull %22) #35
  ret i8* %1654
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nounwind
declare i64 @wcrtomb(i8* noundef, i32 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @wcslen(i32* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  store i8 0, i8* %18, align 1, !tbaa !23
  br label %19

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @printf_fetchargs(%"struct.std::__va_list"* noundef %0, %struct.arguments* nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.arguments, %struct.arguments* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 16, !tbaa !126
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %917, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.arguments, %struct.arguments* %1, i64 0, i32 1
  %8 = load %struct.argument*, %struct.argument** %7, align 8, !tbaa !107
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i64 0, i32 0
  %12 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i64 0, i32 4
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %6, %912
  %15 = phi %struct.argument* [ %8, %6 ], [ %914, %912 ]
  %16 = phi i64 [ 0, %6 ], [ %913, %912 ]
  %17 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 0
  %18 = load i32, i32* %17, align 16, !tbaa !109
  switch i32 %18, label %911 [
    i32 1, label %19
    i32 2, label %39
    i32 3, label %59
    i32 4, label %79
    i32 5, label %99
    i32 6, label %118
    i32 7, label %137
    i32 8, label %156
    i32 9, label %175
    i32 10, label %194
    i32 11, label %213
    i32 12, label %233
    i32 13, label %253
    i32 14, label %273
    i32 15, label %293
    i32 16, label %312
    i32 17, label %331
    i32 18, label %350
    i32 19, label %369
    i32 20, label %389
    i32 21, label %409
    i32 22, label %428
    i32 23, label %447
    i32 24, label %466
    i32 25, label %485
    i32 26, label %504
    i32 27, label %523
    i32 28, label %542
    i32 29, label %565
    i32 30, label %584
    i32 31, label %603
    i32 32, label %624
    i32 33, label %645
    i32 34, label %664
    i32 35, label %683
    i32 36, label %702
    i32 37, label %721
    i32 38, label %740
    i32 39, label %759
    i32 40, label %778
    i32 41, label %797
    i32 42, label %816
    i32 43, label %835
    i32 44, label %854
    i32 45, label %873
    i32 46, label %892
    i32 0, label %917
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 8
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %20, 8
  store i32 %23, i32* %9, align 8
  %24 = icmp ult i32 %20, -7
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  br label %32

29:                                               ; preds = %22, %19
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i8* [ %28, %25 ], [ %30, %29 ]
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %38 = bitcast %union.anon.37* %37 to i8*
  store i8 %36, i8* %38, align 16, !tbaa !23
  br label %912

39:                                               ; preds = %14
  %40 = load i32, i32* %9, align 8
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = add nsw i32 %40, 8
  store i32 %43, i32* %9, align 8
  %44 = icmp ult i32 %40, -7
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %40 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  br label %52

49:                                               ; preds = %42, %39
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i8* [ %48, %45 ], [ %50, %49 ]
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %58 = bitcast %union.anon.37* %57 to i8*
  store i8 %56, i8* %58, align 16, !tbaa !23
  br label %912

59:                                               ; preds = %14
  %60 = load i32, i32* %9, align 8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = add nsw i32 %60, 8
  store i32 %63, i32* %9, align 8
  %64 = icmp ult i32 %60, -7
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = sext i32 %60 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  br label %72

69:                                               ; preds = %62, %59
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i8* [ %68, %65 ], [ %70, %69 ]
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %78 = bitcast %union.anon.37* %77 to i16*
  store i16 %76, i16* %78, align 16, !tbaa !23
  br label %912

79:                                               ; preds = %14
  %80 = load i32, i32* %9, align 8
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = add nsw i32 %80, 8
  store i32 %83, i32* %9, align 8
  %84 = icmp ult i32 %80, -7
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %10, align 8
  %87 = sext i32 %80 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  br label %92

89:                                               ; preds = %82, %79
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i8* [ %88, %85 ], [ %90, %89 ]
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %98 = bitcast %union.anon.37* %97 to i16*
  store i16 %96, i16* %98, align 16, !tbaa !23
  br label %912

99:                                               ; preds = %14
  %100 = load i32, i32* %9, align 8
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = add nsw i32 %100, 8
  store i32 %103, i32* %9, align 8
  %104 = icmp ult i32 %100, -7
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  %107 = sext i32 %100 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  br label %112

109:                                              ; preds = %102, %99
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 8
  store i8* %111, i8** %11, align 8
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i8* [ %108, %105 ], [ %110, %109 ]
  %114 = bitcast i8* %113 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %117 = bitcast %union.anon.37* %116 to i32*
  store i32 %115, i32* %117, align 16, !tbaa !23
  br label %912

118:                                              ; preds = %14
  %119 = load i32, i32* %9, align 8
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = add nsw i32 %119, 8
  store i32 %122, i32* %9, align 8
  %123 = icmp ult i32 %119, -7
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %10, align 8
  %126 = sext i32 %119 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  br label %131

128:                                              ; preds = %121, %118
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 8
  store i8* %130, i8** %11, align 8
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i8* [ %127, %124 ], [ %129, %128 ]
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %136 = bitcast %union.anon.37* %135 to i32*
  store i32 %134, i32* %136, align 16, !tbaa !23
  br label %912

137:                                              ; preds = %14
  %138 = load i32, i32* %9, align 8
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = add nsw i32 %138, 8
  store i32 %141, i32* %9, align 8
  %142 = icmp ult i32 %138, -7
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** %10, align 8
  %145 = sext i32 %138 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  br label %150

147:                                              ; preds = %140, %137
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 8
  store i8* %149, i8** %11, align 8
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi i8* [ %146, %143 ], [ %148, %147 ]
  %152 = bitcast i8* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %155 = bitcast %union.anon.37* %154 to i64*
  store i64 %153, i64* %155, align 16, !tbaa !23
  br label %912

156:                                              ; preds = %14
  %157 = load i32, i32* %9, align 8
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = add nsw i32 %157, 8
  store i32 %160, i32* %9, align 8
  %161 = icmp ult i32 %157, -7
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i8*, i8** %10, align 8
  %164 = sext i32 %157 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  br label %169

166:                                              ; preds = %159, %156
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 8
  store i8* %168, i8** %11, align 8
  br label %169

169:                                              ; preds = %166, %162
  %170 = phi i8* [ %165, %162 ], [ %167, %166 ]
  %171 = bitcast i8* %170 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %174 = bitcast %union.anon.37* %173 to i64*
  store i64 %172, i64* %174, align 16, !tbaa !23
  br label %912

175:                                              ; preds = %14
  %176 = load i32, i32* %9, align 8
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = add nsw i32 %176, 8
  store i32 %179, i32* %9, align 8
  %180 = icmp ult i32 %176, -7
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %10, align 8
  %183 = sext i32 %176 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  br label %188

185:                                              ; preds = %178, %175
  %186 = load i8*, i8** %11, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 8
  store i8* %187, i8** %11, align 8
  br label %188

188:                                              ; preds = %185, %181
  %189 = phi i8* [ %184, %181 ], [ %186, %185 ]
  %190 = bitcast i8* %189 to i64*
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %193 = bitcast %union.anon.37* %192 to i64*
  store i64 %191, i64* %193, align 16, !tbaa !23
  br label %912

194:                                              ; preds = %14
  %195 = load i32, i32* %9, align 8
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %204, label %197

197:                                              ; preds = %194
  %198 = add nsw i32 %195, 8
  store i32 %198, i32* %9, align 8
  %199 = icmp ult i32 %195, -7
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** %10, align 8
  %202 = sext i32 %195 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  br label %207

204:                                              ; preds = %197, %194
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 8
  store i8* %206, i8** %11, align 8
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i8* [ %203, %200 ], [ %205, %204 ]
  %209 = bitcast i8* %208 to i64*
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %212 = bitcast %union.anon.37* %211 to i64*
  store i64 %210, i64* %212, align 16, !tbaa !23
  br label %912

213:                                              ; preds = %14
  %214 = load i32, i32* %9, align 8
  %215 = icmp sgt i32 %214, -1
  br i1 %215, label %223, label %216

216:                                              ; preds = %213
  %217 = add nsw i32 %214, 8
  store i32 %217, i32* %9, align 8
  %218 = icmp ult i32 %214, -7
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i8*, i8** %10, align 8
  %221 = sext i32 %214 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  br label %226

223:                                              ; preds = %216, %213
  %224 = load i8*, i8** %11, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 8
  store i8* %225, i8** %11, align 8
  br label %226

226:                                              ; preds = %223, %219
  %227 = phi i8* [ %222, %219 ], [ %224, %223 ]
  %228 = bitcast i8* %227 to i32*
  %229 = load i32, i32* %228, align 8
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %232 = bitcast %union.anon.37* %231 to i8*
  store i8 %230, i8* %232, align 16, !tbaa !23
  br label %912

233:                                              ; preds = %14
  %234 = load i32, i32* %9, align 8
  %235 = icmp sgt i32 %234, -1
  br i1 %235, label %243, label %236

236:                                              ; preds = %233
  %237 = add nsw i32 %234, 8
  store i32 %237, i32* %9, align 8
  %238 = icmp ult i32 %234, -7
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load i8*, i8** %10, align 8
  %241 = sext i32 %234 to i64
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  br label %246

243:                                              ; preds = %236, %233
  %244 = load i8*, i8** %11, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 8
  store i8* %245, i8** %11, align 8
  br label %246

246:                                              ; preds = %243, %239
  %247 = phi i8* [ %242, %239 ], [ %244, %243 ]
  %248 = bitcast i8* %247 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = trunc i32 %249 to i8
  %251 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %252 = bitcast %union.anon.37* %251 to i8*
  store i8 %250, i8* %252, align 16, !tbaa !23
  br label %912

253:                                              ; preds = %14
  %254 = load i32, i32* %9, align 8
  %255 = icmp sgt i32 %254, -1
  br i1 %255, label %263, label %256

256:                                              ; preds = %253
  %257 = add nsw i32 %254, 8
  store i32 %257, i32* %9, align 8
  %258 = icmp ult i32 %254, -7
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i8*, i8** %10, align 8
  %261 = sext i32 %254 to i64
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  br label %266

263:                                              ; preds = %256, %253
  %264 = load i8*, i8** %11, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 8
  store i8* %265, i8** %11, align 8
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi i8* [ %262, %259 ], [ %264, %263 ]
  %268 = bitcast i8* %267 to i32*
  %269 = load i32, i32* %268, align 8
  %270 = trunc i32 %269 to i16
  %271 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %272 = bitcast %union.anon.37* %271 to i16*
  store i16 %270, i16* %272, align 16, !tbaa !23
  br label %912

273:                                              ; preds = %14
  %274 = load i32, i32* %9, align 8
  %275 = icmp sgt i32 %274, -1
  br i1 %275, label %283, label %276

276:                                              ; preds = %273
  %277 = add nsw i32 %274, 8
  store i32 %277, i32* %9, align 8
  %278 = icmp ult i32 %274, -7
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load i8*, i8** %10, align 8
  %281 = sext i32 %274 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  br label %286

283:                                              ; preds = %276, %273
  %284 = load i8*, i8** %11, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 8
  store i8* %285, i8** %11, align 8
  br label %286

286:                                              ; preds = %283, %279
  %287 = phi i8* [ %282, %279 ], [ %284, %283 ]
  %288 = bitcast i8* %287 to i32*
  %289 = load i32, i32* %288, align 8
  %290 = trunc i32 %289 to i16
  %291 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %292 = bitcast %union.anon.37* %291 to i16*
  store i16 %290, i16* %292, align 16, !tbaa !23
  br label %912

293:                                              ; preds = %14
  %294 = load i32, i32* %9, align 8
  %295 = icmp sgt i32 %294, -1
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = add nsw i32 %294, 8
  store i32 %297, i32* %9, align 8
  %298 = icmp ult i32 %294, -7
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i8*, i8** %10, align 8
  %301 = sext i32 %294 to i64
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  br label %306

303:                                              ; preds = %296, %293
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 8
  store i8* %305, i8** %11, align 8
  br label %306

306:                                              ; preds = %303, %299
  %307 = phi i8* [ %302, %299 ], [ %304, %303 ]
  %308 = bitcast i8* %307 to i32*
  %309 = load i32, i32* %308, align 8
  %310 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %311 = bitcast %union.anon.37* %310 to i32*
  store i32 %309, i32* %311, align 16, !tbaa !23
  br label %912

312:                                              ; preds = %14
  %313 = load i32, i32* %9, align 8
  %314 = icmp sgt i32 %313, -1
  br i1 %314, label %322, label %315

315:                                              ; preds = %312
  %316 = add nsw i32 %313, 8
  store i32 %316, i32* %9, align 8
  %317 = icmp ult i32 %313, -7
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i8*, i8** %10, align 8
  %320 = sext i32 %313 to i64
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  br label %325

322:                                              ; preds = %315, %312
  %323 = load i8*, i8** %11, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 8
  store i8* %324, i8** %11, align 8
  br label %325

325:                                              ; preds = %322, %318
  %326 = phi i8* [ %321, %318 ], [ %323, %322 ]
  %327 = bitcast i8* %326 to i32*
  %328 = load i32, i32* %327, align 8
  %329 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %330 = bitcast %union.anon.37* %329 to i32*
  store i32 %328, i32* %330, align 16, !tbaa !23
  br label %912

331:                                              ; preds = %14
  %332 = load i32, i32* %9, align 8
  %333 = icmp sgt i32 %332, -1
  br i1 %333, label %341, label %334

334:                                              ; preds = %331
  %335 = add nsw i32 %332, 8
  store i32 %335, i32* %9, align 8
  %336 = icmp ult i32 %332, -7
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = load i8*, i8** %10, align 8
  %339 = sext i32 %332 to i64
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  br label %344

341:                                              ; preds = %334, %331
  %342 = load i8*, i8** %11, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 8
  store i8* %343, i8** %11, align 8
  br label %344

344:                                              ; preds = %341, %337
  %345 = phi i8* [ %340, %337 ], [ %342, %341 ]
  %346 = bitcast i8* %345 to i64*
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %349 = bitcast %union.anon.37* %348 to i64*
  store i64 %347, i64* %349, align 16, !tbaa !23
  br label %912

350:                                              ; preds = %14
  %351 = load i32, i32* %9, align 8
  %352 = icmp sgt i32 %351, -1
  br i1 %352, label %360, label %353

353:                                              ; preds = %350
  %354 = add nsw i32 %351, 8
  store i32 %354, i32* %9, align 8
  %355 = icmp ult i32 %351, -7
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i8*, i8** %10, align 8
  %358 = sext i32 %351 to i64
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  br label %363

360:                                              ; preds = %353, %350
  %361 = load i8*, i8** %11, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 8
  store i8* %362, i8** %11, align 8
  br label %363

363:                                              ; preds = %360, %356
  %364 = phi i8* [ %359, %356 ], [ %361, %360 ]
  %365 = bitcast i8* %364 to i64*
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %368 = bitcast %union.anon.37* %367 to i64*
  store i64 %366, i64* %368, align 16, !tbaa !23
  br label %912

369:                                              ; preds = %14
  %370 = load i32, i32* %9, align 8
  %371 = icmp sgt i32 %370, -1
  br i1 %371, label %379, label %372

372:                                              ; preds = %369
  %373 = add nsw i32 %370, 8
  store i32 %373, i32* %9, align 8
  %374 = icmp ult i32 %370, -7
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i8*, i8** %10, align 8
  %377 = sext i32 %370 to i64
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  br label %382

379:                                              ; preds = %372, %369
  %380 = load i8*, i8** %11, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 8
  store i8* %381, i8** %11, align 8
  br label %382

382:                                              ; preds = %379, %375
  %383 = phi i8* [ %378, %375 ], [ %380, %379 ]
  %384 = bitcast i8* %383 to i32*
  %385 = load i32, i32* %384, align 8
  %386 = trunc i32 %385 to i8
  %387 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %388 = bitcast %union.anon.37* %387 to i8*
  store i8 %386, i8* %388, align 16, !tbaa !23
  br label %912

389:                                              ; preds = %14
  %390 = load i32, i32* %9, align 8
  %391 = icmp sgt i32 %390, -1
  br i1 %391, label %399, label %392

392:                                              ; preds = %389
  %393 = add nsw i32 %390, 8
  store i32 %393, i32* %9, align 8
  %394 = icmp ult i32 %390, -7
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = load i8*, i8** %10, align 8
  %397 = sext i32 %390 to i64
  %398 = getelementptr inbounds i8, i8* %396, i64 %397
  br label %402

399:                                              ; preds = %392, %389
  %400 = load i8*, i8** %11, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 8
  store i8* %401, i8** %11, align 8
  br label %402

402:                                              ; preds = %399, %395
  %403 = phi i8* [ %398, %395 ], [ %400, %399 ]
  %404 = bitcast i8* %403 to i32*
  %405 = load i32, i32* %404, align 8
  %406 = trunc i32 %405 to i8
  %407 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %408 = bitcast %union.anon.37* %407 to i8*
  store i8 %406, i8* %408, align 16, !tbaa !23
  br label %912

409:                                              ; preds = %14
  %410 = load i32, i32* %9, align 8
  %411 = icmp sgt i32 %410, -1
  br i1 %411, label %419, label %412

412:                                              ; preds = %409
  %413 = add nsw i32 %410, 8
  store i32 %413, i32* %9, align 8
  %414 = icmp ult i32 %410, -7
  br i1 %414, label %415, label %419

415:                                              ; preds = %412
  %416 = load i8*, i8** %10, align 8
  %417 = sext i32 %410 to i64
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  br label %422

419:                                              ; preds = %412, %409
  %420 = load i8*, i8** %11, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 8
  store i8* %421, i8** %11, align 8
  br label %422

422:                                              ; preds = %419, %415
  %423 = phi i8* [ %418, %415 ], [ %420, %419 ]
  %424 = bitcast i8* %423 to i64*
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %427 = bitcast %union.anon.37* %426 to i64*
  store i64 %425, i64* %427, align 16, !tbaa !23
  br label %912

428:                                              ; preds = %14
  %429 = load i32, i32* %9, align 8
  %430 = icmp sgt i32 %429, -1
  br i1 %430, label %438, label %431

431:                                              ; preds = %428
  %432 = add nsw i32 %429, 8
  store i32 %432, i32* %9, align 8
  %433 = icmp ult i32 %429, -7
  br i1 %433, label %434, label %438

434:                                              ; preds = %431
  %435 = load i8*, i8** %10, align 8
  %436 = sext i32 %429 to i64
  %437 = getelementptr inbounds i8, i8* %435, i64 %436
  br label %441

438:                                              ; preds = %431, %428
  %439 = load i8*, i8** %11, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 8
  store i8* %440, i8** %11, align 8
  br label %441

441:                                              ; preds = %438, %434
  %442 = phi i8* [ %437, %434 ], [ %439, %438 ]
  %443 = bitcast i8* %442 to i64*
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %446 = bitcast %union.anon.37* %445 to i64*
  store i64 %444, i64* %446, align 16, !tbaa !23
  br label %912

447:                                              ; preds = %14
  %448 = load i32, i32* %9, align 8
  %449 = icmp sgt i32 %448, -1
  br i1 %449, label %457, label %450

450:                                              ; preds = %447
  %451 = add nsw i32 %448, 8
  store i32 %451, i32* %9, align 8
  %452 = icmp ult i32 %448, -7
  br i1 %452, label %453, label %457

453:                                              ; preds = %450
  %454 = load i8*, i8** %10, align 8
  %455 = sext i32 %448 to i64
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  br label %460

457:                                              ; preds = %450, %447
  %458 = load i8*, i8** %11, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 8
  store i8* %459, i8** %11, align 8
  br label %460

460:                                              ; preds = %457, %453
  %461 = phi i8* [ %456, %453 ], [ %458, %457 ]
  %462 = bitcast i8* %461 to i64*
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %465 = bitcast %union.anon.37* %464 to i64*
  store i64 %463, i64* %465, align 16, !tbaa !23
  br label %912

466:                                              ; preds = %14
  %467 = load i32, i32* %9, align 8
  %468 = icmp sgt i32 %467, -1
  br i1 %468, label %476, label %469

469:                                              ; preds = %466
  %470 = add nsw i32 %467, 8
  store i32 %470, i32* %9, align 8
  %471 = icmp ult i32 %467, -7
  br i1 %471, label %472, label %476

472:                                              ; preds = %469
  %473 = load i8*, i8** %10, align 8
  %474 = sext i32 %467 to i64
  %475 = getelementptr inbounds i8, i8* %473, i64 %474
  br label %479

476:                                              ; preds = %469, %466
  %477 = load i8*, i8** %11, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 8
  store i8* %478, i8** %11, align 8
  br label %479

479:                                              ; preds = %476, %472
  %480 = phi i8* [ %475, %472 ], [ %477, %476 ]
  %481 = bitcast i8* %480 to i64*
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %484 = bitcast %union.anon.37* %483 to i64*
  store i64 %482, i64* %484, align 16, !tbaa !23
  br label %912

485:                                              ; preds = %14
  %486 = load i32, i32* %9, align 8
  %487 = icmp sgt i32 %486, -1
  br i1 %487, label %495, label %488

488:                                              ; preds = %485
  %489 = add nsw i32 %486, 8
  store i32 %489, i32* %9, align 8
  %490 = icmp ult i32 %486, -7
  br i1 %490, label %491, label %495

491:                                              ; preds = %488
  %492 = load i8*, i8** %10, align 8
  %493 = sext i32 %486 to i64
  %494 = getelementptr inbounds i8, i8* %492, i64 %493
  br label %498

495:                                              ; preds = %488, %485
  %496 = load i8*, i8** %11, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 8
  store i8* %497, i8** %11, align 8
  br label %498

498:                                              ; preds = %495, %491
  %499 = phi i8* [ %494, %491 ], [ %496, %495 ]
  %500 = bitcast i8* %499 to i64*
  %501 = load i64, i64* %500, align 8
  %502 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %503 = bitcast %union.anon.37* %502 to i64*
  store i64 %501, i64* %503, align 16, !tbaa !23
  br label %912

504:                                              ; preds = %14
  %505 = load i32, i32* %9, align 8
  %506 = icmp sgt i32 %505, -1
  br i1 %506, label %514, label %507

507:                                              ; preds = %504
  %508 = add nsw i32 %505, 8
  store i32 %508, i32* %9, align 8
  %509 = icmp ult i32 %505, -7
  br i1 %509, label %510, label %514

510:                                              ; preds = %507
  %511 = load i8*, i8** %10, align 8
  %512 = sext i32 %505 to i64
  %513 = getelementptr inbounds i8, i8* %511, i64 %512
  br label %517

514:                                              ; preds = %507, %504
  %515 = load i8*, i8** %11, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 8
  store i8* %516, i8** %11, align 8
  br label %517

517:                                              ; preds = %514, %510
  %518 = phi i8* [ %513, %510 ], [ %515, %514 ]
  %519 = bitcast i8* %518 to i64*
  %520 = load i64, i64* %519, align 8
  %521 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %522 = bitcast %union.anon.37* %521 to i64*
  store i64 %520, i64* %522, align 16, !tbaa !23
  br label %912

523:                                              ; preds = %14
  %524 = load i32, i32* %12, align 4
  %525 = icmp sgt i32 %524, -1
  br i1 %525, label %533, label %526

526:                                              ; preds = %523
  %527 = add nsw i32 %524, 16
  store i32 %527, i32* %12, align 4
  %528 = icmp ult i32 %524, -15
  br i1 %528, label %529, label %533

529:                                              ; preds = %526
  %530 = load i8*, i8** %13, align 8
  %531 = sext i32 %524 to i64
  %532 = getelementptr inbounds i8, i8* %530, i64 %531
  br label %536

533:                                              ; preds = %526, %523
  %534 = load i8*, i8** %11, align 8
  %535 = getelementptr inbounds i8, i8* %534, i64 8
  store i8* %535, i8** %11, align 8
  br label %536

536:                                              ; preds = %533, %529
  %537 = phi i8* [ %532, %529 ], [ %534, %533 ]
  %538 = bitcast i8* %537 to double*
  %539 = load double, double* %538, align 8
  %540 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %541 = bitcast %union.anon.37* %540 to double*
  store double %539, double* %541, align 16, !tbaa !23
  br label %912

542:                                              ; preds = %14
  %543 = load i32, i32* %12, align 4
  %544 = icmp sgt i32 %543, -1
  br i1 %544, label %553, label %545

545:                                              ; preds = %542
  %546 = add nsw i32 %543, 16
  store i32 %546, i32* %12, align 4
  %547 = icmp ult i32 %543, -15
  br i1 %547, label %548, label %553

548:                                              ; preds = %545
  %549 = load i8*, i8** %13, align 8
  %550 = sext i32 %543 to i64
  %551 = getelementptr inbounds i8, i8* %549, i64 %550
  %552 = bitcast i8* %551 to fp128*
  br label %561

553:                                              ; preds = %545, %542
  %554 = load i8*, i8** %11, align 8
  %555 = ptrtoint i8* %554 to i64
  %556 = add i64 %555, 15
  %557 = and i64 %556, -16
  %558 = inttoptr i64 %557 to i8*
  %559 = getelementptr inbounds i8, i8* %558, i64 16
  store i8* %559, i8** %11, align 8
  %560 = inttoptr i64 %557 to fp128*
  br label %561

561:                                              ; preds = %553, %548
  %562 = phi fp128* [ %552, %548 ], [ %560, %553 ]
  %563 = load fp128, fp128* %562, align 16
  %564 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1, i32 0
  store fp128 %563, fp128* %564, align 16, !tbaa !23
  br label %912

565:                                              ; preds = %14
  %566 = load i32, i32* %9, align 8
  %567 = icmp sgt i32 %566, -1
  br i1 %567, label %575, label %568

568:                                              ; preds = %565
  %569 = add nsw i32 %566, 8
  store i32 %569, i32* %9, align 8
  %570 = icmp ult i32 %566, -7
  br i1 %570, label %571, label %575

571:                                              ; preds = %568
  %572 = load i8*, i8** %10, align 8
  %573 = sext i32 %566 to i64
  %574 = getelementptr inbounds i8, i8* %572, i64 %573
  br label %578

575:                                              ; preds = %568, %565
  %576 = load i8*, i8** %11, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 8
  store i8* %577, i8** %11, align 8
  br label %578

578:                                              ; preds = %575, %571
  %579 = phi i8* [ %574, %571 ], [ %576, %575 ]
  %580 = bitcast i8* %579 to i32*
  %581 = load i32, i32* %580, align 8
  %582 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %583 = bitcast %union.anon.37* %582 to i32*
  store i32 %581, i32* %583, align 16, !tbaa !23
  br label %912

584:                                              ; preds = %14
  %585 = load i32, i32* %9, align 8
  %586 = icmp sgt i32 %585, -1
  br i1 %586, label %594, label %587

587:                                              ; preds = %584
  %588 = add nsw i32 %585, 8
  store i32 %588, i32* %9, align 8
  %589 = icmp ult i32 %585, -7
  br i1 %589, label %590, label %594

590:                                              ; preds = %587
  %591 = load i8*, i8** %10, align 8
  %592 = sext i32 %585 to i64
  %593 = getelementptr inbounds i8, i8* %591, i64 %592
  br label %597

594:                                              ; preds = %587, %584
  %595 = load i8*, i8** %11, align 8
  %596 = getelementptr inbounds i8, i8* %595, i64 8
  store i8* %596, i8** %11, align 8
  br label %597

597:                                              ; preds = %594, %590
  %598 = phi i8* [ %593, %590 ], [ %595, %594 ]
  %599 = bitcast i8* %598 to i32*
  %600 = load i32, i32* %599, align 8
  %601 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %602 = bitcast %union.anon.37* %601 to i32*
  store i32 %600, i32* %602, align 16, !tbaa !23
  br label %912

603:                                              ; preds = %14
  %604 = load i32, i32* %9, align 8
  %605 = icmp sgt i32 %604, -1
  br i1 %605, label %613, label %606

606:                                              ; preds = %603
  %607 = add nsw i32 %604, 8
  store i32 %607, i32* %9, align 8
  %608 = icmp ult i32 %604, -7
  br i1 %608, label %609, label %613

609:                                              ; preds = %606
  %610 = load i8*, i8** %10, align 8
  %611 = sext i32 %604 to i64
  %612 = getelementptr inbounds i8, i8* %610, i64 %611
  br label %616

613:                                              ; preds = %606, %603
  %614 = load i8*, i8** %11, align 8
  %615 = getelementptr inbounds i8, i8* %614, i64 8
  store i8* %615, i8** %11, align 8
  br label %616

616:                                              ; preds = %613, %609
  %617 = phi i8* [ %612, %609 ], [ %614, %613 ]
  %618 = bitcast i8* %617 to i8**
  %619 = load i8*, i8** %618, align 8
  %620 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %621 = bitcast %union.anon.37* %620 to i8**
  %622 = icmp eq i8* %619, null
  %623 = select i1 %622, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i64 0, i64 0), i8* %619
  store i8* %623, i8** %621, align 16
  br label %912

624:                                              ; preds = %14
  %625 = load i32, i32* %9, align 8
  %626 = icmp sgt i32 %625, -1
  br i1 %626, label %634, label %627

627:                                              ; preds = %624
  %628 = add nsw i32 %625, 8
  store i32 %628, i32* %9, align 8
  %629 = icmp ult i32 %625, -7
  br i1 %629, label %630, label %634

630:                                              ; preds = %627
  %631 = load i8*, i8** %10, align 8
  %632 = sext i32 %625 to i64
  %633 = getelementptr inbounds i8, i8* %631, i64 %632
  br label %637

634:                                              ; preds = %627, %624
  %635 = load i8*, i8** %11, align 8
  %636 = getelementptr inbounds i8, i8* %635, i64 8
  store i8* %636, i8** %11, align 8
  br label %637

637:                                              ; preds = %634, %630
  %638 = phi i8* [ %633, %630 ], [ %635, %634 ]
  %639 = bitcast i8* %638 to i32**
  %640 = load i32*, i32** %639, align 8
  %641 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %642 = bitcast %union.anon.37* %641 to i32**
  %643 = icmp eq i32* %640, null
  %644 = select i1 %643, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @printf_fetchargs.wide_null_string, i64 0, i64 0), i32* %640
  store i32* %644, i32** %642, align 16
  br label %912

645:                                              ; preds = %14
  %646 = load i32, i32* %9, align 8
  %647 = icmp sgt i32 %646, -1
  br i1 %647, label %655, label %648

648:                                              ; preds = %645
  %649 = add nsw i32 %646, 8
  store i32 %649, i32* %9, align 8
  %650 = icmp ult i32 %646, -7
  br i1 %650, label %651, label %655

651:                                              ; preds = %648
  %652 = load i8*, i8** %10, align 8
  %653 = sext i32 %646 to i64
  %654 = getelementptr inbounds i8, i8* %652, i64 %653
  br label %658

655:                                              ; preds = %648, %645
  %656 = load i8*, i8** %11, align 8
  %657 = getelementptr inbounds i8, i8* %656, i64 8
  store i8* %657, i8** %11, align 8
  br label %658

658:                                              ; preds = %655, %651
  %659 = phi i8* [ %654, %651 ], [ %656, %655 ]
  %660 = bitcast i8* %659 to i8**
  %661 = load i8*, i8** %660, align 8
  %662 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %663 = bitcast %union.anon.37* %662 to i8**
  store i8* %661, i8** %663, align 16, !tbaa !23
  br label %912

664:                                              ; preds = %14
  %665 = load i32, i32* %9, align 8
  %666 = icmp sgt i32 %665, -1
  br i1 %666, label %674, label %667

667:                                              ; preds = %664
  %668 = add nsw i32 %665, 8
  store i32 %668, i32* %9, align 8
  %669 = icmp ult i32 %665, -7
  br i1 %669, label %670, label %674

670:                                              ; preds = %667
  %671 = load i8*, i8** %10, align 8
  %672 = sext i32 %665 to i64
  %673 = getelementptr inbounds i8, i8* %671, i64 %672
  br label %677

674:                                              ; preds = %667, %664
  %675 = load i8*, i8** %11, align 8
  %676 = getelementptr inbounds i8, i8* %675, i64 8
  store i8* %676, i8** %11, align 8
  br label %677

677:                                              ; preds = %674, %670
  %678 = phi i8* [ %673, %670 ], [ %675, %674 ]
  %679 = bitcast i8* %678 to i8**
  %680 = load i8*, i8** %679, align 8
  %681 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %682 = bitcast %union.anon.37* %681 to i8**
  store i8* %680, i8** %682, align 16, !tbaa !23
  br label %912

683:                                              ; preds = %14
  %684 = load i32, i32* %9, align 8
  %685 = icmp sgt i32 %684, -1
  br i1 %685, label %693, label %686

686:                                              ; preds = %683
  %687 = add nsw i32 %684, 8
  store i32 %687, i32* %9, align 8
  %688 = icmp ult i32 %684, -7
  br i1 %688, label %689, label %693

689:                                              ; preds = %686
  %690 = load i8*, i8** %10, align 8
  %691 = sext i32 %684 to i64
  %692 = getelementptr inbounds i8, i8* %690, i64 %691
  br label %696

693:                                              ; preds = %686, %683
  %694 = load i8*, i8** %11, align 8
  %695 = getelementptr inbounds i8, i8* %694, i64 8
  store i8* %695, i8** %11, align 8
  br label %696

696:                                              ; preds = %693, %689
  %697 = phi i8* [ %692, %689 ], [ %694, %693 ]
  %698 = bitcast i8* %697 to i16**
  %699 = load i16*, i16** %698, align 8
  %700 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %701 = bitcast %union.anon.37* %700 to i16**
  store i16* %699, i16** %701, align 16, !tbaa !23
  br label %912

702:                                              ; preds = %14
  %703 = load i32, i32* %9, align 8
  %704 = icmp sgt i32 %703, -1
  br i1 %704, label %712, label %705

705:                                              ; preds = %702
  %706 = add nsw i32 %703, 8
  store i32 %706, i32* %9, align 8
  %707 = icmp ult i32 %703, -7
  br i1 %707, label %708, label %712

708:                                              ; preds = %705
  %709 = load i8*, i8** %10, align 8
  %710 = sext i32 %703 to i64
  %711 = getelementptr inbounds i8, i8* %709, i64 %710
  br label %715

712:                                              ; preds = %705, %702
  %713 = load i8*, i8** %11, align 8
  %714 = getelementptr inbounds i8, i8* %713, i64 8
  store i8* %714, i8** %11, align 8
  br label %715

715:                                              ; preds = %712, %708
  %716 = phi i8* [ %711, %708 ], [ %713, %712 ]
  %717 = bitcast i8* %716 to i32**
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %720 = bitcast %union.anon.37* %719 to i32**
  store i32* %718, i32** %720, align 16, !tbaa !23
  br label %912

721:                                              ; preds = %14
  %722 = load i32, i32* %9, align 8
  %723 = icmp sgt i32 %722, -1
  br i1 %723, label %731, label %724

724:                                              ; preds = %721
  %725 = add nsw i32 %722, 8
  store i32 %725, i32* %9, align 8
  %726 = icmp ult i32 %722, -7
  br i1 %726, label %727, label %731

727:                                              ; preds = %724
  %728 = load i8*, i8** %10, align 8
  %729 = sext i32 %722 to i64
  %730 = getelementptr inbounds i8, i8* %728, i64 %729
  br label %734

731:                                              ; preds = %724, %721
  %732 = load i8*, i8** %11, align 8
  %733 = getelementptr inbounds i8, i8* %732, i64 8
  store i8* %733, i8** %11, align 8
  br label %734

734:                                              ; preds = %731, %727
  %735 = phi i8* [ %730, %727 ], [ %732, %731 ]
  %736 = bitcast i8* %735 to i64**
  %737 = load i64*, i64** %736, align 8
  %738 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %739 = bitcast %union.anon.37* %738 to i64**
  store i64* %737, i64** %739, align 16, !tbaa !23
  br label %912

740:                                              ; preds = %14
  %741 = load i32, i32* %9, align 8
  %742 = icmp sgt i32 %741, -1
  br i1 %742, label %750, label %743

743:                                              ; preds = %740
  %744 = add nsw i32 %741, 8
  store i32 %744, i32* %9, align 8
  %745 = icmp ult i32 %741, -7
  br i1 %745, label %746, label %750

746:                                              ; preds = %743
  %747 = load i8*, i8** %10, align 8
  %748 = sext i32 %741 to i64
  %749 = getelementptr inbounds i8, i8* %747, i64 %748
  br label %753

750:                                              ; preds = %743, %740
  %751 = load i8*, i8** %11, align 8
  %752 = getelementptr inbounds i8, i8* %751, i64 8
  store i8* %752, i8** %11, align 8
  br label %753

753:                                              ; preds = %750, %746
  %754 = phi i8* [ %749, %746 ], [ %751, %750 ]
  %755 = bitcast i8* %754 to i64**
  %756 = load i64*, i64** %755, align 8
  %757 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %758 = bitcast %union.anon.37* %757 to i64**
  store i64* %756, i64** %758, align 16, !tbaa !23
  br label %912

759:                                              ; preds = %14
  %760 = load i32, i32* %9, align 8
  %761 = icmp sgt i32 %760, -1
  br i1 %761, label %769, label %762

762:                                              ; preds = %759
  %763 = add nsw i32 %760, 8
  store i32 %763, i32* %9, align 8
  %764 = icmp ult i32 %760, -7
  br i1 %764, label %765, label %769

765:                                              ; preds = %762
  %766 = load i8*, i8** %10, align 8
  %767 = sext i32 %760 to i64
  %768 = getelementptr inbounds i8, i8* %766, i64 %767
  br label %772

769:                                              ; preds = %762, %759
  %770 = load i8*, i8** %11, align 8
  %771 = getelementptr inbounds i8, i8* %770, i64 8
  store i8* %771, i8** %11, align 8
  br label %772

772:                                              ; preds = %769, %765
  %773 = phi i8* [ %768, %765 ], [ %770, %769 ]
  %774 = bitcast i8* %773 to i8**
  %775 = load i8*, i8** %774, align 8
  %776 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %777 = bitcast %union.anon.37* %776 to i8**
  store i8* %775, i8** %777, align 16, !tbaa !23
  br label %912

778:                                              ; preds = %14
  %779 = load i32, i32* %9, align 8
  %780 = icmp sgt i32 %779, -1
  br i1 %780, label %788, label %781

781:                                              ; preds = %778
  %782 = add nsw i32 %779, 8
  store i32 %782, i32* %9, align 8
  %783 = icmp ult i32 %779, -7
  br i1 %783, label %784, label %788

784:                                              ; preds = %781
  %785 = load i8*, i8** %10, align 8
  %786 = sext i32 %779 to i64
  %787 = getelementptr inbounds i8, i8* %785, i64 %786
  br label %791

788:                                              ; preds = %781, %778
  %789 = load i8*, i8** %11, align 8
  %790 = getelementptr inbounds i8, i8* %789, i64 8
  store i8* %790, i8** %11, align 8
  br label %791

791:                                              ; preds = %788, %784
  %792 = phi i8* [ %787, %784 ], [ %789, %788 ]
  %793 = bitcast i8* %792 to i16**
  %794 = load i16*, i16** %793, align 8
  %795 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %796 = bitcast %union.anon.37* %795 to i16**
  store i16* %794, i16** %796, align 16, !tbaa !23
  br label %912

797:                                              ; preds = %14
  %798 = load i32, i32* %9, align 8
  %799 = icmp sgt i32 %798, -1
  br i1 %799, label %807, label %800

800:                                              ; preds = %797
  %801 = add nsw i32 %798, 8
  store i32 %801, i32* %9, align 8
  %802 = icmp ult i32 %798, -7
  br i1 %802, label %803, label %807

803:                                              ; preds = %800
  %804 = load i8*, i8** %10, align 8
  %805 = sext i32 %798 to i64
  %806 = getelementptr inbounds i8, i8* %804, i64 %805
  br label %810

807:                                              ; preds = %800, %797
  %808 = load i8*, i8** %11, align 8
  %809 = getelementptr inbounds i8, i8* %808, i64 8
  store i8* %809, i8** %11, align 8
  br label %810

810:                                              ; preds = %807, %803
  %811 = phi i8* [ %806, %803 ], [ %808, %807 ]
  %812 = bitcast i8* %811 to i32**
  %813 = load i32*, i32** %812, align 8
  %814 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %815 = bitcast %union.anon.37* %814 to i32**
  store i32* %813, i32** %815, align 16, !tbaa !23
  br label %912

816:                                              ; preds = %14
  %817 = load i32, i32* %9, align 8
  %818 = icmp sgt i32 %817, -1
  br i1 %818, label %826, label %819

819:                                              ; preds = %816
  %820 = add nsw i32 %817, 8
  store i32 %820, i32* %9, align 8
  %821 = icmp ult i32 %817, -7
  br i1 %821, label %822, label %826

822:                                              ; preds = %819
  %823 = load i8*, i8** %10, align 8
  %824 = sext i32 %817 to i64
  %825 = getelementptr inbounds i8, i8* %823, i64 %824
  br label %829

826:                                              ; preds = %819, %816
  %827 = load i8*, i8** %11, align 8
  %828 = getelementptr inbounds i8, i8* %827, i64 8
  store i8* %828, i8** %11, align 8
  br label %829

829:                                              ; preds = %826, %822
  %830 = phi i8* [ %825, %822 ], [ %827, %826 ]
  %831 = bitcast i8* %830 to i64**
  %832 = load i64*, i64** %831, align 8
  %833 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %834 = bitcast %union.anon.37* %833 to i64**
  store i64* %832, i64** %834, align 16, !tbaa !23
  br label %912

835:                                              ; preds = %14
  %836 = load i32, i32* %9, align 8
  %837 = icmp sgt i32 %836, -1
  br i1 %837, label %845, label %838

838:                                              ; preds = %835
  %839 = add nsw i32 %836, 8
  store i32 %839, i32* %9, align 8
  %840 = icmp ult i32 %836, -7
  br i1 %840, label %841, label %845

841:                                              ; preds = %838
  %842 = load i8*, i8** %10, align 8
  %843 = sext i32 %836 to i64
  %844 = getelementptr inbounds i8, i8* %842, i64 %843
  br label %848

845:                                              ; preds = %838, %835
  %846 = load i8*, i8** %11, align 8
  %847 = getelementptr inbounds i8, i8* %846, i64 8
  store i8* %847, i8** %11, align 8
  br label %848

848:                                              ; preds = %845, %841
  %849 = phi i8* [ %844, %841 ], [ %846, %845 ]
  %850 = bitcast i8* %849 to i8**
  %851 = load i8*, i8** %850, align 8
  %852 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %853 = bitcast %union.anon.37* %852 to i8**
  store i8* %851, i8** %853, align 16, !tbaa !23
  br label %912

854:                                              ; preds = %14
  %855 = load i32, i32* %9, align 8
  %856 = icmp sgt i32 %855, -1
  br i1 %856, label %864, label %857

857:                                              ; preds = %854
  %858 = add nsw i32 %855, 8
  store i32 %858, i32* %9, align 8
  %859 = icmp ult i32 %855, -7
  br i1 %859, label %860, label %864

860:                                              ; preds = %857
  %861 = load i8*, i8** %10, align 8
  %862 = sext i32 %855 to i64
  %863 = getelementptr inbounds i8, i8* %861, i64 %862
  br label %867

864:                                              ; preds = %857, %854
  %865 = load i8*, i8** %11, align 8
  %866 = getelementptr inbounds i8, i8* %865, i64 8
  store i8* %866, i8** %11, align 8
  br label %867

867:                                              ; preds = %864, %860
  %868 = phi i8* [ %863, %860 ], [ %865, %864 ]
  %869 = bitcast i8* %868 to i64**
  %870 = load i64*, i64** %869, align 8
  %871 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %872 = bitcast %union.anon.37* %871 to i64**
  store i64* %870, i64** %872, align 16, !tbaa !23
  br label %912

873:                                              ; preds = %14
  %874 = load i32, i32* %9, align 8
  %875 = icmp sgt i32 %874, -1
  br i1 %875, label %883, label %876

876:                                              ; preds = %873
  %877 = add nsw i32 %874, 8
  store i32 %877, i32* %9, align 8
  %878 = icmp ult i32 %874, -7
  br i1 %878, label %879, label %883

879:                                              ; preds = %876
  %880 = load i8*, i8** %10, align 8
  %881 = sext i32 %874 to i64
  %882 = getelementptr inbounds i8, i8* %880, i64 %881
  br label %886

883:                                              ; preds = %876, %873
  %884 = load i8*, i8** %11, align 8
  %885 = getelementptr inbounds i8, i8* %884, i64 8
  store i8* %885, i8** %11, align 8
  br label %886

886:                                              ; preds = %883, %879
  %887 = phi i8* [ %882, %879 ], [ %884, %883 ]
  %888 = bitcast i8* %887 to i64**
  %889 = load i64*, i64** %888, align 8
  %890 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %891 = bitcast %union.anon.37* %890 to i64**
  store i64* %889, i64** %891, align 16, !tbaa !23
  br label %912

892:                                              ; preds = %14
  %893 = load i32, i32* %9, align 8
  %894 = icmp sgt i32 %893, -1
  br i1 %894, label %902, label %895

895:                                              ; preds = %892
  %896 = add nsw i32 %893, 8
  store i32 %896, i32* %9, align 8
  %897 = icmp ult i32 %893, -7
  br i1 %897, label %898, label %902

898:                                              ; preds = %895
  %899 = load i8*, i8** %10, align 8
  %900 = sext i32 %893 to i64
  %901 = getelementptr inbounds i8, i8* %899, i64 %900
  br label %905

902:                                              ; preds = %895, %892
  %903 = load i8*, i8** %11, align 8
  %904 = getelementptr inbounds i8, i8* %903, i64 8
  store i8* %904, i8** %11, align 8
  br label %905

905:                                              ; preds = %902, %898
  %906 = phi i8* [ %901, %898 ], [ %903, %902 ]
  %907 = bitcast i8* %906 to i64**
  %908 = load i64*, i64** %907, align 8
  %909 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 0, i32 1
  %910 = bitcast %union.anon.37* %909 to i64**
  store i64* %908, i64** %910, align 16, !tbaa !23
  br label %912

911:                                              ; preds = %14
  tail call void @abort() #37
  unreachable

912:                                              ; preds = %637, %616, %32, %52, %72, %92, %112, %131, %150, %169, %188, %207, %226, %246, %266, %286, %306, %325, %344, %363, %382, %402, %422, %441, %460, %479, %498, %517, %536, %561, %578, %597, %658, %677, %696, %715, %734, %753, %772, %791, %810, %829, %848, %867, %886, %905
  %913 = add nuw i64 %16, 1
  %914 = getelementptr inbounds %struct.argument, %struct.argument* %15, i64 1
  %915 = load i64, i64* %3, align 16, !tbaa !126
  %916 = icmp ult i64 %913, %915
  br i1 %916, label %14, label %917, !llvm.loop !127

917:                                              ; preds = %14, %912, %2
  %918 = phi i32 [ 0, %2 ], [ 0, %912 ], [ -1, %14 ]
  ret i32 %918
}

; Function Attrs: nounwind uwtable
define dso_local i32 @printf_parse(i8* noundef %0, %struct.char_directives* noundef %1, %struct.arguments* noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1, i64 0, i32 0
  store i64 0, i64* %4, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1, i64 0, i32 4, i64 0
  %6 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1, i64 0, i32 1
  store %struct.char_directive* %5, %struct.char_directive** %6, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.arguments, %struct.arguments* %2, i64 0, i32 0
  store i64 0, i64* %7, align 16, !tbaa !126
  %8 = getelementptr inbounds %struct.arguments, %struct.arguments* %2, i64 0, i32 2, i64 0
  %9 = getelementptr inbounds %struct.arguments, %struct.arguments* %2, i64 0, i32 1
  store %struct.argument* %8, %struct.argument** %9, align 8, !tbaa !107
  %10 = load i8, i8* %0, align 1, !tbaa !23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %573, label %12

12:                                               ; preds = %3
  %13 = bitcast %struct.argument** %9 to i8**
  %14 = bitcast %struct.char_directive** %6 to i8**
  %15 = bitcast %struct.argument* %8 to i8*
  %16 = bitcast %struct.argument* %8 to i8*
  %17 = bitcast %struct.argument* %8 to i8*
  %18 = bitcast %struct.char_directive* %5 to i8*
  br label %19

19:                                               ; preds = %12, %561
  %20 = phi i8 [ %10, %12 ], [ %568, %561 ]
  %21 = phi i8* [ %0, %12 ], [ %567, %561 ]
  %22 = phi i64 [ 0, %12 ], [ %566, %561 ]
  %23 = phi i64 [ 7, %12 ], [ %565, %561 ]
  %24 = phi i64 [ 7, %12 ], [ %564, %561 ]
  %25 = phi i64 [ 0, %12 ], [ %563, %561 ]
  %26 = phi i64 [ 0, %12 ], [ %562, %561 ]
  %27 = getelementptr inbounds i8, i8* %21, i64 1
  %28 = icmp eq i8 %20, 37
  br i1 %28, label %29, label %561

29:                                               ; preds = %19
  %30 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %31 = load i64, i64* %4, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 0
  store i8* %21, i8** %32, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 2
  store i32 0, i32* %33, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 3
  %35 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 4
  %36 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 5
  %37 = bitcast i8** %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  store i64 -1, i64* %36, align 8, !tbaa !114
  %38 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 6
  %39 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 7
  %40 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 8
  %41 = bitcast i8** %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store i64 -1, i64* %40, align 8, !tbaa !118
  %42 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 10
  store i64 -1, i64* %42, align 8, !tbaa !106
  %43 = load i8, i8* %27, align 1, !tbaa !23
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %46, label %73

46:                                               ; preds = %29, %46
  %47 = phi i8* [ %48, %46 ], [ %27, %29 ]
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1, !tbaa !23
  %50 = add i8 %49, -48
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %46, label %52, !llvm.loop !128

52:                                               ; preds = %46
  %53 = icmp eq i8 %49, 36
  br i1 %53, label %54, label %73

54:                                               ; preds = %52, %54
  %55 = phi i8 [ %66, %54 ], [ %43, %52 ]
  %56 = phi i8* [ %65, %54 ], [ %27, %52 ]
  %57 = phi i64 [ %64, %54 ], [ 0, %52 ]
  %58 = zext i8 %55 to i64
  %59 = icmp ult i64 %57, 1844674407370955162
  %60 = mul i64 %57, 10
  %61 = select i1 %59, i64 %60, i64 -1
  %62 = add nuw nsw i64 %58, 4294967248
  %63 = and i64 %62, 4294967295
  %64 = tail call i64 @llvm.uadd.sat.i64(i64 %61, i64 %63) #35
  %65 = getelementptr inbounds i8, i8* %56, i64 1
  %66 = load i8, i8* %65, align 1, !tbaa !23
  %67 = add i8 %66, -48
  %68 = icmp ult i8 %67, 10
  br i1 %68, label %54, label %69, !llvm.loop !129

69:                                               ; preds = %54
  switch i64 %64, label %70 [
    i64 0, label %582
    i64 -1, label %582
  ]

70:                                               ; preds = %69
  %71 = add i64 %64, -1
  %72 = getelementptr inbounds i8, i8* %56, i64 2
  br label %73

73:                                               ; preds = %52, %70, %29
  %74 = phi i64 [ -1, %29 ], [ %71, %70 ], [ -1, %52 ]
  %75 = phi i8* [ %27, %29 ], [ %72, %70 ], [ %27, %52 ]
  br label %76

76:                                               ; preds = %86, %73
  %77 = phi i32 [ 0, %73 ], [ %88, %86 ]
  %78 = phi i8* [ %75, %73 ], [ %89, %86 ]
  %79 = load i8, i8* %78, align 1, !tbaa !23
  switch i8 %79, label %198 [
    i8 39, label %86
    i8 45, label %80
    i8 43, label %81
    i8 32, label %82
    i8 35, label %83
    i8 48, label %84
    i8 73, label %85
    i8 42, label %90
  ]

80:                                               ; preds = %76
  br label %86

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %76
  br label %86

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %76
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %76, %80, %82, %84, %85, %83, %81
  %87 = phi i32 [ 2, %80 ], [ 8, %82 ], [ 32, %84 ], [ 64, %85 ], [ 16, %83 ], [ 4, %81 ], [ 1, %76 ]
  %88 = or i32 %77, %87
  store i32 %88, i32* %33, align 8, !tbaa !111
  %89 = getelementptr inbounds i8, i8* %78, i64 1
  br label %76

90:                                               ; preds = %76
  store i8* %78, i8** %34, align 8, !tbaa !112
  %91 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %91, i8** %35, align 8, !tbaa !113
  %92 = icmp eq i64 %25, 0
  %93 = select i1 %92, i64 1, i64 %25
  %94 = load i8, i8* %91, align 1, !tbaa !23
  %95 = add i8 %94, -48
  %96 = icmp ult i8 %95, 10
  br i1 %96, label %97, label %124

97:                                               ; preds = %90, %97
  %98 = phi i8* [ %99, %97 ], [ %91, %90 ]
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1, !tbaa !23
  %101 = add i8 %100, -48
  %102 = icmp ult i8 %101, 10
  br i1 %102, label %97, label %103, !llvm.loop !130

103:                                              ; preds = %97
  %104 = icmp eq i8 %100, 36
  br i1 %104, label %105, label %124

105:                                              ; preds = %103, %105
  %106 = phi i8 [ %117, %105 ], [ %94, %103 ]
  %107 = phi i8* [ %116, %105 ], [ %91, %103 ]
  %108 = phi i64 [ %115, %105 ], [ 0, %103 ]
  %109 = zext i8 %106 to i64
  %110 = icmp ult i64 %108, 1844674407370955162
  %111 = mul i64 %108, 10
  %112 = select i1 %110, i64 %111, i64 -1
  %113 = add nuw nsw i64 %109, 4294967248
  %114 = and i64 %113, 4294967295
  %115 = tail call i64 @llvm.uadd.sat.i64(i64 %112, i64 %114) #35
  %116 = getelementptr inbounds i8, i8* %107, i64 1
  %117 = load i8, i8* %116, align 1, !tbaa !23
  %118 = add i8 %117, -48
  %119 = icmp ult i8 %118, 10
  br i1 %119, label %105, label %120, !llvm.loop !131

120:                                              ; preds = %105
  switch i64 %115, label %121 [
    i64 0, label %582
    i64 -1, label %582
  ]

121:                                              ; preds = %120
  %122 = add i64 %115, -1
  store i64 %122, i64* %36, align 8, !tbaa !114
  %123 = getelementptr inbounds i8, i8* %107, i64 2
  br label %127

124:                                              ; preds = %90, %103
  %125 = add i64 %22, 1
  store i64 %22, i64* %36, align 8, !tbaa !114
  %126 = icmp eq i64 %22, -1
  br i1 %126, label %582, label %127

127:                                              ; preds = %121, %124
  %128 = phi i64 [ %22, %124 ], [ %122, %121 ]
  %129 = phi i8* [ %91, %124 ], [ %123, %121 ]
  %130 = phi i64 [ %125, %124 ], [ %22, %121 ]
  %131 = icmp ult i64 %128, %24
  br i1 %131, label %161, label %132

132:                                              ; preds = %127
  %133 = icmp sgt i64 %24, -1
  %134 = shl i64 %24, 1
  %135 = select i1 %133, i64 %134, i64 -1
  %136 = icmp ugt i64 %135, %128
  %137 = add nuw i64 %128, 1
  %138 = select i1 %136, i64 %135, i64 %137
  %139 = icmp ugt i64 %138, 576460752303423487
  %140 = shl i64 %138, 5
  br i1 %139, label %594, label %141

141:                                              ; preds = %132
  %142 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %143 = icmp eq %struct.argument* %142, %8
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = bitcast %struct.argument* %142 to i8*
  %146 = icmp eq i64 %140, 0
  %147 = select i1 %146, i64 1, i64 %140
  %148 = tail call i8* @realloc(i8* noundef %145, i64 noundef %147) #35
  br label %151

149:                                              ; preds = %141
  %150 = tail call noalias i8* @malloc(i64 noundef %140) #35
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi i8* [ %148, %144 ], [ %150, %149 ]
  %153 = icmp eq i8* %152, null
  br i1 %153, label %594, label %154

154:                                              ; preds = %151
  %155 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %156 = icmp eq %struct.argument* %155, %8
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, i64* %7, align 16, !tbaa !126
  %159 = shl i64 %158, 5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %152, i8* noundef nonnull align 1 %15, i64 noundef %159, i1 noundef false) #35
  br label %160

160:                                              ; preds = %154, %157
  store i8* %152, i8** %13, align 8, !tbaa !107
  br label %161

161:                                              ; preds = %160, %127
  %162 = phi i64 [ %138, %160 ], [ %24, %127 ]
  %163 = load i64, i64* %7, align 16, !tbaa !126
  %164 = icmp ugt i64 %163, %128
  %165 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  br i1 %164, label %194, label %166

166:                                              ; preds = %161
  %167 = add nuw i64 %128, 1
  %168 = add i64 %163, 1
  %169 = call i64 @llvm.umax.i64(i64 %167, i64 %168)
  %170 = sub i64 %169, %163
  %171 = icmp ult i64 %170, 2
  br i1 %171, label %185, label %172

172:                                              ; preds = %166
  %173 = and i64 %170, -2
  %174 = add i64 %163, %173
  br label %175

175:                                              ; preds = %175, %172
  %176 = phi i64 [ 0, %172 ], [ %181, %175 ]
  %177 = add i64 %163, %176
  %178 = add i64 %177, 1
  %179 = getelementptr inbounds %struct.argument, %struct.argument* %165, i64 %177, i32 0
  %180 = getelementptr inbounds %struct.argument, %struct.argument* %165, i64 %178, i32 0
  store i32 0, i32* %179, align 16, !tbaa !109
  store i32 0, i32* %180, align 16, !tbaa !109
  %181 = add nuw i64 %176, 2
  %182 = icmp eq i64 %181, %173
  br i1 %182, label %183, label %175, !llvm.loop !132

183:                                              ; preds = %175
  %184 = icmp eq i64 %170, %173
  br i1 %184, label %192, label %185

185:                                              ; preds = %166, %183
  %186 = phi i64 [ %163, %166 ], [ %174, %183 ]
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ %189, %187 ], [ %186, %185 ]
  %189 = add i64 %188, 1
  %190 = getelementptr inbounds %struct.argument, %struct.argument* %165, i64 %188, i32 0
  store i32 0, i32* %190, align 16, !tbaa !109
  %191 = icmp ugt i64 %189, %128
  br i1 %191, label %192, label %187, !llvm.loop !134

192:                                              ; preds = %187, %183
  %193 = phi i64 [ %174, %183 ], [ %189, %187 ]
  store i64 %193, i64* %7, align 16, !tbaa !126
  br label %194

194:                                              ; preds = %161, %192
  %195 = getelementptr inbounds %struct.argument, %struct.argument* %165, i64 %128, i32 0
  %196 = load i32, i32* %195, align 16, !tbaa !109
  switch i32 %196, label %582 [
    i32 0, label %197
    i32 5, label %214
  ]

197:                                              ; preds = %194
  store i32 5, i32* %195, align 16, !tbaa !109
  br label %214

198:                                              ; preds = %76
  %199 = add i8 %79, -48
  %200 = icmp ult i8 %199, 10
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  store i8* %78, i8** %34, align 8, !tbaa !112
  br label %202

202:                                              ; preds = %202, %201
  %203 = phi i8* [ %78, %201 ], [ %207, %202 ]
  %204 = load i8, i8* %203, align 1, !tbaa !23
  %205 = add i8 %204, -48
  %206 = icmp ult i8 %205, 10
  %207 = getelementptr inbounds i8, i8* %203, i64 1
  br i1 %206, label %202, label %208, !llvm.loop !135

208:                                              ; preds = %202
  store i8* %203, i8** %35, align 8, !tbaa !113
  %209 = ptrtoint i8* %203 to i64
  %210 = ptrtoint i8* %78 to i64
  %211 = sub i64 %209, %210
  %212 = icmp ult i64 %25, %211
  %213 = select i1 %212, i64 %211, i64 %25
  br label %214

214:                                              ; preds = %208, %197, %194
  %215 = phi i64 [ %93, %194 ], [ %93, %197 ], [ %213, %208 ]
  %216 = phi i64 [ %162, %194 ], [ %162, %197 ], [ %24, %208 ]
  %217 = phi i64 [ %130, %194 ], [ %130, %197 ], [ %22, %208 ]
  %218 = phi i8* [ %129, %194 ], [ %129, %197 ], [ %203, %208 ]
  %219 = load i8, i8* %218, align 1, !tbaa !23
  br label %220

220:                                              ; preds = %214, %198
  %221 = phi i8 [ %219, %214 ], [ %79, %198 ]
  %222 = phi i64 [ %215, %214 ], [ %25, %198 ]
  %223 = phi i64 [ %216, %214 ], [ %24, %198 ]
  %224 = phi i64 [ %217, %214 ], [ %22, %198 ]
  %225 = phi i8* [ %218, %214 ], [ %78, %198 ]
  %226 = icmp eq i8 %221, 46
  br i1 %226, label %227, label %354

227:                                              ; preds = %220
  %228 = getelementptr inbounds i8, i8* %225, i64 1
  %229 = load i8, i8* %228, align 1, !tbaa !23
  %230 = icmp eq i8 %229, 42
  store i8* %225, i8** %38, align 8, !tbaa !116
  br i1 %230, label %231, label %342

231:                                              ; preds = %227
  %232 = getelementptr inbounds i8, i8* %225, i64 2
  store i8* %232, i8** %39, align 8, !tbaa !117
  %233 = icmp ugt i64 %26, 2
  %234 = select i1 %233, i64 %26, i64 2
  %235 = load i8, i8* %232, align 1, !tbaa !23
  %236 = add i8 %235, -48
  %237 = icmp ult i8 %236, 10
  br i1 %237, label %238, label %265

238:                                              ; preds = %231, %238
  %239 = phi i8* [ %240, %238 ], [ %232, %231 ]
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1, !tbaa !23
  %242 = add i8 %241, -48
  %243 = icmp ult i8 %242, 10
  br i1 %243, label %238, label %244, !llvm.loop !136

244:                                              ; preds = %238
  %245 = icmp eq i8 %241, 36
  br i1 %245, label %246, label %265

246:                                              ; preds = %244, %246
  %247 = phi i8 [ %258, %246 ], [ %235, %244 ]
  %248 = phi i64 [ %256, %246 ], [ 0, %244 ]
  %249 = phi i8* [ %257, %246 ], [ %232, %244 ]
  %250 = zext i8 %247 to i64
  %251 = icmp ult i64 %248, 1844674407370955162
  %252 = mul i64 %248, 10
  %253 = select i1 %251, i64 %252, i64 -1
  %254 = add nuw nsw i64 %250, 4294967248
  %255 = and i64 %254, 4294967295
  %256 = tail call i64 @llvm.uadd.sat.i64(i64 %253, i64 %255) #35
  %257 = getelementptr inbounds i8, i8* %249, i64 1
  %258 = load i8, i8* %257, align 1, !tbaa !23
  %259 = add i8 %258, -48
  %260 = icmp ult i8 %259, 10
  br i1 %260, label %246, label %261, !llvm.loop !137

261:                                              ; preds = %246
  switch i64 %256, label %262 [
    i64 0, label %582
    i64 -1, label %582
  ]

262:                                              ; preds = %261
  %263 = add i64 %256, -1
  store i64 %263, i64* %40, align 8, !tbaa !118
  %264 = getelementptr inbounds i8, i8* %249, i64 2
  br label %271

265:                                              ; preds = %244, %231
  %266 = load i64, i64* %40, align 8, !tbaa !118
  %267 = icmp eq i64 %266, -1
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = add i64 %224, 1
  store i64 %224, i64* %40, align 8, !tbaa !118
  %270 = icmp eq i64 %224, -1
  br i1 %270, label %582, label %271

271:                                              ; preds = %262, %268, %265
  %272 = phi i64 [ %224, %268 ], [ %266, %265 ], [ %263, %262 ]
  %273 = phi i8* [ %232, %268 ], [ %232, %265 ], [ %264, %262 ]
  %274 = phi i64 [ %269, %268 ], [ %224, %265 ], [ %224, %262 ]
  %275 = icmp ult i64 %272, %223
  br i1 %275, label %305, label %276

276:                                              ; preds = %271
  %277 = icmp sgt i64 %223, -1
  %278 = shl i64 %223, 1
  %279 = select i1 %277, i64 %278, i64 -1
  %280 = icmp ugt i64 %279, %272
  %281 = add nuw i64 %272, 1
  %282 = select i1 %280, i64 %279, i64 %281
  %283 = icmp ugt i64 %282, 576460752303423487
  %284 = shl i64 %282, 5
  br i1 %283, label %594, label %285

285:                                              ; preds = %276
  %286 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %287 = icmp eq %struct.argument* %286, %8
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = bitcast %struct.argument* %286 to i8*
  %290 = icmp eq i64 %284, 0
  %291 = select i1 %290, i64 1, i64 %284
  %292 = tail call i8* @realloc(i8* noundef %289, i64 noundef %291) #35
  br label %295

293:                                              ; preds = %285
  %294 = tail call noalias i8* @malloc(i64 noundef %284) #35
  br label %295

295:                                              ; preds = %293, %288
  %296 = phi i8* [ %292, %288 ], [ %294, %293 ]
  %297 = icmp eq i8* %296, null
  br i1 %297, label %594, label %298

298:                                              ; preds = %295
  %299 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %300 = icmp eq %struct.argument* %299, %8
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i64, i64* %7, align 16, !tbaa !126
  %303 = shl i64 %302, 5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %296, i8* noundef nonnull align 1 %16, i64 noundef %303, i1 noundef false) #35
  br label %304

304:                                              ; preds = %298, %301
  store i8* %296, i8** %13, align 8, !tbaa !107
  br label %305

305:                                              ; preds = %304, %271
  %306 = phi i64 [ %282, %304 ], [ %223, %271 ]
  %307 = load i64, i64* %7, align 16, !tbaa !126
  %308 = icmp ugt i64 %307, %272
  %309 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  br i1 %308, label %338, label %310

310:                                              ; preds = %305
  %311 = add nuw i64 %272, 1
  %312 = add i64 %307, 1
  %313 = call i64 @llvm.umax.i64(i64 %311, i64 %312)
  %314 = sub i64 %313, %307
  %315 = icmp ult i64 %314, 2
  br i1 %315, label %329, label %316

316:                                              ; preds = %310
  %317 = and i64 %314, -2
  %318 = add i64 %307, %317
  br label %319

319:                                              ; preds = %319, %316
  %320 = phi i64 [ 0, %316 ], [ %325, %319 ]
  %321 = add i64 %307, %320
  %322 = add i64 %321, 1
  %323 = getelementptr inbounds %struct.argument, %struct.argument* %309, i64 %321, i32 0
  %324 = getelementptr inbounds %struct.argument, %struct.argument* %309, i64 %322, i32 0
  store i32 0, i32* %323, align 16, !tbaa !109
  store i32 0, i32* %324, align 16, !tbaa !109
  %325 = add nuw i64 %320, 2
  %326 = icmp eq i64 %325, %317
  br i1 %326, label %327, label %319, !llvm.loop !138

327:                                              ; preds = %319
  %328 = icmp eq i64 %314, %317
  br i1 %328, label %336, label %329

329:                                              ; preds = %310, %327
  %330 = phi i64 [ %307, %310 ], [ %318, %327 ]
  br label %331

331:                                              ; preds = %329, %331
  %332 = phi i64 [ %333, %331 ], [ %330, %329 ]
  %333 = add i64 %332, 1
  %334 = getelementptr inbounds %struct.argument, %struct.argument* %309, i64 %332, i32 0
  store i32 0, i32* %334, align 16, !tbaa !109
  %335 = icmp ugt i64 %333, %272
  br i1 %335, label %336, label %331, !llvm.loop !139

336:                                              ; preds = %331, %327
  %337 = phi i64 [ %318, %327 ], [ %333, %331 ]
  store i64 %337, i64* %7, align 16, !tbaa !126
  br label %338

338:                                              ; preds = %305, %336
  %339 = getelementptr inbounds %struct.argument, %struct.argument* %309, i64 %272, i32 0
  %340 = load i32, i32* %339, align 16, !tbaa !109
  switch i32 %340, label %582 [
    i32 0, label %341
    i32 5, label %354
  ]

341:                                              ; preds = %338
  store i32 5, i32* %339, align 16, !tbaa !109
  br label %354

342:                                              ; preds = %227, %342
  %343 = phi i8* [ %347, %342 ], [ %228, %227 ]
  %344 = load i8, i8* %343, align 1, !tbaa !23
  %345 = add i8 %344, -48
  %346 = icmp ult i8 %345, 10
  %347 = getelementptr inbounds i8, i8* %343, i64 1
  br i1 %346, label %342, label %348, !llvm.loop !140

348:                                              ; preds = %342
  store i8* %343, i8** %39, align 8, !tbaa !117
  %349 = ptrtoint i8* %343 to i64
  %350 = ptrtoint i8* %225 to i64
  %351 = sub i64 %349, %350
  %352 = icmp ult i64 %26, %351
  %353 = select i1 %352, i64 %351, i64 %26
  br label %354

354:                                              ; preds = %338, %341, %348, %220
  %355 = phi i64 [ %353, %348 ], [ %26, %220 ], [ %234, %341 ], [ %234, %338 ]
  %356 = phi i64 [ %223, %348 ], [ %223, %220 ], [ %306, %341 ], [ %306, %338 ]
  %357 = phi i64 [ %224, %348 ], [ %224, %220 ], [ %274, %341 ], [ %274, %338 ]
  %358 = phi i8* [ %343, %348 ], [ %225, %220 ], [ %273, %341 ], [ %273, %338 ]
  %359 = load i8, i8* %358, align 1, !tbaa !23
  switch i8 %359, label %426 [
    i8 104, label %360
    i8 108, label %366
    i8 106, label %372
    i8 122, label %374
    i8 90, label %374
    i8 116, label %376
    i8 119, label %378
    i8 76, label %424
  ]

360:                                              ; preds = %354
  %361 = getelementptr inbounds i8, i8* %358, i64 1
  %362 = load i8, i8* %361, align 1, !tbaa !23
  %363 = icmp eq i8 %362, 104
  br i1 %363, label %364, label %426

364:                                              ; preds = %360
  %365 = getelementptr inbounds i8, i8* %358, i64 2
  br label %426

366:                                              ; preds = %354
  %367 = getelementptr inbounds i8, i8* %358, i64 1
  %368 = load i8, i8* %367, align 1, !tbaa !23
  %369 = icmp eq i8 %368, 108
  br i1 %369, label %370, label %426

370:                                              ; preds = %366
  %371 = getelementptr inbounds i8, i8* %358, i64 2
  br label %426

372:                                              ; preds = %354
  %373 = getelementptr inbounds i8, i8* %358, i64 1
  br label %426

374:                                              ; preds = %354, %354
  %375 = getelementptr inbounds i8, i8* %358, i64 1
  br label %426

376:                                              ; preds = %354
  %377 = getelementptr inbounds i8, i8* %358, i64 1
  br label %426

378:                                              ; preds = %354
  %379 = getelementptr inbounds i8, i8* %358, i64 1
  %380 = load i8, i8* %379, align 1, !tbaa !23
  switch i8 %380, label %426 [
    i8 102, label %381
    i8 56, label %404
    i8 49, label %406
    i8 51, label %412
    i8 54, label %418
  ]

381:                                              ; preds = %378
  %382 = getelementptr inbounds i8, i8* %358, i64 2
  %383 = load i8, i8* %382, align 1, !tbaa !23
  switch i8 %383, label %426 [
    i8 56, label %384
    i8 49, label %386
    i8 51, label %392
    i8 54, label %398
  ]

384:                                              ; preds = %381
  %385 = getelementptr inbounds i8, i8* %358, i64 3
  br label %426

386:                                              ; preds = %381
  %387 = getelementptr inbounds i8, i8* %358, i64 3
  %388 = load i8, i8* %387, align 1, !tbaa !23
  %389 = icmp eq i8 %388, 54
  br i1 %389, label %390, label %426

390:                                              ; preds = %386
  %391 = getelementptr inbounds i8, i8* %358, i64 4
  br label %426

392:                                              ; preds = %381
  %393 = getelementptr inbounds i8, i8* %358, i64 3
  %394 = load i8, i8* %393, align 1, !tbaa !23
  %395 = icmp eq i8 %394, 50
  br i1 %395, label %396, label %426

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, i8* %358, i64 4
  br label %426

398:                                              ; preds = %381
  %399 = getelementptr inbounds i8, i8* %358, i64 3
  %400 = load i8, i8* %399, align 1, !tbaa !23
  %401 = icmp eq i8 %400, 52
  br i1 %401, label %402, label %426

402:                                              ; preds = %398
  %403 = getelementptr inbounds i8, i8* %358, i64 4
  br label %426

404:                                              ; preds = %378
  %405 = getelementptr inbounds i8, i8* %358, i64 2
  br label %426

406:                                              ; preds = %378
  %407 = getelementptr inbounds i8, i8* %358, i64 2
  %408 = load i8, i8* %407, align 1, !tbaa !23
  %409 = icmp eq i8 %408, 54
  br i1 %409, label %410, label %426

410:                                              ; preds = %406
  %411 = getelementptr inbounds i8, i8* %358, i64 3
  br label %426

412:                                              ; preds = %378
  %413 = getelementptr inbounds i8, i8* %358, i64 2
  %414 = load i8, i8* %413, align 1, !tbaa !23
  %415 = icmp eq i8 %414, 50
  br i1 %415, label %416, label %426

416:                                              ; preds = %412
  %417 = getelementptr inbounds i8, i8* %358, i64 3
  br label %426

418:                                              ; preds = %378
  %419 = getelementptr inbounds i8, i8* %358, i64 2
  %420 = load i8, i8* %419, align 1, !tbaa !23
  %421 = icmp eq i8 %420, 52
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = getelementptr inbounds i8, i8* %358, i64 3
  br label %426

424:                                              ; preds = %354
  %425 = getelementptr inbounds i8, i8* %358, i64 1
  br label %426

426:                                              ; preds = %378, %381, %406, %412, %386, %392, %366, %360, %354, %370, %374, %404, %416, %422, %418, %410, %384, %396, %402, %398, %390, %424, %376, %372, %364
  %427 = phi i1 [ false, %370 ], [ true, %374 ], [ false, %404 ], [ false, %416 ], [ false, %422 ], [ false, %418 ], [ false, %410 ], [ false, %384 ], [ false, %396 ], [ false, %402 ], [ false, %398 ], [ false, %390 ], [ false, %424 ], [ true, %376 ], [ true, %372 ], [ false, %364 ], [ false, %354 ], [ false, %360 ], [ true, %366 ], [ false, %392 ], [ false, %386 ], [ false, %412 ], [ false, %406 ], [ false, %381 ], [ false, %378 ]
  %428 = phi i1 [ true, %370 ], [ false, %374 ], [ false, %404 ], [ false, %416 ], [ false, %422 ], [ false, %418 ], [ false, %410 ], [ false, %384 ], [ false, %396 ], [ false, %402 ], [ false, %398 ], [ false, %390 ], [ true, %424 ], [ false, %376 ], [ false, %372 ], [ false, %364 ], [ false, %354 ], [ false, %360 ], [ false, %366 ], [ false, %392 ], [ false, %386 ], [ false, %412 ], [ false, %406 ], [ false, %381 ], [ false, %378 ]
  %429 = phi i32 [ 9, %370 ], [ 7, %374 ], [ 11, %404 ], [ 15, %416 ], [ 17, %422 ], [ 5, %418 ], [ 13, %410 ], [ 19, %384 ], [ 23, %396 ], [ 25, %402 ], [ 5, %398 ], [ 21, %390 ], [ 9, %424 ], [ 7, %376 ], [ 7, %372 ], [ 1, %364 ], [ 5, %354 ], [ 3, %360 ], [ 7, %366 ], [ 5, %392 ], [ 5, %386 ], [ 5, %412 ], [ 5, %406 ], [ 5, %381 ], [ 5, %378 ]
  %430 = phi i32 [ 10, %370 ], [ 8, %374 ], [ 12, %404 ], [ 16, %416 ], [ 18, %422 ], [ 6, %418 ], [ 14, %410 ], [ 20, %384 ], [ 24, %396 ], [ 26, %402 ], [ 6, %398 ], [ 22, %390 ], [ 10, %424 ], [ 8, %376 ], [ 8, %372 ], [ 2, %364 ], [ 6, %354 ], [ 4, %360 ], [ 8, %366 ], [ 6, %392 ], [ 6, %386 ], [ 6, %412 ], [ 6, %406 ], [ 6, %381 ], [ 6, %378 ]
  %431 = phi i32 [ 28, %370 ], [ 27, %374 ], [ 27, %404 ], [ 27, %416 ], [ 27, %422 ], [ 27, %418 ], [ 27, %410 ], [ 27, %384 ], [ 27, %396 ], [ 27, %402 ], [ 27, %398 ], [ 27, %390 ], [ 28, %424 ], [ 27, %376 ], [ 27, %372 ], [ 27, %364 ], [ 27, %354 ], [ 27, %360 ], [ 27, %366 ], [ 27, %392 ], [ 27, %386 ], [ 27, %412 ], [ 27, %406 ], [ 27, %381 ], [ 27, %378 ]
  %432 = phi i8* [ %371, %370 ], [ %375, %374 ], [ %405, %404 ], [ %417, %416 ], [ %423, %422 ], [ %358, %418 ], [ %411, %410 ], [ %385, %384 ], [ %397, %396 ], [ %403, %402 ], [ %358, %398 ], [ %391, %390 ], [ %425, %424 ], [ %377, %376 ], [ %373, %372 ], [ %365, %364 ], [ %358, %354 ], [ %361, %360 ], [ %367, %366 ], [ %358, %392 ], [ %358, %386 ], [ %358, %412 ], [ %358, %406 ], [ %358, %381 ], [ %358, %378 ]
  %433 = getelementptr inbounds i8, i8* %432, i64 1
  %434 = load i8, i8* %432, align 1, !tbaa !23
  switch i8 %434, label %582 [
    i8 100, label %446
    i8 105, label %446
    i8 98, label %435
    i8 111, label %435
    i8 117, label %435
    i8 120, label %435
    i8 88, label %435
    i8 66, label %435
    i8 102, label %436
    i8 70, label %436
    i8 101, label %436
    i8 69, label %436
    i8 103, label %436
    i8 71, label %436
    i8 97, label %436
    i8 65, label %436
    i8 99, label %437
    i8 67, label %440
    i8 115, label %441
    i8 83, label %444
    i8 112, label %445
    i8 37, label %526
  ]

435:                                              ; preds = %426, %426, %426, %426, %426, %426
  br label %446

436:                                              ; preds = %426, %426, %426, %426, %426, %426, %426, %426
  br label %446

437:                                              ; preds = %426
  %438 = or i1 %427, %428
  %439 = select i1 %438, i32 30, i32 29
  br label %446

440:                                              ; preds = %426
  br label %446

441:                                              ; preds = %426
  %442 = or i1 %427, %428
  %443 = select i1 %442, i32 32, i32 31
  br label %446

444:                                              ; preds = %426
  br label %446

445:                                              ; preds = %426
  br label %446

446:                                              ; preds = %445, %444, %440, %436, %435, %426, %426, %437, %441
  %447 = phi i8 [ 115, %441 ], [ 99, %437 ], [ %434, %426 ], [ %434, %426 ], [ %434, %435 ], [ %434, %436 ], [ 99, %440 ], [ 115, %444 ], [ 112, %445 ]
  %448 = phi i32 [ %443, %441 ], [ %439, %437 ], [ %429, %426 ], [ %429, %426 ], [ %430, %435 ], [ %431, %436 ], [ 30, %440 ], [ 32, %444 ], [ 33, %445 ]
  store i64 %74, i64* %42, align 8, !tbaa !106
  %449 = icmp eq i64 %74, -1
  br i1 %449, label %450, label %453

450:                                              ; preds = %446
  %451 = add i64 %357, 1
  store i64 %357, i64* %42, align 8, !tbaa !106
  %452 = icmp eq i64 %357, -1
  br i1 %452, label %582, label %453

453:                                              ; preds = %450, %446
  %454 = phi i64 [ %357, %450 ], [ %74, %446 ]
  %455 = phi i64 [ %451, %450 ], [ %357, %446 ]
  %456 = icmp ult i64 %454, %356
  br i1 %456, label %486, label %457

457:                                              ; preds = %453
  %458 = icmp sgt i64 %356, -1
  %459 = shl i64 %356, 1
  %460 = select i1 %458, i64 %459, i64 -1
  %461 = icmp ugt i64 %460, %454
  %462 = add nuw i64 %454, 1
  %463 = select i1 %461, i64 %460, i64 %462
  %464 = icmp ugt i64 %463, 576460752303423487
  %465 = shl i64 %463, 5
  br i1 %464, label %594, label %466

466:                                              ; preds = %457
  %467 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %468 = icmp eq %struct.argument* %467, %8
  br i1 %468, label %474, label %469

469:                                              ; preds = %466
  %470 = bitcast %struct.argument* %467 to i8*
  %471 = icmp eq i64 %465, 0
  %472 = select i1 %471, i64 1, i64 %465
  %473 = tail call i8* @realloc(i8* noundef %470, i64 noundef %472) #35
  br label %476

474:                                              ; preds = %466
  %475 = tail call noalias i8* @malloc(i64 noundef %465) #35
  br label %476

476:                                              ; preds = %474, %469
  %477 = phi i8* [ %473, %469 ], [ %475, %474 ]
  %478 = icmp eq i8* %477, null
  br i1 %478, label %594, label %479

479:                                              ; preds = %476
  %480 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %481 = icmp eq %struct.argument* %480, %8
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load i64, i64* %7, align 16, !tbaa !126
  %484 = shl i64 %483, 5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %477, i8* noundef nonnull align 1 %17, i64 noundef %484, i1 noundef false) #35
  br label %485

485:                                              ; preds = %479, %482
  store i8* %477, i8** %13, align 8, !tbaa !107
  br label %486

486:                                              ; preds = %485, %453
  %487 = phi i64 [ %463, %485 ], [ %356, %453 ]
  %488 = load i64, i64* %7, align 16, !tbaa !126
  %489 = icmp ugt i64 %488, %454
  %490 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  br i1 %489, label %519, label %491

491:                                              ; preds = %486
  %492 = add nuw i64 %454, 1
  %493 = add i64 %488, 1
  %494 = call i64 @llvm.umax.i64(i64 %492, i64 %493)
  %495 = sub i64 %494, %488
  %496 = icmp ult i64 %495, 2
  br i1 %496, label %510, label %497

497:                                              ; preds = %491
  %498 = and i64 %495, -2
  %499 = add i64 %488, %498
  br label %500

500:                                              ; preds = %500, %497
  %501 = phi i64 [ 0, %497 ], [ %506, %500 ]
  %502 = add i64 %488, %501
  %503 = add i64 %502, 1
  %504 = getelementptr inbounds %struct.argument, %struct.argument* %490, i64 %502, i32 0
  %505 = getelementptr inbounds %struct.argument, %struct.argument* %490, i64 %503, i32 0
  store i32 0, i32* %504, align 16, !tbaa !109
  store i32 0, i32* %505, align 16, !tbaa !109
  %506 = add nuw i64 %501, 2
  %507 = icmp eq i64 %506, %498
  br i1 %507, label %508, label %500, !llvm.loop !141

508:                                              ; preds = %500
  %509 = icmp eq i64 %495, %498
  br i1 %509, label %517, label %510

510:                                              ; preds = %491, %508
  %511 = phi i64 [ %488, %491 ], [ %499, %508 ]
  br label %512

512:                                              ; preds = %510, %512
  %513 = phi i64 [ %514, %512 ], [ %511, %510 ]
  %514 = add i64 %513, 1
  %515 = getelementptr inbounds %struct.argument, %struct.argument* %490, i64 %513, i32 0
  store i32 0, i32* %515, align 16, !tbaa !109
  %516 = icmp ugt i64 %514, %454
  br i1 %516, label %517, label %512, !llvm.loop !142

517:                                              ; preds = %512, %508
  %518 = phi i64 [ %499, %508 ], [ %514, %512 ]
  store i64 %518, i64* %7, align 16, !tbaa !126
  br label %519

519:                                              ; preds = %486, %517
  %520 = getelementptr inbounds %struct.argument, %struct.argument* %490, i64 %454, i32 0
  %521 = load i32, i32* %520, align 16, !tbaa !109
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %519
  store i32 %448, i32* %520, align 16, !tbaa !109
  br label %526

524:                                              ; preds = %519
  %525 = icmp eq i32 %521, %448
  br i1 %525, label %526, label %582

526:                                              ; preds = %524, %523, %426
  %527 = phi i8 [ %434, %426 ], [ %447, %523 ], [ %447, %524 ]
  %528 = phi i64 [ %356, %426 ], [ %487, %523 ], [ %487, %524 ]
  %529 = phi i64 [ %357, %426 ], [ %455, %523 ], [ %455, %524 ]
  %530 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 9
  store i8 %527, i8* %530, align 8, !tbaa !105
  %531 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %30, i64 %31, i32 1
  store i8* %433, i8** %531, align 8, !tbaa !125
  %532 = load i64, i64* %4, align 8, !tbaa !104
  %533 = add i64 %532, 1
  store i64 %533, i64* %4, align 8, !tbaa !104
  %534 = icmp ult i64 %533, %23
  br i1 %534, label %561, label %535

535:                                              ; preds = %526
  %536 = icmp sgt i64 %23, -1
  %537 = shl i64 %23, 1
  %538 = select i1 %536, i64 %537, i64 -1
  %539 = icmp ugt i64 %538, 209622091746699450
  %540 = mul i64 %538, 88
  br i1 %539, label %594, label %541

541:                                              ; preds = %535
  %542 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %543 = icmp eq %struct.char_directive* %542, %5
  br i1 %543, label %549, label %544

544:                                              ; preds = %541
  %545 = bitcast %struct.char_directive* %542 to i8*
  %546 = icmp eq i64 %540, 0
  %547 = select i1 %546, i64 1, i64 %540
  %548 = tail call i8* @realloc(i8* noundef %545, i64 noundef %547) #35
  br label %551

549:                                              ; preds = %541
  %550 = tail call noalias i8* @malloc(i64 noundef %540) #35
  br label %551

551:                                              ; preds = %549, %544
  %552 = phi i8* [ %548, %544 ], [ %550, %549 ]
  %553 = icmp eq i8* %552, null
  br i1 %553, label %594, label %554

554:                                              ; preds = %551
  %555 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %556 = icmp eq %struct.char_directive* %555, %5
  br i1 %556, label %557, label %560

557:                                              ; preds = %554
  %558 = load i64, i64* %4, align 8, !tbaa !104
  %559 = mul i64 %558, 88
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %552, i8* noundef nonnull align 1 %18, i64 noundef %559, i1 noundef false) #35
  br label %560

560:                                              ; preds = %554, %557
  store i8* %552, i8** %14, align 8, !tbaa !101
  br label %561

561:                                              ; preds = %19, %526, %560
  %562 = phi i64 [ %26, %19 ], [ %355, %560 ], [ %355, %526 ]
  %563 = phi i64 [ %25, %19 ], [ %222, %560 ], [ %222, %526 ]
  %564 = phi i64 [ %24, %19 ], [ %528, %560 ], [ %528, %526 ]
  %565 = phi i64 [ %23, %19 ], [ %537, %560 ], [ %23, %526 ]
  %566 = phi i64 [ %22, %19 ], [ %529, %560 ], [ %529, %526 ]
  %567 = phi i8* [ %27, %19 ], [ %433, %560 ], [ %433, %526 ]
  %568 = load i8, i8* %567, align 1, !tbaa !23
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %19

570:                                              ; preds = %561
  %571 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %572 = load i64, i64* %4, align 8, !tbaa !104
  br label %573

573:                                              ; preds = %570, %3
  %574 = phi i64 [ 0, %3 ], [ %572, %570 ]
  %575 = phi %struct.char_directive* [ %5, %3 ], [ %571, %570 ]
  %576 = phi i64 [ 0, %3 ], [ %562, %570 ]
  %577 = phi i64 [ 0, %3 ], [ %563, %570 ]
  %578 = phi i8* [ %0, %3 ], [ %567, %570 ]
  %579 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %575, i64 %574, i32 0
  store i8* %578, i8** %579, align 8, !tbaa !102
  %580 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1, i64 0, i32 2
  store i64 %577, i64* %580, align 8, !tbaa !98
  %581 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1, i64 0, i32 3
  store i64 %576, i64* %581, align 8, !tbaa !100
  br label %606

582:                                              ; preds = %261, %261, %120, %120, %69, %69, %268, %124, %194, %338, %450, %426, %524
  %583 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %584 = icmp eq %struct.argument* %583, %8
  br i1 %584, label %587, label %585

585:                                              ; preds = %582
  %586 = bitcast %struct.argument* %583 to i8*
  tail call void @free(i8* noundef %586) #35
  br label %587

587:                                              ; preds = %585, %582
  %588 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %589 = icmp eq %struct.char_directive* %588, %5
  br i1 %589, label %592, label %590

590:                                              ; preds = %587
  %591 = bitcast %struct.char_directive* %588 to i8*
  tail call void @free(i8* noundef %591) #35
  br label %592

592:                                              ; preds = %590, %587
  %593 = tail call i32* @__errno_location() #38
  store i32 22, i32* %593, align 4, !tbaa !21
  br label %606

594:                                              ; preds = %132, %151, %276, %295, %457, %476, %535, %551
  %595 = load %struct.argument*, %struct.argument** %9, align 8, !tbaa !107
  %596 = icmp eq %struct.argument* %595, %8
  br i1 %596, label %599, label %597

597:                                              ; preds = %594
  %598 = bitcast %struct.argument* %595 to i8*
  tail call void @free(i8* noundef %598) #35
  br label %599

599:                                              ; preds = %597, %594
  %600 = load %struct.char_directive*, %struct.char_directive** %6, align 8, !tbaa !101
  %601 = icmp eq %struct.char_directive* %600, %5
  br i1 %601, label %604, label %602

602:                                              ; preds = %599
  %603 = bitcast %struct.char_directive* %600 to i8*
  tail call void @free(i8* noundef %603) #35
  br label %604

604:                                              ; preds = %602, %599
  %605 = tail call i32* @__errno_location() #38
  store i32 12, i32* %605, align 4, !tbaa !21
  br label %606

606:                                              ; preds = %604, %592, %573
  %607 = phi i32 [ -1, %604 ], [ -1, %592 ], [ 0, %573 ]
  ret i32 %607
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

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
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { argmemonly nofree nounwind readonly willreturn }
attributes #25 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #28 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!28 = !{!29, !22, i64 8}
!29 = !{!"", !30, i64 0, !22, i64 8, !13, i64 16}
!30 = !{!"long", !14, i64 0}
!31 = distinct !{!31, !19}
!32 = !{!29, !13, i64 16}
!33 = !{!30, !30, i64 0}
!34 = distinct !{!34, !19}
!35 = !{!29, !30, i64 0}
!36 = distinct !{!36, !19}
!37 = !{!38, !38, i64 0}
!38 = !{!"_Bool", !14, i64 0}
!39 = !{i8 0, i8 2}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !21, i64 28, i64 4, !21}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"vfprintf.inline: argument 0"}
!45 = distinct !{!45, !"vfprintf.inline"}
!46 = distinct !{!46, !45, !"vfprintf.inline: argument 1"}
!47 = !{!48, !13, i64 40}
!48 = !{!"_IO_FILE", !22, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 116, !30, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !30, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !30, i64 184, !22, i64 192, !14, i64 196}
!49 = !{!48, !13, i64 48}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!52, !14, i64 0}
!52 = !{!"quoting_options", !14, i64 0, !22, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!53 = !{!52, !22, i64 4}
!54 = !{!52, !13, i64 40}
!55 = !{!52, !13, i64 48}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = !{!62, !13, i64 8}
!62 = !{!"slotvec", !30, i64 0, !13, i64 8}
!63 = distinct !{!63, !19}
!64 = !{!62, !30, i64 0}
!65 = !{i64 0, i64 8, !33, i64 8, i64 8, !12}
!66 = !{!67}
!67 = distinct !{!67, !68, !"quoting_options_from_style: argument 0"}
!68 = distinct !{!68, !"quoting_options_from_style"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"quoting_options_from_style: argument 0"}
!71 = distinct !{!71, !"quoting_options_from_style"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"quoting_options_from_style: argument 0"}
!74 = distinct !{!74, !"quoting_options_from_style"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"quoting_options_from_style: argument 0"}
!77 = distinct !{!77, !"quoting_options_from_style"}
!78 = !{i64 0, i64 4, !23, i64 4, i64 4, !21, i64 8, i64 32, !23, i64 40, i64 8, !12, i64 48, i64 8, !12}
!79 = !{!80}
!80 = distinct !{!80, !81, !"quoting_options_from_style: argument 0"}
!81 = distinct !{!81, !"quoting_options_from_style"}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = !{!88, !13, i64 16}
!88 = !{!"allocator", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!89 = !{!88, !13, i64 0}
!90 = !{!88, !13, i64 8}
!91 = !{!88, !13, i64 24}
!92 = !{!48, !22, i64 0}
!93 = !{!48, !13, i64 16}
!94 = !{!48, !13, i64 8}
!95 = !{!48, !13, i64 32}
!96 = !{!48, !13, i64 72}
!97 = !{!48, !30, i64 144}
!98 = !{!99, !30, i64 16}
!99 = !{!"", !30, i64 0, !13, i64 8, !30, i64 16, !30, i64 24, !14, i64 32}
!100 = !{!99, !30, i64 24}
!101 = !{!99, !13, i64 8}
!102 = !{!103, !13, i64 0}
!103 = !{!"", !13, i64 0, !13, i64 8, !22, i64 16, !13, i64 24, !13, i64 32, !30, i64 40, !13, i64 48, !13, i64 56, !30, i64 64, !14, i64 72, !30, i64 80}
!104 = !{!99, !30, i64 0}
!105 = !{!103, !14, i64 72}
!106 = !{!103, !30, i64 80}
!107 = !{!108, !13, i64 8}
!108 = !{!"", !30, i64 0, !13, i64 8, !14, i64 16}
!109 = !{!110, !14, i64 0}
!110 = !{!"", !14, i64 0, !14, i64 16}
!111 = !{!103, !22, i64 16}
!112 = !{!103, !13, i64 24}
!113 = !{!103, !13, i64 32}
!114 = !{!103, !30, i64 40}
!115 = distinct !{!115, !19}
!116 = !{!103, !13, i64 48}
!117 = !{!103, !13, i64 56}
!118 = !{!103, !30, i64 64}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = !{!103, !13, i64 8}
!126 = !{!108, !30, i64 0}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19, !133}
!133 = !{!"llvm.loop.isvectorized", i32 1}
!134 = distinct !{!134, !19, !133}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !19, !133}
!139 = distinct !{!139, !19, !133}
!140 = distinct !{!140, !19}
!141 = distinct !{!141, !19, !133}
!142 = distinct !{!142, !19, !133}
