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
%struct.argument = type { i32, %union.anon.39 }
%union.anon.39 = type { fp128 }

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
@.str.17 = private unnamed_addr constant [90 x i8] c"0 <= opt_fileno && opt_fileno < ((size_t) (sizeof (stdbuf) / sizeof (stdbuf)[0] + 0 * 0))\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"src/stdbuf.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@stdbuf = internal global [3 x %struct.anon] zeroinitializer, align 8
@optarg = external global i8*, align 8
@.str.19 = private unnamed_addr constant [45 x i8] c"line buffering standard input is meaningless\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external global i32, align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal global i8* null, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
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
@.str.86 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), align 8
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.94 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.101 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4
@verror_at_line.old_file_name = internal global i8* null, align 8
@verror_at_line.old_line_number = internal global i32 0, align 4
@.str.1.107 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.108 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.109 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4
@.str.4.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.103 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.104 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.122 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.123 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.128 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.129 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.130 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.131 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.132 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.133 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.134 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.135 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.129, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.131, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.133, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.135, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.136 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.137 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.147 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.148 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.149 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.150 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.151 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.152 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.153 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.154 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.155 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.156 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.157 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.158 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.159 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.160 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.161 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.162 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.167 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.168 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.169 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.170 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.171 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.172 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.173 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.188 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.186 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.187 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.225 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@stdlib_allocator = dso_local constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8
@.str.240 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.241 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@printf_fetchargs.wide_null_string = internal constant [7 x i32] [i32 40, i32 78, i32 85, i32 76, i32 76, i32 41, i32 0], align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18
  %9 = load i8*, i8** @program_name, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9)
  br label %11

11:                                               ; preds = %6
  br label %36

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #18
  %14 = load i8*, i8** @program_name, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14)
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0)) #18
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17)
  call void @emit_mandatory_arg_note()
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19)
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20)
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21)
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22)
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23)
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0)) #18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25)
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28)
  %30 = call i8* @gettext(i8* noundef getelementptr inbounds ([311 x i8], [311 x i8]* @.str.11, i64 0, i64 0)) #18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 @fputs_unlocked(i8* noundef %30, %struct._IO_FILE* noundef %31)
  %33 = call i8* @gettext(i8* noundef getelementptr inbounds ([267 x i8], [267 x i8]* @.str.12, i64 0, i64 0)) #18
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 @fputs_unlocked(i8* noundef %33, %struct._IO_FILE* noundef %34)
  call void @emit_exec_status(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %12, %11
  %37 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %37) #19
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0)) #18
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 {
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
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #18
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @oputs_.help_no_sgr, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35)
  br label %274

37:                                               ; preds = %30
  store i8 1, i8* %6, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #20
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %8, align 8
  store i8 0, i8* %6, align 1
  br label %89

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %59, 2
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %82

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21
  %65 = load i16*, i16** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %65, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 8192
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  br label %54, !llvm.loop !12

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  store i8* %86, i8** %8, align 8
  store i8 0, i8* %6, align 1
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #20
  store i64 %91, i64* %11, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 10
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %164

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1
  br label %119

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21
  %121 = load i16*, i16** %120, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %121, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = and i32 %128, 8192
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 9
  br i1 %135, label %149, label %136

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21
  %138 = load i16*, i16** %137, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %138, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 8192
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136, %131
  br label %164

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1
  %152 = trunc i8 %151 to i1
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 45
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %164

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %12, align 8
  br label %95, !llvm.loop !14

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171)
  %173 = load i8*, i8** %3, align 8
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %232

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %230

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %228

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %226

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %224

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0))
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %222

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0))
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %220

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0))
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %218

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0))
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0))
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %214

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %211 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %207 ], [ %215, %214 ]
  br label %218

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %203 ], [ %217, %216 ]
  br label %220

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %199 ], [ %219, %218 ]
  br label %222

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %195 ], [ %221, %220 ]
  br label %224

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %191 ], [ %223, %222 ]
  br label %226

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), %187 ], [ %225, %224 ]
  br label %228

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %183 ], [ %227, %226 ]
  br label %230

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %179 ], [ %229, %228 ]
  br label %232

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), %175 ], [ %231, %230 ]
  store i8* %233, i8** %13, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 noundef 6) #20
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i64 noundef 9) #20
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = load i64, i64* %11, align 8
  %245 = trunc i64 %244 to i32
  %246 = load i8*, i8** %8, align 8
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246)
  br label %254

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8
  %250 = load i64, i64* %11, align 8
  %251 = trunc i64 %250 to i32
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.52, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252)
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %255)
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* noundef %257)
  %259 = load i8*, i8** %7, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265)
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* noundef %267)
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %269)
  %271 = load i8*, i8** %12, align 8
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272)
  br label %274

274:                                              ; preds = %254, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_exec_status(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @gettext(i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.57, i64 0, i64 0)) #18
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false)
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %4, align 8
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0
  store %struct.infomap* %10, %struct.infomap** %5, align 8
  br label %11

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20)
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1
  store %struct.infomap* %27, %struct.infomap** %5, align 8
  br label %11, !llvm.loop !15

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address()
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 noundef 3) #20
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.62, i64 0, i64 0)) #18
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i8*, i8** %2, align 8
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), %52 ], [ %54, %53 ]
  store i8* %56, i8** %7, align 8
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0)) #18
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i64 0, i64 0), i8* noundef %58)
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0)) #18
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = icmp eq i8* %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66)
  ret void
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  call void @set_program_name(i8* noundef %11)
  %12 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #18
  %13 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #18
  %14 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #18
  call void @initialize_exit_failure(i32 noundef 125)
  %15 = call i32 @atexit(void ()* noundef @close_stdout) #18
  br label %16

16:                                               ; preds = %87, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt_long(i32 noundef %17, i8** noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %88

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %86 [
    i32 101, label %23
    i32 105, label %23
    i32 111, label %23
    i32 -2, label %81
    i32 -3, label %82
  ]

23:                                               ; preds = %21, %21, %21
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @optc_to_fileno(i32 noundef %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 0, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %28, %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #19
  unreachable

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  br label %40

40:                                               ; preds = %45, %34
  %41 = load i8*, i8** @optarg, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i1 @c_isspace(i32 noundef %43)
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** @optarg, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** @optarg, align 8
  br label %40, !llvm.loop !16

48:                                               ; preds = %40
  %49 = load i8*, i8** @optarg, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 105
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load i8*, i8** @optarg, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 76
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %62)
  call void @usage(i32 noundef 125) #22
  unreachable

63:                                               ; preds = %56, %48
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i1 @streq(i8* noundef %64, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** @optarg, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = call i32 @parse_size(i8* noundef %67, i64* noundef %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = call i32* @__errno_location() #21
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #18
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i8* @quote(i8* noundef %78)
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %76, i8* noundef %77, i8* noundef %79)
  unreachable

80:                                               ; preds = %66, %63
  br label %87

81:                                               ; preds = %21
  call void @usage(i32 noundef 0) #22
  unreachable

82:                                               ; preds = %21
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = load i8*, i8** @Version, align 8
  %85 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* noundef %84, i8* noundef %85, i8* noundef null)
  call void @exit(i32 noundef 0) #19
  unreachable

86:                                               ; preds = %21
  call void @usage(i32 noundef 125) #22
  unreachable

87:                                               ; preds = %80
  br label %16, !llvm.loop !17

88:                                               ; preds = %16
  %89 = load i32, i32* @optind, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8** %92, i8*** %5, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %99)
  call void @usage(i32 noundef 125) #22
  unreachable

100:                                              ; preds = %88
  %101 = call i1 @set_libstdbuf_options()
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %103)
  call void @usage(i32 noundef 125) #22
  unreachable

104:                                              ; preds = %100
  %105 = load i8*, i8** @program_name, align 8
  call void @set_program_path(i8* noundef %105)
  %106 = load i8*, i8** @program_path, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call noalias nonnull i8* @xstrdup(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  store i8* %109, i8** @program_path, align 8
  br label %110

110:                                              ; preds = %108, %104
  call void @set_LD_PRELOAD()
  %111 = load i8*, i8** @program_path, align 8
  call void @free(i8* noundef %111) #18
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = call i32 @execvp(i8* noundef %113, i8** noundef %114) #18
  %116 = call i32* @__errno_location() #21
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 127, i32 126
  store i32 %120, i32* %8, align 4
  %121 = call i32* @__errno_location() #21
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #18
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @quote(i8* noundef %126)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %122, i8* noundef %123, i8* noundef %127)
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  store volatile i32 %6, i32* @exit_failure, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optc_to_fileno(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %8 [
    i32 101, label %5
    i32 105, label %6
    i32 111, label %7
  ]

5:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %8

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

7:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %7, %6, %5
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_size(i8* noundef %0, i64* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @xstrtoumax(i8* noundef %8, i8** noundef null, i32 noundef 10, i64* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 -1, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %12, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32* @__errno_location() #21
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %3, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %30

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 75, %26 ], [ %29, %27 ]
  %32 = call i32* @__errno_location() #21
  store i32 %31, i32* %32, align 4
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @set_libstdbuf_options() #4 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8 0, i8* %1, align 1
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %56, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %8, label %59

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 76
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @c_toupper(i32 noundef %26)
  %28 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %14
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @c_toupper(i32 noundef %33)
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i32 noundef %34, i64 noundef %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %22
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @xalloc_die() #22
  unreachable

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @putenv(i8* noundef %45) #18
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call i32* @__errno_location() #21
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i64 0, i64 0)) #18
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @quote(i8* noundef %52)
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %50, i8* noundef %51, i8* noundef %53)
  unreachable

54:                                               ; preds = %44
  store i8 1, i8* %1, align 1
  br label %55

55:                                               ; preds = %54, %8
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %2, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %2, align 8
  br label %5, !llvm.loop !18

59:                                               ; preds = %5
  %60 = load i8, i8* %1, align 1
  %61 = trunc i8 %60 to i1
  ret i1 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_program_path(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strchr(i8* noundef %6, i32 noundef 47) #20
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call noalias nonnull i8* @dir_name(i8* noundef %10)
  store i8* %11, i8** @program_path, align 8
  br label %49

12:                                               ; preds = %1
  %13 = call noalias i8* @xreadlink(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call noalias nonnull i8* @dir_name(i8* noundef %17)
  store i8* %18, i8** @program_path, align 8
  br label %47

19:                                               ; preds = %12
  %20 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0)) #18
  store i8* %20, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = call noalias nonnull i8* @xstrdup(i8* noundef %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strtok(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0)) #18
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %43, %22
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call noalias nonnull i8* @file_name_concat(i8* noundef %31, i8* noundef %32, i8** noundef null)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @access(i8* noundef %34, i32 noundef 1) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call noalias nonnull i8* @dir_name(i8* noundef %38)
  store i8* %39, i8** @program_path, align 8
  %40 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %40) #18
  br label %45

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %42) #18
  br label %43

43:                                               ; preds = %41
  %44 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0)) #18
  store i8* %44, i8** %4, align 8
  br label %27, !llvm.loop !19

45:                                               ; preds = %37, %27
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %48) #18
  br label %49

49:                                               ; preds = %47, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_LD_PRELOAD() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i8*], align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0), i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @getenv(i8* noundef %9) #18
  store i8* %10, i8** %3, align 8
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %12 = load i8*, i8** @program_path, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  store i8** %15, i8*** %6, align 8
  br label %16

16:                                               ; preds = %0, %45
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call noalias nonnull i8* @xstrdup(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  br label %46

23:                                               ; preds = %16
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), i8* noundef %25, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0))
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void @xalloc_die() #22
  unreachable

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @stat(i8* noundef %31, %struct.stat* noundef %8) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %36) #18
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %6, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0)) #18
  %44 = call i8* @quote(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0))
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %43, i8* noundef %44)
  unreachable

45:                                               ; preds = %35
  br label %16

46:                                               ; preds = %34, %21
  %47 = load i8*, i8** %3, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i8*, i8** %2, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i8* noundef %50, i8* noundef %51, i8* noundef %52)
  store i32 %53, i32* %1, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** %2, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8**, i8*, ...) @rpl_asprintf(i8** noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef %55, i8* noundef %56)
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %1, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @xalloc_die() #22
  unreachable

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %63) #18
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @putenv(i8* noundef %64) #18
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = call i32* @__errno_location() #21
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i64 0, i64 0)) #18
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @quote(i8* noundef %72)
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %70, i8* noundef %71, i8* noundef %73)
  unreachable

74:                                               ; preds = %62
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @execvp(i8* noundef, i8** noundef) #2

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare i32 @putenv(i8* noundef) #2

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 32
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 9
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 65
  %8 = add nsw i32 %7, 97
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 97
  %8 = add nsw i32 %7, 65
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @file_name, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = trunc i8 %4 to i1
  %6 = zext i1 %5 to i8
  store i8 %6, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %5
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.94, i64 0, i64 0)) #18
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** @file_name, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** @file_name, align 8
  %20 = call i8* @quotearg_colon(i8* noundef %19)
  %21 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef %20, i8* noundef %21)
  br label %26

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.96, i64 0, i64 0), i8* noundef %25)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %27) #22
  unreachable

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %33) #22
  unreachable

34:                                               ; preds = %28
  ret void
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @dir_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call noalias i8* @mdir_name(i8* noundef %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void @xalloc_die() #22
  unreachable

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @dir_len(i8* noundef %0) #10 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i32 [ 0, %8 ], [ %16, %9 ]
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @last_component(i8* noundef %22) #20
  %24 = load i8*, i8** %2, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %42, %17
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %4, align 8
  br label %28, !llvm.loop !20

45:                                               ; preds = %40, %28
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mdir_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @dir_len(i8* noundef %7) #20
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i1 [ true, %1 ], [ false, %11 ]
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i64, i64* %4, align 8
  %16 = load i8, i8* %5, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i64
  %19 = add i64 %15, %18
  %20 = add i64 %19, 1
  %21 = call noalias i8* @malloc(i64 noundef %20) #18
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %41

25:                                               ; preds = %12
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 %28, i1 false)
  %29 = load i8, i8* %5, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 46, i8* %35, align 1
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %36, %24
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  call void @flush_stdout()
  %9 = load void ()*, void ()** @error_print_progname, align 8
  %10 = icmp ne void ()* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8
  call void %12()
  br label %17

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i8* @getprogname() #20
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp sle i32 0, %2
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @is_open(i32 noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9)
  br label %11

11:                                               ; preds = %8, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8)
  %14 = load i32, i32* @error_message_count, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* @error_message_count, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  call void @print_errno_message(i32 noundef %19)
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  call void @exit(i32 noundef %28) #19
  unreachable

29:                                               ; preds = %20
  ret void
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.103, i64 0, i64 0)) #18
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.104, i64 0, i64 0), i8* noundef %14)
  ret void
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3)
  %5 = icmp sle i32 0, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.va_end(i8* %15)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @error_one_per_line, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %19
  br label %61

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** @verror_at_line.old_file_name, align 8
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* @verror_at_line.old_line_number, align 4
  br label %38

38:                                               ; preds = %35, %6
  call void @flush_stdout()
  %39 = load void ()*, void ()** @error_print_progname, align 8
  %40 = icmp ne void ()* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8
  call void %42()
  br label %47

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i8* @getprogname() #20
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.107, i64 0, i64 0), i8* noundef %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.108, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.109, i64 0, i64 0)
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false)
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12)
  br label %61

61:                                               ; preds = %47, %34
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.va_end(i8* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = call noalias i8* @mfile_name_concat(i8* noundef %8, i8* noundef %9, i8** noundef %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @xalloc_die() #22
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 {
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
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @last_component(i8* noundef %15) #20
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @base_len(i8* noundef %17) #20
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* noundef %26) #20
  store i64 %27, i64* %11, align 8
  store i8 0, i8* %12, align 1
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i8 47, i8* %12, align 1
  br label %44

44:                                               ; preds = %43, %38, %30
  br label %52

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8 46, i8* %12, align 1
  br label %51

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i64, i64* %10, align 8
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = add i64 %53, %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %59, %60
  %62 = add i64 %61, 1
  %63 = call noalias i8* @malloc(i64 noundef %62) #18
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  br label %93

67:                                               ; preds = %52
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 %69, i64 %70, i1 false)
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %14, align 8
  %72 = load i8, i8* %12, align 1
  %73 = load i8*, i8** %14, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %14, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %14, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load i8*, i8** %14, align 8
  %85 = load i8**, i8*** %7, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %67
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 %89, i1 false)
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %13, align 8
  store i8* %92, i8** %4, align 8
  br label %93

93:                                               ; preds = %86, %66
  %94 = load i8*, i8** %4, align 8
  ret i8* %94
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #10 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  br label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ]
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp sle i64 7, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -7
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i64 0, i64 0), i64 noundef 7)
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.123, i64 0, i64 0), i64 noundef 3) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** @program_name, align 8
  %38 = load i8*, i8** %2, align 8
  store i8* %38, i8** @program_invocation_name, align 8
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** @program_invocation_short_name, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @gettext(i8* noundef %9) #18
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %26

16:                                               ; preds = %2
  call void @mbszero(%struct.__mbstate_t* noundef %8)
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 2047
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %3, align 8
  br label %26

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  %5 = call i32* @__errno_location() #21
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  %8 = icmp ne %struct.quoting_options* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ]
  %14 = bitcast %struct.quoting_options* %13 to i8*
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24
  %16 = bitcast i8* %15 to %struct.quoting_options*
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @__errno_location() #21
  store i32 %17, i32* %18, align 4
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  ret %struct.quoting_options* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  %4 = icmp ne %struct.quoting_options* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ]
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %7 = icmp ne %struct.quoting_options* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ]
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0
  store i32 %5, i32* %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %13 = icmp ne %struct.quoting_options* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ]
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i64
  %23 = udiv i64 %22, 32
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i64
  %27 = urem i64 %26, 32
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = lshr i32 %30, %31
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %37, %38
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %7 = icmp ne %struct.quoting_options* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %8 = icmp ne %struct.quoting_options* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8
  br label %10

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0
  store i32 10, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %10
  call void @abort() #19
  unreachable

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8
  %15 = icmp ne %struct.quoting_options* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8
  br label %19

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ]
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8
  %21 = call i32* @__errno_location() #21
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41)
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32* @__errno_location() #21
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* %13, align 8
  ret i64 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 {
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
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %44 = call i64 @__ctype_get_mb_cur_max() #18
  %45 = icmp eq i64 %44, 1
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %20, align 1
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i64 0, i64* %24, align 8
  store i8 0, i8* %25, align 1
  %47 = load i32, i32* %16, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %26, align 1
  store i8 0, i8* %27, align 1
  store i8 1, i8* %28, align 1
  br label %51

51:                                               ; preds = %1034, %9
  store i8 0, i8* %29, align 1
  %52 = load i32, i32* %15, align 4
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
  ]

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4
  store i8 1, i8* %26, align 1
  br label %54

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %21, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 34, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.136, i64 0, i64 0), i8** %23, align 8
  store i64 1, i64* %24, align 8
  br label %138

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1
  store i8 0, i8* %26, align 1
  br label %138

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.137, i64 0, i64 0), i32 noundef %76)
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), i32 noundef %78)
  store i8* %79, i8** %19, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1
  %82 = trunc i8 %81 to i1
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %18, align 8
  store i8* %84, i8** %30, align 8
  br label %85

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %21, align 8
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %30, align 8
  br label %85, !llvm.loop !21

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1
  %109 = load i8*, i8** %19, align 8
  store i8* %109, i8** %23, align 8
  %110 = load i8*, i8** %23, align 8
  %111 = call i64 @strlen(i8* noundef %110) #20
  store i64 %111, i64* %24, align 8
  br label %138

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1
  br label %113

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1
  br label %114

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4
  %120 = load i8, i8* %26, align 1
  %121 = trunc i8 %120 to i1
  br i1 %121, label %135, label %122

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = load i64, i64* %21, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 39, i8* %130, align 1
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %21, align 8
  br label %134

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), i8** %23, align 8
  store i64 1, i64* %24, align 8
  br label %138

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1
  br label %138

137:                                              ; preds = %51
  call void @abort() #19
  unreachable

138:                                              ; preds = %136, %135, %108, %71, %70
  store i64 0, i64* %31, align 8
  br label %139

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8
  %141 = icmp eq i64 %140, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8
  %144 = load i64, i64* %31, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  br label %155

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* %14, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  br label %155

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ]
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %159, label %996

159:                                              ; preds = %155
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %34, align 1
  %160 = load i8, i8* %25, align 1
  %161 = trunc i8 %160 to i1
  br i1 %161, label %162, label %197

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 2
  br i1 %164, label %165, label %197

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %24, align 8
  %171 = add i64 %169, %170
  %172 = load i64, i64* %14, align 8
  %173 = icmp eq i64 %172, -1
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8
  %176 = icmp ult i64 1, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8
  %179 = call i64 @strlen(i8* noundef %178) #20
  store i64 %179, i64* %14, align 8
  br label %182

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ]
  %184 = icmp ule i64 %171, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* %31, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i8*, i8** %23, align 8
  %190 = load i64, i64* %24, align 8
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190)
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1
  %194 = trunc i8 %193 to i1
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %1078

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1
  br label %197

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  %198 = load i8*, i8** %13, align 8
  %199 = load i64, i64* %31, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  store i8 %201, i8* %35, align 1
  %202 = load i8, i8* %35, align 1
  %203 = zext i8 %202 to i32
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
  ]

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1
  %206 = trunc i8 %205 to i1
  br i1 %206, label %207, label %318

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1
  %210 = trunc i8 %209 to i1
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %1078

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1
  %213 = load i32, i32* %15, align 4
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %255

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1
  %217 = trunc i8 %216 to i1
  br i1 %217, label %255, label %218

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8
  %221 = load i64, i64* %12, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8
  %225 = load i64, i64* %21, align 8
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 39, i8* %226, align 1
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %21, align 8
  br label %230

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* %12, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8
  %237 = load i64, i64* %21, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8 36, i8* %238, align 1
  br label %239

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %21, align 8
  br label %242

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8
  %245 = load i64, i64* %12, align 8
  %246 = icmp ult i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8
  %249 = load i64, i64* %21, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8 39, i8* %250, align 1
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %21, align 8
  br label %254

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1
  br label %255

255:                                              ; preds = %254, %215, %212
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8
  %258 = load i64, i64* %12, align 8
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8
  %262 = load i64, i64* %21, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8 92, i8* %263, align 1
  br label %264

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %21, align 8
  br label %267

267:                                              ; preds = %264
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 2
  br i1 %270, label %271, label %317

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8
  %273 = add i64 %272, 1
  %274 = load i64, i64* %14, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %317

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8
  %278 = load i64, i64* %31, align 8
  %279 = add i64 %278, 1
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp sle i32 48, %282
  br i1 %283, label %284, label %317

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8
  %286 = load i64, i64* %31, align 8
  %287 = add i64 %286, 1
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp sle i32 %290, 57
  br i1 %291, label %292, label %317

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8
  %295 = load i64, i64* %12, align 8
  %296 = icmp ult i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8
  %299 = load i64, i64* %21, align 8
  %300 = getelementptr inbounds i8, i8* %298, i64 %299
  store i8 48, i8* %300, align 1
  br label %301

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %21, align 8
  br label %304

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8
  %307 = load i64, i64* %12, align 8
  %308 = icmp ult i64 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8
  %311 = load i64, i64* %21, align 8
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8 48, i8* %312, align 1
  br label %313

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %21, align 8
  br label %316

316:                                              ; preds = %313
  br label %317

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1
  br label %324

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4
  %320 = and i32 %319, 1
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %993

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ]

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1
  %329 = trunc i8 %328 to i1
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  br label %1078

331:                                              ; preds = %327
  br label %418

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4
  %334 = and i32 %333, 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %417

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8
  %338 = add i64 %337, 2
  %339 = load i64, i64* %14, align 8
  %340 = icmp ult i64 %338, %339
  br i1 %340, label %341, label %417

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8
  %343 = load i64, i64* %31, align 8
  %344 = add i64 %343, 1
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = icmp eq i32 %347, 63
  br i1 %348, label %349, label %417

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8
  %351 = load i64, i64* %31, align 8
  %352 = add i64 %351, 2
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
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
  ]

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1
  %358 = trunc i8 %357 to i1
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %1078

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8
  %362 = load i64, i64* %31, align 8
  %363 = add i64 %362, 2
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = load i8, i8* %364, align 1
  store i8 %365, i8* %35, align 1
  %366 = load i64, i64* %31, align 8
  %367 = add i64 %366, 2
  store i64 %367, i64* %31, align 8
  br label %368

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8
  %370 = load i64, i64* %12, align 8
  %371 = icmp ult i64 %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8
  %374 = load i64, i64* %21, align 8
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  store i8 63, i8* %375, align 1
  br label %376

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %21, align 8
  br label %379

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8
  %382 = load i64, i64* %12, align 8
  %383 = icmp ult i64 %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8
  %386 = load i64, i64* %21, align 8
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8 34, i8* %387, align 1
  br label %388

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8
  %390 = add i64 %389, 1
  store i64 %390, i64* %21, align 8
  br label %391

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8
  %394 = load i64, i64* %12, align 8
  %395 = icmp ult i64 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8
  %398 = load i64, i64* %21, align 8
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8 34, i8* %399, align 1
  br label %400

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8
  %402 = add i64 %401, 1
  store i64 %402, i64* %21, align 8
  br label %403

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8
  %406 = load i64, i64* %12, align 8
  %407 = icmp ult i64 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8
  %410 = load i64, i64* %21, align 8
  %411 = getelementptr inbounds i8, i8* %409, i64 %410
  store i8 63, i8* %411, align 1
  br label %412

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %21, align 8
  br label %415

415:                                              ; preds = %412
  br label %416

416:                                              ; preds = %349, %415
  br label %417

417:                                              ; preds = %416, %341, %336, %332
  br label %418

418:                                              ; preds = %325, %417, %331
  br label %849

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1
  br label %454

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1
  br label %454

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1
  br label %454

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1
  br label %446

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1
  br label %446

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1
  br label %446

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1
  br label %454

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1
  store i8 %427, i8* %36, align 1
  %428 = load i32, i32* %15, align 4
  %429 = icmp eq i32 %428, 2
  br i1 %429, label %430, label %435

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1
  %432 = trunc i8 %431 to i1
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  br label %1078

434:                                              ; preds = %430
  br label %942

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1
  %437 = trunc i8 %436 to i1
  br i1 %437, label %438, label %445

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1
  %440 = trunc i8 %439 to i1
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  br label %942

445:                                              ; preds = %441, %438, %435
  br label %446

446:                                              ; preds = %445, %424, %423, %422
  %447 = load i32, i32* %15, align 4
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %453

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1
  %451 = trunc i8 %450 to i1
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  br label %1078

453:                                              ; preds = %449, %446
  br label %454

454:                                              ; preds = %453, %425, %421, %420, %419
  %455 = load i8, i8* %25, align 1
  %456 = trunc i8 %455 to i1
  br i1 %456, label %457, label %459

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1
  store i8 %458, i8* %35, align 1
  br label %880

459:                                              ; preds = %454
  br label %849

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8
  %462 = icmp eq i64 %461, -1
  br i1 %462, label %463, label %469

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8
  %465 = getelementptr inbounds i8, i8* %464, i64 1
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %472

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8
  %471 = icmp eq i64 %470, 1
  br i1 %471, label %473, label %472

472:                                              ; preds = %469, %463
  br label %849

473:                                              ; preds = %469, %463
  br label %474

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  br label %849

478:                                              ; preds = %474
  br label %479

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1
  br label %480

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4
  %482 = icmp eq i32 %481, 2
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1
  %485 = trunc i8 %484 to i1
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  br label %1078

487:                                              ; preds = %483, %480
  br label %849

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1
  store i8 1, i8* %34, align 1
  %489 = load i32, i32* %15, align 4
  %490 = icmp eq i32 %489, 2
  br i1 %490, label %491, label %540

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1
  %493 = trunc i8 %492 to i1
  br i1 %493, label %494, label %495

494:                                              ; preds = %491
  br label %1078

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %503, label %501

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8
  store i64 %502, i64* %22, align 8
  store i64 0, i64* %12, align 8
  br label %503

503:                                              ; preds = %501, %498, %495
  br label %504

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8
  %506 = load i64, i64* %12, align 8
  %507 = icmp ult i64 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8
  %510 = load i64, i64* %21, align 8
  %511 = getelementptr inbounds i8, i8* %509, i64 %510
  store i8 39, i8* %511, align 1
  br label %512

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8
  %514 = add i64 %513, 1
  store i64 %514, i64* %21, align 8
  br label %515

515:                                              ; preds = %512
  br label %516

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8
  %518 = load i64, i64* %12, align 8
  %519 = icmp ult i64 %517, %518
  br i1 %519, label %520, label %524

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8
  %522 = load i64, i64* %21, align 8
  %523 = getelementptr inbounds i8, i8* %521, i64 %522
  store i8 92, i8* %523, align 1
  br label %524

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %21, align 8
  br label %527

527:                                              ; preds = %524
  br label %528

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8
  %530 = load i64, i64* %12, align 8
  %531 = icmp ult i64 %529, %530
  br i1 %531, label %532, label %536

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8
  %534 = load i64, i64* %21, align 8
  %535 = getelementptr inbounds i8, i8* %533, i64 %534
  store i8 39, i8* %535, align 1
  br label %536

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %21, align 8
  br label %539

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1
  br label %540

540:                                              ; preds = %539, %488
  br label %849

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1
  br label %849

542:                                              ; preds = %197
  %543 = load i8, i8* %20, align 1
  %544 = trunc i8 %543 to i1
  br i1 %544, label %545, label %557

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8
  %546 = call i16** @__ctype_b_loc() #21
  %547 = load i16*, i16** %546, align 8
  %548 = load i8, i8* %35, align 1
  %549 = zext i8 %548 to i32
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i16, i16* %547, i64 %550
  %552 = load i16, i16* %551, align 2
  %553 = zext i16 %552 to i32
  %554 = and i32 %553, 16384
  %555 = icmp ne i32 %554, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %38, align 1
  br label %648

557:                                              ; preds = %542
  call void @mbszero(%struct.__mbstate_t* noundef %39)
  store i64 0, i64* %37, align 8
  store i8 1, i8* %38, align 1
  %558 = load i64, i64* %14, align 8
  %559 = icmp eq i64 %558, -1
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8
  %562 = call i64 @strlen(i8* noundef %561) #20
  store i64 %562, i64* %14, align 8
  br label %563

563:                                              ; preds = %560, %557
  br label %564

564:                                              ; preds = %563
  %565 = load i8*, i8** %13, align 8
  %566 = load i64, i64* %31, align 8
  %567 = load i64, i64* %37, align 8
  %568 = add i64 %566, %567
  %569 = getelementptr inbounds i8, i8* %565, i64 %568
  %570 = load i64, i64* %14, align 8
  %571 = load i64, i64* %31, align 8
  %572 = load i64, i64* %37, align 8
  %573 = add i64 %571, %572
  %574 = sub i64 %570, %573
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39)
  store i64 %575, i64* %41, align 8
  %576 = load i64, i64* %41, align 8
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %564
  br label %647

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8
  %581 = icmp eq i64 %580, -1
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1
  br label %647

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8
  %585 = icmp eq i64 %584, -2
  br i1 %585, label %586, label %608

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1
  br label %587

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8
  %589 = load i64, i64* %37, align 8
  %590 = add i64 %588, %589
  %591 = load i64, i64* %14, align 8
  %592 = icmp ult i64 %590, %591
  br i1 %592, label %593, label %602

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8
  %595 = load i64, i64* %31, align 8
  %596 = load i64, i64* %37, align 8
  %597 = add i64 %595, %596
  %598 = getelementptr inbounds i8, i8* %594, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i32
  %601 = icmp ne i32 %600, 0
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ]
  br i1 %603, label %604, label %607

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8
  %606 = add i64 %605, 1
  store i64 %606, i64* %37, align 8
  br label %587, !llvm.loop !22

607:                                              ; preds = %602
  br label %647

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1
  %610 = trunc i8 %609 to i1
  br i1 %610, label %611, label %635

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4
  %613 = icmp eq i32 %612, 2
  br i1 %613, label %614, label %635

614:                                              ; preds = %611
  store i64 1, i64* %42, align 8
  br label %615

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8
  %617 = load i64, i64* %41, align 8
  %618 = icmp ult i64 %616, %617
  br i1 %618, label %619, label %634

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8
  %621 = load i64, i64* %31, align 8
  %622 = load i64, i64* %37, align 8
  %623 = add i64 %621, %622
  %624 = load i64, i64* %42, align 8
  %625 = add i64 %623, %624
  %626 = getelementptr inbounds i8, i8* %620, i64 %625
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ]

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078

630:                                              ; preds = %619
  br label %631

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8
  %633 = add i64 %632, 1
  store i64 %633, i64* %42, align 8
  br label %615, !llvm.loop !23

634:                                              ; preds = %615
  br label %635

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4
  %637 = call i32 @c32isprint(i32 noundef %636)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1
  br label %640

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8
  %642 = load i64, i64* %37, align 8
  %643 = add i64 %642, %641
  store i64 %643, i64* %37, align 8
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1
  %650 = trunc i8 %649 to i1
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %34, align 1
  %652 = load i64, i64* %37, align 8
  %653 = icmp ult i64 1, %652
  br i1 %653, label %660, label %654

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1
  %656 = trunc i8 %655 to i1
  br i1 %656, label %657, label %848

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1
  %659 = trunc i8 %658 to i1
  br i1 %659, label %848, label %660

660:                                              ; preds = %657, %648
  %661 = load i64, i64* %31, align 8
  %662 = load i64, i64* %37, align 8
  %663 = add i64 %661, %662
  store i64 %663, i64* %43, align 8
  br label %664

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1
  %666 = trunc i8 %665 to i1
  br i1 %666, label %667, label %772

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1
  %669 = trunc i8 %668 to i1
  br i1 %669, label %772, label %670

670:                                              ; preds = %667
  br label %671

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1
  %673 = trunc i8 %672 to i1
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  br label %1078

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1
  %676 = load i32, i32* %15, align 4
  %677 = icmp eq i32 %676, 2
  br i1 %677, label %678, label %718

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1
  %680 = trunc i8 %679 to i1
  br i1 %680, label %718, label %681

681:                                              ; preds = %678
  br label %682

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8
  %684 = load i64, i64* %12, align 8
  %685 = icmp ult i64 %683, %684
  br i1 %685, label %686, label %690

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8
  %688 = load i64, i64* %21, align 8
  %689 = getelementptr inbounds i8, i8* %687, i64 %688
  store i8 39, i8* %689, align 1
  br label %690

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8
  %692 = add i64 %691, 1
  store i64 %692, i64* %21, align 8
  br label %693

693:                                              ; preds = %690
  br label %694

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8
  %696 = load i64, i64* %12, align 8
  %697 = icmp ult i64 %695, %696
  br i1 %697, label %698, label %702

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8
  %700 = load i64, i64* %21, align 8
  %701 = getelementptr inbounds i8, i8* %699, i64 %700
  store i8 36, i8* %701, align 1
  br label %702

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8
  %704 = add i64 %703, 1
  store i64 %704, i64* %21, align 8
  br label %705

705:                                              ; preds = %702
  br label %706

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8
  %708 = load i64, i64* %12, align 8
  %709 = icmp ult i64 %707, %708
  br i1 %709, label %710, label %714

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8
  %712 = load i64, i64* %21, align 8
  %713 = getelementptr inbounds i8, i8* %711, i64 %712
  store i8 39, i8* %713, align 1
  br label %714

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8
  %716 = add i64 %715, 1
  store i64 %716, i64* %21, align 8
  br label %717

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1
  br label %718

718:                                              ; preds = %717, %678, %675
  br label %719

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8
  %721 = load i64, i64* %12, align 8
  %722 = icmp ult i64 %720, %721
  br i1 %722, label %723, label %727

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8
  %725 = load i64, i64* %21, align 8
  %726 = getelementptr inbounds i8, i8* %724, i64 %725
  store i8 92, i8* %726, align 1
  br label %727

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8
  %729 = add i64 %728, 1
  store i64 %729, i64* %21, align 8
  br label %730

730:                                              ; preds = %727
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8
  %734 = load i64, i64* %12, align 8
  %735 = icmp ult i64 %733, %734
  br i1 %735, label %736, label %745

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1
  %738 = zext i8 %737 to i32
  %739 = ashr i32 %738, 6
  %740 = add nsw i32 48, %739
  %741 = trunc i32 %740 to i8
  %742 = load i8*, i8** %11, align 8
  %743 = load i64, i64* %21, align 8
  %744 = getelementptr inbounds i8, i8* %742, i64 %743
  store i8 %741, i8* %744, align 1
  br label %745

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8
  %747 = add i64 %746, 1
  store i64 %747, i64* %21, align 8
  br label %748

748:                                              ; preds = %745
  br label %749

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8
  %751 = load i64, i64* %12, align 8
  %752 = icmp ult i64 %750, %751
  br i1 %752, label %753, label %763

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1
  %755 = zext i8 %754 to i32
  %756 = ashr i32 %755, 3
  %757 = and i32 %756, 7
  %758 = add nsw i32 48, %757
  %759 = trunc i32 %758 to i8
  %760 = load i8*, i8** %11, align 8
  %761 = load i64, i64* %21, align 8
  %762 = getelementptr inbounds i8, i8* %760, i64 %761
  store i8 %759, i8* %762, align 1
  br label %763

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8
  %765 = add i64 %764, 1
  store i64 %765, i64* %21, align 8
  br label %766

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1
  %768 = zext i8 %767 to i32
  %769 = and i32 %768, 7
  %770 = add nsw i32 48, %769
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %35, align 1
  br label %789

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1
  %774 = trunc i8 %773 to i1
  br i1 %774, label %775, label %788

775:                                              ; preds = %772
  br label %776

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8
  %778 = load i64, i64* %12, align 8
  %779 = icmp ult i64 %777, %778
  br i1 %779, label %780, label %784

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8
  %782 = load i64, i64* %21, align 8
  %783 = getelementptr inbounds i8, i8* %781, i64 %782
  store i8 92, i8* %783, align 1
  br label %784

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8
  %786 = add i64 %785, 1
  store i64 %786, i64* %21, align 8
  br label %787

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1
  br label %788

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8
  %791 = load i64, i64* %31, align 8
  %792 = add i64 %791, 1
  %793 = icmp ule i64 %790, %792
  br i1 %793, label %794, label %795

794:                                              ; preds = %789
  br label %847

795:                                              ; preds = %789
  br label %796

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1
  %798 = trunc i8 %797 to i1
  br i1 %798, label %799, label %827

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1
  %801 = trunc i8 %800 to i1
  br i1 %801, label %827, label %802

802:                                              ; preds = %799
  br label %803

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8
  %805 = load i64, i64* %12, align 8
  %806 = icmp ult i64 %804, %805
  br i1 %806, label %807, label %811

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8
  %809 = load i64, i64* %21, align 8
  %810 = getelementptr inbounds i8, i8* %808, i64 %809
  store i8 39, i8* %810, align 1
  br label %811

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8
  %813 = add i64 %812, 1
  store i64 %813, i64* %21, align 8
  br label %814

814:                                              ; preds = %811
  br label %815

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8
  %817 = load i64, i64* %12, align 8
  %818 = icmp ult i64 %816, %817
  br i1 %818, label %819, label %823

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8
  %821 = load i64, i64* %21, align 8
  %822 = getelementptr inbounds i8, i8* %820, i64 %821
  store i8 39, i8* %822, align 1
  br label %823

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8
  %825 = add i64 %824, 1
  store i64 %825, i64* %21, align 8
  br label %826

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1
  br label %827

827:                                              ; preds = %826, %799, %796
  br label %828

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8
  %831 = load i64, i64* %12, align 8
  %832 = icmp ult i64 %830, %831
  br i1 %832, label %833, label %838

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1
  %835 = load i8*, i8** %11, align 8
  %836 = load i64, i64* %21, align 8
  %837 = getelementptr inbounds i8, i8* %835, i64 %836
  store i8 %834, i8* %837, align 1
  br label %838

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8
  %840 = add i64 %839, 1
  store i64 %840, i64* %21, align 8
  br label %841

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8
  %843 = load i64, i64* %31, align 8
  %844 = add i64 %843, 1
  store i64 %844, i64* %31, align 8
  %845 = getelementptr inbounds i8, i8* %842, i64 %844
  %846 = load i8, i8* %845, align 1
  store i8 %846, i8* %35, align 1
  br label %664

847:                                              ; preds = %794
  br label %942

848:                                              ; preds = %657, %654
  br label %849

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1
  %851 = trunc i8 %850 to i1
  br i1 %851, label %852, label %855

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4
  %854 = icmp ne i32 %853, 2
  br i1 %854, label %858, label %855

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1
  %857 = trunc i8 %856 to i1
  br i1 %857, label %858, label %875

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8
  %860 = icmp ne i32* %859, null
  br i1 %860, label %861, label %875

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8
  %863 = load i8, i8* %35, align 1
  %864 = zext i8 %863 to i64
  %865 = udiv i64 %864, 32
  %866 = getelementptr inbounds i32, i32* %862, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load i8, i8* %35, align 1
  %869 = zext i8 %868 to i64
  %870 = urem i64 %869, 32
  %871 = trunc i64 %870 to i32
  %872 = lshr i32 %867, %871
  %873 = and i32 %872, 1
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %879, label %875

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1
  %877 = trunc i8 %876 to i1
  br i1 %877, label %879, label %878

878:                                              ; preds = %875
  br label %942

879:                                              ; preds = %875, %861
  br label %880

880:                                              ; preds = %879, %457
  br label %881

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1
  %883 = trunc i8 %882 to i1
  br i1 %883, label %884, label %885

884:                                              ; preds = %881
  br label %1078

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1
  %886 = load i32, i32* %15, align 4
  %887 = icmp eq i32 %886, 2
  br i1 %887, label %888, label %928

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1
  %890 = trunc i8 %889 to i1
  br i1 %890, label %928, label %891

891:                                              ; preds = %888
  br label %892

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8
  %894 = load i64, i64* %12, align 8
  %895 = icmp ult i64 %893, %894
  br i1 %895, label %896, label %900

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8
  %898 = load i64, i64* %21, align 8
  %899 = getelementptr inbounds i8, i8* %897, i64 %898
  store i8 39, i8* %899, align 1
  br label %900

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8
  %902 = add i64 %901, 1
  store i64 %902, i64* %21, align 8
  br label %903

903:                                              ; preds = %900
  br label %904

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8
  %906 = load i64, i64* %12, align 8
  %907 = icmp ult i64 %905, %906
  br i1 %907, label %908, label %912

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8
  %910 = load i64, i64* %21, align 8
  %911 = getelementptr inbounds i8, i8* %909, i64 %910
  store i8 36, i8* %911, align 1
  br label %912

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8
  %914 = add i64 %913, 1
  store i64 %914, i64* %21, align 8
  br label %915

915:                                              ; preds = %912
  br label %916

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8
  %918 = load i64, i64* %12, align 8
  %919 = icmp ult i64 %917, %918
  br i1 %919, label %920, label %924

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8
  %922 = load i64, i64* %21, align 8
  %923 = getelementptr inbounds i8, i8* %921, i64 %922
  store i8 39, i8* %923, align 1
  br label %924

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8
  %926 = add i64 %925, 1
  store i64 %926, i64* %21, align 8
  br label %927

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1
  br label %928

928:                                              ; preds = %927, %888, %885
  br label %929

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8
  %931 = load i64, i64* %12, align 8
  %932 = icmp ult i64 %930, %931
  br i1 %932, label %933, label %937

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8
  %935 = load i64, i64* %21, align 8
  %936 = getelementptr inbounds i8, i8* %934, i64 %935
  store i8 92, i8* %936, align 1
  br label %937

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8
  %939 = add i64 %938, 1
  store i64 %939, i64* %21, align 8
  br label %940

940:                                              ; preds = %937
  br label %941

941:                                              ; preds = %940
  br label %942

942:                                              ; preds = %941, %878, %847, %444, %434
  br label %943

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1
  %945 = trunc i8 %944 to i1
  br i1 %945, label %946, label %974

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1
  %948 = trunc i8 %947 to i1
  br i1 %948, label %974, label %949

949:                                              ; preds = %946
  br label %950

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8
  %952 = load i64, i64* %12, align 8
  %953 = icmp ult i64 %951, %952
  br i1 %953, label %954, label %958

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8
  %956 = load i64, i64* %21, align 8
  %957 = getelementptr inbounds i8, i8* %955, i64 %956
  store i8 39, i8* %957, align 1
  br label %958

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8
  %960 = add i64 %959, 1
  store i64 %960, i64* %21, align 8
  br label %961

961:                                              ; preds = %958
  br label %962

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8
  %964 = load i64, i64* %12, align 8
  %965 = icmp ult i64 %963, %964
  br i1 %965, label %966, label %970

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8
  %968 = load i64, i64* %21, align 8
  %969 = getelementptr inbounds i8, i8* %967, i64 %968
  store i8 39, i8* %969, align 1
  br label %970

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8
  %972 = add i64 %971, 1
  store i64 %972, i64* %21, align 8
  br label %973

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1
  br label %974

974:                                              ; preds = %973, %946, %943
  br label %975

975:                                              ; preds = %974
  br label %976

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8
  %978 = load i64, i64* %12, align 8
  %979 = icmp ult i64 %977, %978
  br i1 %979, label %980, label %985

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1
  %982 = load i8*, i8** %11, align 8
  %983 = load i64, i64* %21, align 8
  %984 = getelementptr inbounds i8, i8* %982, i64 %983
  store i8 %981, i8* %984, align 1
  br label %985

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8
  %987 = add i64 %986, 1
  store i64 %987, i64* %21, align 8
  br label %988

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1
  %990 = trunc i8 %989 to i1
  br i1 %990, label %992, label %991

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1
  br label %992

992:                                              ; preds = %991, %988
  br label %993

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8
  %995 = add i64 %994, 1
  store i64 %995, i64* %31, align 8
  br label %139, !llvm.loop !24

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %999, label %1006

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4
  %1001 = icmp eq i32 %1000, 2
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1
  %1004 = trunc i8 %1003 to i1
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %1002
  br label %1078

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4
  %1008 = icmp eq i32 %1007, 2
  br i1 %1008, label %1009, label %1038

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1
  %1011 = trunc i8 %1010 to i1
  br i1 %1011, label %1038, label %1012

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1
  %1014 = trunc i8 %1013 to i1
  br i1 %1014, label %1015, label %1038

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1
  %1017 = trunc i8 %1016 to i1
  br i1 %1017, label %1018, label %1028

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8
  %1020 = load i64, i64* %22, align 8
  %1021 = load i8*, i8** %13, align 8
  %1022 = load i64, i64* %14, align 8
  %1023 = load i32, i32* %16, align 4
  %1024 = load i32*, i32** %17, align 8
  %1025 = load i8*, i8** %18, align 8
  %1026 = load i8*, i8** %19, align 8
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026)
  store i64 %1027, i64* %10, align 8
  br label %1096

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8
  %1030 = icmp ne i64 %1029, 0
  br i1 %1030, label %1036, label %1031

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8
  %1033 = icmp ne i64 %1032, 0
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8
  store i64 %1035, i64* %12, align 8
  store i64 0, i64* %21, align 8
  br label %51

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8
  %1040 = icmp ne i8* %1039, null
  br i1 %1040, label %1041, label %1068

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1
  %1043 = trunc i8 %1042 to i1
  br i1 %1043, label %1068, label %1044

1044:                                             ; preds = %1041
  br label %1045

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8
  %1047 = load i8, i8* %1046, align 1
  %1048 = icmp ne i8 %1047, 0
  br i1 %1048, label %1049, label %1067

1049:                                             ; preds = %1045
  br label %1050

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8
  %1052 = load i64, i64* %12, align 8
  %1053 = icmp ult i64 %1051, %1052
  br i1 %1053, label %1054, label %1060

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8
  %1056 = load i8, i8* %1055, align 1
  %1057 = load i8*, i8** %11, align 8
  %1058 = load i64, i64* %21, align 8
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058
  store i8 %1056, i8* %1059, align 1
  br label %1060

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8
  %1062 = add i64 %1061, 1
  store i64 %1062, i64* %21, align 8
  br label %1063

1063:                                             ; preds = %1060
  br label %1064

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1
  store i8* %1066, i8** %23, align 8
  br label %1045, !llvm.loop !25

1067:                                             ; preds = %1045
  br label %1068

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8
  %1070 = load i64, i64* %12, align 8
  %1071 = icmp ult i64 %1069, %1070
  br i1 %1071, label %1072, label %1076

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8
  %1074 = load i64, i64* %21, align 8
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074
  store i8 0, i8* %1075, align 1
  br label %1076

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8
  store i64 %1077, i64* %10, align 8
  br label %1096

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  %1079 = load i32, i32* %15, align 4
  %1080 = icmp eq i32 %1079, 2
  br i1 %1080, label %1081, label %1085

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1
  %1083 = trunc i8 %1082 to i1
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4
  br label %1085

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8
  %1087 = load i64, i64* %12, align 8
  %1088 = load i8*, i8** %13, align 8
  %1089 = load i64, i64* %14, align 8
  %1090 = load i32, i32* %15, align 4
  %1091 = load i32, i32* %16, align 4
  %1092 = and i32 %1091, -3
  %1093 = load i8*, i8** %18, align 8
  %1094 = load i8*, i8** %19, align 8
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094)
  store i64 %1095, i64* %10, align 8
  br label %1096

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8
  ret i64 %1097
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.139, i64 0, i64 0), i8* noundef %9) #18
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %37

16:                                               ; preds = %2
  call void @mbszero(%struct.__mbstate_t* noundef %8)
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8)
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 8216
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 39
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0
  store i8* %31, i8** %3, align 8
  br label %37

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 9
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.136, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 {
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
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %15 = icmp ne %struct.quoting_options* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ]
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8
  %21 = call i32* @__errno_location() #21
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = or i32 %25, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45)
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32* @__errno_location() #21
  store i32 %68, i32* %69, align 4
  %70 = load i64*, i64** %7, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %73, 1
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8
  ret i8* %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @nslots, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %14) #18
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4, !llvm.loop !26

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #18
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %31 = icmp ne %struct.slotvec* %30, @slotvec0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %34 = bitcast %struct.slotvec* %33 to i8*
  call void @free(i8* noundef %34) #18
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %35

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 {
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
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  %18 = call i32* @__errno_location() #21
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8
  store i32 2147483647, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 0, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %4
  call void @abort() #19
  unreachable

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %34 = icmp eq %struct.slotvec* %33, @slotvec0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i32, i32* @nslots, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i8, i8* %12, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %43

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ]
  %45 = bitcast %struct.slotvec* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @nslots, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16)
  %54 = bitcast i8* %53 to %struct.slotvec*
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8
  %55 = load i8, i8* %12, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %59 = bitcast %struct.slotvec* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false)
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %62 = load i32, i32* @nslots, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63
  %65 = bitcast %struct.slotvec* %64 to i8*
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @nslots, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = mul i64 %69, 16
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false)
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @nslots, align 4
  br label %73

73:                                               ; preds = %60, %28
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %15, align 8
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106)
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %17, align 8
  %110 = icmp ule i64 %108, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %14, align 8
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0
  store i64 %113, i64* %118, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %122) #18
  br label %123

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25
  store i8* %125, i8** %15, align 8
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1
  store i8* %125, i8** %130, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147)
  br label %149

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4
  %151 = call i32* @__errno_location() #21
  store i32 %150, i32* %151, align 4
  %152 = load i8*, i8** %15, align 8
  ret i8* %152
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = bitcast %struct.quoting_options* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false)
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #19
  unreachable

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %struct.quoting_options* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9)
  %10 = bitcast %struct.quoting_options* %7 to i8*
  %11 = bitcast %struct.quoting_options* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false)
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1)
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7)
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %struct.quoting_options* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19)
  br label %26

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.147, i64 0, i64 0), i8* noundef %23, i8* noundef %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.149, i64 0, i64 0)) #18
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.150, i64 0, i64 0), %struct._IO_FILE* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.151, i64 0, i64 0)) #18
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.152, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.150, i64 0, i64 0), %struct._IO_FILE* noundef %35)
  %37 = load i64, i64* %12, align 8
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
  ]

38:                                               ; preds = %26
  br label %241

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.153, i64 0, i64 0)) #18
  %42 = load i8**, i8*** %11, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44)
  br label %241

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.154, i64 0, i64 0)) #18
  %49 = load i8**, i8*** %11, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %11, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54)
  br label %241

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.155, i64 0, i64 0)) #18
  %59 = load i8**, i8*** %11, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %11, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %11, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67)
  br label %241

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.156, i64 0, i64 0)) #18
  %72 = load i8**, i8*** %11, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %11, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %11, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83)
  br label %241

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.157, i64 0, i64 0)) #18
  %88 = load i8**, i8*** %11, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %11, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 3
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102)
  br label %241

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.158, i64 0, i64 0)) #18
  %107 = load i8**, i8*** %11, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8**, i8*** %11, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %11, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %11, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %11, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %11, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 5
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124)
  br label %241

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.159, i64 0, i64 0)) #18
  %129 = load i8**, i8*** %11, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %11, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %11, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 3
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %11, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 4
  %143 = load i8*, i8** %142, align 8
  %144 = load i8**, i8*** %11, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 5
  %146 = load i8*, i8** %145, align 8
  %147 = load i8**, i8*** %11, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149)
  br label %241

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.160, i64 0, i64 0)) #18
  %154 = load i8**, i8*** %11, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %11, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 2
  %162 = load i8*, i8** %161, align 8
  %163 = load i8**, i8*** %11, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** %11, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 4
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %11, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 5
  %171 = load i8*, i8** %170, align 8
  %172 = load i8**, i8*** %11, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 6
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %11, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 7
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177)
  br label %241

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.161, i64 0, i64 0)) #18
  %182 = load i8**, i8*** %11, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %11, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8**, i8*** %11, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i8**, i8*** %11, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 3
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %11, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 4
  %196 = load i8*, i8** %195, align 8
  %197 = load i8**, i8*** %11, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 5
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** %11, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 6
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %11, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 7
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** %11, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 8
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208)
  br label %241

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.162, i64 0, i64 0)) #18
  %213 = load i8**, i8*** %11, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %11, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = load i8**, i8*** %11, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 2
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %11, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 3
  %224 = load i8*, i8** %223, align 8
  %225 = load i8**, i8*** %11, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 4
  %227 = load i8*, i8** %226, align 8
  %228 = load i8**, i8*** %11, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 5
  %230 = load i8*, i8** %229, align 8
  %231 = load i8**, i8*** %11, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 6
  %233 = load i8*, i8** %232, align 8
  %234 = load i8**, i8*** %11, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 7
  %236 = load i8*, i8** %235, align 8
  %237 = load i8**, i8*** %11, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 8
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239)
  br label %241

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %11, align 8
  br label %12, !llvm.loop !27

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8**, i8*** %10, align 8
  %28 = load i64, i64* %11, align 8
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %13, 10
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = add i32 %17, 8
  store i32 %20, i32* %16, align 8
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 %17
  %26 = bitcast i8* %25 to i8**
  br label %32

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  store i8* %30, i8** %28, align 8
  %31 = bitcast i8* %29 to i8**
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ]
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35
  store i8* %34, i8** %36, align 8
  %37 = icmp ne i8* %34, null
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %12, !llvm.loop !28

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0
  %50 = load i64, i64* %10, align 8
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10)
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.150, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.167, i64 0, i64 0)) #18
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.168, i64 0, i64 0))
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.169, i64 0, i64 0)) #18
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.170, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.171, i64 0, i64 0))
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.172, i64 0, i64 0)) #18
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.173, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9)
  %11 = call i8* @check_nonnull(i8* noundef %10)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @xalloc_die() #22
  unreachable

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #18
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @imalloc(i64 noundef %3)
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9)
  %11 = call i8* @check_nonnull(i8* noundef %10)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = udiv i64 128, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %15, %12
  br label %36

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 1
  %30 = add i64 %29, 1
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = extractvalue { i64, i1 } %31, 0
  store i64 %33, i64* %7, align 8
  br i1 %32, label %34, label %35

34:                                               ; preds = %26
  call void @xalloc_die() #22
  unreachable

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26
  store i8* %40, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 {
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
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = ashr i64 %18, 1
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  store i64 %22, i64* %12, align 8
  br i1 %21, label %23, label %24

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8
  %26 = icmp sle i64 0, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  br i1 true, label %40, label %45

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sdiv i64 9223372036854775807, %42
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %111, label %115

45:                                               ; preds = %39
  br i1 true, label %46, label %49

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp slt i64 %47, -9223372036854775807
  br i1 %48, label %52, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 0, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  br label %57

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 0, %54
  %56 = sdiv i64 9223372036854775807, %55
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ]
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 -1, %59
  %61 = icmp sle i64 %58, %60
  br i1 %61, label %111, label %115

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  br i1 true, label %66, label %70

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, -9223372036854775808
  %69 = icmp slt i64 0, %68
  br i1 %69, label %111, label %115

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8
  %72 = icmp slt i64 0, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = sub nsw i64 %74, 1
  %76 = icmp slt i64 9223372036854775807, %75
  br i1 %76, label %111, label %115

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8
  %79 = sdiv i64 -9223372036854775808, %78
  %80 = load i64, i64* %12, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %111, label %115

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br i1 false, label %111, label %115

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  br i1 true, label %93, label %97

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %94, -9223372036854775808
  %96 = icmp slt i64 0, %95
  br i1 %96, label %111, label %115

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = sub nsw i64 %98, 1
  %100 = icmp slt i64 9223372036854775807, %99
  br i1 %100, label %111, label %115

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8
  %103 = sdiv i64 -9223372036854775808, %102
  %104 = load i64, i64* %10, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %111, label %115

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8
  %108 = sdiv i64 9223372036854775807, %107
  %109 = load i64, i64* %12, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %10, align 8
  %114 = mul i64 %112, %113
  store i64 %114, i64* %13, align 8
  br label %119

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = mul i64 %116, %117
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ]
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %129

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = icmp slt i64 %124, 128
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 128, i32 0
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ]
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %10, align 8
  %136 = sdiv i64 %134, %135
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = srem i64 %138, %139
  %141 = sub nsw i64 %137, %140
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %11, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load i64, i64* %8, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %256

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155)
  %157 = extractvalue { i64, i1 } %156, 1
  %158 = extractvalue { i64, i1 } %156, 0
  store i64 %158, i64* %12, align 8
  br i1 %157, label %255, label %159

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8
  %161 = icmp sle i64 0, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %12, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %255, label %166

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %215

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %169
  br i1 true, label %173, label %178

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sdiv i64 9223372036854775807, %175
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %244, label %248

178:                                              ; preds = %172
  br i1 true, label %179, label %182

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8
  %181 = icmp slt i64 %180, -9223372036854775807
  br i1 %181, label %185, label %186

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8
  %184 = icmp slt i64 0, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %179
  br label %190

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8
  %188 = sub nsw i64 0, %187
  %189 = sdiv i64 9223372036854775807, %188
  br label %190

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ]
  %192 = load i64, i64* %12, align 8
  %193 = sub nsw i64 -1, %192
  %194 = icmp sle i64 %191, %193
  br i1 %194, label %244, label %248

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8
  %197 = icmp eq i64 %196, -1
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  br i1 true, label %199, label %203

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8
  %201 = add nsw i64 %200, -9223372036854775808
  %202 = icmp slt i64 0, %201
  br i1 %202, label %244, label %248

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8
  %205 = icmp slt i64 0, %204
  br i1 %205, label %206, label %248

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8
  %208 = sub nsw i64 %207, 1
  %209 = icmp slt i64 9223372036854775807, %208
  br i1 %209, label %244, label %248

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8
  %212 = sdiv i64 -9223372036854775808, %211
  %213 = load i64, i64* %12, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %244, label %248

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br i1 false, label %244, label %248

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  br i1 true, label %226, label %230

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8
  %228 = add nsw i64 %227, -9223372036854775808
  %229 = icmp slt i64 0, %228
  br i1 %229, label %244, label %248

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8
  %232 = sub nsw i64 %231, 1
  %233 = icmp slt i64 9223372036854775807, %232
  br i1 %233, label %244, label %248

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8
  %236 = sdiv i64 -9223372036854775808, %235
  %237 = load i64, i64* %10, align 8
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %244, label %248

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8
  %241 = sdiv i64 9223372036854775807, %240
  %242 = load i64, i64* %12, align 8
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* %10, align 8
  %247 = mul i64 %245, %246
  store i64 %247, i64* %13, align 8
  br label %252

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8
  %250 = load i64, i64* %10, align 8
  %251 = mul i64 %249, %250
  store i64 %251, i64* %13, align 8
  br label %252

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ]
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22
  unreachable

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8
  %258 = load i64, i64* %13, align 8
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24
  store i8* %259, i8** %6, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64*, i64** %7, align 8
  store i64 %260, i64* %261, align 8
  %262 = load i8*, i8** %6, align 8
  ret i8* %262
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add nsw i64 %6, 1
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false)
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #20
  %6 = add i64 %5, 1
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24
  ret i8* %7
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, i32* @exit_failure, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.186, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.187, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i8* noundef %4)
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  unreachable

8:                                                ; No predecessors!
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %8
  call void @abort() #19
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xreadlink(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @areadlink(i8* noundef %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = call i32* @__errno_location() #21
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @xalloc_die() #22
  unreachable

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8** [ %24, %23 ], [ %12, %25 ]
  store i8** %27, i8*** %13, align 8
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %15, align 1
  br label %31

31:                                               ; preds = %42, %26
  %32 = call i16** @__ctype_b_loc() #21
  %33 = load i16*, i16** %32, align 8
  %34 = load i8, i8* %15, align 1
  %35 = zext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %33, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 8192
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %14, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %15, align 1
  br label %31, !llvm.loop !29

46:                                               ; preds = %31
  %47 = load i8, i8* %15, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i8**, i8*** %13, align 8
  store i8* %51, i8** %52, align 8
  store i32 4, i32* %6, align 4
  br label %218

53:                                               ; preds = %46
  %54 = call i32* @__errno_location() #21
  store i32 0, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8**, i8*** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @strtoumax(i8* noundef %55, i8** noundef %56, i32 noundef %57) #18
  store i64 %58, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %59 = load i8**, i8*** %13, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i8* @strchr(i8* noundef %72, i32 noundef %75) #20
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71, %66, %63
  store i32 4, i32* %6, align 4
  br label %218

79:                                               ; preds = %71
  store i64 1, i64* %16, align 8
  br label %91

80:                                               ; preds = %53
  %81 = call i32* @__errno_location() #21
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = call i32* @__errno_location() #21
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 34
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4
  br label %218

89:                                               ; preds = %84
  store i32 1, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8
  %96 = load i64*, i64** %10, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %6, align 4
  br label %218

98:                                               ; preds = %91
  %99 = load i8**, i8*** %13, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %214

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8
  %106 = load i8**, i8*** %13, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call i8* @strchr(i8* noundef %105, i32 noundef %109) #20
  %111 = icmp ne i8* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %16, align 8
  %114 = load i64*, i64** %10, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i32, i32* %17, align 4
  %116 = or i32 %115, 2
  store i32 %116, i32* %6, align 4
  br label %218

117:                                              ; preds = %104
  store i32 1024, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %118 = load i8**, i8*** %13, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  switch i32 %121, label %150 [
    i32 69, label %122
    i32 71, label %122
    i32 103, label %122
    i32 107, label %122
    i32 75, label %122
    i32 77, label %122
    i32 109, label %122
    i32 80, label %122
    i32 81, label %122
    i32 82, label %122
    i32 84, label %122
    i32 116, label %122
    i32 89, label %122
    i32 90, label %122
  ]

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load i8*, i8** %11, align 8
  %124 = call i8* @strchr(i8* noundef %123, i32 noundef 48) #20
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load i8**, i8*** %13, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  switch i32 %132, label %148 [
    i32 105, label %133
    i32 66, label %145
    i32 68, label %145
  ]

133:                                              ; preds = %126
  %134 = load i8**, i8*** %13, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 66
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %141, %133
  br label %148

145:                                              ; preds = %126, %126
  store i32 1000, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %126, %145, %144
  br label %149

149:                                              ; preds = %148, %122
  br label %150

150:                                              ; preds = %149, %117
  %151 = load i8**, i8*** %13, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  switch i32 %154, label %192 [
    i32 98, label %155
    i32 66, label %157
    i32 99, label %159
    i32 69, label %160
    i32 71, label %163
    i32 103, label %163
    i32 107, label %166
    i32 75, label %166
    i32 77, label %169
    i32 109, label %169
    i32 80, label %172
    i32 81, label %175
    i32 82, label %178
    i32 84, label %181
    i32 116, label %181
    i32 119, label %184
    i32 89, label %186
    i32 90, label %189
  ]

155:                                              ; preds = %150
  %156 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 512)
  store i32 %156, i32* %20, align 4
  br label %197

157:                                              ; preds = %150
  %158 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 1024)
  store i32 %158, i32* %20, align 4
  br label %197

159:                                              ; preds = %150
  store i32 0, i32* %20, align 4
  br label %197

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %161, i32 noundef 6)
  store i32 %162, i32* %20, align 4
  br label %197

163:                                              ; preds = %150, %150
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %164, i32 noundef 3)
  store i32 %165, i32* %20, align 4
  br label %197

166:                                              ; preds = %150, %150
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %167, i32 noundef 1)
  store i32 %168, i32* %20, align 4
  br label %197

169:                                              ; preds = %150, %150
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %170, i32 noundef 2)
  store i32 %171, i32* %20, align 4
  br label %197

172:                                              ; preds = %150
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %173, i32 noundef 5)
  store i32 %174, i32* %20, align 4
  br label %197

175:                                              ; preds = %150
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %176, i32 noundef 10)
  store i32 %177, i32* %20, align 4
  br label %197

178:                                              ; preds = %150
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %179, i32 noundef 9)
  store i32 %180, i32* %20, align 4
  br label %197

181:                                              ; preds = %150, %150
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %182, i32 noundef 4)
  store i32 %183, i32* %20, align 4
  br label %197

184:                                              ; preds = %150
  %185 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 2)
  store i32 %185, i32* %20, align 4
  br label %197

186:                                              ; preds = %150
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %187, i32 noundef 8)
  store i32 %188, i32* %20, align 4
  br label %197

189:                                              ; preds = %150
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %190, i32 noundef 7)
  store i32 %191, i32* %20, align 4
  br label %197

192:                                              ; preds = %150
  %193 = load i64, i64* %16, align 8
  %194 = load i64*, i64** %10, align 8
  store i64 %193, i64* %194, align 8
  %195 = load i32, i32* %17, align 4
  %196 = or i32 %195, 2
  store i32 %196, i32* %6, align 4
  br label %218

197:                                              ; preds = %189, %186, %184, %181, %178, %175, %172, %169, %166, %163, %160, %159, %157, %155
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %17, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load i8**, i8*** %13, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = sext i32 %201 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %202, align 8
  %206 = load i8**, i8*** %13, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %197
  %211 = load i32, i32* %17, align 4
  %212 = or i32 %211, 2
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %210, %197
  br label %214

214:                                              ; preds = %213, %98
  %215 = load i64, i64* %16, align 8
  %216 = load i64*, i64** %10, align 8
  store i64 %215, i64* %216, align 8
  %217 = load i32, i32* %17, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %214, %192, %112, %94, %88, %78, %50
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  br i1 false, label %14, label %21

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 -1, %18
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %106, label %112

21:                                               ; preds = %13
  br i1 true, label %22, label %25

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, -2147483647
  br i1 %24, label %28, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 0, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  br label %34

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 0, %30
  %32 = sext i32 %31 to i64
  %33 = udiv i64 -1, %32
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8589934591, %28 ], [ %33, %29 ]
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 -1, %37
  %39 = icmp ule i64 %35, %38
  br i1 %39, label %106, label %112

40:                                               ; preds = %9
  br i1 true, label %41, label %42

41:                                               ; preds = %40
  br i1 false, label %43, label %61

42:                                               ; preds = %40
  br i1 false, label %43, label %61

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  br i1 false, label %47, label %52

47:                                               ; preds = %46
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 0
  %51 = icmp ult i64 0, %50
  br i1 %51, label %106, label %112

52:                                               ; preds = %46
  %53 = load i64*, i64** %4, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 0, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, 1
  %60 = icmp ult i64 -1, %59
  br i1 %60, label %106, label %112

61:                                               ; preds = %43, %42, %41
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 0, %62
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %106, label %112

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br i1 false, label %106, label %112

72:                                               ; preds = %68
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  br i1 false, label %77, label %78

77:                                               ; preds = %76
  br i1 true, label %79, label %92

78:                                               ; preds = %76
  br i1 false, label %79, label %92

79:                                               ; preds = %78, %77
  %80 = load i64*, i64** %4, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  br i1 true, label %84, label %88

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 0
  %87 = icmp slt i32 0, %86
  br i1 %87, label %106, label %112

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 -1, %90
  br i1 %91, label %106, label %112

92:                                               ; preds = %79, %78, %77
  %93 = load i64*, i64** %4, align 8
  %94 = load i64, i64* %93, align 8
  %95 = udiv i64 0, %94
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %106, label %112

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 -1, %101
  %103 = load i64*, i64** %4, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %47, %34, %14
  %107 = load i64*, i64** %4, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %108, %110
  store i64 %111, i64* %6, align 8
  br label %118

112:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %52, %47, %34, %14
  %113 = load i64*, i64** %4, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %114, %116
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = phi i32 [ 1, %106 ], [ 0, %112 ]
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i64*, i64** %4, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i64 0, i64 -1
  %127 = load i64*, i64** %4, align 8
  store i64 %126, i64* %127, align 8
  store i32 1, i32* %3, align 4
  br label %131

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8
  %130 = load i64*, i64** %4, align 8
  store i64 %129, i64* %130, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14)
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %8, !llvm.loop !30

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_asprintf(i8** noundef nonnull %0, i8* noundef nonnull %1, ...) #4 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::__va_list", align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast %"struct.std::__va_list"* %7 to i8*
  %12 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = call i32 @rpl_vasprintf(i8** noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %7)
  store i32 %13, i32* %6, align 4
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i32, i32* %6, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_vasprintf(i8** noundef nonnull %0, i8* noundef nonnull %1, %"struct.std::__va_list"* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*
  %12 = bitcast %"struct.std::__va_list"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = call i8* @vasnprintf(i8* noundef null, i64* noundef %7, i8* noundef %10, %"struct.std::__va_list"* noundef %9)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %18, 2147483647
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %21) #18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %22, 9223372036854775807
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 12, i32 75
  %26 = call i32* @__errno_location() #21
  store i32 %25, i32* %26, align 4
  store i32 -1, i32* %4, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i8*, i8** %8, align 8
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %20, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @areadlink(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @careadlinkat(i32 noundef -100, i8* noundef %3, i8* noundef null, i64 noundef 0, %struct.allocator* noundef null, i64 (i32, i8*, i8*, i64)* noundef @careadlinkatcwd)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @careadlinkatcwd(i32 noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, -100
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #19
  unreachable

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @readlink(i8* noundef %13, i8* noundef %14, i64 noundef %15) #18
  ret i64 %16
}

; Function Attrs: nounwind
declare i64 @readlink(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #10 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 0
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %9, !llvm.loop !31

17:                                               ; preds = %9
  store i8 0, i8* %4, align 1
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1
  br label %35

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %3, align 8
  store i8 0, i8* %4, align 1
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %19, !llvm.loop !32

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #10 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* noundef %5) #20
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 1, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %3, align 8
  br label %7, !llvm.loop !33

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @iswprint(i32 noundef %3) #18
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @careadlinkat(i32 noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, %struct.allocator* noundef %4, i64 (i32, i8*, i8*, i64)* noundef %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.allocator*, align 8
  %12 = alloca i64 (i32, i8*, i8*, i64)*, align 8
  %13 = alloca [1024 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.allocator* %4, %struct.allocator** %11, align 8
  store i64 (i32, i8*, i8*, i64)* %5, i64 (i32, i8*, i8*, i64)** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.allocator*, %struct.allocator** %11, align 8
  %19 = load i64 (i32, i8*, i8*, i64)*, i64 (i32, i8*, i8*, i64)** %12, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %21 = call i8* @readlink_stk(i32 noundef %14, i8* noundef %15, i8* noundef %16, i64 noundef %17, %struct.allocator* noundef %18, i64 (i32, i8*, i8*, i64)* noundef %19, i8* noundef %20)
  ret i8* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readlink_stk(i32 noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, %struct.allocator* noundef %4, i64 (i32, i8*, i8*, i64)* noundef %5, i8* noundef %6) #4 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.allocator*, align 8
  %14 = alloca i64 (i32, i8*, i8*, i64)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.allocator* %4, %struct.allocator** %13, align 8
  store i64 (i32, i8*, i8*, i64)* %5, i64 (i32, i8*, i8*, i64)** %14, align 8
  store i8* %6, i8** %15, align 8
  %24 = load %struct.allocator*, %struct.allocator** %13, align 8
  %25 = icmp ne %struct.allocator* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store %struct.allocator* @stdlib_allocator, %struct.allocator** %13, align 8
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %15, align 8
  store i8* %31, i8** %11, align 8
  store i64 1024, i64* %12, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %16, align 8
  store i64 9223372036854775807, i64* %17, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* %12, align 8
  br label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %17, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  store i64 %42, i64* %18, align 8
  br label %43

43:                                               ; preds = %139, %41
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %148

46:                                               ; preds = %43
  %47 = load i64 (i32, i8*, i8*, i64)*, i64 (i32, i8*, i8*, i64)** %14, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i64 %47(i32 noundef %48, i8* noundef %49, i8* noundef %50, i64 noundef %51)
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load i8*, i8** %16, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = call i32* @__errno_location() #21
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %20, align 4
  %62 = load %struct.allocator*, %struct.allocator** %13, align 8
  %63 = getelementptr inbounds %struct.allocator, %struct.allocator* %62, i32 0, i32 2
  %64 = load void (i8*)*, void (i8*)** %63, align 8
  %65 = load i8*, i8** %16, align 8
  call void %64(i8* noundef %65)
  %66 = load i32, i32* %20, align 4
  %67 = call i32* @__errno_location() #21
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %55
  store i8* null, i8** %8, align 8
  br label %160

69:                                               ; preds = %46
  %70 = load i64, i64* %19, align 8
  store i64 %70, i64* %21, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %18, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %69
  %75 = load i8*, i8** %16, align 8
  %76 = load i64, i64* %21, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %21, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %16, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.allocator*, %struct.allocator** %13, align 8
  %84 = getelementptr inbounds %struct.allocator, %struct.allocator* %83, i32 0, i32 0
  %85 = load i8* (i64)*, i8* (i64)** %84, align 8
  %86 = load i64, i64* %21, align 8
  %87 = call i8* %85(i64 noundef %86)
  store i8* %87, i8** %22, align 8
  %88 = load i64, i64* %21, align 8
  store i64 %88, i64* %18, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %148

92:                                               ; preds = %82
  %93 = load i8*, i8** %22, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i64, i64* %21, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %94, i64 %95, i1 false)
  store i8* %93, i8** %8, align 8
  br label %160

96:                                               ; preds = %74
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %18, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load %struct.allocator*, %struct.allocator** %13, align 8
  %106 = getelementptr inbounds %struct.allocator, %struct.allocator* %105, i32 0, i32 1
  %107 = load i8* (i8*, i64)*, i8* (i8*, i64)** %106, align 8
  %108 = icmp ne i8* (i8*, i64)* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.allocator*, %struct.allocator** %13, align 8
  %111 = getelementptr inbounds %struct.allocator, %struct.allocator* %110, i32 0, i32 1
  %112 = load i8* (i8*, i64)*, i8* (i8*, i64)** %111, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i64, i64* %21, align 8
  %115 = call i8* %112(i8* noundef %113, i64 noundef %114)
  store i8* %115, i8** %23, align 8
  %116 = load i8*, i8** %23, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i8*, i8** %23, align 8
  store i8* %119, i8** %8, align 8
  br label %160

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %104, %100, %96
  %122 = load i8*, i8** %16, align 8
  store i8* %122, i8** %8, align 8
  br label %160

123:                                              ; preds = %69
  %124 = load i8*, i8** %16, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.allocator*, %struct.allocator** %13, align 8
  %129 = getelementptr inbounds %struct.allocator, %struct.allocator* %128, i32 0, i32 2
  %130 = load void (i8*)*, void (i8*)** %129, align 8
  %131 = load i8*, i8** %16, align 8
  call void %130(i8* noundef %131)
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i64, i64* %17, align 8
  %134 = sdiv i64 %133, 2
  %135 = load i64, i64* %18, align 8
  %136 = icmp sle i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32* @__errno_location() #21
  store i32 36, i32* %138, align 4
  store i8* null, i8** %8, align 8
  br label %160

139:                                              ; preds = %132
  %140 = load i64, i64* %18, align 8
  %141 = mul nsw i64 2, %140
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %18, align 8
  %143 = load %struct.allocator*, %struct.allocator** %13, align 8
  %144 = getelementptr inbounds %struct.allocator, %struct.allocator* %143, i32 0, i32 0
  %145 = load i8* (i64)*, i8* (i64)** %144, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i8* %145(i64 noundef %146)
  store i8* %147, i8** %16, align 8
  br label %43, !llvm.loop !34

148:                                              ; preds = %91, %43
  %149 = load %struct.allocator*, %struct.allocator** %13, align 8
  %150 = getelementptr inbounds %struct.allocator, %struct.allocator* %149, i32 0, i32 3
  %151 = load void (i64)*, void (i64)** %150, align 8
  %152 = icmp ne void (i64)* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.allocator*, %struct.allocator** %13, align 8
  %155 = getelementptr inbounds %struct.allocator, %struct.allocator* %154, i32 0, i32 3
  %156 = load void (i64)*, void (i64)** %155, align 8
  %157 = load i64, i64* %18, align 8
  call void %156(i64 noundef %157)
  br label %158

158:                                              ; preds = %153, %148
  %159 = call i32* @__errno_location() #21
  store i32 12, i32* %159, align 4
  store i8* null, i8** %8, align 8
  br label %160

160:                                              ; preds = %158, %137, %121, %118, %92, %68
  %161 = load i8*, i8** %8, align 8
  ret i8* %161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15)
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %5, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4
  br label %38

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12)
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23, %18
  store i32 0, i32* %6, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @__errno_location() #21
  store i32 %36, i32* %37, align 4
  store i32 -1, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1)
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %51

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, -17
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 {
  %1 = call i32* @__errno_location() #21
  store i32 12, i32* %1, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ule i64 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call noalias i8* @malloc(i64 noundef %6) #18
  br label %10

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ]
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ule i64 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9)
  br label %13

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 -1, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23
  store i8* %12, i8** %3, align 8
  br label %27

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 -1, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23
  store i8* %21, i8** %3, align 8
  br label %27

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ule i64 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15)
  br label %19

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ]
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.225, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %16 = icmp eq %struct.__mbstate_t* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, -3
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  call void @mbszero(%struct.__mbstate_t* noundef %31)
  br label %32

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, -3
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #19
  unreachable

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = icmp ule i64 -2, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0)
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8
  br label %55

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8
  %4 = bitcast %struct.__mbstate_t* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  ret i1 %12
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ]
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18
  ret i8* %13
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  br i1 false, label %15, label %20

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = udiv i64 -1, %17
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %92, label %96

20:                                               ; preds = %14
  br i1 false, label %21, label %24

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %27, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 0, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  br label %32

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 0, %29
  %31 = udiv i64 -1, %30
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ]
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 -1, %34
  %36 = icmp ule i64 %33, %35
  br i1 %36, label %92, label %96

37:                                               ; preds = %11
  br i1 false, label %38, label %39

38:                                               ; preds = %37
  br i1 true, label %40, label %55

39:                                               ; preds = %37
  br i1 false, label %40, label %55

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  br i1 false, label %44, label %48

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 0
  %47 = icmp ult i64 0, %46
  br i1 %47, label %92, label %96

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 0, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 1
  %54 = icmp ult i64 -1, %53
  br i1 %54, label %92, label %96

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8
  %57 = udiv i64 0, %56
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %92, label %96

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br i1 false, label %92, label %96

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  br i1 false, label %68, label %69

68:                                               ; preds = %67
  br i1 true, label %70, label %82

69:                                               ; preds = %67
  br i1 false, label %70, label %82

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  br i1 false, label %74, label %78

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 0
  %77 = icmp ult i64 0, %76
  br i1 %77, label %92, label %96

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  %81 = icmp ult i64 -1, %80
  br i1 %81, label %92, label %96

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8
  %84 = udiv i64 0, %83
  %85 = load i64, i64* %7, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %92, label %96

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8
  %89 = udiv i64 -1, %88
  %90 = load i64, i64* %6, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = mul i64 %93, %94
  store i64 %95, i64* %8, align 8
  br label %100

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = mul i64 %97, %98
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ]
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21
  store i32 12, i32* %104, align 4
  store i8* null, i8** %4, align 8
  br label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107)
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vasnprintf(i8* noundef %0, i64* noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #4 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.char_directives, align 8
  %10 = alloca %struct.arguments, align 16
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.char_directive*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca i32, align 4
  %50 = alloca i8*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i64, align 8
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca %struct.__mbstate_t, align 4
  %60 = alloca [64 x i8], align 1
  %61 = alloca i32, align 4
  %62 = alloca %struct.__mbstate_t, align 4
  %63 = alloca [64 x i8], align 1
  %64 = alloca i32, align 4
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i8*, align 8
  %68 = alloca %struct.__mbstate_t, align 4
  %69 = alloca i64, align 8
  %70 = alloca i8*, align 8
  %71 = alloca i64, align 8
  %72 = alloca [64 x i8], align 1
  %73 = alloca i32, align 4
  %74 = alloca %struct.__mbstate_t, align 4
  %75 = alloca [64 x i8], align 1
  %76 = alloca i32, align 4
  %77 = alloca i64, align 8
  %78 = alloca i8*, align 8
  %79 = alloca i64, align 8
  %80 = alloca i64, align 8
  %81 = alloca i8*, align 8
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i8*, align 8
  %85 = alloca i32, align 4
  %86 = alloca [2 x i32], align 4
  %87 = alloca i32, align 4
  %88 = alloca i64, align 8
  %89 = alloca i64, align 8
  %90 = alloca i32, align 4
  %91 = alloca i8*, align 8
  %92 = alloca i64, align 8
  %93 = alloca i64, align 8
  %94 = alloca i8*, align 8
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i64, align 8
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i64, align 8
  %105 = alloca i64, align 8
  %106 = alloca i64, align 8
  %107 = alloca i64, align 8
  %108 = alloca i8, align 1
  %109 = alloca i8, align 1
  %110 = alloca i16, align 2
  %111 = alloca i16, align 2
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i64, align 8
  %115 = alloca i64, align 8
  %116 = alloca i8, align 1
  %117 = alloca i8, align 1
  %118 = alloca i64, align 8
  %119 = alloca i64, align 8
  %120 = alloca i64, align 8
  %121 = alloca i64, align 8
  %122 = alloca i64, align 8
  %123 = alloca i64, align 8
  %124 = alloca double, align 8
  %125 = alloca fp128, align 16
  %126 = alloca i32, align 4
  %127 = alloca i32, align 4
  %128 = alloca i8*, align 8
  %129 = alloca i32*, align 8
  %130 = alloca i8*, align 8
  %131 = alloca i64, align 8
  %132 = alloca i64, align 8
  %133 = alloca i8*, align 8
  %134 = alloca i64, align 8
  %135 = alloca i8*, align 8
  %136 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @printf_parse(i8* noundef %137, %struct.char_directives* noundef %9, %struct.arguments* noundef %10)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %4
  store i8* null, i8** %5, align 8
  br label %3504

141:                                              ; preds = %4
  %142 = bitcast %"struct.std::__va_list"* %11 to i8*
  %143 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = call i32 @printf_fetchargs(%"struct.std::__va_list"* noundef %11, %struct.arguments* noundef %10)
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %3481

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @xsum4(i64 noundef 7, i64 noundef %149, i64 noundef %151, i64 noundef 6) #20
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %12, align 8
  %154 = icmp ult i64 %153, 4000
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i64, i64* %12, align 8
  %157 = mul i64 %156, 1
  %158 = alloca i8, i64 %157, align 16
  store i8* %158, i8** %13, align 8
  store i8* null, i8** %14, align 8
  br label %179

159:                                              ; preds = %147
  %160 = load i64, i64* %12, align 8
  %161 = icmp ule i64 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i64, i64* %12, align 8
  %164 = mul i64 %163, 1
  br label %166

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i64 [ %164, %162 ], [ -1, %165 ]
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = icmp eq i64 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %3479

171:                                              ; preds = %166
  %172 = load i64, i64* %15, align 8
  %173 = call noalias i8* @malloc(i64 noundef %172) #18
  store i8* %173, i8** %13, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %3479

177:                                              ; preds = %171
  %178 = load i8*, i8** %13, align 8
  store i8* %178, i8** %14, align 8
  br label %179

179:                                              ; preds = %177, %155
  %180 = load i8*, i8** %6, align 8
  store i8* %180, i8** %16, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i64*, i64** %7, align 8
  %185 = load i64, i64* %184, align 8
  br label %187

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %183
  %188 = phi i64 [ %185, %183 ], [ 0, %186 ]
  store i64 %188, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %189 = load i8*, i8** %8, align 8
  store i8* %189, i8** %19, align 8
  store i64 0, i64* %20, align 8
  %190 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %191 = load %struct.char_directive*, %struct.char_directive** %190, align 8
  %192 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %191, i64 0
  store %struct.char_directive* %192, %struct.char_directive** %21, align 8
  br label %193

193:                                              ; preds = %3314, %187
  %194 = load i8*, i8** %19, align 8
  %195 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %196 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %194, %197
  br i1 %198, label %199, label %280

199:                                              ; preds = %193
  %200 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %201 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** %19, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  store i64 %206, i64* %22, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %22, align 8
  %209 = call i64 @xsum(i64 noundef %207, i64 noundef %208) #20
  store i64 %209, i64* %23, align 8
  %210 = load i64, i64* %23, align 8
  %211 = load i64, i64* %17, align 8
  %212 = icmp ugt i64 %210, %211
  br i1 %212, label %213, label %273

213:                                              ; preds = %199
  %214 = load i64, i64* %17, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load i64, i64* %17, align 8
  %218 = icmp ule i64 %217, 9223372036854775807
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %17, align 8
  %221 = mul i64 %220, 2
  br label %223

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %219
  %224 = phi i64 [ %221, %219 ], [ -1, %222 ]
  br label %226

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i64 [ %224, %223 ], [ 12, %225 ]
  store i64 %227, i64* %17, align 8
  %228 = load i64, i64* %23, align 8
  %229 = load i64, i64* %17, align 8
  %230 = icmp ugt i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i64, i64* %23, align 8
  store i64 %232, i64* %17, align 8
  br label %233

233:                                              ; preds = %231, %226
  %234 = load i64, i64* %17, align 8
  %235 = icmp ule i64 %234, -1
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i64, i64* %17, align 8
  %238 = mul i64 %237, 1
  br label %240

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %239, %236
  %241 = phi i64 [ %238, %236 ], [ -1, %239 ]
  store i64 %241, i64* %24, align 8
  %242 = load i64, i64* %24, align 8
  %243 = icmp eq i64 %242, -1
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %3443

245:                                              ; preds = %240
  %246 = load i8*, i8** %16, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i64, i64* %24, align 8
  %251 = call noalias i8* @malloc(i64 noundef %250) #18
  store i8* %251, i8** %25, align 8
  br label %256

252:                                              ; preds = %245
  %253 = load i8*, i8** %16, align 8
  %254 = load i64, i64* %24, align 8
  %255 = call i8* @rpl_realloc(i8* noundef %253, i64 noundef %254)
  store i8* %255, i8** %25, align 8
  br label %256

256:                                              ; preds = %252, %249
  %257 = load i8*, i8** %25, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  br label %3443

260:                                              ; preds = %256
  %261 = load i8*, i8** %16, align 8
  %262 = load i8*, i8** %6, align 8
  %263 = icmp eq i8* %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load i64, i64* %18, align 8
  %266 = icmp ugt i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i8*, i8** %25, align 8
  %269 = load i8*, i8** %16, align 8
  %270 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %268, i8* align 1 %269, i64 %270, i1 false)
  br label %271

271:                                              ; preds = %267, %264, %260
  %272 = load i8*, i8** %25, align 8
  store i8* %272, i8** %16, align 8
  br label %273

273:                                              ; preds = %271, %199
  %274 = load i8*, i8** %16, align 8
  %275 = load i64, i64* %18, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8*, i8** %19, align 8
  %278 = load i64, i64* %22, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %276, i8* align 1 %277, i64 %278, i1 false)
  %279 = load i64, i64* %23, align 8
  store i64 %279, i64* %18, align 8
  br label %280

280:                                              ; preds = %273, %193
  %281 = load i64, i64* %20, align 8
  %282 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %281, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %3322

286:                                              ; preds = %280
  %287 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %288 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %287, i32 0, i32 9
  %289 = load i8, i8* %288, align 8
  %290 = zext i8 %289 to i32
  %291 = icmp eq i32 %290, 37
  br i1 %291, label %292, label %369

292:                                              ; preds = %286
  %293 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %294 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %293, i32 0, i32 10
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %295, -1
  br i1 %296, label %298, label %297

297:                                              ; preds = %292
  call void @abort() #19
  unreachable

298:                                              ; preds = %292
  %299 = load i64, i64* %18, align 8
  %300 = call i64 @xsum(i64 noundef %299, i64 noundef 1) #20
  store i64 %300, i64* %26, align 8
  %301 = load i64, i64* %26, align 8
  %302 = load i64, i64* %17, align 8
  %303 = icmp ugt i64 %301, %302
  br i1 %303, label %304, label %364

304:                                              ; preds = %298
  %305 = load i64, i64* %17, align 8
  %306 = icmp ugt i64 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %304
  %308 = load i64, i64* %17, align 8
  %309 = icmp ule i64 %308, 9223372036854775807
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i64, i64* %17, align 8
  %312 = mul i64 %311, 2
  br label %314

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313, %310
  %315 = phi i64 [ %312, %310 ], [ -1, %313 ]
  br label %317

316:                                              ; preds = %304
  br label %317

317:                                              ; preds = %316, %314
  %318 = phi i64 [ %315, %314 ], [ 12, %316 ]
  store i64 %318, i64* %17, align 8
  %319 = load i64, i64* %26, align 8
  %320 = load i64, i64* %17, align 8
  %321 = icmp ugt i64 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = load i64, i64* %26, align 8
  store i64 %323, i64* %17, align 8
  br label %324

324:                                              ; preds = %322, %317
  %325 = load i64, i64* %17, align 8
  %326 = icmp ule i64 %325, -1
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, i64* %17, align 8
  %329 = mul i64 %328, 1
  br label %331

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330, %327
  %332 = phi i64 [ %329, %327 ], [ -1, %330 ]
  store i64 %332, i64* %27, align 8
  %333 = load i64, i64* %27, align 8
  %334 = icmp eq i64 %333, -1
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  br label %3443

336:                                              ; preds = %331
  %337 = load i8*, i8** %16, align 8
  %338 = load i8*, i8** %6, align 8
  %339 = icmp eq i8* %337, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = load i64, i64* %27, align 8
  %342 = call noalias i8* @malloc(i64 noundef %341) #18
  store i8* %342, i8** %28, align 8
  br label %347

343:                                              ; preds = %336
  %344 = load i8*, i8** %16, align 8
  %345 = load i64, i64* %27, align 8
  %346 = call i8* @rpl_realloc(i8* noundef %344, i64 noundef %345)
  store i8* %346, i8** %28, align 8
  br label %347

347:                                              ; preds = %343, %340
  %348 = load i8*, i8** %28, align 8
  %349 = icmp eq i8* %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  br label %3443

351:                                              ; preds = %347
  %352 = load i8*, i8** %16, align 8
  %353 = load i8*, i8** %6, align 8
  %354 = icmp eq i8* %352, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %351
  %356 = load i64, i64* %18, align 8
  %357 = icmp ugt i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = load i8*, i8** %28, align 8
  %360 = load i8*, i8** %16, align 8
  %361 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %359, i8* align 1 %360, i64 %361, i1 false)
  br label %362

362:                                              ; preds = %358, %355, %351
  %363 = load i8*, i8** %28, align 8
  store i8* %363, i8** %16, align 8
  br label %364

364:                                              ; preds = %362, %298
  %365 = load i8*, i8** %16, align 8
  %366 = load i64, i64* %18, align 8
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  store i8 37, i8* %367, align 1
  %368 = load i64, i64* %26, align 8
  store i64 %368, i64* %18, align 8
  br label %3313

369:                                              ; preds = %286
  %370 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %371 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %370, i32 0, i32 10
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, -1
  br i1 %373, label %375, label %374

374:                                              ; preds = %369
  call void @abort() #19
  unreachable

375:                                              ; preds = %369
  %376 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %377 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %376, i32 0, i32 9
  %378 = load i8, i8* %377, align 8
  %379 = zext i8 %378 to i32
  %380 = icmp eq i32 %379, 110
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  call void @abort() #19
  unreachable

382:                                              ; preds = %375
  %383 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %384 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %383, i32 0, i32 9
  %385 = load i8, i8* %384, align 8
  %386 = zext i8 %385 to i32
  %387 = icmp eq i32 %386, 115
  br i1 %387, label %388, label %700

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %390 = load %struct.argument*, %struct.argument** %389, align 8
  %391 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %392 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %391, i32 0, i32 10
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.argument, %struct.argument* %390, i64 %393
  %395 = getelementptr inbounds %struct.argument, %struct.argument* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 16
  %397 = icmp ne i32 %396, 32
  br i1 %397, label %398, label %700

398:                                              ; preds = %388
  %399 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %400 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i64 0, i64* %31, align 8
  %402 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %403 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %402, i32 0, i32 3
  %404 = load i8*, i8** %403, align 8
  %405 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %406 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %405, i32 0, i32 4
  %407 = load i8*, i8** %406, align 8
  %408 = icmp ne i8* %404, %407
  br i1 %408, label %409, label %477

409:                                              ; preds = %398
  %410 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %411 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %410, i32 0, i32 5
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, -1
  br i1 %413, label %414, label %445

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %416 = load %struct.argument*, %struct.argument** %415, align 8
  %417 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %418 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %417, i32 0, i32 5
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds %struct.argument, %struct.argument* %416, i64 %419
  %421 = getelementptr inbounds %struct.argument, %struct.argument* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 16
  %423 = icmp eq i32 %422, 5
  br i1 %423, label %425, label %424

424:                                              ; preds = %414
  call void @abort() #19
  unreachable

425:                                              ; preds = %414
  %426 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %427 = load %struct.argument*, %struct.argument** %426, align 8
  %428 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %429 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %428, i32 0, i32 5
  %430 = load i64, i64* %429, align 8
  %431 = getelementptr inbounds %struct.argument, %struct.argument* %427, i64 %430
  %432 = getelementptr inbounds %struct.argument, %struct.argument* %431, i32 0, i32 1
  %433 = bitcast %union.anon.39* %432 to i32*
  %434 = load i32, i32* %433, align 16
  store i32 %434, i32* %32, align 4
  %435 = load i32, i32* %32, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %31, align 8
  %437 = load i32, i32* %32, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %425
  %440 = load i32, i32* %29, align 4
  %441 = or i32 %440, 2
  store i32 %441, i32* %29, align 4
  %442 = load i64, i64* %31, align 8
  %443 = sub i64 0, %442
  store i64 %443, i64* %31, align 8
  br label %444

444:                                              ; preds = %439, %425
  br label %472

445:                                              ; preds = %409
  %446 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %447 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %446, i32 0, i32 3
  %448 = load i8*, i8** %447, align 8
  store i8* %448, i8** %33, align 8
  br label %449

449:                                              ; preds = %465, %445
  %450 = load i64, i64* %31, align 8
  %451 = icmp ule i64 %450, 1844674407370955161
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i64, i64* %31, align 8
  %454 = mul i64 %453, 10
  br label %456

455:                                              ; preds = %449
  br label %456

456:                                              ; preds = %455, %452
  %457 = phi i64 [ %454, %452 ], [ -1, %455 ]
  %458 = load i8*, i8** %33, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %33, align 8
  %460 = load i8, i8* %458, align 1
  %461 = zext i8 %460 to i32
  %462 = sub nsw i32 %461, 48
  %463 = sext i32 %462 to i64
  %464 = call i64 @xsum(i64 noundef %457, i64 noundef %463) #20
  store i64 %464, i64* %31, align 8
  br label %465

465:                                              ; preds = %456
  %466 = load i8*, i8** %33, align 8
  %467 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %468 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %467, i32 0, i32 4
  %469 = load i8*, i8** %468, align 8
  %470 = icmp ne i8* %466, %469
  br i1 %470, label %449, label %471, !llvm.loop !35

471:                                              ; preds = %465
  br label %472

472:                                              ; preds = %471, %444
  %473 = load i64, i64* %31, align 8
  %474 = icmp ugt i64 %473, 2147483647
  br i1 %474, label %475, label %476

475:                                              ; preds = %472
  br label %3441

476:                                              ; preds = %472
  store i32 1, i32* %30, align 4
  br label %477

477:                                              ; preds = %476, %398
  store i32 0, i32* %34, align 4
  store i64 6, i64* %35, align 8
  %478 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %479 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %478, i32 0, i32 6
  %480 = load i8*, i8** %479, align 8
  %481 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %482 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %481, i32 0, i32 7
  %483 = load i8*, i8** %482, align 8
  %484 = icmp ne i8* %480, %483
  br i1 %484, label %485, label %546

485:                                              ; preds = %477
  %486 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %487 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %486, i32 0, i32 8
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, -1
  br i1 %489, label %490, label %517

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %492 = load %struct.argument*, %struct.argument** %491, align 8
  %493 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %494 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %493, i32 0, i32 8
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.argument, %struct.argument* %492, i64 %495
  %497 = getelementptr inbounds %struct.argument, %struct.argument* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 16
  %499 = icmp eq i32 %498, 5
  br i1 %499, label %501, label %500

500:                                              ; preds = %490
  call void @abort() #19
  unreachable

501:                                              ; preds = %490
  %502 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %503 = load %struct.argument*, %struct.argument** %502, align 8
  %504 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %505 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %504, i32 0, i32 8
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds %struct.argument, %struct.argument* %503, i64 %506
  %508 = getelementptr inbounds %struct.argument, %struct.argument* %507, i32 0, i32 1
  %509 = bitcast %union.anon.39* %508 to i32*
  %510 = load i32, i32* %509, align 16
  store i32 %510, i32* %36, align 4
  %511 = load i32, i32* %36, align 4
  %512 = icmp sge i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %501
  %514 = load i32, i32* %36, align 4
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %35, align 8
  store i32 1, i32* %34, align 4
  br label %516

516:                                              ; preds = %513, %501
  br label %545

517:                                              ; preds = %485
  %518 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %519 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %518, i32 0, i32 6
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 1
  store i8* %521, i8** %37, align 8
  store i64 0, i64* %35, align 8
  br label %522

522:                                              ; preds = %535, %517
  %523 = load i8*, i8** %37, align 8
  %524 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %525 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %524, i32 0, i32 7
  %526 = load i8*, i8** %525, align 8
  %527 = icmp ne i8* %523, %526
  br i1 %527, label %528, label %544

528:                                              ; preds = %522
  %529 = load i64, i64* %35, align 8
  %530 = icmp ule i64 %529, 1844674407370955161
  br i1 %530, label %531, label %534

531:                                              ; preds = %528
  %532 = load i64, i64* %35, align 8
  %533 = mul i64 %532, 10
  br label %535

534:                                              ; preds = %528
  br label %535

535:                                              ; preds = %534, %531
  %536 = phi i64 [ %533, %531 ], [ -1, %534 ]
  %537 = load i8*, i8** %37, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %538, i8** %37, align 8
  %539 = load i8, i8* %537, align 1
  %540 = zext i8 %539 to i32
  %541 = sub nsw i32 %540, 48
  %542 = sext i32 %541 to i64
  %543 = call i64 @xsum(i64 noundef %536, i64 noundef %542) #20
  store i64 %543, i64* %35, align 8
  br label %522, !llvm.loop !36

544:                                              ; preds = %522
  store i32 1, i32* %34, align 4
  br label %545

545:                                              ; preds = %544, %516
  br label %546

546:                                              ; preds = %545, %477
  %547 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %548 = load %struct.argument*, %struct.argument** %547, align 8
  %549 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %550 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %549, i32 0, i32 10
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.argument, %struct.argument* %548, i64 %551
  %553 = getelementptr inbounds %struct.argument, %struct.argument* %552, i32 0, i32 1
  %554 = bitcast %union.anon.39* %553 to i8**
  %555 = load i8*, i8** %554, align 16
  store i8* %555, i8** %38, align 8
  %556 = load i32, i32* %34, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %562

558:                                              ; preds = %546
  %559 = load i8*, i8** %38, align 8
  %560 = load i64, i64* %35, align 8
  %561 = call i64 @strnlen(i8* noundef %559, i64 noundef %560) #20
  store i64 %561, i64* %39, align 8
  br label %565

562:                                              ; preds = %546
  %563 = load i8*, i8** %38, align 8
  %564 = call i64 @strlen(i8* noundef %563) #20
  store i64 %564, i64* %39, align 8
  br label %565

565:                                              ; preds = %562, %558
  %566 = load i32, i32* %30, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %570

568:                                              ; preds = %565
  %569 = load i64, i64* %39, align 8
  store i64 %569, i64* %40, align 8
  br label %571

570:                                              ; preds = %565
  store i64 0, i64* %40, align 8
  br label %571

571:                                              ; preds = %570, %568
  %572 = load i64, i64* %39, align 8
  %573 = load i64, i64* %40, align 8
  %574 = load i64, i64* %31, align 8
  %575 = icmp ult i64 %573, %574
  br i1 %575, label %576, label %580

576:                                              ; preds = %571
  %577 = load i64, i64* %31, align 8
  %578 = load i64, i64* %40, align 8
  %579 = sub i64 %577, %578
  br label %581

580:                                              ; preds = %571
  br label %581

581:                                              ; preds = %580, %576
  %582 = phi i64 [ %579, %576 ], [ 0, %580 ]
  %583 = add i64 %572, %582
  store i64 %583, i64* %41, align 8
  %584 = load i64, i64* %18, align 8
  %585 = load i64, i64* %41, align 8
  %586 = call i64 @xsum(i64 noundef %584, i64 noundef %585) #20
  %587 = load i64, i64* %17, align 8
  %588 = icmp ugt i64 %586, %587
  br i1 %588, label %589, label %653

589:                                              ; preds = %581
  %590 = load i64, i64* %17, align 8
  %591 = icmp ugt i64 %590, 0
  br i1 %591, label %592, label %601

592:                                              ; preds = %589
  %593 = load i64, i64* %17, align 8
  %594 = icmp ule i64 %593, 9223372036854775807
  br i1 %594, label %595, label %598

595:                                              ; preds = %592
  %596 = load i64, i64* %17, align 8
  %597 = mul i64 %596, 2
  br label %599

598:                                              ; preds = %592
  br label %599

599:                                              ; preds = %598, %595
  %600 = phi i64 [ %597, %595 ], [ -1, %598 ]
  br label %602

601:                                              ; preds = %589
  br label %602

602:                                              ; preds = %601, %599
  %603 = phi i64 [ %600, %599 ], [ 12, %601 ]
  store i64 %603, i64* %17, align 8
  %604 = load i64, i64* %18, align 8
  %605 = load i64, i64* %41, align 8
  %606 = call i64 @xsum(i64 noundef %604, i64 noundef %605) #20
  %607 = load i64, i64* %17, align 8
  %608 = icmp ugt i64 %606, %607
  br i1 %608, label %609, label %613

609:                                              ; preds = %602
  %610 = load i64, i64* %18, align 8
  %611 = load i64, i64* %41, align 8
  %612 = call i64 @xsum(i64 noundef %610, i64 noundef %611) #20
  store i64 %612, i64* %17, align 8
  br label %613

613:                                              ; preds = %609, %602
  %614 = load i64, i64* %17, align 8
  %615 = icmp ule i64 %614, -1
  br i1 %615, label %616, label %619

616:                                              ; preds = %613
  %617 = load i64, i64* %17, align 8
  %618 = mul i64 %617, 1
  br label %620

619:                                              ; preds = %613
  br label %620

620:                                              ; preds = %619, %616
  %621 = phi i64 [ %618, %616 ], [ -1, %619 ]
  store i64 %621, i64* %42, align 8
  %622 = load i64, i64* %42, align 8
  %623 = icmp eq i64 %622, -1
  br i1 %623, label %624, label %625

624:                                              ; preds = %620
  br label %3443

625:                                              ; preds = %620
  %626 = load i8*, i8** %16, align 8
  %627 = load i8*, i8** %6, align 8
  %628 = icmp eq i8* %626, %627
  br i1 %628, label %629, label %632

629:                                              ; preds = %625
  %630 = load i64, i64* %42, align 8
  %631 = call noalias i8* @malloc(i64 noundef %630) #18
  store i8* %631, i8** %43, align 8
  br label %636

632:                                              ; preds = %625
  %633 = load i8*, i8** %16, align 8
  %634 = load i64, i64* %42, align 8
  %635 = call i8* @rpl_realloc(i8* noundef %633, i64 noundef %634)
  store i8* %635, i8** %43, align 8
  br label %636

636:                                              ; preds = %632, %629
  %637 = load i8*, i8** %43, align 8
  %638 = icmp eq i8* %637, null
  br i1 %638, label %639, label %640

639:                                              ; preds = %636
  br label %3443

640:                                              ; preds = %636
  %641 = load i8*, i8** %16, align 8
  %642 = load i8*, i8** %6, align 8
  %643 = icmp eq i8* %641, %642
  br i1 %643, label %644, label %651

644:                                              ; preds = %640
  %645 = load i64, i64* %18, align 8
  %646 = icmp ugt i64 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %644
  %648 = load i8*, i8** %43, align 8
  %649 = load i8*, i8** %16, align 8
  %650 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %648, i8* align 1 %649, i64 %650, i1 false)
  br label %651

651:                                              ; preds = %647, %644, %640
  %652 = load i8*, i8** %43, align 8
  store i8* %652, i8** %16, align 8
  br label %653

653:                                              ; preds = %651, %581
  %654 = load i64, i64* %40, align 8
  %655 = load i64, i64* %31, align 8
  %656 = icmp ult i64 %654, %655
  br i1 %656, label %657, label %672

657:                                              ; preds = %653
  %658 = load i32, i32* %29, align 4
  %659 = and i32 %658, 2
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %672, label %661

661:                                              ; preds = %657
  %662 = load i64, i64* %31, align 8
  %663 = load i64, i64* %40, align 8
  %664 = sub i64 %662, %663
  store i64 %664, i64* %44, align 8
  %665 = load i8*, i8** %16, align 8
  %666 = load i64, i64* %18, align 8
  %667 = getelementptr inbounds i8, i8* %665, i64 %666
  %668 = load i64, i64* %44, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %667, i8 32, i64 %668, i1 false)
  %669 = load i64, i64* %44, align 8
  %670 = load i64, i64* %18, align 8
  %671 = add i64 %670, %669
  store i64 %671, i64* %18, align 8
  br label %672

672:                                              ; preds = %661, %657, %653
  %673 = load i8*, i8** %16, align 8
  %674 = load i64, i64* %18, align 8
  %675 = getelementptr inbounds i8, i8* %673, i64 %674
  %676 = load i8*, i8** %38, align 8
  %677 = load i64, i64* %39, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %675, i8* align 1 %676, i64 %677, i1 false)
  %678 = load i64, i64* %39, align 8
  %679 = load i64, i64* %18, align 8
  %680 = add i64 %679, %678
  store i64 %680, i64* %18, align 8
  %681 = load i64, i64* %40, align 8
  %682 = load i64, i64* %31, align 8
  %683 = icmp ult i64 %681, %682
  br i1 %683, label %684, label %699

684:                                              ; preds = %672
  %685 = load i32, i32* %29, align 4
  %686 = and i32 %685, 2
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %699

688:                                              ; preds = %684
  %689 = load i64, i64* %31, align 8
  %690 = load i64, i64* %40, align 8
  %691 = sub i64 %689, %690
  store i64 %691, i64* %45, align 8
  %692 = load i8*, i8** %16, align 8
  %693 = load i64, i64* %18, align 8
  %694 = getelementptr inbounds i8, i8* %692, i64 %693
  %695 = load i64, i64* %45, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %694, i8 32, i64 %695, i1 false)
  %696 = load i64, i64* %45, align 8
  %697 = load i64, i64* %18, align 8
  %698 = add i64 %697, %696
  store i64 %698, i64* %18, align 8
  br label %699

699:                                              ; preds = %688, %684, %672
  br label %3311

700:                                              ; preds = %388, %382
  %701 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %702 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %701, i32 0, i32 9
  %703 = load i8, i8* %702, align 8
  %704 = zext i8 %703 to i32
  %705 = icmp eq i32 %704, 115
  br i1 %705, label %706, label %1355

706:                                              ; preds = %700
  %707 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %708 = load %struct.argument*, %struct.argument** %707, align 8
  %709 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %710 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %709, i32 0, i32 10
  %711 = load i64, i64* %710, align 8
  %712 = getelementptr inbounds %struct.argument, %struct.argument* %708, i64 %711
  %713 = getelementptr inbounds %struct.argument, %struct.argument* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 16
  %715 = icmp eq i32 %714, 32
  br i1 %715, label %716, label %1355

716:                                              ; preds = %706
  %717 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %718 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %717, i32 0, i32 2
  %719 = load i32, i32* %718, align 8
  store i32 %719, i32* %46, align 4
  store i32 0, i32* %47, align 4
  store i64 0, i64* %48, align 8
  %720 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %721 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %720, i32 0, i32 3
  %722 = load i8*, i8** %721, align 8
  %723 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %724 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %723, i32 0, i32 4
  %725 = load i8*, i8** %724, align 8
  %726 = icmp ne i8* %722, %725
  br i1 %726, label %727, label %795

727:                                              ; preds = %716
  %728 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %729 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %728, i32 0, i32 5
  %730 = load i64, i64* %729, align 8
  %731 = icmp ne i64 %730, -1
  br i1 %731, label %732, label %763

732:                                              ; preds = %727
  %733 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %734 = load %struct.argument*, %struct.argument** %733, align 8
  %735 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %736 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %735, i32 0, i32 5
  %737 = load i64, i64* %736, align 8
  %738 = getelementptr inbounds %struct.argument, %struct.argument* %734, i64 %737
  %739 = getelementptr inbounds %struct.argument, %struct.argument* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 16
  %741 = icmp eq i32 %740, 5
  br i1 %741, label %743, label %742

742:                                              ; preds = %732
  call void @abort() #19
  unreachable

743:                                              ; preds = %732
  %744 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %745 = load %struct.argument*, %struct.argument** %744, align 8
  %746 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %747 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %746, i32 0, i32 5
  %748 = load i64, i64* %747, align 8
  %749 = getelementptr inbounds %struct.argument, %struct.argument* %745, i64 %748
  %750 = getelementptr inbounds %struct.argument, %struct.argument* %749, i32 0, i32 1
  %751 = bitcast %union.anon.39* %750 to i32*
  %752 = load i32, i32* %751, align 16
  store i32 %752, i32* %49, align 4
  %753 = load i32, i32* %49, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %48, align 8
  %755 = load i32, i32* %49, align 4
  %756 = icmp slt i32 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %743
  %758 = load i32, i32* %46, align 4
  %759 = or i32 %758, 2
  store i32 %759, i32* %46, align 4
  %760 = load i64, i64* %48, align 8
  %761 = sub i64 0, %760
  store i64 %761, i64* %48, align 8
  br label %762

762:                                              ; preds = %757, %743
  br label %790

763:                                              ; preds = %727
  %764 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %765 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %764, i32 0, i32 3
  %766 = load i8*, i8** %765, align 8
  store i8* %766, i8** %50, align 8
  br label %767

767:                                              ; preds = %783, %763
  %768 = load i64, i64* %48, align 8
  %769 = icmp ule i64 %768, 1844674407370955161
  br i1 %769, label %770, label %773

770:                                              ; preds = %767
  %771 = load i64, i64* %48, align 8
  %772 = mul i64 %771, 10
  br label %774

773:                                              ; preds = %767
  br label %774

774:                                              ; preds = %773, %770
  %775 = phi i64 [ %772, %770 ], [ -1, %773 ]
  %776 = load i8*, i8** %50, align 8
  %777 = getelementptr inbounds i8, i8* %776, i32 1
  store i8* %777, i8** %50, align 8
  %778 = load i8, i8* %776, align 1
  %779 = zext i8 %778 to i32
  %780 = sub nsw i32 %779, 48
  %781 = sext i32 %780 to i64
  %782 = call i64 @xsum(i64 noundef %775, i64 noundef %781) #20
  store i64 %782, i64* %48, align 8
  br label %783

783:                                              ; preds = %774
  %784 = load i8*, i8** %50, align 8
  %785 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %786 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %785, i32 0, i32 4
  %787 = load i8*, i8** %786, align 8
  %788 = icmp ne i8* %784, %787
  br i1 %788, label %767, label %789, !llvm.loop !37

789:                                              ; preds = %783
  br label %790

790:                                              ; preds = %789, %762
  %791 = load i64, i64* %48, align 8
  %792 = icmp ugt i64 %791, 2147483647
  br i1 %792, label %793, label %794

793:                                              ; preds = %790
  br label %3441

794:                                              ; preds = %790
  store i32 1, i32* %47, align 4
  br label %795

795:                                              ; preds = %794, %716
  store i32 0, i32* %51, align 4
  store i64 6, i64* %52, align 8
  %796 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %797 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %796, i32 0, i32 6
  %798 = load i8*, i8** %797, align 8
  %799 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %800 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %799, i32 0, i32 7
  %801 = load i8*, i8** %800, align 8
  %802 = icmp ne i8* %798, %801
  br i1 %802, label %803, label %864

803:                                              ; preds = %795
  %804 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %805 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %804, i32 0, i32 8
  %806 = load i64, i64* %805, align 8
  %807 = icmp ne i64 %806, -1
  br i1 %807, label %808, label %835

808:                                              ; preds = %803
  %809 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %810 = load %struct.argument*, %struct.argument** %809, align 8
  %811 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %812 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %811, i32 0, i32 8
  %813 = load i64, i64* %812, align 8
  %814 = getelementptr inbounds %struct.argument, %struct.argument* %810, i64 %813
  %815 = getelementptr inbounds %struct.argument, %struct.argument* %814, i32 0, i32 0
  %816 = load i32, i32* %815, align 16
  %817 = icmp eq i32 %816, 5
  br i1 %817, label %819, label %818

818:                                              ; preds = %808
  call void @abort() #19
  unreachable

819:                                              ; preds = %808
  %820 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %821 = load %struct.argument*, %struct.argument** %820, align 8
  %822 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %823 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %822, i32 0, i32 8
  %824 = load i64, i64* %823, align 8
  %825 = getelementptr inbounds %struct.argument, %struct.argument* %821, i64 %824
  %826 = getelementptr inbounds %struct.argument, %struct.argument* %825, i32 0, i32 1
  %827 = bitcast %union.anon.39* %826 to i32*
  %828 = load i32, i32* %827, align 16
  store i32 %828, i32* %53, align 4
  %829 = load i32, i32* %53, align 4
  %830 = icmp sge i32 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %819
  %832 = load i32, i32* %53, align 4
  %833 = sext i32 %832 to i64
  store i64 %833, i64* %52, align 8
  store i32 1, i32* %51, align 4
  br label %834

834:                                              ; preds = %831, %819
  br label %863

835:                                              ; preds = %803
  %836 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %837 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %836, i32 0, i32 6
  %838 = load i8*, i8** %837, align 8
  %839 = getelementptr inbounds i8, i8* %838, i64 1
  store i8* %839, i8** %54, align 8
  store i64 0, i64* %52, align 8
  br label %840

840:                                              ; preds = %853, %835
  %841 = load i8*, i8** %54, align 8
  %842 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %843 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %842, i32 0, i32 7
  %844 = load i8*, i8** %843, align 8
  %845 = icmp ne i8* %841, %844
  br i1 %845, label %846, label %862

846:                                              ; preds = %840
  %847 = load i64, i64* %52, align 8
  %848 = icmp ule i64 %847, 1844674407370955161
  br i1 %848, label %849, label %852

849:                                              ; preds = %846
  %850 = load i64, i64* %52, align 8
  %851 = mul i64 %850, 10
  br label %853

852:                                              ; preds = %846
  br label %853

853:                                              ; preds = %852, %849
  %854 = phi i64 [ %851, %849 ], [ -1, %852 ]
  %855 = load i8*, i8** %54, align 8
  %856 = getelementptr inbounds i8, i8* %855, i32 1
  store i8* %856, i8** %54, align 8
  %857 = load i8, i8* %855, align 1
  %858 = zext i8 %857 to i32
  %859 = sub nsw i32 %858, 48
  %860 = sext i32 %859 to i64
  %861 = call i64 @xsum(i64 noundef %854, i64 noundef %860) #20
  store i64 %861, i64* %52, align 8
  br label %840, !llvm.loop !38

862:                                              ; preds = %840
  store i32 1, i32* %51, align 4
  br label %863

863:                                              ; preds = %862, %834
  br label %864

864:                                              ; preds = %863, %795
  %865 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %866 = load %struct.argument*, %struct.argument** %865, align 8
  %867 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %868 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %867, i32 0, i32 10
  %869 = load i64, i64* %868, align 8
  %870 = getelementptr inbounds %struct.argument, %struct.argument* %866, i64 %869
  %871 = getelementptr inbounds %struct.argument, %struct.argument* %870, i32 0, i32 1
  %872 = bitcast %union.anon.39* %871 to i32**
  %873 = load i32*, i32** %872, align 16
  store i32* %873, i32** %55, align 8
  %874 = load i32, i32* %51, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %913

876:                                              ; preds = %864
  call void @mbszero(%struct.__mbstate_t* noundef %59)
  %877 = load i32*, i32** %55, align 8
  store i32* %877, i32** %56, align 8
  store i64 0, i64* %57, align 8
  br label %878

878:                                              ; preds = %901, %876
  %879 = load i64, i64* %52, align 8
  %880 = icmp ugt i64 %879, 0
  br i1 %880, label %881, label %912

881:                                              ; preds = %878
  %882 = load i32*, i32** %56, align 8
  %883 = load i32, i32* %882, align 4
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %881
  br label %912

886:                                              ; preds = %881
  %887 = getelementptr inbounds [64 x i8], [64 x i8]* %60, i64 0, i64 0
  %888 = load i32*, i32** %56, align 8
  %889 = load i32, i32* %888, align 4
  %890 = call i64 @wcrtomb(i8* noundef %887, i32 noundef %889, %struct.__mbstate_t* noundef %59) #18
  %891 = trunc i64 %890 to i32
  store i32 %891, i32* %61, align 4
  %892 = load i32, i32* %61, align 4
  %893 = icmp slt i32 %892, 0
  br i1 %893, label %894, label %895

894:                                              ; preds = %886
  br label %3445

895:                                              ; preds = %886
  %896 = load i64, i64* %52, align 8
  %897 = load i32, i32* %61, align 4
  %898 = zext i32 %897 to i64
  %899 = icmp ult i64 %896, %898
  br i1 %899, label %900, label %901

900:                                              ; preds = %895
  br label %912

901:                                              ; preds = %895
  %902 = load i32*, i32** %56, align 8
  %903 = getelementptr inbounds i32, i32* %902, i32 1
  store i32* %903, i32** %56, align 8
  %904 = load i32, i32* %61, align 4
  %905 = sext i32 %904 to i64
  %906 = load i64, i64* %57, align 8
  %907 = add i64 %906, %905
  store i64 %907, i64* %57, align 8
  %908 = load i32, i32* %61, align 4
  %909 = sext i32 %908 to i64
  %910 = load i64, i64* %52, align 8
  %911 = sub i64 %910, %909
  store i64 %911, i64* %52, align 8
  br label %878, !llvm.loop !39

912:                                              ; preds = %900, %885, %878
  br label %946

913:                                              ; preds = %864
  %914 = load i32, i32* %47, align 4
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %940

916:                                              ; preds = %913
  call void @mbszero(%struct.__mbstate_t* noundef %62)
  %917 = load i32*, i32** %55, align 8
  store i32* %917, i32** %56, align 8
  store i64 0, i64* %57, align 8
  br label %918

918:                                              ; preds = %932, %916
  %919 = load i32*, i32** %56, align 8
  %920 = load i32, i32* %919, align 4
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %923

922:                                              ; preds = %918
  br label %939

923:                                              ; preds = %918
  %924 = getelementptr inbounds [64 x i8], [64 x i8]* %63, i64 0, i64 0
  %925 = load i32*, i32** %56, align 8
  %926 = load i32, i32* %925, align 4
  %927 = call i64 @wcrtomb(i8* noundef %924, i32 noundef %926, %struct.__mbstate_t* noundef %62) #18
  %928 = trunc i64 %927 to i32
  store i32 %928, i32* %64, align 4
  %929 = load i32, i32* %64, align 4
  %930 = icmp slt i32 %929, 0
  br i1 %930, label %931, label %932

931:                                              ; preds = %923
  br label %3445

932:                                              ; preds = %923
  %933 = load i32*, i32** %56, align 8
  %934 = getelementptr inbounds i32, i32* %933, i32 1
  store i32* %934, i32** %56, align 8
  %935 = load i32, i32* %64, align 4
  %936 = sext i32 %935 to i64
  %937 = load i64, i64* %57, align 8
  %938 = add i64 %937, %936
  store i64 %938, i64* %57, align 8
  br label %918

939:                                              ; preds = %922
  br label %945

940:                                              ; preds = %913
  %941 = load i32*, i32** %55, align 8
  %942 = load i32*, i32** %55, align 8
  %943 = call i64 @wcslen(i32* noundef %942) #20
  %944 = getelementptr inbounds i32, i32* %941, i64 %943
  store i32* %944, i32** %56, align 8
  store i64 0, i64* %57, align 8
  br label %945

945:                                              ; preds = %940, %939
  br label %946

946:                                              ; preds = %945, %912
  %947 = load i32, i32* %47, align 4
  %948 = icmp ne i32 %947, 0
  br i1 %948, label %949, label %951

949:                                              ; preds = %946
  %950 = load i64, i64* %57, align 8
  store i64 %950, i64* %58, align 8
  br label %952

951:                                              ; preds = %946
  store i64 0, i64* %58, align 8
  br label %952

952:                                              ; preds = %951, %949
  %953 = load i64, i64* %58, align 8
  %954 = load i64, i64* %48, align 8
  %955 = icmp ult i64 %953, %954
  br i1 %955, label %956, label %1041

956:                                              ; preds = %952
  %957 = load i32, i32* %46, align 4
  %958 = and i32 %957, 2
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %1041, label %960

960:                                              ; preds = %956
  %961 = load i64, i64* %48, align 8
  %962 = load i64, i64* %58, align 8
  %963 = sub i64 %961, %962
  store i64 %963, i64* %65, align 8
  %964 = load i64, i64* %18, align 8
  %965 = load i64, i64* %65, align 8
  %966 = call i64 @xsum(i64 noundef %964, i64 noundef %965) #20
  %967 = load i64, i64* %17, align 8
  %968 = icmp ugt i64 %966, %967
  br i1 %968, label %969, label %1033

969:                                              ; preds = %960
  %970 = load i64, i64* %17, align 8
  %971 = icmp ugt i64 %970, 0
  br i1 %971, label %972, label %981

972:                                              ; preds = %969
  %973 = load i64, i64* %17, align 8
  %974 = icmp ule i64 %973, 9223372036854775807
  br i1 %974, label %975, label %978

975:                                              ; preds = %972
  %976 = load i64, i64* %17, align 8
  %977 = mul i64 %976, 2
  br label %979

978:                                              ; preds = %972
  br label %979

979:                                              ; preds = %978, %975
  %980 = phi i64 [ %977, %975 ], [ -1, %978 ]
  br label %982

981:                                              ; preds = %969
  br label %982

982:                                              ; preds = %981, %979
  %983 = phi i64 [ %980, %979 ], [ 12, %981 ]
  store i64 %983, i64* %17, align 8
  %984 = load i64, i64* %18, align 8
  %985 = load i64, i64* %65, align 8
  %986 = call i64 @xsum(i64 noundef %984, i64 noundef %985) #20
  %987 = load i64, i64* %17, align 8
  %988 = icmp ugt i64 %986, %987
  br i1 %988, label %989, label %993

989:                                              ; preds = %982
  %990 = load i64, i64* %18, align 8
  %991 = load i64, i64* %65, align 8
  %992 = call i64 @xsum(i64 noundef %990, i64 noundef %991) #20
  store i64 %992, i64* %17, align 8
  br label %993

993:                                              ; preds = %989, %982
  %994 = load i64, i64* %17, align 8
  %995 = icmp ule i64 %994, -1
  br i1 %995, label %996, label %999

996:                                              ; preds = %993
  %997 = load i64, i64* %17, align 8
  %998 = mul i64 %997, 1
  br label %1000

999:                                              ; preds = %993
  br label %1000

1000:                                             ; preds = %999, %996
  %1001 = phi i64 [ %998, %996 ], [ -1, %999 ]
  store i64 %1001, i64* %66, align 8
  %1002 = load i64, i64* %66, align 8
  %1003 = icmp eq i64 %1002, -1
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1000
  br label %3443

1005:                                             ; preds = %1000
  %1006 = load i8*, i8** %16, align 8
  %1007 = load i8*, i8** %6, align 8
  %1008 = icmp eq i8* %1006, %1007
  br i1 %1008, label %1009, label %1012

1009:                                             ; preds = %1005
  %1010 = load i64, i64* %66, align 8
  %1011 = call noalias i8* @malloc(i64 noundef %1010) #18
  store i8* %1011, i8** %67, align 8
  br label %1016

1012:                                             ; preds = %1005
  %1013 = load i8*, i8** %16, align 8
  %1014 = load i64, i64* %66, align 8
  %1015 = call i8* @rpl_realloc(i8* noundef %1013, i64 noundef %1014)
  store i8* %1015, i8** %67, align 8
  br label %1016

1016:                                             ; preds = %1012, %1009
  %1017 = load i8*, i8** %67, align 8
  %1018 = icmp eq i8* %1017, null
  br i1 %1018, label %1019, label %1020

1019:                                             ; preds = %1016
  br label %3443

1020:                                             ; preds = %1016
  %1021 = load i8*, i8** %16, align 8
  %1022 = load i8*, i8** %6, align 8
  %1023 = icmp eq i8* %1021, %1022
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1020
  %1025 = load i64, i64* %18, align 8
  %1026 = icmp ugt i64 %1025, 0
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1024
  %1028 = load i8*, i8** %67, align 8
  %1029 = load i8*, i8** %16, align 8
  %1030 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1028, i8* align 1 %1029, i64 %1030, i1 false)
  br label %1031

1031:                                             ; preds = %1027, %1024, %1020
  %1032 = load i8*, i8** %67, align 8
  store i8* %1032, i8** %16, align 8
  br label %1033

1033:                                             ; preds = %1031, %960
  %1034 = load i8*, i8** %16, align 8
  %1035 = load i64, i64* %18, align 8
  %1036 = getelementptr inbounds i8, i8* %1034, i64 %1035
  %1037 = load i64, i64* %65, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1036, i8 32, i64 %1037, i1 false)
  %1038 = load i64, i64* %65, align 8
  %1039 = load i64, i64* %18, align 8
  %1040 = add i64 %1039, %1038
  store i64 %1040, i64* %18, align 8
  br label %1041

1041:                                             ; preds = %1033, %956, %952
  %1042 = load i32, i32* %51, align 4
  %1043 = icmp ne i32 %1042, 0
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1041
  %1045 = load i32, i32* %47, align 4
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1159

1047:                                             ; preds = %1044, %1041
  call void @mbszero(%struct.__mbstate_t* noundef %68)
  %1048 = load i64, i64* %18, align 8
  %1049 = load i64, i64* %57, align 8
  %1050 = call i64 @xsum(i64 noundef %1048, i64 noundef %1049) #20
  %1051 = load i64, i64* %17, align 8
  %1052 = icmp ugt i64 %1050, %1051
  br i1 %1052, label %1053, label %1117

1053:                                             ; preds = %1047
  %1054 = load i64, i64* %17, align 8
  %1055 = icmp ugt i64 %1054, 0
  br i1 %1055, label %1056, label %1065

1056:                                             ; preds = %1053
  %1057 = load i64, i64* %17, align 8
  %1058 = icmp ule i64 %1057, 9223372036854775807
  br i1 %1058, label %1059, label %1062

1059:                                             ; preds = %1056
  %1060 = load i64, i64* %17, align 8
  %1061 = mul i64 %1060, 2
  br label %1063

1062:                                             ; preds = %1056
  br label %1063

1063:                                             ; preds = %1062, %1059
  %1064 = phi i64 [ %1061, %1059 ], [ -1, %1062 ]
  br label %1066

1065:                                             ; preds = %1053
  br label %1066

1066:                                             ; preds = %1065, %1063
  %1067 = phi i64 [ %1064, %1063 ], [ 12, %1065 ]
  store i64 %1067, i64* %17, align 8
  %1068 = load i64, i64* %18, align 8
  %1069 = load i64, i64* %57, align 8
  %1070 = call i64 @xsum(i64 noundef %1068, i64 noundef %1069) #20
  %1071 = load i64, i64* %17, align 8
  %1072 = icmp ugt i64 %1070, %1071
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1066
  %1074 = load i64, i64* %18, align 8
  %1075 = load i64, i64* %57, align 8
  %1076 = call i64 @xsum(i64 noundef %1074, i64 noundef %1075) #20
  store i64 %1076, i64* %17, align 8
  br label %1077

1077:                                             ; preds = %1073, %1066
  %1078 = load i64, i64* %17, align 8
  %1079 = icmp ule i64 %1078, -1
  br i1 %1079, label %1080, label %1083

1080:                                             ; preds = %1077
  %1081 = load i64, i64* %17, align 8
  %1082 = mul i64 %1081, 1
  br label %1084

1083:                                             ; preds = %1077
  br label %1084

1084:                                             ; preds = %1083, %1080
  %1085 = phi i64 [ %1082, %1080 ], [ -1, %1083 ]
  store i64 %1085, i64* %69, align 8
  %1086 = load i64, i64* %69, align 8
  %1087 = icmp eq i64 %1086, -1
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1084
  br label %3443

1089:                                             ; preds = %1084
  %1090 = load i8*, i8** %16, align 8
  %1091 = load i8*, i8** %6, align 8
  %1092 = icmp eq i8* %1090, %1091
  br i1 %1092, label %1093, label %1096

1093:                                             ; preds = %1089
  %1094 = load i64, i64* %69, align 8
  %1095 = call noalias i8* @malloc(i64 noundef %1094) #18
  store i8* %1095, i8** %70, align 8
  br label %1100

1096:                                             ; preds = %1089
  %1097 = load i8*, i8** %16, align 8
  %1098 = load i64, i64* %69, align 8
  %1099 = call i8* @rpl_realloc(i8* noundef %1097, i64 noundef %1098)
  store i8* %1099, i8** %70, align 8
  br label %1100

1100:                                             ; preds = %1096, %1093
  %1101 = load i8*, i8** %70, align 8
  %1102 = icmp eq i8* %1101, null
  br i1 %1102, label %1103, label %1104

1103:                                             ; preds = %1100
  br label %3443

1104:                                             ; preds = %1100
  %1105 = load i8*, i8** %16, align 8
  %1106 = load i8*, i8** %6, align 8
  %1107 = icmp eq i8* %1105, %1106
  br i1 %1107, label %1108, label %1115

1108:                                             ; preds = %1104
  %1109 = load i64, i64* %18, align 8
  %1110 = icmp ugt i64 %1109, 0
  br i1 %1110, label %1111, label %1115

1111:                                             ; preds = %1108
  %1112 = load i8*, i8** %70, align 8
  %1113 = load i8*, i8** %16, align 8
  %1114 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1112, i8* align 1 %1113, i64 %1114, i1 false)
  br label %1115

1115:                                             ; preds = %1111, %1108, %1104
  %1116 = load i8*, i8** %70, align 8
  store i8* %1116, i8** %16, align 8
  br label %1117

1117:                                             ; preds = %1115, %1047
  %1118 = load i64, i64* %57, align 8
  store i64 %1118, i64* %71, align 8
  br label %1119

1119:                                             ; preds = %1136, %1117
  %1120 = load i64, i64* %71, align 8
  %1121 = icmp ugt i64 %1120, 0
  br i1 %1121, label %1122, label %1153

1122:                                             ; preds = %1119
  %1123 = load i32*, i32** %55, align 8
  %1124 = load i32, i32* %1123, align 4
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1122
  call void @abort() #19
  unreachable

1127:                                             ; preds = %1122
  %1128 = getelementptr inbounds [64 x i8], [64 x i8]* %72, i64 0, i64 0
  %1129 = load i32*, i32** %55, align 8
  %1130 = load i32, i32* %1129, align 4
  %1131 = call i64 @wcrtomb(i8* noundef %1128, i32 noundef %1130, %struct.__mbstate_t* noundef %68) #18
  %1132 = trunc i64 %1131 to i32
  store i32 %1132, i32* %73, align 4
  %1133 = load i32, i32* %73, align 4
  %1134 = icmp sle i32 %1133, 0
  br i1 %1134, label %1135, label %1136

1135:                                             ; preds = %1127
  call void @abort() #19
  unreachable

1136:                                             ; preds = %1127
  %1137 = load i8*, i8** %16, align 8
  %1138 = load i64, i64* %18, align 8
  %1139 = getelementptr inbounds i8, i8* %1137, i64 %1138
  %1140 = getelementptr inbounds [64 x i8], [64 x i8]* %72, i64 0, i64 0
  %1141 = load i32, i32* %73, align 4
  %1142 = sext i32 %1141 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1139, i8* align 1 %1140, i64 %1142, i1 false)
  %1143 = load i32, i32* %73, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = load i64, i64* %18, align 8
  %1146 = add i64 %1145, %1144
  store i64 %1146, i64* %18, align 8
  %1147 = load i32*, i32** %55, align 8
  %1148 = getelementptr inbounds i32, i32* %1147, i32 1
  store i32* %1148, i32** %55, align 8
  %1149 = load i32, i32* %73, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = load i64, i64* %71, align 8
  %1152 = sub i64 %1151, %1150
  store i64 %1152, i64* %71, align 8
  br label %1119, !llvm.loop !40

1153:                                             ; preds = %1119
  %1154 = load i32*, i32** %55, align 8
  %1155 = load i32*, i32** %56, align 8
  %1156 = icmp eq i32* %1154, %1155
  br i1 %1156, label %1158, label %1157

1157:                                             ; preds = %1153
  call void @abort() #19
  unreachable

1158:                                             ; preds = %1153
  br label %1265

1159:                                             ; preds = %1044
  call void @mbszero(%struct.__mbstate_t* noundef %74)
  br label %1160

1160:                                             ; preds = %1251, %1159
  %1161 = load i32*, i32** %55, align 8
  %1162 = load i32*, i32** %56, align 8
  %1163 = icmp ult i32* %1161, %1162
  br i1 %1163, label %1164, label %1264

1164:                                             ; preds = %1160
  %1165 = load i32*, i32** %55, align 8
  %1166 = load i32, i32* %1165, align 4
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1168, label %1169

1168:                                             ; preds = %1164
  call void @abort() #19
  unreachable

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds [64 x i8], [64 x i8]* %75, i64 0, i64 0
  %1171 = load i32*, i32** %55, align 8
  %1172 = load i32, i32* %1171, align 4
  %1173 = call i64 @wcrtomb(i8* noundef %1170, i32 noundef %1172, %struct.__mbstate_t* noundef %74) #18
  %1174 = trunc i64 %1173 to i32
  store i32 %1174, i32* %76, align 4
  %1175 = load i32, i32* %76, align 4
  %1176 = icmp sle i32 %1175, 0
  br i1 %1176, label %1177, label %1178

1177:                                             ; preds = %1169
  br label %3445

1178:                                             ; preds = %1169
  %1179 = load i64, i64* %18, align 8
  %1180 = load i32, i32* %76, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = call i64 @xsum(i64 noundef %1179, i64 noundef %1181) #20
  %1183 = load i64, i64* %17, align 8
  %1184 = icmp ugt i64 %1182, %1183
  br i1 %1184, label %1185, label %1251

1185:                                             ; preds = %1178
  %1186 = load i64, i64* %17, align 8
  %1187 = icmp ugt i64 %1186, 0
  br i1 %1187, label %1188, label %1197

1188:                                             ; preds = %1185
  %1189 = load i64, i64* %17, align 8
  %1190 = icmp ule i64 %1189, 9223372036854775807
  br i1 %1190, label %1191, label %1194

1191:                                             ; preds = %1188
  %1192 = load i64, i64* %17, align 8
  %1193 = mul i64 %1192, 2
  br label %1195

1194:                                             ; preds = %1188
  br label %1195

1195:                                             ; preds = %1194, %1191
  %1196 = phi i64 [ %1193, %1191 ], [ -1, %1194 ]
  br label %1198

1197:                                             ; preds = %1185
  br label %1198

1198:                                             ; preds = %1197, %1195
  %1199 = phi i64 [ %1196, %1195 ], [ 12, %1197 ]
  store i64 %1199, i64* %17, align 8
  %1200 = load i64, i64* %18, align 8
  %1201 = load i32, i32* %76, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = call i64 @xsum(i64 noundef %1200, i64 noundef %1202) #20
  %1204 = load i64, i64* %17, align 8
  %1205 = icmp ugt i64 %1203, %1204
  br i1 %1205, label %1206, label %1211

1206:                                             ; preds = %1198
  %1207 = load i64, i64* %18, align 8
  %1208 = load i32, i32* %76, align 4
  %1209 = sext i32 %1208 to i64
  %1210 = call i64 @xsum(i64 noundef %1207, i64 noundef %1209) #20
  store i64 %1210, i64* %17, align 8
  br label %1211

1211:                                             ; preds = %1206, %1198
  %1212 = load i64, i64* %17, align 8
  %1213 = icmp ule i64 %1212, -1
  br i1 %1213, label %1214, label %1217

1214:                                             ; preds = %1211
  %1215 = load i64, i64* %17, align 8
  %1216 = mul i64 %1215, 1
  br label %1218

1217:                                             ; preds = %1211
  br label %1218

1218:                                             ; preds = %1217, %1214
  %1219 = phi i64 [ %1216, %1214 ], [ -1, %1217 ]
  store i64 %1219, i64* %77, align 8
  %1220 = load i64, i64* %77, align 8
  %1221 = icmp eq i64 %1220, -1
  br i1 %1221, label %1222, label %1223

1222:                                             ; preds = %1218
  br label %3443

1223:                                             ; preds = %1218
  %1224 = load i8*, i8** %16, align 8
  %1225 = load i8*, i8** %6, align 8
  %1226 = icmp eq i8* %1224, %1225
  br i1 %1226, label %1227, label %1230

1227:                                             ; preds = %1223
  %1228 = load i64, i64* %77, align 8
  %1229 = call noalias i8* @malloc(i64 noundef %1228) #18
  store i8* %1229, i8** %78, align 8
  br label %1234

1230:                                             ; preds = %1223
  %1231 = load i8*, i8** %16, align 8
  %1232 = load i64, i64* %77, align 8
  %1233 = call i8* @rpl_realloc(i8* noundef %1231, i64 noundef %1232)
  store i8* %1233, i8** %78, align 8
  br label %1234

1234:                                             ; preds = %1230, %1227
  %1235 = load i8*, i8** %78, align 8
  %1236 = icmp eq i8* %1235, null
  br i1 %1236, label %1237, label %1238

1237:                                             ; preds = %1234
  br label %3443

1238:                                             ; preds = %1234
  %1239 = load i8*, i8** %16, align 8
  %1240 = load i8*, i8** %6, align 8
  %1241 = icmp eq i8* %1239, %1240
  br i1 %1241, label %1242, label %1249

1242:                                             ; preds = %1238
  %1243 = load i64, i64* %18, align 8
  %1244 = icmp ugt i64 %1243, 0
  br i1 %1244, label %1245, label %1249

1245:                                             ; preds = %1242
  %1246 = load i8*, i8** %78, align 8
  %1247 = load i8*, i8** %16, align 8
  %1248 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1246, i8* align 1 %1247, i64 %1248, i1 false)
  br label %1249

1249:                                             ; preds = %1245, %1242, %1238
  %1250 = load i8*, i8** %78, align 8
  store i8* %1250, i8** %16, align 8
  br label %1251

1251:                                             ; preds = %1249, %1178
  %1252 = load i8*, i8** %16, align 8
  %1253 = load i64, i64* %18, align 8
  %1254 = getelementptr inbounds i8, i8* %1252, i64 %1253
  %1255 = getelementptr inbounds [64 x i8], [64 x i8]* %75, i64 0, i64 0
  %1256 = load i32, i32* %76, align 4
  %1257 = sext i32 %1256 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1254, i8* align 1 %1255, i64 %1257, i1 false)
  %1258 = load i32, i32* %76, align 4
  %1259 = sext i32 %1258 to i64
  %1260 = load i64, i64* %18, align 8
  %1261 = add i64 %1260, %1259
  store i64 %1261, i64* %18, align 8
  %1262 = load i32*, i32** %55, align 8
  %1263 = getelementptr inbounds i32, i32* %1262, i32 1
  store i32* %1263, i32** %55, align 8
  br label %1160, !llvm.loop !41

1264:                                             ; preds = %1160
  br label %1265

1265:                                             ; preds = %1264, %1158
  %1266 = load i64, i64* %58, align 8
  %1267 = load i64, i64* %48, align 8
  %1268 = icmp ult i64 %1266, %1267
  br i1 %1268, label %1269, label %1354

1269:                                             ; preds = %1265
  %1270 = load i32, i32* %46, align 4
  %1271 = and i32 %1270, 2
  %1272 = icmp ne i32 %1271, 0
  br i1 %1272, label %1273, label %1354

1273:                                             ; preds = %1269
  %1274 = load i64, i64* %48, align 8
  %1275 = load i64, i64* %58, align 8
  %1276 = sub i64 %1274, %1275
  store i64 %1276, i64* %79, align 8
  %1277 = load i64, i64* %18, align 8
  %1278 = load i64, i64* %79, align 8
  %1279 = call i64 @xsum(i64 noundef %1277, i64 noundef %1278) #20
  %1280 = load i64, i64* %17, align 8
  %1281 = icmp ugt i64 %1279, %1280
  br i1 %1281, label %1282, label %1346

1282:                                             ; preds = %1273
  %1283 = load i64, i64* %17, align 8
  %1284 = icmp ugt i64 %1283, 0
  br i1 %1284, label %1285, label %1294

1285:                                             ; preds = %1282
  %1286 = load i64, i64* %17, align 8
  %1287 = icmp ule i64 %1286, 9223372036854775807
  br i1 %1287, label %1288, label %1291

1288:                                             ; preds = %1285
  %1289 = load i64, i64* %17, align 8
  %1290 = mul i64 %1289, 2
  br label %1292

1291:                                             ; preds = %1285
  br label %1292

1292:                                             ; preds = %1291, %1288
  %1293 = phi i64 [ %1290, %1288 ], [ -1, %1291 ]
  br label %1295

1294:                                             ; preds = %1282
  br label %1295

1295:                                             ; preds = %1294, %1292
  %1296 = phi i64 [ %1293, %1292 ], [ 12, %1294 ]
  store i64 %1296, i64* %17, align 8
  %1297 = load i64, i64* %18, align 8
  %1298 = load i64, i64* %79, align 8
  %1299 = call i64 @xsum(i64 noundef %1297, i64 noundef %1298) #20
  %1300 = load i64, i64* %17, align 8
  %1301 = icmp ugt i64 %1299, %1300
  br i1 %1301, label %1302, label %1306

1302:                                             ; preds = %1295
  %1303 = load i64, i64* %18, align 8
  %1304 = load i64, i64* %79, align 8
  %1305 = call i64 @xsum(i64 noundef %1303, i64 noundef %1304) #20
  store i64 %1305, i64* %17, align 8
  br label %1306

1306:                                             ; preds = %1302, %1295
  %1307 = load i64, i64* %17, align 8
  %1308 = icmp ule i64 %1307, -1
  br i1 %1308, label %1309, label %1312

1309:                                             ; preds = %1306
  %1310 = load i64, i64* %17, align 8
  %1311 = mul i64 %1310, 1
  br label %1313

1312:                                             ; preds = %1306
  br label %1313

1313:                                             ; preds = %1312, %1309
  %1314 = phi i64 [ %1311, %1309 ], [ -1, %1312 ]
  store i64 %1314, i64* %80, align 8
  %1315 = load i64, i64* %80, align 8
  %1316 = icmp eq i64 %1315, -1
  br i1 %1316, label %1317, label %1318

1317:                                             ; preds = %1313
  br label %3443

1318:                                             ; preds = %1313
  %1319 = load i8*, i8** %16, align 8
  %1320 = load i8*, i8** %6, align 8
  %1321 = icmp eq i8* %1319, %1320
  br i1 %1321, label %1322, label %1325

1322:                                             ; preds = %1318
  %1323 = load i64, i64* %80, align 8
  %1324 = call noalias i8* @malloc(i64 noundef %1323) #18
  store i8* %1324, i8** %81, align 8
  br label %1329

1325:                                             ; preds = %1318
  %1326 = load i8*, i8** %16, align 8
  %1327 = load i64, i64* %80, align 8
  %1328 = call i8* @rpl_realloc(i8* noundef %1326, i64 noundef %1327)
  store i8* %1328, i8** %81, align 8
  br label %1329

1329:                                             ; preds = %1325, %1322
  %1330 = load i8*, i8** %81, align 8
  %1331 = icmp eq i8* %1330, null
  br i1 %1331, label %1332, label %1333

1332:                                             ; preds = %1329
  br label %3443

1333:                                             ; preds = %1329
  %1334 = load i8*, i8** %16, align 8
  %1335 = load i8*, i8** %6, align 8
  %1336 = icmp eq i8* %1334, %1335
  br i1 %1336, label %1337, label %1344

1337:                                             ; preds = %1333
  %1338 = load i64, i64* %18, align 8
  %1339 = icmp ugt i64 %1338, 0
  br i1 %1339, label %1340, label %1344

1340:                                             ; preds = %1337
  %1341 = load i8*, i8** %81, align 8
  %1342 = load i8*, i8** %16, align 8
  %1343 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1341, i8* align 1 %1342, i64 %1343, i1 false)
  br label %1344

1344:                                             ; preds = %1340, %1337, %1333
  %1345 = load i8*, i8** %81, align 8
  store i8* %1345, i8** %16, align 8
  br label %1346

1346:                                             ; preds = %1344, %1273
  %1347 = load i8*, i8** %16, align 8
  %1348 = load i64, i64* %18, align 8
  %1349 = getelementptr inbounds i8, i8* %1347, i64 %1348
  %1350 = load i64, i64* %79, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1349, i8 32, i64 %1350, i1 false)
  %1351 = load i64, i64* %79, align 8
  %1352 = load i64, i64* %18, align 8
  %1353 = add i64 %1352, %1351
  store i64 %1353, i64* %18, align 8
  br label %1354

1354:                                             ; preds = %1346, %1269, %1265
  br label %3310

1355:                                             ; preds = %706, %700
  %1356 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1357 = load %struct.argument*, %struct.argument** %1356, align 8
  %1358 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1359 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1358, i32 0, i32 10
  %1360 = load i64, i64* %1359, align 8
  %1361 = getelementptr inbounds %struct.argument, %struct.argument* %1357, i64 %1360
  %1362 = getelementptr inbounds %struct.argument, %struct.argument* %1361, i32 0, i32 0
  %1363 = load i32, i32* %1362, align 16
  store i32 %1363, i32* %82, align 4
  %1364 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1365 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1364, i32 0, i32 2
  %1366 = load i32, i32* %1365, align 8
  store i32 %1366, i32* %83, align 4
  %1367 = load i8*, i8** %13, align 8
  store i8* %1367, i8** %84, align 8
  %1368 = load i8*, i8** %84, align 8
  %1369 = getelementptr inbounds i8, i8* %1368, i32 1
  store i8* %1369, i8** %84, align 8
  store i8 37, i8* %1368, align 1
  %1370 = load i32, i32* %83, align 4
  %1371 = and i32 %1370, 1
  %1372 = icmp ne i32 %1371, 0
  br i1 %1372, label %1373, label %1376

1373:                                             ; preds = %1355
  %1374 = load i8*, i8** %84, align 8
  %1375 = getelementptr inbounds i8, i8* %1374, i32 1
  store i8* %1375, i8** %84, align 8
  store i8 39, i8* %1374, align 1
  br label %1376

1376:                                             ; preds = %1373, %1355
  %1377 = load i32, i32* %83, align 4
  %1378 = and i32 %1377, 2
  %1379 = icmp ne i32 %1378, 0
  br i1 %1379, label %1380, label %1383

1380:                                             ; preds = %1376
  %1381 = load i8*, i8** %84, align 8
  %1382 = getelementptr inbounds i8, i8* %1381, i32 1
  store i8* %1382, i8** %84, align 8
  store i8 45, i8* %1381, align 1
  br label %1383

1383:                                             ; preds = %1380, %1376
  %1384 = load i32, i32* %83, align 4
  %1385 = and i32 %1384, 4
  %1386 = icmp ne i32 %1385, 0
  br i1 %1386, label %1387, label %1390

1387:                                             ; preds = %1383
  %1388 = load i8*, i8** %84, align 8
  %1389 = getelementptr inbounds i8, i8* %1388, i32 1
  store i8* %1389, i8** %84, align 8
  store i8 43, i8* %1388, align 1
  br label %1390

1390:                                             ; preds = %1387, %1383
  %1391 = load i32, i32* %83, align 4
  %1392 = and i32 %1391, 8
  %1393 = icmp ne i32 %1392, 0
  br i1 %1393, label %1394, label %1397

1394:                                             ; preds = %1390
  %1395 = load i8*, i8** %84, align 8
  %1396 = getelementptr inbounds i8, i8* %1395, i32 1
  store i8* %1396, i8** %84, align 8
  store i8 32, i8* %1395, align 1
  br label %1397

1397:                                             ; preds = %1394, %1390
  %1398 = load i32, i32* %83, align 4
  %1399 = and i32 %1398, 16
  %1400 = icmp ne i32 %1399, 0
  br i1 %1400, label %1401, label %1404

1401:                                             ; preds = %1397
  %1402 = load i8*, i8** %84, align 8
  %1403 = getelementptr inbounds i8, i8* %1402, i32 1
  store i8* %1403, i8** %84, align 8
  store i8 35, i8* %1402, align 1
  br label %1404

1404:                                             ; preds = %1401, %1397
  %1405 = load i32, i32* %83, align 4
  %1406 = and i32 %1405, 64
  %1407 = icmp ne i32 %1406, 0
  br i1 %1407, label %1408, label %1411

1408:                                             ; preds = %1404
  %1409 = load i8*, i8** %84, align 8
  %1410 = getelementptr inbounds i8, i8* %1409, i32 1
  store i8* %1410, i8** %84, align 8
  store i8 73, i8* %1409, align 1
  br label %1411

1411:                                             ; preds = %1408, %1404
  %1412 = load i32, i32* %83, align 4
  %1413 = and i32 %1412, 32
  %1414 = icmp ne i32 %1413, 0
  br i1 %1414, label %1415, label %1418

1415:                                             ; preds = %1411
  %1416 = load i8*, i8** %84, align 8
  %1417 = getelementptr inbounds i8, i8* %1416, i32 1
  store i8* %1417, i8** %84, align 8
  store i8 48, i8* %1416, align 1
  br label %1418

1418:                                             ; preds = %1415, %1411
  %1419 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1420 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1419, i32 0, i32 3
  %1421 = load i8*, i8** %1420, align 8
  %1422 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1423 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1422, i32 0, i32 4
  %1424 = load i8*, i8** %1423, align 8
  %1425 = icmp ne i8* %1421, %1424
  br i1 %1425, label %1426, label %1510

1426:                                             ; preds = %1418
  %1427 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1428 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1427, i32 0, i32 4
  %1429 = load i8*, i8** %1428, align 8
  %1430 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1431 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1430, i32 0, i32 3
  %1432 = load i8*, i8** %1431, align 8
  %1433 = ptrtoint i8* %1429 to i64
  %1434 = ptrtoint i8* %1432 to i64
  %1435 = sub i64 %1433, %1434
  store i64 %1435, i64* %88, align 8
  %1436 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1437 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1436, i32 0, i32 5
  %1438 = load i64, i64* %1437, align 8
  %1439 = icmp ne i64 %1438, -1
  br i1 %1439, label %1440, label %1469

1440:                                             ; preds = %1426
  %1441 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1442 = load %struct.argument*, %struct.argument** %1441, align 8
  %1443 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1444 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1443, i32 0, i32 5
  %1445 = load i64, i64* %1444, align 8
  %1446 = getelementptr inbounds %struct.argument, %struct.argument* %1442, i64 %1445
  %1447 = getelementptr inbounds %struct.argument, %struct.argument* %1446, i32 0, i32 0
  %1448 = load i32, i32* %1447, align 16
  %1449 = icmp eq i32 %1448, 5
  br i1 %1449, label %1451, label %1450

1450:                                             ; preds = %1440
  call void @abort() #19
  unreachable

1451:                                             ; preds = %1440
  %1452 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1453 = load %struct.argument*, %struct.argument** %1452, align 8
  %1454 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1455 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1454, i32 0, i32 5
  %1456 = load i64, i64* %1455, align 8
  %1457 = getelementptr inbounds %struct.argument, %struct.argument* %1453, i64 %1456
  %1458 = getelementptr inbounds %struct.argument, %struct.argument* %1457, i32 0, i32 1
  %1459 = bitcast %union.anon.39* %1458 to i32*
  %1460 = load i32, i32* %1459, align 16
  store i32 %1460, i32* %90, align 4
  %1461 = load i32, i32* %90, align 4
  %1462 = sext i32 %1461 to i64
  store i64 %1462, i64* %89, align 8
  %1463 = load i32, i32* %90, align 4
  %1464 = icmp slt i32 %1463, 0
  br i1 %1464, label %1465, label %1468

1465:                                             ; preds = %1451
  %1466 = load i64, i64* %89, align 8
  %1467 = sub i64 0, %1466
  store i64 %1467, i64* %89, align 8
  br label %1468

1468:                                             ; preds = %1465, %1451
  br label %1496

1469:                                             ; preds = %1426
  %1470 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1471 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1470, i32 0, i32 3
  %1472 = load i8*, i8** %1471, align 8
  store i8* %1472, i8** %91, align 8
  store i64 0, i64* %89, align 8
  br label %1473

1473:                                             ; preds = %1489, %1469
  %1474 = load i64, i64* %89, align 8
  %1475 = icmp ule i64 %1474, 1844674407370955161
  br i1 %1475, label %1476, label %1479

1476:                                             ; preds = %1473
  %1477 = load i64, i64* %89, align 8
  %1478 = mul i64 %1477, 10
  br label %1480

1479:                                             ; preds = %1473
  br label %1480

1480:                                             ; preds = %1479, %1476
  %1481 = phi i64 [ %1478, %1476 ], [ -1, %1479 ]
  %1482 = load i8*, i8** %91, align 8
  %1483 = getelementptr inbounds i8, i8* %1482, i32 1
  store i8* %1483, i8** %91, align 8
  %1484 = load i8, i8* %1482, align 1
  %1485 = zext i8 %1484 to i32
  %1486 = sub nsw i32 %1485, 48
  %1487 = sext i32 %1486 to i64
  %1488 = call i64 @xsum(i64 noundef %1481, i64 noundef %1487) #20
  store i64 %1488, i64* %89, align 8
  br label %1489

1489:                                             ; preds = %1480
  %1490 = load i8*, i8** %91, align 8
  %1491 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1492 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1491, i32 0, i32 4
  %1493 = load i8*, i8** %1492, align 8
  %1494 = icmp ne i8* %1490, %1493
  br i1 %1494, label %1473, label %1495, !llvm.loop !42

1495:                                             ; preds = %1489
  br label %1496

1496:                                             ; preds = %1495, %1468
  %1497 = load i64, i64* %89, align 8
  %1498 = icmp ugt i64 %1497, 2147483647
  br i1 %1498, label %1499, label %1500

1499:                                             ; preds = %1496
  br label %3441

1500:                                             ; preds = %1496
  %1501 = load i8*, i8** %84, align 8
  %1502 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1503 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1502, i32 0, i32 3
  %1504 = load i8*, i8** %1503, align 8
  %1505 = load i64, i64* %88, align 8
  %1506 = mul i64 %1505, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1501, i8* align 1 %1504, i64 %1506, i1 false)
  %1507 = load i64, i64* %88, align 8
  %1508 = load i8*, i8** %84, align 8
  %1509 = getelementptr inbounds i8, i8* %1508, i64 %1507
  store i8* %1509, i8** %84, align 8
  br label %1510

1510:                                             ; preds = %1500, %1418
  %1511 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1512 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1511, i32 0, i32 6
  %1513 = load i8*, i8** %1512, align 8
  %1514 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1515 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1514, i32 0, i32 7
  %1516 = load i8*, i8** %1515, align 8
  %1517 = icmp ne i8* %1513, %1516
  br i1 %1517, label %1518, label %1537

1518:                                             ; preds = %1510
  %1519 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1520 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1519, i32 0, i32 7
  %1521 = load i8*, i8** %1520, align 8
  %1522 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1523 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1522, i32 0, i32 6
  %1524 = load i8*, i8** %1523, align 8
  %1525 = ptrtoint i8* %1521 to i64
  %1526 = ptrtoint i8* %1524 to i64
  %1527 = sub i64 %1525, %1526
  store i64 %1527, i64* %92, align 8
  %1528 = load i8*, i8** %84, align 8
  %1529 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1530 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1529, i32 0, i32 6
  %1531 = load i8*, i8** %1530, align 8
  %1532 = load i64, i64* %92, align 8
  %1533 = mul i64 %1532, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1528, i8* align 1 %1531, i64 %1533, i1 false)
  %1534 = load i64, i64* %92, align 8
  %1535 = load i8*, i8** %84, align 8
  %1536 = getelementptr inbounds i8, i8* %1535, i64 %1534
  store i8* %1536, i8** %84, align 8
  br label %1537

1537:                                             ; preds = %1518, %1510
  %1538 = load i32, i32* %82, align 4
  switch i32 %1538, label %1548 [
    i32 9, label %1539
    i32 10, label %1539
    i32 7, label %1542
    i32 8, label %1542
    i32 17, label %1542
    i32 18, label %1542
    i32 21, label %1542
    i32 22, label %1542
    i32 23, label %1542
    i32 24, label %1542
    i32 25, label %1542
    i32 26, label %1542
    i32 30, label %1542
    i32 32, label %1542
    i32 28, label %1545
  ]

1539:                                             ; preds = %1537, %1537
  %1540 = load i8*, i8** %84, align 8
  %1541 = getelementptr inbounds i8, i8* %1540, i32 1
  store i8* %1541, i8** %84, align 8
  store i8 108, i8* %1540, align 1
  br label %1542

1542:                                             ; preds = %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1537, %1539
  %1543 = load i8*, i8** %84, align 8
  %1544 = getelementptr inbounds i8, i8* %1543, i32 1
  store i8* %1544, i8** %84, align 8
  store i8 108, i8* %1543, align 1
  br label %1549

1545:                                             ; preds = %1537
  %1546 = load i8*, i8** %84, align 8
  %1547 = getelementptr inbounds i8, i8* %1546, i32 1
  store i8* %1547, i8** %84, align 8
  store i8 76, i8* %1546, align 1
  br label %1549

1548:                                             ; preds = %1537
  br label %1549

1549:                                             ; preds = %1548, %1545, %1542
  %1550 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1551 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1550, i32 0, i32 9
  %1552 = load i8, i8* %1551, align 8
  %1553 = load i8*, i8** %84, align 8
  store i8 %1552, i8* %1553, align 1
  %1554 = load i8*, i8** %84, align 8
  %1555 = getelementptr inbounds i8, i8* %1554, i64 1
  store i8 0, i8* %1555, align 1
  store i32 0, i32* %85, align 4
  %1556 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1557 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1556, i32 0, i32 5
  %1558 = load i64, i64* %1557, align 8
  %1559 = icmp ne i64 %1558, -1
  br i1 %1559, label %1560, label %1585

1560:                                             ; preds = %1549
  %1561 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1562 = load %struct.argument*, %struct.argument** %1561, align 8
  %1563 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1564 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1563, i32 0, i32 5
  %1565 = load i64, i64* %1564, align 8
  %1566 = getelementptr inbounds %struct.argument, %struct.argument* %1562, i64 %1565
  %1567 = getelementptr inbounds %struct.argument, %struct.argument* %1566, i32 0, i32 0
  %1568 = load i32, i32* %1567, align 16
  %1569 = icmp eq i32 %1568, 5
  br i1 %1569, label %1571, label %1570

1570:                                             ; preds = %1560
  call void @abort() #19
  unreachable

1571:                                             ; preds = %1560
  %1572 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1573 = load %struct.argument*, %struct.argument** %1572, align 8
  %1574 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1575 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1574, i32 0, i32 5
  %1576 = load i64, i64* %1575, align 8
  %1577 = getelementptr inbounds %struct.argument, %struct.argument* %1573, i64 %1576
  %1578 = getelementptr inbounds %struct.argument, %struct.argument* %1577, i32 0, i32 1
  %1579 = bitcast %union.anon.39* %1578 to i32*
  %1580 = load i32, i32* %1579, align 16
  %1581 = load i32, i32* %85, align 4
  %1582 = add i32 %1581, 1
  store i32 %1582, i32* %85, align 4
  %1583 = zext i32 %1581 to i64
  %1584 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 %1583
  store i32 %1580, i32* %1584, align 4
  br label %1585

1585:                                             ; preds = %1571, %1549
  %1586 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1587 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1586, i32 0, i32 8
  %1588 = load i64, i64* %1587, align 8
  %1589 = icmp ne i64 %1588, -1
  br i1 %1589, label %1590, label %1615

1590:                                             ; preds = %1585
  %1591 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1592 = load %struct.argument*, %struct.argument** %1591, align 8
  %1593 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1594 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1593, i32 0, i32 8
  %1595 = load i64, i64* %1594, align 8
  %1596 = getelementptr inbounds %struct.argument, %struct.argument* %1592, i64 %1595
  %1597 = getelementptr inbounds %struct.argument, %struct.argument* %1596, i32 0, i32 0
  %1598 = load i32, i32* %1597, align 16
  %1599 = icmp eq i32 %1598, 5
  br i1 %1599, label %1601, label %1600

1600:                                             ; preds = %1590
  call void @abort() #19
  unreachable

1601:                                             ; preds = %1590
  %1602 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1603 = load %struct.argument*, %struct.argument** %1602, align 8
  %1604 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1605 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1604, i32 0, i32 8
  %1606 = load i64, i64* %1605, align 8
  %1607 = getelementptr inbounds %struct.argument, %struct.argument* %1603, i64 %1606
  %1608 = getelementptr inbounds %struct.argument, %struct.argument* %1607, i32 0, i32 1
  %1609 = bitcast %union.anon.39* %1608 to i32*
  %1610 = load i32, i32* %1609, align 16
  %1611 = load i32, i32* %85, align 4
  %1612 = add i32 %1611, 1
  store i32 %1612, i32* %85, align 4
  %1613 = zext i32 %1611 to i64
  %1614 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 %1613
  store i32 %1610, i32* %1614, align 4
  br label %1615

1615:                                             ; preds = %1601, %1585
  %1616 = load i64, i64* %18, align 8
  %1617 = call i64 @xsum(i64 noundef %1616, i64 noundef 2) #20
  %1618 = load i64, i64* %17, align 8
  %1619 = icmp ugt i64 %1617, %1618
  br i1 %1619, label %1620, label %1682

1620:                                             ; preds = %1615
  %1621 = load i64, i64* %17, align 8
  %1622 = icmp ugt i64 %1621, 0
  br i1 %1622, label %1623, label %1632

1623:                                             ; preds = %1620
  %1624 = load i64, i64* %17, align 8
  %1625 = icmp ule i64 %1624, 9223372036854775807
  br i1 %1625, label %1626, label %1629

1626:                                             ; preds = %1623
  %1627 = load i64, i64* %17, align 8
  %1628 = mul i64 %1627, 2
  br label %1630

1629:                                             ; preds = %1623
  br label %1630

1630:                                             ; preds = %1629, %1626
  %1631 = phi i64 [ %1628, %1626 ], [ -1, %1629 ]
  br label %1633

1632:                                             ; preds = %1620
  br label %1633

1633:                                             ; preds = %1632, %1630
  %1634 = phi i64 [ %1631, %1630 ], [ 12, %1632 ]
  store i64 %1634, i64* %17, align 8
  %1635 = load i64, i64* %18, align 8
  %1636 = call i64 @xsum(i64 noundef %1635, i64 noundef 2) #20
  %1637 = load i64, i64* %17, align 8
  %1638 = icmp ugt i64 %1636, %1637
  br i1 %1638, label %1639, label %1642

1639:                                             ; preds = %1633
  %1640 = load i64, i64* %18, align 8
  %1641 = call i64 @xsum(i64 noundef %1640, i64 noundef 2) #20
  store i64 %1641, i64* %17, align 8
  br label %1642

1642:                                             ; preds = %1639, %1633
  %1643 = load i64, i64* %17, align 8
  %1644 = icmp ule i64 %1643, -1
  br i1 %1644, label %1645, label %1648

1645:                                             ; preds = %1642
  %1646 = load i64, i64* %17, align 8
  %1647 = mul i64 %1646, 1
  br label %1649

1648:                                             ; preds = %1642
  br label %1649

1649:                                             ; preds = %1648, %1645
  %1650 = phi i64 [ %1647, %1645 ], [ -1, %1648 ]
  store i64 %1650, i64* %93, align 8
  %1651 = load i64, i64* %93, align 8
  %1652 = icmp eq i64 %1651, -1
  br i1 %1652, label %1653, label %1654

1653:                                             ; preds = %1649
  br label %3443

1654:                                             ; preds = %1649
  %1655 = load i8*, i8** %16, align 8
  %1656 = load i8*, i8** %6, align 8
  %1657 = icmp eq i8* %1655, %1656
  br i1 %1657, label %1658, label %1661

1658:                                             ; preds = %1654
  %1659 = load i64, i64* %93, align 8
  %1660 = call noalias i8* @malloc(i64 noundef %1659) #18
  store i8* %1660, i8** %94, align 8
  br label %1665

1661:                                             ; preds = %1654
  %1662 = load i8*, i8** %16, align 8
  %1663 = load i64, i64* %93, align 8
  %1664 = call i8* @rpl_realloc(i8* noundef %1662, i64 noundef %1663)
  store i8* %1664, i8** %94, align 8
  br label %1665

1665:                                             ; preds = %1661, %1658
  %1666 = load i8*, i8** %94, align 8
  %1667 = icmp eq i8* %1666, null
  br i1 %1667, label %1668, label %1669

1668:                                             ; preds = %1665
  br label %3443

1669:                                             ; preds = %1665
  %1670 = load i8*, i8** %16, align 8
  %1671 = load i8*, i8** %6, align 8
  %1672 = icmp eq i8* %1670, %1671
  br i1 %1672, label %1673, label %1680

1673:                                             ; preds = %1669
  %1674 = load i64, i64* %18, align 8
  %1675 = icmp ugt i64 %1674, 0
  br i1 %1675, label %1676, label %1680

1676:                                             ; preds = %1673
  %1677 = load i8*, i8** %94, align 8
  %1678 = load i8*, i8** %16, align 8
  %1679 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1677, i8* align 1 %1678, i64 %1679, i1 false)
  br label %1680

1680:                                             ; preds = %1676, %1673, %1669
  %1681 = load i8*, i8** %94, align 8
  store i8* %1681, i8** %16, align 8
  br label %1682

1682:                                             ; preds = %1680, %1615
  %1683 = load i8*, i8** %16, align 8
  %1684 = load i64, i64* %18, align 8
  %1685 = getelementptr inbounds i8, i8* %1683, i64 %1684
  store i8 0, i8* %1685, align 1
  %1686 = call i32* @__errno_location() #21
  %1687 = load i32, i32* %1686, align 4
  store i32 %1687, i32* %87, align 4
  br label %1688

1688:                                             ; preds = %3301, %3174, %1682
  store i32 -1, i32* %95, align 4
  store i32 0, i32* %96, align 4
  %1689 = load i64, i64* %17, align 8
  %1690 = load i64, i64* %18, align 8
  %1691 = sub i64 %1689, %1690
  store i64 %1691, i64* %97, align 8
  %1692 = load i64, i64* %97, align 8
  %1693 = icmp ugt i64 %1692, 2147483647
  br i1 %1693, label %1694, label %1695

1694:                                             ; preds = %1688
  store i64 2147483647, i64* %97, align 8
  br label %1695

1695:                                             ; preds = %1694, %1688
  %1696 = load i64, i64* %97, align 8
  %1697 = mul i64 %1696, 1
  store i64 %1697, i64* %97, align 8
  %1698 = call i32* @__errno_location() #21
  store i32 0, i32* %1698, align 4
  %1699 = load i32, i32* %82, align 4
  switch i32 %1699, label %3141 [
    i32 1, label %1700
    i32 2, label %1744
    i32 3, label %1788
    i32 4, label %1832
    i32 5, label %1876
    i32 6, label %1919
    i32 7, label %1962
    i32 8, label %2005
    i32 9, label %2048
    i32 10, label %2091
    i32 11, label %2134
    i32 12, label %2180
    i32 13, label %2226
    i32 14, label %2272
    i32 15, label %2318
    i32 16, label %2361
    i32 17, label %2404
    i32 18, label %2447
    i32 19, label %2490
    i32 20, label %2536
    i32 21, label %2582
    i32 22, label %2625
    i32 23, label %2668
    i32 24, label %2711
    i32 25, label %2754
    i32 26, label %2797
    i32 27, label %2840
    i32 28, label %2883
    i32 29, label %2926
    i32 30, label %2969
    i32 31, label %3012
    i32 32, label %3055
    i32 33, label %3098
  ]

1700:                                             ; preds = %1695
  %1701 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1702 = load %struct.argument*, %struct.argument** %1701, align 8
  %1703 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1704 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1703, i32 0, i32 10
  %1705 = load i64, i64* %1704, align 8
  %1706 = getelementptr inbounds %struct.argument, %struct.argument* %1702, i64 %1705
  %1707 = getelementptr inbounds %struct.argument, %struct.argument* %1706, i32 0, i32 1
  %1708 = bitcast %union.anon.39* %1707 to i8*
  %1709 = load i8, i8* %1708, align 16
  %1710 = sext i8 %1709 to i32
  store i32 %1710, i32* %98, align 4
  %1711 = load i32, i32* %85, align 4
  switch i32 %1711, label %1742 [
    i32 0, label %1712
    i32 1, label %1720
    i32 2, label %1730
  ]

1712:                                             ; preds = %1700
  %1713 = load i8*, i8** %16, align 8
  %1714 = load i64, i64* %18, align 8
  %1715 = getelementptr inbounds i8, i8* %1713, i64 %1714
  %1716 = load i64, i64* %97, align 8
  %1717 = load i8*, i8** %13, align 8
  %1718 = load i32, i32* %98, align 4
  %1719 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1715, i64 noundef %1716, i8* noundef %1717, i32 noundef %1718, i32* noundef %95) #18
  store i32 %1719, i32* %96, align 4
  br label %1743

1720:                                             ; preds = %1700
  %1721 = load i8*, i8** %16, align 8
  %1722 = load i64, i64* %18, align 8
  %1723 = getelementptr inbounds i8, i8* %1721, i64 %1722
  %1724 = load i64, i64* %97, align 8
  %1725 = load i8*, i8** %13, align 8
  %1726 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1727 = load i32, i32* %1726, align 4
  %1728 = load i32, i32* %98, align 4
  %1729 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1723, i64 noundef %1724, i8* noundef %1725, i32 noundef %1727, i32 noundef %1728, i32* noundef %95) #18
  store i32 %1729, i32* %96, align 4
  br label %1743

1730:                                             ; preds = %1700
  %1731 = load i8*, i8** %16, align 8
  %1732 = load i64, i64* %18, align 8
  %1733 = getelementptr inbounds i8, i8* %1731, i64 %1732
  %1734 = load i64, i64* %97, align 8
  %1735 = load i8*, i8** %13, align 8
  %1736 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1737 = load i32, i32* %1736, align 4
  %1738 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1739 = load i32, i32* %1738, align 4
  %1740 = load i32, i32* %98, align 4
  %1741 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1733, i64 noundef %1734, i8* noundef %1735, i32 noundef %1737, i32 noundef %1739, i32 noundef %1740, i32* noundef %95) #18
  store i32 %1741, i32* %96, align 4
  br label %1743

1742:                                             ; preds = %1700
  call void @abort() #19
  unreachable

1743:                                             ; preds = %1730, %1720, %1712
  br label %3142

1744:                                             ; preds = %1695
  %1745 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1746 = load %struct.argument*, %struct.argument** %1745, align 8
  %1747 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1748 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1747, i32 0, i32 10
  %1749 = load i64, i64* %1748, align 8
  %1750 = getelementptr inbounds %struct.argument, %struct.argument* %1746, i64 %1749
  %1751 = getelementptr inbounds %struct.argument, %struct.argument* %1750, i32 0, i32 1
  %1752 = bitcast %union.anon.39* %1751 to i8*
  %1753 = load i8, i8* %1752, align 16
  %1754 = zext i8 %1753 to i32
  store i32 %1754, i32* %99, align 4
  %1755 = load i32, i32* %85, align 4
  switch i32 %1755, label %1786 [
    i32 0, label %1756
    i32 1, label %1764
    i32 2, label %1774
  ]

1756:                                             ; preds = %1744
  %1757 = load i8*, i8** %16, align 8
  %1758 = load i64, i64* %18, align 8
  %1759 = getelementptr inbounds i8, i8* %1757, i64 %1758
  %1760 = load i64, i64* %97, align 8
  %1761 = load i8*, i8** %13, align 8
  %1762 = load i32, i32* %99, align 4
  %1763 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1759, i64 noundef %1760, i8* noundef %1761, i32 noundef %1762, i32* noundef %95) #18
  store i32 %1763, i32* %96, align 4
  br label %1787

1764:                                             ; preds = %1744
  %1765 = load i8*, i8** %16, align 8
  %1766 = load i64, i64* %18, align 8
  %1767 = getelementptr inbounds i8, i8* %1765, i64 %1766
  %1768 = load i64, i64* %97, align 8
  %1769 = load i8*, i8** %13, align 8
  %1770 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1771 = load i32, i32* %1770, align 4
  %1772 = load i32, i32* %99, align 4
  %1773 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1767, i64 noundef %1768, i8* noundef %1769, i32 noundef %1771, i32 noundef %1772, i32* noundef %95) #18
  store i32 %1773, i32* %96, align 4
  br label %1787

1774:                                             ; preds = %1744
  %1775 = load i8*, i8** %16, align 8
  %1776 = load i64, i64* %18, align 8
  %1777 = getelementptr inbounds i8, i8* %1775, i64 %1776
  %1778 = load i64, i64* %97, align 8
  %1779 = load i8*, i8** %13, align 8
  %1780 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1781 = load i32, i32* %1780, align 4
  %1782 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1783 = load i32, i32* %1782, align 4
  %1784 = load i32, i32* %99, align 4
  %1785 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1777, i64 noundef %1778, i8* noundef %1779, i32 noundef %1781, i32 noundef %1783, i32 noundef %1784, i32* noundef %95) #18
  store i32 %1785, i32* %96, align 4
  br label %1787

1786:                                             ; preds = %1744
  call void @abort() #19
  unreachable

1787:                                             ; preds = %1774, %1764, %1756
  br label %3142

1788:                                             ; preds = %1695
  %1789 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1790 = load %struct.argument*, %struct.argument** %1789, align 8
  %1791 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1792 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1791, i32 0, i32 10
  %1793 = load i64, i64* %1792, align 8
  %1794 = getelementptr inbounds %struct.argument, %struct.argument* %1790, i64 %1793
  %1795 = getelementptr inbounds %struct.argument, %struct.argument* %1794, i32 0, i32 1
  %1796 = bitcast %union.anon.39* %1795 to i16*
  %1797 = load i16, i16* %1796, align 16
  %1798 = sext i16 %1797 to i32
  store i32 %1798, i32* %100, align 4
  %1799 = load i32, i32* %85, align 4
  switch i32 %1799, label %1830 [
    i32 0, label %1800
    i32 1, label %1808
    i32 2, label %1818
  ]

1800:                                             ; preds = %1788
  %1801 = load i8*, i8** %16, align 8
  %1802 = load i64, i64* %18, align 8
  %1803 = getelementptr inbounds i8, i8* %1801, i64 %1802
  %1804 = load i64, i64* %97, align 8
  %1805 = load i8*, i8** %13, align 8
  %1806 = load i32, i32* %100, align 4
  %1807 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1803, i64 noundef %1804, i8* noundef %1805, i32 noundef %1806, i32* noundef %95) #18
  store i32 %1807, i32* %96, align 4
  br label %1831

1808:                                             ; preds = %1788
  %1809 = load i8*, i8** %16, align 8
  %1810 = load i64, i64* %18, align 8
  %1811 = getelementptr inbounds i8, i8* %1809, i64 %1810
  %1812 = load i64, i64* %97, align 8
  %1813 = load i8*, i8** %13, align 8
  %1814 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1815 = load i32, i32* %1814, align 4
  %1816 = load i32, i32* %100, align 4
  %1817 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1811, i64 noundef %1812, i8* noundef %1813, i32 noundef %1815, i32 noundef %1816, i32* noundef %95) #18
  store i32 %1817, i32* %96, align 4
  br label %1831

1818:                                             ; preds = %1788
  %1819 = load i8*, i8** %16, align 8
  %1820 = load i64, i64* %18, align 8
  %1821 = getelementptr inbounds i8, i8* %1819, i64 %1820
  %1822 = load i64, i64* %97, align 8
  %1823 = load i8*, i8** %13, align 8
  %1824 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1825 = load i32, i32* %1824, align 4
  %1826 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1827 = load i32, i32* %1826, align 4
  %1828 = load i32, i32* %100, align 4
  %1829 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1821, i64 noundef %1822, i8* noundef %1823, i32 noundef %1825, i32 noundef %1827, i32 noundef %1828, i32* noundef %95) #18
  store i32 %1829, i32* %96, align 4
  br label %1831

1830:                                             ; preds = %1788
  call void @abort() #19
  unreachable

1831:                                             ; preds = %1818, %1808, %1800
  br label %3142

1832:                                             ; preds = %1695
  %1833 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1834 = load %struct.argument*, %struct.argument** %1833, align 8
  %1835 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1836 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1835, i32 0, i32 10
  %1837 = load i64, i64* %1836, align 8
  %1838 = getelementptr inbounds %struct.argument, %struct.argument* %1834, i64 %1837
  %1839 = getelementptr inbounds %struct.argument, %struct.argument* %1838, i32 0, i32 1
  %1840 = bitcast %union.anon.39* %1839 to i16*
  %1841 = load i16, i16* %1840, align 16
  %1842 = zext i16 %1841 to i32
  store i32 %1842, i32* %101, align 4
  %1843 = load i32, i32* %85, align 4
  switch i32 %1843, label %1874 [
    i32 0, label %1844
    i32 1, label %1852
    i32 2, label %1862
  ]

1844:                                             ; preds = %1832
  %1845 = load i8*, i8** %16, align 8
  %1846 = load i64, i64* %18, align 8
  %1847 = getelementptr inbounds i8, i8* %1845, i64 %1846
  %1848 = load i64, i64* %97, align 8
  %1849 = load i8*, i8** %13, align 8
  %1850 = load i32, i32* %101, align 4
  %1851 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1847, i64 noundef %1848, i8* noundef %1849, i32 noundef %1850, i32* noundef %95) #18
  store i32 %1851, i32* %96, align 4
  br label %1875

1852:                                             ; preds = %1832
  %1853 = load i8*, i8** %16, align 8
  %1854 = load i64, i64* %18, align 8
  %1855 = getelementptr inbounds i8, i8* %1853, i64 %1854
  %1856 = load i64, i64* %97, align 8
  %1857 = load i8*, i8** %13, align 8
  %1858 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1859 = load i32, i32* %1858, align 4
  %1860 = load i32, i32* %101, align 4
  %1861 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1855, i64 noundef %1856, i8* noundef %1857, i32 noundef %1859, i32 noundef %1860, i32* noundef %95) #18
  store i32 %1861, i32* %96, align 4
  br label %1875

1862:                                             ; preds = %1832
  %1863 = load i8*, i8** %16, align 8
  %1864 = load i64, i64* %18, align 8
  %1865 = getelementptr inbounds i8, i8* %1863, i64 %1864
  %1866 = load i64, i64* %97, align 8
  %1867 = load i8*, i8** %13, align 8
  %1868 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1869 = load i32, i32* %1868, align 4
  %1870 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1871 = load i32, i32* %1870, align 4
  %1872 = load i32, i32* %101, align 4
  %1873 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1865, i64 noundef %1866, i8* noundef %1867, i32 noundef %1869, i32 noundef %1871, i32 noundef %1872, i32* noundef %95) #18
  store i32 %1873, i32* %96, align 4
  br label %1875

1874:                                             ; preds = %1832
  call void @abort() #19
  unreachable

1875:                                             ; preds = %1862, %1852, %1844
  br label %3142

1876:                                             ; preds = %1695
  %1877 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1878 = load %struct.argument*, %struct.argument** %1877, align 8
  %1879 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1880 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1879, i32 0, i32 10
  %1881 = load i64, i64* %1880, align 8
  %1882 = getelementptr inbounds %struct.argument, %struct.argument* %1878, i64 %1881
  %1883 = getelementptr inbounds %struct.argument, %struct.argument* %1882, i32 0, i32 1
  %1884 = bitcast %union.anon.39* %1883 to i32*
  %1885 = load i32, i32* %1884, align 16
  store i32 %1885, i32* %102, align 4
  %1886 = load i32, i32* %85, align 4
  switch i32 %1886, label %1917 [
    i32 0, label %1887
    i32 1, label %1895
    i32 2, label %1905
  ]

1887:                                             ; preds = %1876
  %1888 = load i8*, i8** %16, align 8
  %1889 = load i64, i64* %18, align 8
  %1890 = getelementptr inbounds i8, i8* %1888, i64 %1889
  %1891 = load i64, i64* %97, align 8
  %1892 = load i8*, i8** %13, align 8
  %1893 = load i32, i32* %102, align 4
  %1894 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1890, i64 noundef %1891, i8* noundef %1892, i32 noundef %1893, i32* noundef %95) #18
  store i32 %1894, i32* %96, align 4
  br label %1918

1895:                                             ; preds = %1876
  %1896 = load i8*, i8** %16, align 8
  %1897 = load i64, i64* %18, align 8
  %1898 = getelementptr inbounds i8, i8* %1896, i64 %1897
  %1899 = load i64, i64* %97, align 8
  %1900 = load i8*, i8** %13, align 8
  %1901 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1902 = load i32, i32* %1901, align 4
  %1903 = load i32, i32* %102, align 4
  %1904 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1898, i64 noundef %1899, i8* noundef %1900, i32 noundef %1902, i32 noundef %1903, i32* noundef %95) #18
  store i32 %1904, i32* %96, align 4
  br label %1918

1905:                                             ; preds = %1876
  %1906 = load i8*, i8** %16, align 8
  %1907 = load i64, i64* %18, align 8
  %1908 = getelementptr inbounds i8, i8* %1906, i64 %1907
  %1909 = load i64, i64* %97, align 8
  %1910 = load i8*, i8** %13, align 8
  %1911 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1912 = load i32, i32* %1911, align 4
  %1913 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1914 = load i32, i32* %1913, align 4
  %1915 = load i32, i32* %102, align 4
  %1916 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1908, i64 noundef %1909, i8* noundef %1910, i32 noundef %1912, i32 noundef %1914, i32 noundef %1915, i32* noundef %95) #18
  store i32 %1916, i32* %96, align 4
  br label %1918

1917:                                             ; preds = %1876
  call void @abort() #19
  unreachable

1918:                                             ; preds = %1905, %1895, %1887
  br label %3142

1919:                                             ; preds = %1695
  %1920 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1921 = load %struct.argument*, %struct.argument** %1920, align 8
  %1922 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1923 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1922, i32 0, i32 10
  %1924 = load i64, i64* %1923, align 8
  %1925 = getelementptr inbounds %struct.argument, %struct.argument* %1921, i64 %1924
  %1926 = getelementptr inbounds %struct.argument, %struct.argument* %1925, i32 0, i32 1
  %1927 = bitcast %union.anon.39* %1926 to i32*
  %1928 = load i32, i32* %1927, align 16
  store i32 %1928, i32* %103, align 4
  %1929 = load i32, i32* %85, align 4
  switch i32 %1929, label %1960 [
    i32 0, label %1930
    i32 1, label %1938
    i32 2, label %1948
  ]

1930:                                             ; preds = %1919
  %1931 = load i8*, i8** %16, align 8
  %1932 = load i64, i64* %18, align 8
  %1933 = getelementptr inbounds i8, i8* %1931, i64 %1932
  %1934 = load i64, i64* %97, align 8
  %1935 = load i8*, i8** %13, align 8
  %1936 = load i32, i32* %103, align 4
  %1937 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1933, i64 noundef %1934, i8* noundef %1935, i32 noundef %1936, i32* noundef %95) #18
  store i32 %1937, i32* %96, align 4
  br label %1961

1938:                                             ; preds = %1919
  %1939 = load i8*, i8** %16, align 8
  %1940 = load i64, i64* %18, align 8
  %1941 = getelementptr inbounds i8, i8* %1939, i64 %1940
  %1942 = load i64, i64* %97, align 8
  %1943 = load i8*, i8** %13, align 8
  %1944 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1945 = load i32, i32* %1944, align 4
  %1946 = load i32, i32* %103, align 4
  %1947 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1941, i64 noundef %1942, i8* noundef %1943, i32 noundef %1945, i32 noundef %1946, i32* noundef %95) #18
  store i32 %1947, i32* %96, align 4
  br label %1961

1948:                                             ; preds = %1919
  %1949 = load i8*, i8** %16, align 8
  %1950 = load i64, i64* %18, align 8
  %1951 = getelementptr inbounds i8, i8* %1949, i64 %1950
  %1952 = load i64, i64* %97, align 8
  %1953 = load i8*, i8** %13, align 8
  %1954 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1955 = load i32, i32* %1954, align 4
  %1956 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %1957 = load i32, i32* %1956, align 4
  %1958 = load i32, i32* %103, align 4
  %1959 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1951, i64 noundef %1952, i8* noundef %1953, i32 noundef %1955, i32 noundef %1957, i32 noundef %1958, i32* noundef %95) #18
  store i32 %1959, i32* %96, align 4
  br label %1961

1960:                                             ; preds = %1919
  call void @abort() #19
  unreachable

1961:                                             ; preds = %1948, %1938, %1930
  br label %3142

1962:                                             ; preds = %1695
  %1963 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %1964 = load %struct.argument*, %struct.argument** %1963, align 8
  %1965 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %1966 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1965, i32 0, i32 10
  %1967 = load i64, i64* %1966, align 8
  %1968 = getelementptr inbounds %struct.argument, %struct.argument* %1964, i64 %1967
  %1969 = getelementptr inbounds %struct.argument, %struct.argument* %1968, i32 0, i32 1
  %1970 = bitcast %union.anon.39* %1969 to i64*
  %1971 = load i64, i64* %1970, align 16
  store i64 %1971, i64* %104, align 8
  %1972 = load i32, i32* %85, align 4
  switch i32 %1972, label %2003 [
    i32 0, label %1973
    i32 1, label %1981
    i32 2, label %1991
  ]

1973:                                             ; preds = %1962
  %1974 = load i8*, i8** %16, align 8
  %1975 = load i64, i64* %18, align 8
  %1976 = getelementptr inbounds i8, i8* %1974, i64 %1975
  %1977 = load i64, i64* %97, align 8
  %1978 = load i8*, i8** %13, align 8
  %1979 = load i64, i64* %104, align 8
  %1980 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1976, i64 noundef %1977, i8* noundef %1978, i64 noundef %1979, i32* noundef %95) #18
  store i32 %1980, i32* %96, align 4
  br label %2004

1981:                                             ; preds = %1962
  %1982 = load i8*, i8** %16, align 8
  %1983 = load i64, i64* %18, align 8
  %1984 = getelementptr inbounds i8, i8* %1982, i64 %1983
  %1985 = load i64, i64* %97, align 8
  %1986 = load i8*, i8** %13, align 8
  %1987 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1988 = load i32, i32* %1987, align 4
  %1989 = load i64, i64* %104, align 8
  %1990 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1984, i64 noundef %1985, i8* noundef %1986, i32 noundef %1988, i64 noundef %1989, i32* noundef %95) #18
  store i32 %1990, i32* %96, align 4
  br label %2004

1991:                                             ; preds = %1962
  %1992 = load i8*, i8** %16, align 8
  %1993 = load i64, i64* %18, align 8
  %1994 = getelementptr inbounds i8, i8* %1992, i64 %1993
  %1995 = load i64, i64* %97, align 8
  %1996 = load i8*, i8** %13, align 8
  %1997 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %1998 = load i32, i32* %1997, align 4
  %1999 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2000 = load i32, i32* %1999, align 4
  %2001 = load i64, i64* %104, align 8
  %2002 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1994, i64 noundef %1995, i8* noundef %1996, i32 noundef %1998, i32 noundef %2000, i64 noundef %2001, i32* noundef %95) #18
  store i32 %2002, i32* %96, align 4
  br label %2004

2003:                                             ; preds = %1962
  call void @abort() #19
  unreachable

2004:                                             ; preds = %1991, %1981, %1973
  br label %3142

2005:                                             ; preds = %1695
  %2006 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2007 = load %struct.argument*, %struct.argument** %2006, align 8
  %2008 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2009 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2008, i32 0, i32 10
  %2010 = load i64, i64* %2009, align 8
  %2011 = getelementptr inbounds %struct.argument, %struct.argument* %2007, i64 %2010
  %2012 = getelementptr inbounds %struct.argument, %struct.argument* %2011, i32 0, i32 1
  %2013 = bitcast %union.anon.39* %2012 to i64*
  %2014 = load i64, i64* %2013, align 16
  store i64 %2014, i64* %105, align 8
  %2015 = load i32, i32* %85, align 4
  switch i32 %2015, label %2046 [
    i32 0, label %2016
    i32 1, label %2024
    i32 2, label %2034
  ]

2016:                                             ; preds = %2005
  %2017 = load i8*, i8** %16, align 8
  %2018 = load i64, i64* %18, align 8
  %2019 = getelementptr inbounds i8, i8* %2017, i64 %2018
  %2020 = load i64, i64* %97, align 8
  %2021 = load i8*, i8** %13, align 8
  %2022 = load i64, i64* %105, align 8
  %2023 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2019, i64 noundef %2020, i8* noundef %2021, i64 noundef %2022, i32* noundef %95) #18
  store i32 %2023, i32* %96, align 4
  br label %2047

2024:                                             ; preds = %2005
  %2025 = load i8*, i8** %16, align 8
  %2026 = load i64, i64* %18, align 8
  %2027 = getelementptr inbounds i8, i8* %2025, i64 %2026
  %2028 = load i64, i64* %97, align 8
  %2029 = load i8*, i8** %13, align 8
  %2030 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2031 = load i32, i32* %2030, align 4
  %2032 = load i64, i64* %105, align 8
  %2033 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2027, i64 noundef %2028, i8* noundef %2029, i32 noundef %2031, i64 noundef %2032, i32* noundef %95) #18
  store i32 %2033, i32* %96, align 4
  br label %2047

2034:                                             ; preds = %2005
  %2035 = load i8*, i8** %16, align 8
  %2036 = load i64, i64* %18, align 8
  %2037 = getelementptr inbounds i8, i8* %2035, i64 %2036
  %2038 = load i64, i64* %97, align 8
  %2039 = load i8*, i8** %13, align 8
  %2040 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2041 = load i32, i32* %2040, align 4
  %2042 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2043 = load i32, i32* %2042, align 4
  %2044 = load i64, i64* %105, align 8
  %2045 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2037, i64 noundef %2038, i8* noundef %2039, i32 noundef %2041, i32 noundef %2043, i64 noundef %2044, i32* noundef %95) #18
  store i32 %2045, i32* %96, align 4
  br label %2047

2046:                                             ; preds = %2005
  call void @abort() #19
  unreachable

2047:                                             ; preds = %2034, %2024, %2016
  br label %3142

2048:                                             ; preds = %1695
  %2049 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2050 = load %struct.argument*, %struct.argument** %2049, align 8
  %2051 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2052 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2051, i32 0, i32 10
  %2053 = load i64, i64* %2052, align 8
  %2054 = getelementptr inbounds %struct.argument, %struct.argument* %2050, i64 %2053
  %2055 = getelementptr inbounds %struct.argument, %struct.argument* %2054, i32 0, i32 1
  %2056 = bitcast %union.anon.39* %2055 to i64*
  %2057 = load i64, i64* %2056, align 16
  store i64 %2057, i64* %106, align 8
  %2058 = load i32, i32* %85, align 4
  switch i32 %2058, label %2089 [
    i32 0, label %2059
    i32 1, label %2067
    i32 2, label %2077
  ]

2059:                                             ; preds = %2048
  %2060 = load i8*, i8** %16, align 8
  %2061 = load i64, i64* %18, align 8
  %2062 = getelementptr inbounds i8, i8* %2060, i64 %2061
  %2063 = load i64, i64* %97, align 8
  %2064 = load i8*, i8** %13, align 8
  %2065 = load i64, i64* %106, align 8
  %2066 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2062, i64 noundef %2063, i8* noundef %2064, i64 noundef %2065, i32* noundef %95) #18
  store i32 %2066, i32* %96, align 4
  br label %2090

2067:                                             ; preds = %2048
  %2068 = load i8*, i8** %16, align 8
  %2069 = load i64, i64* %18, align 8
  %2070 = getelementptr inbounds i8, i8* %2068, i64 %2069
  %2071 = load i64, i64* %97, align 8
  %2072 = load i8*, i8** %13, align 8
  %2073 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2074 = load i32, i32* %2073, align 4
  %2075 = load i64, i64* %106, align 8
  %2076 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2070, i64 noundef %2071, i8* noundef %2072, i32 noundef %2074, i64 noundef %2075, i32* noundef %95) #18
  store i32 %2076, i32* %96, align 4
  br label %2090

2077:                                             ; preds = %2048
  %2078 = load i8*, i8** %16, align 8
  %2079 = load i64, i64* %18, align 8
  %2080 = getelementptr inbounds i8, i8* %2078, i64 %2079
  %2081 = load i64, i64* %97, align 8
  %2082 = load i8*, i8** %13, align 8
  %2083 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2084 = load i32, i32* %2083, align 4
  %2085 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2086 = load i32, i32* %2085, align 4
  %2087 = load i64, i64* %106, align 8
  %2088 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2080, i64 noundef %2081, i8* noundef %2082, i32 noundef %2084, i32 noundef %2086, i64 noundef %2087, i32* noundef %95) #18
  store i32 %2088, i32* %96, align 4
  br label %2090

2089:                                             ; preds = %2048
  call void @abort() #19
  unreachable

2090:                                             ; preds = %2077, %2067, %2059
  br label %3142

2091:                                             ; preds = %1695
  %2092 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2093 = load %struct.argument*, %struct.argument** %2092, align 8
  %2094 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2095 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2094, i32 0, i32 10
  %2096 = load i64, i64* %2095, align 8
  %2097 = getelementptr inbounds %struct.argument, %struct.argument* %2093, i64 %2096
  %2098 = getelementptr inbounds %struct.argument, %struct.argument* %2097, i32 0, i32 1
  %2099 = bitcast %union.anon.39* %2098 to i64*
  %2100 = load i64, i64* %2099, align 16
  store i64 %2100, i64* %107, align 8
  %2101 = load i32, i32* %85, align 4
  switch i32 %2101, label %2132 [
    i32 0, label %2102
    i32 1, label %2110
    i32 2, label %2120
  ]

2102:                                             ; preds = %2091
  %2103 = load i8*, i8** %16, align 8
  %2104 = load i64, i64* %18, align 8
  %2105 = getelementptr inbounds i8, i8* %2103, i64 %2104
  %2106 = load i64, i64* %97, align 8
  %2107 = load i8*, i8** %13, align 8
  %2108 = load i64, i64* %107, align 8
  %2109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2105, i64 noundef %2106, i8* noundef %2107, i64 noundef %2108, i32* noundef %95) #18
  store i32 %2109, i32* %96, align 4
  br label %2133

2110:                                             ; preds = %2091
  %2111 = load i8*, i8** %16, align 8
  %2112 = load i64, i64* %18, align 8
  %2113 = getelementptr inbounds i8, i8* %2111, i64 %2112
  %2114 = load i64, i64* %97, align 8
  %2115 = load i8*, i8** %13, align 8
  %2116 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2117 = load i32, i32* %2116, align 4
  %2118 = load i64, i64* %107, align 8
  %2119 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2113, i64 noundef %2114, i8* noundef %2115, i32 noundef %2117, i64 noundef %2118, i32* noundef %95) #18
  store i32 %2119, i32* %96, align 4
  br label %2133

2120:                                             ; preds = %2091
  %2121 = load i8*, i8** %16, align 8
  %2122 = load i64, i64* %18, align 8
  %2123 = getelementptr inbounds i8, i8* %2121, i64 %2122
  %2124 = load i64, i64* %97, align 8
  %2125 = load i8*, i8** %13, align 8
  %2126 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2127 = load i32, i32* %2126, align 4
  %2128 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2129 = load i32, i32* %2128, align 4
  %2130 = load i64, i64* %107, align 8
  %2131 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2123, i64 noundef %2124, i8* noundef %2125, i32 noundef %2127, i32 noundef %2129, i64 noundef %2130, i32* noundef %95) #18
  store i32 %2131, i32* %96, align 4
  br label %2133

2132:                                             ; preds = %2091
  call void @abort() #19
  unreachable

2133:                                             ; preds = %2120, %2110, %2102
  br label %3142

2134:                                             ; preds = %1695
  %2135 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2136 = load %struct.argument*, %struct.argument** %2135, align 8
  %2137 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2138 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2137, i32 0, i32 10
  %2139 = load i64, i64* %2138, align 8
  %2140 = getelementptr inbounds %struct.argument, %struct.argument* %2136, i64 %2139
  %2141 = getelementptr inbounds %struct.argument, %struct.argument* %2140, i32 0, i32 1
  %2142 = bitcast %union.anon.39* %2141 to i8*
  %2143 = load i8, i8* %2142, align 16
  store i8 %2143, i8* %108, align 1
  %2144 = load i32, i32* %85, align 4
  switch i32 %2144, label %2178 [
    i32 0, label %2145
    i32 1, label %2154
    i32 2, label %2165
  ]

2145:                                             ; preds = %2134
  %2146 = load i8*, i8** %16, align 8
  %2147 = load i64, i64* %18, align 8
  %2148 = getelementptr inbounds i8, i8* %2146, i64 %2147
  %2149 = load i64, i64* %97, align 8
  %2150 = load i8*, i8** %13, align 8
  %2151 = load i8, i8* %108, align 1
  %2152 = sext i8 %2151 to i32
  %2153 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2148, i64 noundef %2149, i8* noundef %2150, i32 noundef %2152, i32* noundef %95) #18
  store i32 %2153, i32* %96, align 4
  br label %2179

2154:                                             ; preds = %2134
  %2155 = load i8*, i8** %16, align 8
  %2156 = load i64, i64* %18, align 8
  %2157 = getelementptr inbounds i8, i8* %2155, i64 %2156
  %2158 = load i64, i64* %97, align 8
  %2159 = load i8*, i8** %13, align 8
  %2160 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2161 = load i32, i32* %2160, align 4
  %2162 = load i8, i8* %108, align 1
  %2163 = sext i8 %2162 to i32
  %2164 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2157, i64 noundef %2158, i8* noundef %2159, i32 noundef %2161, i32 noundef %2163, i32* noundef %95) #18
  store i32 %2164, i32* %96, align 4
  br label %2179

2165:                                             ; preds = %2134
  %2166 = load i8*, i8** %16, align 8
  %2167 = load i64, i64* %18, align 8
  %2168 = getelementptr inbounds i8, i8* %2166, i64 %2167
  %2169 = load i64, i64* %97, align 8
  %2170 = load i8*, i8** %13, align 8
  %2171 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2172 = load i32, i32* %2171, align 4
  %2173 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2174 = load i32, i32* %2173, align 4
  %2175 = load i8, i8* %108, align 1
  %2176 = sext i8 %2175 to i32
  %2177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2168, i64 noundef %2169, i8* noundef %2170, i32 noundef %2172, i32 noundef %2174, i32 noundef %2176, i32* noundef %95) #18
  store i32 %2177, i32* %96, align 4
  br label %2179

2178:                                             ; preds = %2134
  call void @abort() #19
  unreachable

2179:                                             ; preds = %2165, %2154, %2145
  br label %3142

2180:                                             ; preds = %1695
  %2181 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2182 = load %struct.argument*, %struct.argument** %2181, align 8
  %2183 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2184 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2183, i32 0, i32 10
  %2185 = load i64, i64* %2184, align 8
  %2186 = getelementptr inbounds %struct.argument, %struct.argument* %2182, i64 %2185
  %2187 = getelementptr inbounds %struct.argument, %struct.argument* %2186, i32 0, i32 1
  %2188 = bitcast %union.anon.39* %2187 to i8*
  %2189 = load i8, i8* %2188, align 16
  store i8 %2189, i8* %109, align 1
  %2190 = load i32, i32* %85, align 4
  switch i32 %2190, label %2224 [
    i32 0, label %2191
    i32 1, label %2200
    i32 2, label %2211
  ]

2191:                                             ; preds = %2180
  %2192 = load i8*, i8** %16, align 8
  %2193 = load i64, i64* %18, align 8
  %2194 = getelementptr inbounds i8, i8* %2192, i64 %2193
  %2195 = load i64, i64* %97, align 8
  %2196 = load i8*, i8** %13, align 8
  %2197 = load i8, i8* %109, align 1
  %2198 = zext i8 %2197 to i32
  %2199 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2194, i64 noundef %2195, i8* noundef %2196, i32 noundef %2198, i32* noundef %95) #18
  store i32 %2199, i32* %96, align 4
  br label %2225

2200:                                             ; preds = %2180
  %2201 = load i8*, i8** %16, align 8
  %2202 = load i64, i64* %18, align 8
  %2203 = getelementptr inbounds i8, i8* %2201, i64 %2202
  %2204 = load i64, i64* %97, align 8
  %2205 = load i8*, i8** %13, align 8
  %2206 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2207 = load i32, i32* %2206, align 4
  %2208 = load i8, i8* %109, align 1
  %2209 = zext i8 %2208 to i32
  %2210 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2203, i64 noundef %2204, i8* noundef %2205, i32 noundef %2207, i32 noundef %2209, i32* noundef %95) #18
  store i32 %2210, i32* %96, align 4
  br label %2225

2211:                                             ; preds = %2180
  %2212 = load i8*, i8** %16, align 8
  %2213 = load i64, i64* %18, align 8
  %2214 = getelementptr inbounds i8, i8* %2212, i64 %2213
  %2215 = load i64, i64* %97, align 8
  %2216 = load i8*, i8** %13, align 8
  %2217 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2218 = load i32, i32* %2217, align 4
  %2219 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2220 = load i32, i32* %2219, align 4
  %2221 = load i8, i8* %109, align 1
  %2222 = zext i8 %2221 to i32
  %2223 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2214, i64 noundef %2215, i8* noundef %2216, i32 noundef %2218, i32 noundef %2220, i32 noundef %2222, i32* noundef %95) #18
  store i32 %2223, i32* %96, align 4
  br label %2225

2224:                                             ; preds = %2180
  call void @abort() #19
  unreachable

2225:                                             ; preds = %2211, %2200, %2191
  br label %3142

2226:                                             ; preds = %1695
  %2227 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2228 = load %struct.argument*, %struct.argument** %2227, align 8
  %2229 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2230 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2229, i32 0, i32 10
  %2231 = load i64, i64* %2230, align 8
  %2232 = getelementptr inbounds %struct.argument, %struct.argument* %2228, i64 %2231
  %2233 = getelementptr inbounds %struct.argument, %struct.argument* %2232, i32 0, i32 1
  %2234 = bitcast %union.anon.39* %2233 to i16*
  %2235 = load i16, i16* %2234, align 16
  store i16 %2235, i16* %110, align 2
  %2236 = load i32, i32* %85, align 4
  switch i32 %2236, label %2270 [
    i32 0, label %2237
    i32 1, label %2246
    i32 2, label %2257
  ]

2237:                                             ; preds = %2226
  %2238 = load i8*, i8** %16, align 8
  %2239 = load i64, i64* %18, align 8
  %2240 = getelementptr inbounds i8, i8* %2238, i64 %2239
  %2241 = load i64, i64* %97, align 8
  %2242 = load i8*, i8** %13, align 8
  %2243 = load i16, i16* %110, align 2
  %2244 = sext i16 %2243 to i32
  %2245 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2240, i64 noundef %2241, i8* noundef %2242, i32 noundef %2244, i32* noundef %95) #18
  store i32 %2245, i32* %96, align 4
  br label %2271

2246:                                             ; preds = %2226
  %2247 = load i8*, i8** %16, align 8
  %2248 = load i64, i64* %18, align 8
  %2249 = getelementptr inbounds i8, i8* %2247, i64 %2248
  %2250 = load i64, i64* %97, align 8
  %2251 = load i8*, i8** %13, align 8
  %2252 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2253 = load i32, i32* %2252, align 4
  %2254 = load i16, i16* %110, align 2
  %2255 = sext i16 %2254 to i32
  %2256 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2249, i64 noundef %2250, i8* noundef %2251, i32 noundef %2253, i32 noundef %2255, i32* noundef %95) #18
  store i32 %2256, i32* %96, align 4
  br label %2271

2257:                                             ; preds = %2226
  %2258 = load i8*, i8** %16, align 8
  %2259 = load i64, i64* %18, align 8
  %2260 = getelementptr inbounds i8, i8* %2258, i64 %2259
  %2261 = load i64, i64* %97, align 8
  %2262 = load i8*, i8** %13, align 8
  %2263 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2264 = load i32, i32* %2263, align 4
  %2265 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2266 = load i32, i32* %2265, align 4
  %2267 = load i16, i16* %110, align 2
  %2268 = sext i16 %2267 to i32
  %2269 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2260, i64 noundef %2261, i8* noundef %2262, i32 noundef %2264, i32 noundef %2266, i32 noundef %2268, i32* noundef %95) #18
  store i32 %2269, i32* %96, align 4
  br label %2271

2270:                                             ; preds = %2226
  call void @abort() #19
  unreachable

2271:                                             ; preds = %2257, %2246, %2237
  br label %3142

2272:                                             ; preds = %1695
  %2273 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2274 = load %struct.argument*, %struct.argument** %2273, align 8
  %2275 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2276 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2275, i32 0, i32 10
  %2277 = load i64, i64* %2276, align 8
  %2278 = getelementptr inbounds %struct.argument, %struct.argument* %2274, i64 %2277
  %2279 = getelementptr inbounds %struct.argument, %struct.argument* %2278, i32 0, i32 1
  %2280 = bitcast %union.anon.39* %2279 to i16*
  %2281 = load i16, i16* %2280, align 16
  store i16 %2281, i16* %111, align 2
  %2282 = load i32, i32* %85, align 4
  switch i32 %2282, label %2316 [
    i32 0, label %2283
    i32 1, label %2292
    i32 2, label %2303
  ]

2283:                                             ; preds = %2272
  %2284 = load i8*, i8** %16, align 8
  %2285 = load i64, i64* %18, align 8
  %2286 = getelementptr inbounds i8, i8* %2284, i64 %2285
  %2287 = load i64, i64* %97, align 8
  %2288 = load i8*, i8** %13, align 8
  %2289 = load i16, i16* %111, align 2
  %2290 = zext i16 %2289 to i32
  %2291 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2286, i64 noundef %2287, i8* noundef %2288, i32 noundef %2290, i32* noundef %95) #18
  store i32 %2291, i32* %96, align 4
  br label %2317

2292:                                             ; preds = %2272
  %2293 = load i8*, i8** %16, align 8
  %2294 = load i64, i64* %18, align 8
  %2295 = getelementptr inbounds i8, i8* %2293, i64 %2294
  %2296 = load i64, i64* %97, align 8
  %2297 = load i8*, i8** %13, align 8
  %2298 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2299 = load i32, i32* %2298, align 4
  %2300 = load i16, i16* %111, align 2
  %2301 = zext i16 %2300 to i32
  %2302 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2295, i64 noundef %2296, i8* noundef %2297, i32 noundef %2299, i32 noundef %2301, i32* noundef %95) #18
  store i32 %2302, i32* %96, align 4
  br label %2317

2303:                                             ; preds = %2272
  %2304 = load i8*, i8** %16, align 8
  %2305 = load i64, i64* %18, align 8
  %2306 = getelementptr inbounds i8, i8* %2304, i64 %2305
  %2307 = load i64, i64* %97, align 8
  %2308 = load i8*, i8** %13, align 8
  %2309 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2310 = load i32, i32* %2309, align 4
  %2311 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2312 = load i32, i32* %2311, align 4
  %2313 = load i16, i16* %111, align 2
  %2314 = zext i16 %2313 to i32
  %2315 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2306, i64 noundef %2307, i8* noundef %2308, i32 noundef %2310, i32 noundef %2312, i32 noundef %2314, i32* noundef %95) #18
  store i32 %2315, i32* %96, align 4
  br label %2317

2316:                                             ; preds = %2272
  call void @abort() #19
  unreachable

2317:                                             ; preds = %2303, %2292, %2283
  br label %3142

2318:                                             ; preds = %1695
  %2319 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2320 = load %struct.argument*, %struct.argument** %2319, align 8
  %2321 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2322 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2321, i32 0, i32 10
  %2323 = load i64, i64* %2322, align 8
  %2324 = getelementptr inbounds %struct.argument, %struct.argument* %2320, i64 %2323
  %2325 = getelementptr inbounds %struct.argument, %struct.argument* %2324, i32 0, i32 1
  %2326 = bitcast %union.anon.39* %2325 to i32*
  %2327 = load i32, i32* %2326, align 16
  store i32 %2327, i32* %112, align 4
  %2328 = load i32, i32* %85, align 4
  switch i32 %2328, label %2359 [
    i32 0, label %2329
    i32 1, label %2337
    i32 2, label %2347
  ]

2329:                                             ; preds = %2318
  %2330 = load i8*, i8** %16, align 8
  %2331 = load i64, i64* %18, align 8
  %2332 = getelementptr inbounds i8, i8* %2330, i64 %2331
  %2333 = load i64, i64* %97, align 8
  %2334 = load i8*, i8** %13, align 8
  %2335 = load i32, i32* %112, align 4
  %2336 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2332, i64 noundef %2333, i8* noundef %2334, i32 noundef %2335, i32* noundef %95) #18
  store i32 %2336, i32* %96, align 4
  br label %2360

2337:                                             ; preds = %2318
  %2338 = load i8*, i8** %16, align 8
  %2339 = load i64, i64* %18, align 8
  %2340 = getelementptr inbounds i8, i8* %2338, i64 %2339
  %2341 = load i64, i64* %97, align 8
  %2342 = load i8*, i8** %13, align 8
  %2343 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2344 = load i32, i32* %2343, align 4
  %2345 = load i32, i32* %112, align 4
  %2346 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2340, i64 noundef %2341, i8* noundef %2342, i32 noundef %2344, i32 noundef %2345, i32* noundef %95) #18
  store i32 %2346, i32* %96, align 4
  br label %2360

2347:                                             ; preds = %2318
  %2348 = load i8*, i8** %16, align 8
  %2349 = load i64, i64* %18, align 8
  %2350 = getelementptr inbounds i8, i8* %2348, i64 %2349
  %2351 = load i64, i64* %97, align 8
  %2352 = load i8*, i8** %13, align 8
  %2353 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2354 = load i32, i32* %2353, align 4
  %2355 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2356 = load i32, i32* %2355, align 4
  %2357 = load i32, i32* %112, align 4
  %2358 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2350, i64 noundef %2351, i8* noundef %2352, i32 noundef %2354, i32 noundef %2356, i32 noundef %2357, i32* noundef %95) #18
  store i32 %2358, i32* %96, align 4
  br label %2360

2359:                                             ; preds = %2318
  call void @abort() #19
  unreachable

2360:                                             ; preds = %2347, %2337, %2329
  br label %3142

2361:                                             ; preds = %1695
  %2362 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2363 = load %struct.argument*, %struct.argument** %2362, align 8
  %2364 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2365 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2364, i32 0, i32 10
  %2366 = load i64, i64* %2365, align 8
  %2367 = getelementptr inbounds %struct.argument, %struct.argument* %2363, i64 %2366
  %2368 = getelementptr inbounds %struct.argument, %struct.argument* %2367, i32 0, i32 1
  %2369 = bitcast %union.anon.39* %2368 to i32*
  %2370 = load i32, i32* %2369, align 16
  store i32 %2370, i32* %113, align 4
  %2371 = load i32, i32* %85, align 4
  switch i32 %2371, label %2402 [
    i32 0, label %2372
    i32 1, label %2380
    i32 2, label %2390
  ]

2372:                                             ; preds = %2361
  %2373 = load i8*, i8** %16, align 8
  %2374 = load i64, i64* %18, align 8
  %2375 = getelementptr inbounds i8, i8* %2373, i64 %2374
  %2376 = load i64, i64* %97, align 8
  %2377 = load i8*, i8** %13, align 8
  %2378 = load i32, i32* %113, align 4
  %2379 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2375, i64 noundef %2376, i8* noundef %2377, i32 noundef %2378, i32* noundef %95) #18
  store i32 %2379, i32* %96, align 4
  br label %2403

2380:                                             ; preds = %2361
  %2381 = load i8*, i8** %16, align 8
  %2382 = load i64, i64* %18, align 8
  %2383 = getelementptr inbounds i8, i8* %2381, i64 %2382
  %2384 = load i64, i64* %97, align 8
  %2385 = load i8*, i8** %13, align 8
  %2386 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2387 = load i32, i32* %2386, align 4
  %2388 = load i32, i32* %113, align 4
  %2389 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2383, i64 noundef %2384, i8* noundef %2385, i32 noundef %2387, i32 noundef %2388, i32* noundef %95) #18
  store i32 %2389, i32* %96, align 4
  br label %2403

2390:                                             ; preds = %2361
  %2391 = load i8*, i8** %16, align 8
  %2392 = load i64, i64* %18, align 8
  %2393 = getelementptr inbounds i8, i8* %2391, i64 %2392
  %2394 = load i64, i64* %97, align 8
  %2395 = load i8*, i8** %13, align 8
  %2396 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2397 = load i32, i32* %2396, align 4
  %2398 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2399 = load i32, i32* %2398, align 4
  %2400 = load i32, i32* %113, align 4
  %2401 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2393, i64 noundef %2394, i8* noundef %2395, i32 noundef %2397, i32 noundef %2399, i32 noundef %2400, i32* noundef %95) #18
  store i32 %2401, i32* %96, align 4
  br label %2403

2402:                                             ; preds = %2361
  call void @abort() #19
  unreachable

2403:                                             ; preds = %2390, %2380, %2372
  br label %3142

2404:                                             ; preds = %1695
  %2405 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2406 = load %struct.argument*, %struct.argument** %2405, align 8
  %2407 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2408 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2407, i32 0, i32 10
  %2409 = load i64, i64* %2408, align 8
  %2410 = getelementptr inbounds %struct.argument, %struct.argument* %2406, i64 %2409
  %2411 = getelementptr inbounds %struct.argument, %struct.argument* %2410, i32 0, i32 1
  %2412 = bitcast %union.anon.39* %2411 to i64*
  %2413 = load i64, i64* %2412, align 16
  store i64 %2413, i64* %114, align 8
  %2414 = load i32, i32* %85, align 4
  switch i32 %2414, label %2445 [
    i32 0, label %2415
    i32 1, label %2423
    i32 2, label %2433
  ]

2415:                                             ; preds = %2404
  %2416 = load i8*, i8** %16, align 8
  %2417 = load i64, i64* %18, align 8
  %2418 = getelementptr inbounds i8, i8* %2416, i64 %2417
  %2419 = load i64, i64* %97, align 8
  %2420 = load i8*, i8** %13, align 8
  %2421 = load i64, i64* %114, align 8
  %2422 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2418, i64 noundef %2419, i8* noundef %2420, i64 noundef %2421, i32* noundef %95) #18
  store i32 %2422, i32* %96, align 4
  br label %2446

2423:                                             ; preds = %2404
  %2424 = load i8*, i8** %16, align 8
  %2425 = load i64, i64* %18, align 8
  %2426 = getelementptr inbounds i8, i8* %2424, i64 %2425
  %2427 = load i64, i64* %97, align 8
  %2428 = load i8*, i8** %13, align 8
  %2429 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2430 = load i32, i32* %2429, align 4
  %2431 = load i64, i64* %114, align 8
  %2432 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2426, i64 noundef %2427, i8* noundef %2428, i32 noundef %2430, i64 noundef %2431, i32* noundef %95) #18
  store i32 %2432, i32* %96, align 4
  br label %2446

2433:                                             ; preds = %2404
  %2434 = load i8*, i8** %16, align 8
  %2435 = load i64, i64* %18, align 8
  %2436 = getelementptr inbounds i8, i8* %2434, i64 %2435
  %2437 = load i64, i64* %97, align 8
  %2438 = load i8*, i8** %13, align 8
  %2439 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2440 = load i32, i32* %2439, align 4
  %2441 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2442 = load i32, i32* %2441, align 4
  %2443 = load i64, i64* %114, align 8
  %2444 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2436, i64 noundef %2437, i8* noundef %2438, i32 noundef %2440, i32 noundef %2442, i64 noundef %2443, i32* noundef %95) #18
  store i32 %2444, i32* %96, align 4
  br label %2446

2445:                                             ; preds = %2404
  call void @abort() #19
  unreachable

2446:                                             ; preds = %2433, %2423, %2415
  br label %3142

2447:                                             ; preds = %1695
  %2448 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2449 = load %struct.argument*, %struct.argument** %2448, align 8
  %2450 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2451 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2450, i32 0, i32 10
  %2452 = load i64, i64* %2451, align 8
  %2453 = getelementptr inbounds %struct.argument, %struct.argument* %2449, i64 %2452
  %2454 = getelementptr inbounds %struct.argument, %struct.argument* %2453, i32 0, i32 1
  %2455 = bitcast %union.anon.39* %2454 to i64*
  %2456 = load i64, i64* %2455, align 16
  store i64 %2456, i64* %115, align 8
  %2457 = load i32, i32* %85, align 4
  switch i32 %2457, label %2488 [
    i32 0, label %2458
    i32 1, label %2466
    i32 2, label %2476
  ]

2458:                                             ; preds = %2447
  %2459 = load i8*, i8** %16, align 8
  %2460 = load i64, i64* %18, align 8
  %2461 = getelementptr inbounds i8, i8* %2459, i64 %2460
  %2462 = load i64, i64* %97, align 8
  %2463 = load i8*, i8** %13, align 8
  %2464 = load i64, i64* %115, align 8
  %2465 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2461, i64 noundef %2462, i8* noundef %2463, i64 noundef %2464, i32* noundef %95) #18
  store i32 %2465, i32* %96, align 4
  br label %2489

2466:                                             ; preds = %2447
  %2467 = load i8*, i8** %16, align 8
  %2468 = load i64, i64* %18, align 8
  %2469 = getelementptr inbounds i8, i8* %2467, i64 %2468
  %2470 = load i64, i64* %97, align 8
  %2471 = load i8*, i8** %13, align 8
  %2472 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2473 = load i32, i32* %2472, align 4
  %2474 = load i64, i64* %115, align 8
  %2475 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2469, i64 noundef %2470, i8* noundef %2471, i32 noundef %2473, i64 noundef %2474, i32* noundef %95) #18
  store i32 %2475, i32* %96, align 4
  br label %2489

2476:                                             ; preds = %2447
  %2477 = load i8*, i8** %16, align 8
  %2478 = load i64, i64* %18, align 8
  %2479 = getelementptr inbounds i8, i8* %2477, i64 %2478
  %2480 = load i64, i64* %97, align 8
  %2481 = load i8*, i8** %13, align 8
  %2482 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2483 = load i32, i32* %2482, align 4
  %2484 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2485 = load i32, i32* %2484, align 4
  %2486 = load i64, i64* %115, align 8
  %2487 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2479, i64 noundef %2480, i8* noundef %2481, i32 noundef %2483, i32 noundef %2485, i64 noundef %2486, i32* noundef %95) #18
  store i32 %2487, i32* %96, align 4
  br label %2489

2488:                                             ; preds = %2447
  call void @abort() #19
  unreachable

2489:                                             ; preds = %2476, %2466, %2458
  br label %3142

2490:                                             ; preds = %1695
  %2491 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2492 = load %struct.argument*, %struct.argument** %2491, align 8
  %2493 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2494 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2493, i32 0, i32 10
  %2495 = load i64, i64* %2494, align 8
  %2496 = getelementptr inbounds %struct.argument, %struct.argument* %2492, i64 %2495
  %2497 = getelementptr inbounds %struct.argument, %struct.argument* %2496, i32 0, i32 1
  %2498 = bitcast %union.anon.39* %2497 to i8*
  %2499 = load i8, i8* %2498, align 16
  store i8 %2499, i8* %116, align 1
  %2500 = load i32, i32* %85, align 4
  switch i32 %2500, label %2534 [
    i32 0, label %2501
    i32 1, label %2510
    i32 2, label %2521
  ]

2501:                                             ; preds = %2490
  %2502 = load i8*, i8** %16, align 8
  %2503 = load i64, i64* %18, align 8
  %2504 = getelementptr inbounds i8, i8* %2502, i64 %2503
  %2505 = load i64, i64* %97, align 8
  %2506 = load i8*, i8** %13, align 8
  %2507 = load i8, i8* %116, align 1
  %2508 = sext i8 %2507 to i32
  %2509 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2504, i64 noundef %2505, i8* noundef %2506, i32 noundef %2508, i32* noundef %95) #18
  store i32 %2509, i32* %96, align 4
  br label %2535

2510:                                             ; preds = %2490
  %2511 = load i8*, i8** %16, align 8
  %2512 = load i64, i64* %18, align 8
  %2513 = getelementptr inbounds i8, i8* %2511, i64 %2512
  %2514 = load i64, i64* %97, align 8
  %2515 = load i8*, i8** %13, align 8
  %2516 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2517 = load i32, i32* %2516, align 4
  %2518 = load i8, i8* %116, align 1
  %2519 = sext i8 %2518 to i32
  %2520 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2513, i64 noundef %2514, i8* noundef %2515, i32 noundef %2517, i32 noundef %2519, i32* noundef %95) #18
  store i32 %2520, i32* %96, align 4
  br label %2535

2521:                                             ; preds = %2490
  %2522 = load i8*, i8** %16, align 8
  %2523 = load i64, i64* %18, align 8
  %2524 = getelementptr inbounds i8, i8* %2522, i64 %2523
  %2525 = load i64, i64* %97, align 8
  %2526 = load i8*, i8** %13, align 8
  %2527 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2528 = load i32, i32* %2527, align 4
  %2529 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2530 = load i32, i32* %2529, align 4
  %2531 = load i8, i8* %116, align 1
  %2532 = sext i8 %2531 to i32
  %2533 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2524, i64 noundef %2525, i8* noundef %2526, i32 noundef %2528, i32 noundef %2530, i32 noundef %2532, i32* noundef %95) #18
  store i32 %2533, i32* %96, align 4
  br label %2535

2534:                                             ; preds = %2490
  call void @abort() #19
  unreachable

2535:                                             ; preds = %2521, %2510, %2501
  br label %3142

2536:                                             ; preds = %1695
  %2537 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2538 = load %struct.argument*, %struct.argument** %2537, align 8
  %2539 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2540 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2539, i32 0, i32 10
  %2541 = load i64, i64* %2540, align 8
  %2542 = getelementptr inbounds %struct.argument, %struct.argument* %2538, i64 %2541
  %2543 = getelementptr inbounds %struct.argument, %struct.argument* %2542, i32 0, i32 1
  %2544 = bitcast %union.anon.39* %2543 to i8*
  %2545 = load i8, i8* %2544, align 16
  store i8 %2545, i8* %117, align 1
  %2546 = load i32, i32* %85, align 4
  switch i32 %2546, label %2580 [
    i32 0, label %2547
    i32 1, label %2556
    i32 2, label %2567
  ]

2547:                                             ; preds = %2536
  %2548 = load i8*, i8** %16, align 8
  %2549 = load i64, i64* %18, align 8
  %2550 = getelementptr inbounds i8, i8* %2548, i64 %2549
  %2551 = load i64, i64* %97, align 8
  %2552 = load i8*, i8** %13, align 8
  %2553 = load i8, i8* %117, align 1
  %2554 = zext i8 %2553 to i32
  %2555 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2550, i64 noundef %2551, i8* noundef %2552, i32 noundef %2554, i32* noundef %95) #18
  store i32 %2555, i32* %96, align 4
  br label %2581

2556:                                             ; preds = %2536
  %2557 = load i8*, i8** %16, align 8
  %2558 = load i64, i64* %18, align 8
  %2559 = getelementptr inbounds i8, i8* %2557, i64 %2558
  %2560 = load i64, i64* %97, align 8
  %2561 = load i8*, i8** %13, align 8
  %2562 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2563 = load i32, i32* %2562, align 4
  %2564 = load i8, i8* %117, align 1
  %2565 = zext i8 %2564 to i32
  %2566 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2559, i64 noundef %2560, i8* noundef %2561, i32 noundef %2563, i32 noundef %2565, i32* noundef %95) #18
  store i32 %2566, i32* %96, align 4
  br label %2581

2567:                                             ; preds = %2536
  %2568 = load i8*, i8** %16, align 8
  %2569 = load i64, i64* %18, align 8
  %2570 = getelementptr inbounds i8, i8* %2568, i64 %2569
  %2571 = load i64, i64* %97, align 8
  %2572 = load i8*, i8** %13, align 8
  %2573 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2574 = load i32, i32* %2573, align 4
  %2575 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2576 = load i32, i32* %2575, align 4
  %2577 = load i8, i8* %117, align 1
  %2578 = zext i8 %2577 to i32
  %2579 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2570, i64 noundef %2571, i8* noundef %2572, i32 noundef %2574, i32 noundef %2576, i32 noundef %2578, i32* noundef %95) #18
  store i32 %2579, i32* %96, align 4
  br label %2581

2580:                                             ; preds = %2536
  call void @abort() #19
  unreachable

2581:                                             ; preds = %2567, %2556, %2547
  br label %3142

2582:                                             ; preds = %1695
  %2583 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2584 = load %struct.argument*, %struct.argument** %2583, align 8
  %2585 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2586 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2585, i32 0, i32 10
  %2587 = load i64, i64* %2586, align 8
  %2588 = getelementptr inbounds %struct.argument, %struct.argument* %2584, i64 %2587
  %2589 = getelementptr inbounds %struct.argument, %struct.argument* %2588, i32 0, i32 1
  %2590 = bitcast %union.anon.39* %2589 to i64*
  %2591 = load i64, i64* %2590, align 16
  store i64 %2591, i64* %118, align 8
  %2592 = load i32, i32* %85, align 4
  switch i32 %2592, label %2623 [
    i32 0, label %2593
    i32 1, label %2601
    i32 2, label %2611
  ]

2593:                                             ; preds = %2582
  %2594 = load i8*, i8** %16, align 8
  %2595 = load i64, i64* %18, align 8
  %2596 = getelementptr inbounds i8, i8* %2594, i64 %2595
  %2597 = load i64, i64* %97, align 8
  %2598 = load i8*, i8** %13, align 8
  %2599 = load i64, i64* %118, align 8
  %2600 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2596, i64 noundef %2597, i8* noundef %2598, i64 noundef %2599, i32* noundef %95) #18
  store i32 %2600, i32* %96, align 4
  br label %2624

2601:                                             ; preds = %2582
  %2602 = load i8*, i8** %16, align 8
  %2603 = load i64, i64* %18, align 8
  %2604 = getelementptr inbounds i8, i8* %2602, i64 %2603
  %2605 = load i64, i64* %97, align 8
  %2606 = load i8*, i8** %13, align 8
  %2607 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2608 = load i32, i32* %2607, align 4
  %2609 = load i64, i64* %118, align 8
  %2610 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2604, i64 noundef %2605, i8* noundef %2606, i32 noundef %2608, i64 noundef %2609, i32* noundef %95) #18
  store i32 %2610, i32* %96, align 4
  br label %2624

2611:                                             ; preds = %2582
  %2612 = load i8*, i8** %16, align 8
  %2613 = load i64, i64* %18, align 8
  %2614 = getelementptr inbounds i8, i8* %2612, i64 %2613
  %2615 = load i64, i64* %97, align 8
  %2616 = load i8*, i8** %13, align 8
  %2617 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2618 = load i32, i32* %2617, align 4
  %2619 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2620 = load i32, i32* %2619, align 4
  %2621 = load i64, i64* %118, align 8
  %2622 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2614, i64 noundef %2615, i8* noundef %2616, i32 noundef %2618, i32 noundef %2620, i64 noundef %2621, i32* noundef %95) #18
  store i32 %2622, i32* %96, align 4
  br label %2624

2623:                                             ; preds = %2582
  call void @abort() #19
  unreachable

2624:                                             ; preds = %2611, %2601, %2593
  br label %3142

2625:                                             ; preds = %1695
  %2626 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2627 = load %struct.argument*, %struct.argument** %2626, align 8
  %2628 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2629 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2628, i32 0, i32 10
  %2630 = load i64, i64* %2629, align 8
  %2631 = getelementptr inbounds %struct.argument, %struct.argument* %2627, i64 %2630
  %2632 = getelementptr inbounds %struct.argument, %struct.argument* %2631, i32 0, i32 1
  %2633 = bitcast %union.anon.39* %2632 to i64*
  %2634 = load i64, i64* %2633, align 16
  store i64 %2634, i64* %119, align 8
  %2635 = load i32, i32* %85, align 4
  switch i32 %2635, label %2666 [
    i32 0, label %2636
    i32 1, label %2644
    i32 2, label %2654
  ]

2636:                                             ; preds = %2625
  %2637 = load i8*, i8** %16, align 8
  %2638 = load i64, i64* %18, align 8
  %2639 = getelementptr inbounds i8, i8* %2637, i64 %2638
  %2640 = load i64, i64* %97, align 8
  %2641 = load i8*, i8** %13, align 8
  %2642 = load i64, i64* %119, align 8
  %2643 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2639, i64 noundef %2640, i8* noundef %2641, i64 noundef %2642, i32* noundef %95) #18
  store i32 %2643, i32* %96, align 4
  br label %2667

2644:                                             ; preds = %2625
  %2645 = load i8*, i8** %16, align 8
  %2646 = load i64, i64* %18, align 8
  %2647 = getelementptr inbounds i8, i8* %2645, i64 %2646
  %2648 = load i64, i64* %97, align 8
  %2649 = load i8*, i8** %13, align 8
  %2650 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2651 = load i32, i32* %2650, align 4
  %2652 = load i64, i64* %119, align 8
  %2653 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2647, i64 noundef %2648, i8* noundef %2649, i32 noundef %2651, i64 noundef %2652, i32* noundef %95) #18
  store i32 %2653, i32* %96, align 4
  br label %2667

2654:                                             ; preds = %2625
  %2655 = load i8*, i8** %16, align 8
  %2656 = load i64, i64* %18, align 8
  %2657 = getelementptr inbounds i8, i8* %2655, i64 %2656
  %2658 = load i64, i64* %97, align 8
  %2659 = load i8*, i8** %13, align 8
  %2660 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2661 = load i32, i32* %2660, align 4
  %2662 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2663 = load i32, i32* %2662, align 4
  %2664 = load i64, i64* %119, align 8
  %2665 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2657, i64 noundef %2658, i8* noundef %2659, i32 noundef %2661, i32 noundef %2663, i64 noundef %2664, i32* noundef %95) #18
  store i32 %2665, i32* %96, align 4
  br label %2667

2666:                                             ; preds = %2625
  call void @abort() #19
  unreachable

2667:                                             ; preds = %2654, %2644, %2636
  br label %3142

2668:                                             ; preds = %1695
  %2669 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2670 = load %struct.argument*, %struct.argument** %2669, align 8
  %2671 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2672 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2671, i32 0, i32 10
  %2673 = load i64, i64* %2672, align 8
  %2674 = getelementptr inbounds %struct.argument, %struct.argument* %2670, i64 %2673
  %2675 = getelementptr inbounds %struct.argument, %struct.argument* %2674, i32 0, i32 1
  %2676 = bitcast %union.anon.39* %2675 to i64*
  %2677 = load i64, i64* %2676, align 16
  store i64 %2677, i64* %120, align 8
  %2678 = load i32, i32* %85, align 4
  switch i32 %2678, label %2709 [
    i32 0, label %2679
    i32 1, label %2687
    i32 2, label %2697
  ]

2679:                                             ; preds = %2668
  %2680 = load i8*, i8** %16, align 8
  %2681 = load i64, i64* %18, align 8
  %2682 = getelementptr inbounds i8, i8* %2680, i64 %2681
  %2683 = load i64, i64* %97, align 8
  %2684 = load i8*, i8** %13, align 8
  %2685 = load i64, i64* %120, align 8
  %2686 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2682, i64 noundef %2683, i8* noundef %2684, i64 noundef %2685, i32* noundef %95) #18
  store i32 %2686, i32* %96, align 4
  br label %2710

2687:                                             ; preds = %2668
  %2688 = load i8*, i8** %16, align 8
  %2689 = load i64, i64* %18, align 8
  %2690 = getelementptr inbounds i8, i8* %2688, i64 %2689
  %2691 = load i64, i64* %97, align 8
  %2692 = load i8*, i8** %13, align 8
  %2693 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2694 = load i32, i32* %2693, align 4
  %2695 = load i64, i64* %120, align 8
  %2696 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2690, i64 noundef %2691, i8* noundef %2692, i32 noundef %2694, i64 noundef %2695, i32* noundef %95) #18
  store i32 %2696, i32* %96, align 4
  br label %2710

2697:                                             ; preds = %2668
  %2698 = load i8*, i8** %16, align 8
  %2699 = load i64, i64* %18, align 8
  %2700 = getelementptr inbounds i8, i8* %2698, i64 %2699
  %2701 = load i64, i64* %97, align 8
  %2702 = load i8*, i8** %13, align 8
  %2703 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2704 = load i32, i32* %2703, align 4
  %2705 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2706 = load i32, i32* %2705, align 4
  %2707 = load i64, i64* %120, align 8
  %2708 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2700, i64 noundef %2701, i8* noundef %2702, i32 noundef %2704, i32 noundef %2706, i64 noundef %2707, i32* noundef %95) #18
  store i32 %2708, i32* %96, align 4
  br label %2710

2709:                                             ; preds = %2668
  call void @abort() #19
  unreachable

2710:                                             ; preds = %2697, %2687, %2679
  br label %3142

2711:                                             ; preds = %1695
  %2712 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2713 = load %struct.argument*, %struct.argument** %2712, align 8
  %2714 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2715 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2714, i32 0, i32 10
  %2716 = load i64, i64* %2715, align 8
  %2717 = getelementptr inbounds %struct.argument, %struct.argument* %2713, i64 %2716
  %2718 = getelementptr inbounds %struct.argument, %struct.argument* %2717, i32 0, i32 1
  %2719 = bitcast %union.anon.39* %2718 to i64*
  %2720 = load i64, i64* %2719, align 16
  store i64 %2720, i64* %121, align 8
  %2721 = load i32, i32* %85, align 4
  switch i32 %2721, label %2752 [
    i32 0, label %2722
    i32 1, label %2730
    i32 2, label %2740
  ]

2722:                                             ; preds = %2711
  %2723 = load i8*, i8** %16, align 8
  %2724 = load i64, i64* %18, align 8
  %2725 = getelementptr inbounds i8, i8* %2723, i64 %2724
  %2726 = load i64, i64* %97, align 8
  %2727 = load i8*, i8** %13, align 8
  %2728 = load i64, i64* %121, align 8
  %2729 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2725, i64 noundef %2726, i8* noundef %2727, i64 noundef %2728, i32* noundef %95) #18
  store i32 %2729, i32* %96, align 4
  br label %2753

2730:                                             ; preds = %2711
  %2731 = load i8*, i8** %16, align 8
  %2732 = load i64, i64* %18, align 8
  %2733 = getelementptr inbounds i8, i8* %2731, i64 %2732
  %2734 = load i64, i64* %97, align 8
  %2735 = load i8*, i8** %13, align 8
  %2736 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2737 = load i32, i32* %2736, align 4
  %2738 = load i64, i64* %121, align 8
  %2739 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2733, i64 noundef %2734, i8* noundef %2735, i32 noundef %2737, i64 noundef %2738, i32* noundef %95) #18
  store i32 %2739, i32* %96, align 4
  br label %2753

2740:                                             ; preds = %2711
  %2741 = load i8*, i8** %16, align 8
  %2742 = load i64, i64* %18, align 8
  %2743 = getelementptr inbounds i8, i8* %2741, i64 %2742
  %2744 = load i64, i64* %97, align 8
  %2745 = load i8*, i8** %13, align 8
  %2746 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2747 = load i32, i32* %2746, align 4
  %2748 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2749 = load i32, i32* %2748, align 4
  %2750 = load i64, i64* %121, align 8
  %2751 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2743, i64 noundef %2744, i8* noundef %2745, i32 noundef %2747, i32 noundef %2749, i64 noundef %2750, i32* noundef %95) #18
  store i32 %2751, i32* %96, align 4
  br label %2753

2752:                                             ; preds = %2711
  call void @abort() #19
  unreachable

2753:                                             ; preds = %2740, %2730, %2722
  br label %3142

2754:                                             ; preds = %1695
  %2755 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2756 = load %struct.argument*, %struct.argument** %2755, align 8
  %2757 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2758 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2757, i32 0, i32 10
  %2759 = load i64, i64* %2758, align 8
  %2760 = getelementptr inbounds %struct.argument, %struct.argument* %2756, i64 %2759
  %2761 = getelementptr inbounds %struct.argument, %struct.argument* %2760, i32 0, i32 1
  %2762 = bitcast %union.anon.39* %2761 to i64*
  %2763 = load i64, i64* %2762, align 16
  store i64 %2763, i64* %122, align 8
  %2764 = load i32, i32* %85, align 4
  switch i32 %2764, label %2795 [
    i32 0, label %2765
    i32 1, label %2773
    i32 2, label %2783
  ]

2765:                                             ; preds = %2754
  %2766 = load i8*, i8** %16, align 8
  %2767 = load i64, i64* %18, align 8
  %2768 = getelementptr inbounds i8, i8* %2766, i64 %2767
  %2769 = load i64, i64* %97, align 8
  %2770 = load i8*, i8** %13, align 8
  %2771 = load i64, i64* %122, align 8
  %2772 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2768, i64 noundef %2769, i8* noundef %2770, i64 noundef %2771, i32* noundef %95) #18
  store i32 %2772, i32* %96, align 4
  br label %2796

2773:                                             ; preds = %2754
  %2774 = load i8*, i8** %16, align 8
  %2775 = load i64, i64* %18, align 8
  %2776 = getelementptr inbounds i8, i8* %2774, i64 %2775
  %2777 = load i64, i64* %97, align 8
  %2778 = load i8*, i8** %13, align 8
  %2779 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2780 = load i32, i32* %2779, align 4
  %2781 = load i64, i64* %122, align 8
  %2782 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2776, i64 noundef %2777, i8* noundef %2778, i32 noundef %2780, i64 noundef %2781, i32* noundef %95) #18
  store i32 %2782, i32* %96, align 4
  br label %2796

2783:                                             ; preds = %2754
  %2784 = load i8*, i8** %16, align 8
  %2785 = load i64, i64* %18, align 8
  %2786 = getelementptr inbounds i8, i8* %2784, i64 %2785
  %2787 = load i64, i64* %97, align 8
  %2788 = load i8*, i8** %13, align 8
  %2789 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2790 = load i32, i32* %2789, align 4
  %2791 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2792 = load i32, i32* %2791, align 4
  %2793 = load i64, i64* %122, align 8
  %2794 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2786, i64 noundef %2787, i8* noundef %2788, i32 noundef %2790, i32 noundef %2792, i64 noundef %2793, i32* noundef %95) #18
  store i32 %2794, i32* %96, align 4
  br label %2796

2795:                                             ; preds = %2754
  call void @abort() #19
  unreachable

2796:                                             ; preds = %2783, %2773, %2765
  br label %3142

2797:                                             ; preds = %1695
  %2798 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2799 = load %struct.argument*, %struct.argument** %2798, align 8
  %2800 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2801 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2800, i32 0, i32 10
  %2802 = load i64, i64* %2801, align 8
  %2803 = getelementptr inbounds %struct.argument, %struct.argument* %2799, i64 %2802
  %2804 = getelementptr inbounds %struct.argument, %struct.argument* %2803, i32 0, i32 1
  %2805 = bitcast %union.anon.39* %2804 to i64*
  %2806 = load i64, i64* %2805, align 16
  store i64 %2806, i64* %123, align 8
  %2807 = load i32, i32* %85, align 4
  switch i32 %2807, label %2838 [
    i32 0, label %2808
    i32 1, label %2816
    i32 2, label %2826
  ]

2808:                                             ; preds = %2797
  %2809 = load i8*, i8** %16, align 8
  %2810 = load i64, i64* %18, align 8
  %2811 = getelementptr inbounds i8, i8* %2809, i64 %2810
  %2812 = load i64, i64* %97, align 8
  %2813 = load i8*, i8** %13, align 8
  %2814 = load i64, i64* %123, align 8
  %2815 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2811, i64 noundef %2812, i8* noundef %2813, i64 noundef %2814, i32* noundef %95) #18
  store i32 %2815, i32* %96, align 4
  br label %2839

2816:                                             ; preds = %2797
  %2817 = load i8*, i8** %16, align 8
  %2818 = load i64, i64* %18, align 8
  %2819 = getelementptr inbounds i8, i8* %2817, i64 %2818
  %2820 = load i64, i64* %97, align 8
  %2821 = load i8*, i8** %13, align 8
  %2822 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2823 = load i32, i32* %2822, align 4
  %2824 = load i64, i64* %123, align 8
  %2825 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2819, i64 noundef %2820, i8* noundef %2821, i32 noundef %2823, i64 noundef %2824, i32* noundef %95) #18
  store i32 %2825, i32* %96, align 4
  br label %2839

2826:                                             ; preds = %2797
  %2827 = load i8*, i8** %16, align 8
  %2828 = load i64, i64* %18, align 8
  %2829 = getelementptr inbounds i8, i8* %2827, i64 %2828
  %2830 = load i64, i64* %97, align 8
  %2831 = load i8*, i8** %13, align 8
  %2832 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2833 = load i32, i32* %2832, align 4
  %2834 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2835 = load i32, i32* %2834, align 4
  %2836 = load i64, i64* %123, align 8
  %2837 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2829, i64 noundef %2830, i8* noundef %2831, i32 noundef %2833, i32 noundef %2835, i64 noundef %2836, i32* noundef %95) #18
  store i32 %2837, i32* %96, align 4
  br label %2839

2838:                                             ; preds = %2797
  call void @abort() #19
  unreachable

2839:                                             ; preds = %2826, %2816, %2808
  br label %3142

2840:                                             ; preds = %1695
  %2841 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2842 = load %struct.argument*, %struct.argument** %2841, align 8
  %2843 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2844 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2843, i32 0, i32 10
  %2845 = load i64, i64* %2844, align 8
  %2846 = getelementptr inbounds %struct.argument, %struct.argument* %2842, i64 %2845
  %2847 = getelementptr inbounds %struct.argument, %struct.argument* %2846, i32 0, i32 1
  %2848 = bitcast %union.anon.39* %2847 to double*
  %2849 = load double, double* %2848, align 16
  store double %2849, double* %124, align 8
  %2850 = load i32, i32* %85, align 4
  switch i32 %2850, label %2881 [
    i32 0, label %2851
    i32 1, label %2859
    i32 2, label %2869
  ]

2851:                                             ; preds = %2840
  %2852 = load i8*, i8** %16, align 8
  %2853 = load i64, i64* %18, align 8
  %2854 = getelementptr inbounds i8, i8* %2852, i64 %2853
  %2855 = load i64, i64* %97, align 8
  %2856 = load i8*, i8** %13, align 8
  %2857 = load double, double* %124, align 8
  %2858 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2854, i64 noundef %2855, i8* noundef %2856, double noundef %2857, i32* noundef %95) #18
  store i32 %2858, i32* %96, align 4
  br label %2882

2859:                                             ; preds = %2840
  %2860 = load i8*, i8** %16, align 8
  %2861 = load i64, i64* %18, align 8
  %2862 = getelementptr inbounds i8, i8* %2860, i64 %2861
  %2863 = load i64, i64* %97, align 8
  %2864 = load i8*, i8** %13, align 8
  %2865 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2866 = load i32, i32* %2865, align 4
  %2867 = load double, double* %124, align 8
  %2868 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2862, i64 noundef %2863, i8* noundef %2864, i32 noundef %2866, double noundef %2867, i32* noundef %95) #18
  store i32 %2868, i32* %96, align 4
  br label %2882

2869:                                             ; preds = %2840
  %2870 = load i8*, i8** %16, align 8
  %2871 = load i64, i64* %18, align 8
  %2872 = getelementptr inbounds i8, i8* %2870, i64 %2871
  %2873 = load i64, i64* %97, align 8
  %2874 = load i8*, i8** %13, align 8
  %2875 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2876 = load i32, i32* %2875, align 4
  %2877 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2878 = load i32, i32* %2877, align 4
  %2879 = load double, double* %124, align 8
  %2880 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2872, i64 noundef %2873, i8* noundef %2874, i32 noundef %2876, i32 noundef %2878, double noundef %2879, i32* noundef %95) #18
  store i32 %2880, i32* %96, align 4
  br label %2882

2881:                                             ; preds = %2840
  call void @abort() #19
  unreachable

2882:                                             ; preds = %2869, %2859, %2851
  br label %3142

2883:                                             ; preds = %1695
  %2884 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2885 = load %struct.argument*, %struct.argument** %2884, align 8
  %2886 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2887 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2886, i32 0, i32 10
  %2888 = load i64, i64* %2887, align 8
  %2889 = getelementptr inbounds %struct.argument, %struct.argument* %2885, i64 %2888
  %2890 = getelementptr inbounds %struct.argument, %struct.argument* %2889, i32 0, i32 1
  %2891 = bitcast %union.anon.39* %2890 to fp128*
  %2892 = load fp128, fp128* %2891, align 16
  store fp128 %2892, fp128* %125, align 16
  %2893 = load i32, i32* %85, align 4
  switch i32 %2893, label %2924 [
    i32 0, label %2894
    i32 1, label %2902
    i32 2, label %2912
  ]

2894:                                             ; preds = %2883
  %2895 = load i8*, i8** %16, align 8
  %2896 = load i64, i64* %18, align 8
  %2897 = getelementptr inbounds i8, i8* %2895, i64 %2896
  %2898 = load i64, i64* %97, align 8
  %2899 = load i8*, i8** %13, align 8
  %2900 = load fp128, fp128* %125, align 16
  %2901 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2897, i64 noundef %2898, i8* noundef %2899, fp128 noundef %2900, i32* noundef %95) #18
  store i32 %2901, i32* %96, align 4
  br label %2925

2902:                                             ; preds = %2883
  %2903 = load i8*, i8** %16, align 8
  %2904 = load i64, i64* %18, align 8
  %2905 = getelementptr inbounds i8, i8* %2903, i64 %2904
  %2906 = load i64, i64* %97, align 8
  %2907 = load i8*, i8** %13, align 8
  %2908 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2909 = load i32, i32* %2908, align 4
  %2910 = load fp128, fp128* %125, align 16
  %2911 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2905, i64 noundef %2906, i8* noundef %2907, i32 noundef %2909, fp128 noundef %2910, i32* noundef %95) #18
  store i32 %2911, i32* %96, align 4
  br label %2925

2912:                                             ; preds = %2883
  %2913 = load i8*, i8** %16, align 8
  %2914 = load i64, i64* %18, align 8
  %2915 = getelementptr inbounds i8, i8* %2913, i64 %2914
  %2916 = load i64, i64* %97, align 8
  %2917 = load i8*, i8** %13, align 8
  %2918 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2919 = load i32, i32* %2918, align 4
  %2920 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2921 = load i32, i32* %2920, align 4
  %2922 = load fp128, fp128* %125, align 16
  %2923 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2915, i64 noundef %2916, i8* noundef %2917, i32 noundef %2919, i32 noundef %2921, fp128 noundef %2922, i32* noundef %95) #18
  store i32 %2923, i32* %96, align 4
  br label %2925

2924:                                             ; preds = %2883
  call void @abort() #19
  unreachable

2925:                                             ; preds = %2912, %2902, %2894
  br label %3142

2926:                                             ; preds = %1695
  %2927 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2928 = load %struct.argument*, %struct.argument** %2927, align 8
  %2929 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2930 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2929, i32 0, i32 10
  %2931 = load i64, i64* %2930, align 8
  %2932 = getelementptr inbounds %struct.argument, %struct.argument* %2928, i64 %2931
  %2933 = getelementptr inbounds %struct.argument, %struct.argument* %2932, i32 0, i32 1
  %2934 = bitcast %union.anon.39* %2933 to i32*
  %2935 = load i32, i32* %2934, align 16
  store i32 %2935, i32* %126, align 4
  %2936 = load i32, i32* %85, align 4
  switch i32 %2936, label %2967 [
    i32 0, label %2937
    i32 1, label %2945
    i32 2, label %2955
  ]

2937:                                             ; preds = %2926
  %2938 = load i8*, i8** %16, align 8
  %2939 = load i64, i64* %18, align 8
  %2940 = getelementptr inbounds i8, i8* %2938, i64 %2939
  %2941 = load i64, i64* %97, align 8
  %2942 = load i8*, i8** %13, align 8
  %2943 = load i32, i32* %126, align 4
  %2944 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2940, i64 noundef %2941, i8* noundef %2942, i32 noundef %2943, i32* noundef %95) #18
  store i32 %2944, i32* %96, align 4
  br label %2968

2945:                                             ; preds = %2926
  %2946 = load i8*, i8** %16, align 8
  %2947 = load i64, i64* %18, align 8
  %2948 = getelementptr inbounds i8, i8* %2946, i64 %2947
  %2949 = load i64, i64* %97, align 8
  %2950 = load i8*, i8** %13, align 8
  %2951 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2952 = load i32, i32* %2951, align 4
  %2953 = load i32, i32* %126, align 4
  %2954 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2948, i64 noundef %2949, i8* noundef %2950, i32 noundef %2952, i32 noundef %2953, i32* noundef %95) #18
  store i32 %2954, i32* %96, align 4
  br label %2968

2955:                                             ; preds = %2926
  %2956 = load i8*, i8** %16, align 8
  %2957 = load i64, i64* %18, align 8
  %2958 = getelementptr inbounds i8, i8* %2956, i64 %2957
  %2959 = load i64, i64* %97, align 8
  %2960 = load i8*, i8** %13, align 8
  %2961 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2962 = load i32, i32* %2961, align 4
  %2963 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %2964 = load i32, i32* %2963, align 4
  %2965 = load i32, i32* %126, align 4
  %2966 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2958, i64 noundef %2959, i8* noundef %2960, i32 noundef %2962, i32 noundef %2964, i32 noundef %2965, i32* noundef %95) #18
  store i32 %2966, i32* %96, align 4
  br label %2968

2967:                                             ; preds = %2926
  call void @abort() #19
  unreachable

2968:                                             ; preds = %2955, %2945, %2937
  br label %3142

2969:                                             ; preds = %1695
  %2970 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %2971 = load %struct.argument*, %struct.argument** %2970, align 8
  %2972 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %2973 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %2972, i32 0, i32 10
  %2974 = load i64, i64* %2973, align 8
  %2975 = getelementptr inbounds %struct.argument, %struct.argument* %2971, i64 %2974
  %2976 = getelementptr inbounds %struct.argument, %struct.argument* %2975, i32 0, i32 1
  %2977 = bitcast %union.anon.39* %2976 to i32*
  %2978 = load i32, i32* %2977, align 16
  store i32 %2978, i32* %127, align 4
  %2979 = load i32, i32* %85, align 4
  switch i32 %2979, label %3010 [
    i32 0, label %2980
    i32 1, label %2988
    i32 2, label %2998
  ]

2980:                                             ; preds = %2969
  %2981 = load i8*, i8** %16, align 8
  %2982 = load i64, i64* %18, align 8
  %2983 = getelementptr inbounds i8, i8* %2981, i64 %2982
  %2984 = load i64, i64* %97, align 8
  %2985 = load i8*, i8** %13, align 8
  %2986 = load i32, i32* %127, align 4
  %2987 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2983, i64 noundef %2984, i8* noundef %2985, i32 noundef %2986, i32* noundef %95) #18
  store i32 %2987, i32* %96, align 4
  br label %3011

2988:                                             ; preds = %2969
  %2989 = load i8*, i8** %16, align 8
  %2990 = load i64, i64* %18, align 8
  %2991 = getelementptr inbounds i8, i8* %2989, i64 %2990
  %2992 = load i64, i64* %97, align 8
  %2993 = load i8*, i8** %13, align 8
  %2994 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %2995 = load i32, i32* %2994, align 4
  %2996 = load i32, i32* %127, align 4
  %2997 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2991, i64 noundef %2992, i8* noundef %2993, i32 noundef %2995, i32 noundef %2996, i32* noundef %95) #18
  store i32 %2997, i32* %96, align 4
  br label %3011

2998:                                             ; preds = %2969
  %2999 = load i8*, i8** %16, align 8
  %3000 = load i64, i64* %18, align 8
  %3001 = getelementptr inbounds i8, i8* %2999, i64 %3000
  %3002 = load i64, i64* %97, align 8
  %3003 = load i8*, i8** %13, align 8
  %3004 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3005 = load i32, i32* %3004, align 4
  %3006 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %3007 = load i32, i32* %3006, align 4
  %3008 = load i32, i32* %127, align 4
  %3009 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3001, i64 noundef %3002, i8* noundef %3003, i32 noundef %3005, i32 noundef %3007, i32 noundef %3008, i32* noundef %95) #18
  store i32 %3009, i32* %96, align 4
  br label %3011

3010:                                             ; preds = %2969
  call void @abort() #19
  unreachable

3011:                                             ; preds = %2998, %2988, %2980
  br label %3142

3012:                                             ; preds = %1695
  %3013 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3014 = load %struct.argument*, %struct.argument** %3013, align 8
  %3015 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3016 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3015, i32 0, i32 10
  %3017 = load i64, i64* %3016, align 8
  %3018 = getelementptr inbounds %struct.argument, %struct.argument* %3014, i64 %3017
  %3019 = getelementptr inbounds %struct.argument, %struct.argument* %3018, i32 0, i32 1
  %3020 = bitcast %union.anon.39* %3019 to i8**
  %3021 = load i8*, i8** %3020, align 16
  store i8* %3021, i8** %128, align 8
  %3022 = load i32, i32* %85, align 4
  switch i32 %3022, label %3053 [
    i32 0, label %3023
    i32 1, label %3031
    i32 2, label %3041
  ]

3023:                                             ; preds = %3012
  %3024 = load i8*, i8** %16, align 8
  %3025 = load i64, i64* %18, align 8
  %3026 = getelementptr inbounds i8, i8* %3024, i64 %3025
  %3027 = load i64, i64* %97, align 8
  %3028 = load i8*, i8** %13, align 8
  %3029 = load i8*, i8** %128, align 8
  %3030 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3026, i64 noundef %3027, i8* noundef %3028, i8* noundef %3029, i32* noundef %95) #18
  store i32 %3030, i32* %96, align 4
  br label %3054

3031:                                             ; preds = %3012
  %3032 = load i8*, i8** %16, align 8
  %3033 = load i64, i64* %18, align 8
  %3034 = getelementptr inbounds i8, i8* %3032, i64 %3033
  %3035 = load i64, i64* %97, align 8
  %3036 = load i8*, i8** %13, align 8
  %3037 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3038 = load i32, i32* %3037, align 4
  %3039 = load i8*, i8** %128, align 8
  %3040 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3034, i64 noundef %3035, i8* noundef %3036, i32 noundef %3038, i8* noundef %3039, i32* noundef %95) #18
  store i32 %3040, i32* %96, align 4
  br label %3054

3041:                                             ; preds = %3012
  %3042 = load i8*, i8** %16, align 8
  %3043 = load i64, i64* %18, align 8
  %3044 = getelementptr inbounds i8, i8* %3042, i64 %3043
  %3045 = load i64, i64* %97, align 8
  %3046 = load i8*, i8** %13, align 8
  %3047 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3048 = load i32, i32* %3047, align 4
  %3049 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %3050 = load i32, i32* %3049, align 4
  %3051 = load i8*, i8** %128, align 8
  %3052 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3044, i64 noundef %3045, i8* noundef %3046, i32 noundef %3048, i32 noundef %3050, i8* noundef %3051, i32* noundef %95) #18
  store i32 %3052, i32* %96, align 4
  br label %3054

3053:                                             ; preds = %3012
  call void @abort() #19
  unreachable

3054:                                             ; preds = %3041, %3031, %3023
  br label %3142

3055:                                             ; preds = %1695
  %3056 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3057 = load %struct.argument*, %struct.argument** %3056, align 8
  %3058 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3059 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3058, i32 0, i32 10
  %3060 = load i64, i64* %3059, align 8
  %3061 = getelementptr inbounds %struct.argument, %struct.argument* %3057, i64 %3060
  %3062 = getelementptr inbounds %struct.argument, %struct.argument* %3061, i32 0, i32 1
  %3063 = bitcast %union.anon.39* %3062 to i32**
  %3064 = load i32*, i32** %3063, align 16
  store i32* %3064, i32** %129, align 8
  %3065 = load i32, i32* %85, align 4
  switch i32 %3065, label %3096 [
    i32 0, label %3066
    i32 1, label %3074
    i32 2, label %3084
  ]

3066:                                             ; preds = %3055
  %3067 = load i8*, i8** %16, align 8
  %3068 = load i64, i64* %18, align 8
  %3069 = getelementptr inbounds i8, i8* %3067, i64 %3068
  %3070 = load i64, i64* %97, align 8
  %3071 = load i8*, i8** %13, align 8
  %3072 = load i32*, i32** %129, align 8
  %3073 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3069, i64 noundef %3070, i8* noundef %3071, i32* noundef %3072, i32* noundef %95) #18
  store i32 %3073, i32* %96, align 4
  br label %3097

3074:                                             ; preds = %3055
  %3075 = load i8*, i8** %16, align 8
  %3076 = load i64, i64* %18, align 8
  %3077 = getelementptr inbounds i8, i8* %3075, i64 %3076
  %3078 = load i64, i64* %97, align 8
  %3079 = load i8*, i8** %13, align 8
  %3080 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3081 = load i32, i32* %3080, align 4
  %3082 = load i32*, i32** %129, align 8
  %3083 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3077, i64 noundef %3078, i8* noundef %3079, i32 noundef %3081, i32* noundef %3082, i32* noundef %95) #18
  store i32 %3083, i32* %96, align 4
  br label %3097

3084:                                             ; preds = %3055
  %3085 = load i8*, i8** %16, align 8
  %3086 = load i64, i64* %18, align 8
  %3087 = getelementptr inbounds i8, i8* %3085, i64 %3086
  %3088 = load i64, i64* %97, align 8
  %3089 = load i8*, i8** %13, align 8
  %3090 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3091 = load i32, i32* %3090, align 4
  %3092 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %3093 = load i32, i32* %3092, align 4
  %3094 = load i32*, i32** %129, align 8
  %3095 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3087, i64 noundef %3088, i8* noundef %3089, i32 noundef %3091, i32 noundef %3093, i32* noundef %3094, i32* noundef %95) #18
  store i32 %3095, i32* %96, align 4
  br label %3097

3096:                                             ; preds = %3055
  call void @abort() #19
  unreachable

3097:                                             ; preds = %3084, %3074, %3066
  br label %3142

3098:                                             ; preds = %1695
  %3099 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3100 = load %struct.argument*, %struct.argument** %3099, align 8
  %3101 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3102 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3101, i32 0, i32 10
  %3103 = load i64, i64* %3102, align 8
  %3104 = getelementptr inbounds %struct.argument, %struct.argument* %3100, i64 %3103
  %3105 = getelementptr inbounds %struct.argument, %struct.argument* %3104, i32 0, i32 1
  %3106 = bitcast %union.anon.39* %3105 to i8**
  %3107 = load i8*, i8** %3106, align 16
  store i8* %3107, i8** %130, align 8
  %3108 = load i32, i32* %85, align 4
  switch i32 %3108, label %3139 [
    i32 0, label %3109
    i32 1, label %3117
    i32 2, label %3127
  ]

3109:                                             ; preds = %3098
  %3110 = load i8*, i8** %16, align 8
  %3111 = load i64, i64* %18, align 8
  %3112 = getelementptr inbounds i8, i8* %3110, i64 %3111
  %3113 = load i64, i64* %97, align 8
  %3114 = load i8*, i8** %13, align 8
  %3115 = load i8*, i8** %130, align 8
  %3116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3112, i64 noundef %3113, i8* noundef %3114, i8* noundef %3115, i32* noundef %95) #18
  store i32 %3116, i32* %96, align 4
  br label %3140

3117:                                             ; preds = %3098
  %3118 = load i8*, i8** %16, align 8
  %3119 = load i64, i64* %18, align 8
  %3120 = getelementptr inbounds i8, i8* %3118, i64 %3119
  %3121 = load i64, i64* %97, align 8
  %3122 = load i8*, i8** %13, align 8
  %3123 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3124 = load i32, i32* %3123, align 4
  %3125 = load i8*, i8** %130, align 8
  %3126 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3120, i64 noundef %3121, i8* noundef %3122, i32 noundef %3124, i8* noundef %3125, i32* noundef %95) #18
  store i32 %3126, i32* %96, align 4
  br label %3140

3127:                                             ; preds = %3098
  %3128 = load i8*, i8** %16, align 8
  %3129 = load i64, i64* %18, align 8
  %3130 = getelementptr inbounds i8, i8* %3128, i64 %3129
  %3131 = load i64, i64* %97, align 8
  %3132 = load i8*, i8** %13, align 8
  %3133 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %3134 = load i32, i32* %3133, align 4
  %3135 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %3136 = load i32, i32* %3135, align 4
  %3137 = load i8*, i8** %130, align 8
  %3138 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3130, i64 noundef %3131, i8* noundef %3132, i32 noundef %3134, i32 noundef %3136, i8* noundef %3137, i32* noundef %95) #18
  store i32 %3138, i32* %96, align 4
  br label %3140

3139:                                             ; preds = %3098
  call void @abort() #19
  unreachable

3140:                                             ; preds = %3127, %3117, %3109
  br label %3142

3141:                                             ; preds = %1695
  call void @abort() #19
  unreachable

3142:                                             ; preds = %3140, %3097, %3054, %3011, %2968, %2925, %2882, %2839, %2796, %2753, %2710, %2667, %2624, %2581, %2535, %2489, %2446, %2403, %2360, %2317, %2271, %2225, %2179, %2133, %2090, %2047, %2004, %1961, %1918, %1875, %1831, %1787, %1743
  %3143 = load i32, i32* %95, align 4
  %3144 = icmp sge i32 %3143, 0
  br i1 %3144, label %3145, label %3168

3145:                                             ; preds = %3142
  %3146 = load i32, i32* %95, align 4
  %3147 = zext i32 %3146 to i64
  %3148 = load i64, i64* %97, align 8
  %3149 = icmp ult i64 %3147, %3148
  br i1 %3149, label %3150, label %3161

3150:                                             ; preds = %3145
  %3151 = load i8*, i8** %16, align 8
  %3152 = load i64, i64* %18, align 8
  %3153 = getelementptr inbounds i8, i8* %3151, i64 %3152
  %3154 = load i32, i32* %95, align 4
  %3155 = sext i32 %3154 to i64
  %3156 = getelementptr inbounds i8, i8* %3153, i64 %3155
  %3157 = load i8, i8* %3156, align 1
  %3158 = zext i8 %3157 to i32
  %3159 = icmp ne i32 %3158, 0
  br i1 %3159, label %3160, label %3161

3160:                                             ; preds = %3150
  call void @abort() #19
  unreachable

3161:                                             ; preds = %3150, %3145
  %3162 = load i32, i32* %96, align 4
  %3163 = load i32, i32* %95, align 4
  %3164 = icmp sgt i32 %3162, %3163
  br i1 %3164, label %3165, label %3167

3165:                                             ; preds = %3161
  %3166 = load i32, i32* %96, align 4
  store i32 %3166, i32* %95, align 4
  br label %3167

3167:                                             ; preds = %3165, %3161
  br label %3185

3168:                                             ; preds = %3142
  %3169 = load i8*, i8** %84, align 8
  %3170 = getelementptr inbounds i8, i8* %3169, i64 1
  %3171 = load i8, i8* %3170, align 1
  %3172 = zext i8 %3171 to i32
  %3173 = icmp ne i32 %3172, 0
  br i1 %3173, label %3174, label %3177

3174:                                             ; preds = %3168
  %3175 = load i8*, i8** %84, align 8
  %3176 = getelementptr inbounds i8, i8* %3175, i64 1
  store i8 0, i8* %3176, align 1
  br label %1688

3177:                                             ; preds = %3168
  %3178 = load i32, i32* %96, align 4
  %3179 = icmp slt i32 %3178, 0
  br i1 %3179, label %3180, label %3181

3180:                                             ; preds = %3177
  br label %3183

3181:                                             ; preds = %3177
  %3182 = load i32, i32* %96, align 4
  store i32 %3182, i32* %95, align 4
  br label %3183

3183:                                             ; preds = %3181, %3180
  br label %3184

3184:                                             ; preds = %3183
  br label %3185

3185:                                             ; preds = %3184, %3167
  %3186 = load i32, i32* %95, align 4
  %3187 = icmp slt i32 %3186, 0
  br i1 %3187, label %3188, label %3210

3188:                                             ; preds = %3185
  %3189 = call i32* @__errno_location() #21
  %3190 = load i32, i32* %3189, align 4
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3192, label %3209

3192:                                             ; preds = %3188
  %3193 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3194 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3193, i32 0, i32 9
  %3195 = load i8, i8* %3194, align 8
  %3196 = zext i8 %3195 to i32
  %3197 = icmp eq i32 %3196, 99
  br i1 %3197, label %3204, label %3198

3198:                                             ; preds = %3192
  %3199 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3200 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3199, i32 0, i32 9
  %3201 = load i8, i8* %3200, align 8
  %3202 = zext i8 %3201 to i32
  %3203 = icmp eq i32 %3202, 115
  br i1 %3203, label %3204, label %3206

3204:                                             ; preds = %3198, %3192
  %3205 = call i32* @__errno_location() #21
  store i32 84, i32* %3205, align 4
  br label %3208

3206:                                             ; preds = %3198
  %3207 = call i32* @__errno_location() #21
  store i32 22, i32* %3207, align 4
  br label %3208

3208:                                             ; preds = %3206, %3204
  br label %3209

3209:                                             ; preds = %3208, %3188
  br label %3447

3210:                                             ; preds = %3185
  %3211 = load i32, i32* %95, align 4
  %3212 = add i32 %3211, 1
  %3213 = zext i32 %3212 to i64
  %3214 = load i64, i64* %97, align 8
  %3215 = icmp uge i64 %3213, %3214
  br i1 %3215, label %3216, label %3302

3216:                                             ; preds = %3210
  %3217 = load i64, i64* %97, align 8
  %3218 = icmp eq i64 %3217, 2147483647
  br i1 %3218, label %3219, label %3220

3219:                                             ; preds = %3216
  br label %3441

3220:                                             ; preds = %3216
  %3221 = load i64, i64* %18, align 8
  %3222 = load i32, i32* %95, align 4
  %3223 = add i32 %3222, 2
  %3224 = zext i32 %3223 to i64
  %3225 = add i64 %3224, 1
  %3226 = sub i64 %3225, 1
  %3227 = udiv i64 %3226, 1
  %3228 = call i64 @xsum(i64 noundef %3221, i64 noundef %3227) #20
  %3229 = load i64, i64* %17, align 8
  %3230 = icmp ule i64 %3229, 9223372036854775807
  br i1 %3230, label %3231, label %3234

3231:                                             ; preds = %3220
  %3232 = load i64, i64* %17, align 8
  %3233 = mul i64 %3232, 2
  br label %3235

3234:                                             ; preds = %3220
  br label %3235

3235:                                             ; preds = %3234, %3231
  %3236 = phi i64 [ %3233, %3231 ], [ -1, %3234 ]
  %3237 = call i64 @xmax(i64 noundef %3228, i64 noundef %3236) #20
  store i64 %3237, i64* %131, align 8
  %3238 = load i64, i64* %131, align 8
  %3239 = load i64, i64* %17, align 8
  %3240 = icmp ugt i64 %3238, %3239
  br i1 %3240, label %3241, label %3301

3241:                                             ; preds = %3235
  %3242 = load i64, i64* %17, align 8
  %3243 = icmp ugt i64 %3242, 0
  br i1 %3243, label %3244, label %3253

3244:                                             ; preds = %3241
  %3245 = load i64, i64* %17, align 8
  %3246 = icmp ule i64 %3245, 9223372036854775807
  br i1 %3246, label %3247, label %3250

3247:                                             ; preds = %3244
  %3248 = load i64, i64* %17, align 8
  %3249 = mul i64 %3248, 2
  br label %3251

3250:                                             ; preds = %3244
  br label %3251

3251:                                             ; preds = %3250, %3247
  %3252 = phi i64 [ %3249, %3247 ], [ -1, %3250 ]
  br label %3254

3253:                                             ; preds = %3241
  br label %3254

3254:                                             ; preds = %3253, %3251
  %3255 = phi i64 [ %3252, %3251 ], [ 12, %3253 ]
  store i64 %3255, i64* %17, align 8
  %3256 = load i64, i64* %131, align 8
  %3257 = load i64, i64* %17, align 8
  %3258 = icmp ugt i64 %3256, %3257
  br i1 %3258, label %3259, label %3261

3259:                                             ; preds = %3254
  %3260 = load i64, i64* %131, align 8
  store i64 %3260, i64* %17, align 8
  br label %3261

3261:                                             ; preds = %3259, %3254
  %3262 = load i64, i64* %17, align 8
  %3263 = icmp ule i64 %3262, -1
  br i1 %3263, label %3264, label %3267

3264:                                             ; preds = %3261
  %3265 = load i64, i64* %17, align 8
  %3266 = mul i64 %3265, 1
  br label %3268

3267:                                             ; preds = %3261
  br label %3268

3268:                                             ; preds = %3267, %3264
  %3269 = phi i64 [ %3266, %3264 ], [ -1, %3267 ]
  store i64 %3269, i64* %132, align 8
  %3270 = load i64, i64* %132, align 8
  %3271 = icmp eq i64 %3270, -1
  br i1 %3271, label %3272, label %3273

3272:                                             ; preds = %3268
  br label %3443

3273:                                             ; preds = %3268
  %3274 = load i8*, i8** %16, align 8
  %3275 = load i8*, i8** %6, align 8
  %3276 = icmp eq i8* %3274, %3275
  br i1 %3276, label %3277, label %3280

3277:                                             ; preds = %3273
  %3278 = load i64, i64* %132, align 8
  %3279 = call noalias i8* @malloc(i64 noundef %3278) #18
  store i8* %3279, i8** %133, align 8
  br label %3284

3280:                                             ; preds = %3273
  %3281 = load i8*, i8** %16, align 8
  %3282 = load i64, i64* %132, align 8
  %3283 = call i8* @rpl_realloc(i8* noundef %3281, i64 noundef %3282)
  store i8* %3283, i8** %133, align 8
  br label %3284

3284:                                             ; preds = %3280, %3277
  %3285 = load i8*, i8** %133, align 8
  %3286 = icmp eq i8* %3285, null
  br i1 %3286, label %3287, label %3288

3287:                                             ; preds = %3284
  br label %3443

3288:                                             ; preds = %3284
  %3289 = load i8*, i8** %16, align 8
  %3290 = load i8*, i8** %6, align 8
  %3291 = icmp eq i8* %3289, %3290
  br i1 %3291, label %3292, label %3299

3292:                                             ; preds = %3288
  %3293 = load i64, i64* %18, align 8
  %3294 = icmp ugt i64 %3293, 0
  br i1 %3294, label %3295, label %3299

3295:                                             ; preds = %3292
  %3296 = load i8*, i8** %133, align 8
  %3297 = load i8*, i8** %16, align 8
  %3298 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3296, i8* align 1 %3297, i64 %3298, i1 false)
  br label %3299

3299:                                             ; preds = %3295, %3292, %3288
  %3300 = load i8*, i8** %133, align 8
  store i8* %3300, i8** %16, align 8
  br label %3301

3301:                                             ; preds = %3299, %3235
  br label %1688

3302:                                             ; preds = %3210
  %3303 = load i32, i32* %95, align 4
  %3304 = sext i32 %3303 to i64
  %3305 = load i64, i64* %18, align 8
  %3306 = add i64 %3305, %3304
  store i64 %3306, i64* %18, align 8
  br label %3307

3307:                                             ; preds = %3302
  %3308 = load i32, i32* %87, align 4
  %3309 = call i32* @__errno_location() #21
  store i32 %3308, i32* %3309, align 4
  br label %3310

3310:                                             ; preds = %3307, %1354
  br label %3311

3311:                                             ; preds = %3310, %699
  br label %3312

3312:                                             ; preds = %3311
  br label %3313

3313:                                             ; preds = %3312, %364
  br label %3314

3314:                                             ; preds = %3313
  %3315 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3316 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3315, i32 0, i32 1
  %3317 = load i8*, i8** %3316, align 8
  store i8* %3317, i8** %19, align 8
  %3318 = load i64, i64* %20, align 8
  %3319 = add i64 %3318, 1
  store i64 %3319, i64* %20, align 8
  %3320 = load %struct.char_directive*, %struct.char_directive** %21, align 8
  %3321 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %3320, i32 1
  store %struct.char_directive* %3321, %struct.char_directive** %21, align 8
  br label %193

3322:                                             ; preds = %285
  %3323 = load i64, i64* %18, align 8
  %3324 = call i64 @xsum(i64 noundef %3323, i64 noundef 1) #20
  %3325 = load i64, i64* %17, align 8
  %3326 = icmp ugt i64 %3324, %3325
  br i1 %3326, label %3327, label %3389

3327:                                             ; preds = %3322
  %3328 = load i64, i64* %17, align 8
  %3329 = icmp ugt i64 %3328, 0
  br i1 %3329, label %3330, label %3339

3330:                                             ; preds = %3327
  %3331 = load i64, i64* %17, align 8
  %3332 = icmp ule i64 %3331, 9223372036854775807
  br i1 %3332, label %3333, label %3336

3333:                                             ; preds = %3330
  %3334 = load i64, i64* %17, align 8
  %3335 = mul i64 %3334, 2
  br label %3337

3336:                                             ; preds = %3330
  br label %3337

3337:                                             ; preds = %3336, %3333
  %3338 = phi i64 [ %3335, %3333 ], [ -1, %3336 ]
  br label %3340

3339:                                             ; preds = %3327
  br label %3340

3340:                                             ; preds = %3339, %3337
  %3341 = phi i64 [ %3338, %3337 ], [ 12, %3339 ]
  store i64 %3341, i64* %17, align 8
  %3342 = load i64, i64* %18, align 8
  %3343 = call i64 @xsum(i64 noundef %3342, i64 noundef 1) #20
  %3344 = load i64, i64* %17, align 8
  %3345 = icmp ugt i64 %3343, %3344
  br i1 %3345, label %3346, label %3349

3346:                                             ; preds = %3340
  %3347 = load i64, i64* %18, align 8
  %3348 = call i64 @xsum(i64 noundef %3347, i64 noundef 1) #20
  store i64 %3348, i64* %17, align 8
  br label %3349

3349:                                             ; preds = %3346, %3340
  %3350 = load i64, i64* %17, align 8
  %3351 = icmp ule i64 %3350, -1
  br i1 %3351, label %3352, label %3355

3352:                                             ; preds = %3349
  %3353 = load i64, i64* %17, align 8
  %3354 = mul i64 %3353, 1
  br label %3356

3355:                                             ; preds = %3349
  br label %3356

3356:                                             ; preds = %3355, %3352
  %3357 = phi i64 [ %3354, %3352 ], [ -1, %3355 ]
  store i64 %3357, i64* %134, align 8
  %3358 = load i64, i64* %134, align 8
  %3359 = icmp eq i64 %3358, -1
  br i1 %3359, label %3360, label %3361

3360:                                             ; preds = %3356
  br label %3443

3361:                                             ; preds = %3356
  %3362 = load i8*, i8** %16, align 8
  %3363 = load i8*, i8** %6, align 8
  %3364 = icmp eq i8* %3362, %3363
  br i1 %3364, label %3365, label %3368

3365:                                             ; preds = %3361
  %3366 = load i64, i64* %134, align 8
  %3367 = call noalias i8* @malloc(i64 noundef %3366) #18
  store i8* %3367, i8** %135, align 8
  br label %3372

3368:                                             ; preds = %3361
  %3369 = load i8*, i8** %16, align 8
  %3370 = load i64, i64* %134, align 8
  %3371 = call i8* @rpl_realloc(i8* noundef %3369, i64 noundef %3370)
  store i8* %3371, i8** %135, align 8
  br label %3372

3372:                                             ; preds = %3368, %3365
  %3373 = load i8*, i8** %135, align 8
  %3374 = icmp eq i8* %3373, null
  br i1 %3374, label %3375, label %3376

3375:                                             ; preds = %3372
  br label %3443

3376:                                             ; preds = %3372
  %3377 = load i8*, i8** %16, align 8
  %3378 = load i8*, i8** %6, align 8
  %3379 = icmp eq i8* %3377, %3378
  br i1 %3379, label %3380, label %3387

3380:                                             ; preds = %3376
  %3381 = load i64, i64* %18, align 8
  %3382 = icmp ugt i64 %3381, 0
  br i1 %3382, label %3383, label %3387

3383:                                             ; preds = %3380
  %3384 = load i8*, i8** %135, align 8
  %3385 = load i8*, i8** %16, align 8
  %3386 = load i64, i64* %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3384, i8* align 1 %3385, i64 %3386, i1 false)
  br label %3387

3387:                                             ; preds = %3383, %3380, %3376
  %3388 = load i8*, i8** %135, align 8
  store i8* %3388, i8** %16, align 8
  br label %3389

3389:                                             ; preds = %3387, %3322
  %3390 = load i8*, i8** %16, align 8
  %3391 = load i64, i64* %18, align 8
  %3392 = getelementptr inbounds i8, i8* %3390, i64 %3391
  store i8 0, i8* %3392, align 1
  %3393 = load i8*, i8** %16, align 8
  %3394 = load i8*, i8** %6, align 8
  %3395 = icmp ne i8* %3393, %3394
  br i1 %3395, label %3396, label %3412

3396:                                             ; preds = %3389
  %3397 = load i64, i64* %18, align 8
  %3398 = add i64 %3397, 1
  %3399 = load i64, i64* %17, align 8
  %3400 = icmp ult i64 %3398, %3399
  br i1 %3400, label %3401, label %3412

3401:                                             ; preds = %3396
  %3402 = load i8*, i8** %16, align 8
  %3403 = load i64, i64* %18, align 8
  %3404 = add i64 %3403, 1
  %3405 = mul i64 %3404, 1
  %3406 = call i8* @rpl_realloc(i8* noundef %3402, i64 noundef %3405)
  store i8* %3406, i8** %136, align 8
  %3407 = load i8*, i8** %136, align 8
  %3408 = icmp ne i8* %3407, null
  br i1 %3408, label %3409, label %3411

3409:                                             ; preds = %3401
  %3410 = load i8*, i8** %136, align 8
  store i8* %3410, i8** %16, align 8
  br label %3411

3411:                                             ; preds = %3409, %3401
  br label %3412

3412:                                             ; preds = %3411, %3396, %3389
  %3413 = load i8*, i8** %14, align 8
  %3414 = icmp ne i8* %3413, null
  br i1 %3414, label %3415, label %3417

3415:                                             ; preds = %3412
  %3416 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %3416) #18
  br label %3417

3417:                                             ; preds = %3415, %3412
  %3418 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3419 = load %struct.char_directive*, %struct.char_directive** %3418, align 8
  %3420 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 4
  %3421 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %3420, i64 0, i64 0
  %3422 = icmp ne %struct.char_directive* %3419, %3421
  br i1 %3422, label %3423, label %3427

3423:                                             ; preds = %3417
  %3424 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3425 = load %struct.char_directive*, %struct.char_directive** %3424, align 8
  %3426 = bitcast %struct.char_directive* %3425 to i8*
  call void @free(i8* noundef %3426) #18
  br label %3427

3427:                                             ; preds = %3423, %3417
  %3428 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3429 = load %struct.argument*, %struct.argument** %3428, align 8
  %3430 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 2
  %3431 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %3430, i64 0, i64 0
  %3432 = icmp ne %struct.argument* %3429, %3431
  br i1 %3432, label %3433, label %3437

3433:                                             ; preds = %3427
  %3434 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3435 = load %struct.argument*, %struct.argument** %3434, align 8
  %3436 = bitcast %struct.argument* %3435 to i8*
  call void @free(i8* noundef %3436) #18
  br label %3437

3437:                                             ; preds = %3433, %3427
  %3438 = load i64, i64* %18, align 8
  %3439 = load i64*, i64** %7, align 8
  store i64 %3438, i64* %3439, align 8
  %3440 = load i8*, i8** %16, align 8
  store i8* %3440, i8** %5, align 8
  br label %3504

3441:                                             ; preds = %3219, %1499, %793, %475
  %3442 = call i32* @__errno_location() #21
  store i32 75, i32* %3442, align 4
  br label %3447

3443:                                             ; preds = %3375, %3360, %3287, %3272, %1668, %1653, %1332, %1317, %1237, %1222, %1103, %1088, %1019, %1004, %639, %624, %350, %335, %259, %244
  %3444 = call i32* @__errno_location() #21
  store i32 12, i32* %3444, align 4
  br label %3447

3445:                                             ; preds = %1177, %931, %894
  %3446 = call i32* @__errno_location() #21
  store i32 84, i32* %3446, align 4
  br label %3447

3447:                                             ; preds = %3445, %3443, %3441, %3209
  %3448 = load i8*, i8** %16, align 8
  %3449 = load i8*, i8** %6, align 8
  %3450 = icmp ne i8* %3448, %3449
  br i1 %3450, label %3451, label %3453

3451:                                             ; preds = %3447
  %3452 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %3452) #18
  br label %3453

3453:                                             ; preds = %3451, %3447
  %3454 = load i8*, i8** %14, align 8
  %3455 = icmp ne i8* %3454, null
  br i1 %3455, label %3456, label %3458

3456:                                             ; preds = %3453
  %3457 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %3457) #18
  br label %3458

3458:                                             ; preds = %3456, %3453
  %3459 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3460 = load %struct.char_directive*, %struct.char_directive** %3459, align 8
  %3461 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 4
  %3462 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %3461, i64 0, i64 0
  %3463 = icmp ne %struct.char_directive* %3460, %3462
  br i1 %3463, label %3464, label %3468

3464:                                             ; preds = %3458
  %3465 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3466 = load %struct.char_directive*, %struct.char_directive** %3465, align 8
  %3467 = bitcast %struct.char_directive* %3466 to i8*
  call void @free(i8* noundef %3467) #18
  br label %3468

3468:                                             ; preds = %3464, %3458
  %3469 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3470 = load %struct.argument*, %struct.argument** %3469, align 8
  %3471 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 2
  %3472 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %3471, i64 0, i64 0
  %3473 = icmp ne %struct.argument* %3470, %3472
  br i1 %3473, label %3474, label %3478

3474:                                             ; preds = %3468
  %3475 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3476 = load %struct.argument*, %struct.argument** %3475, align 8
  %3477 = bitcast %struct.argument* %3476 to i8*
  call void @free(i8* noundef %3477) #18
  br label %3478

3478:                                             ; preds = %3474, %3468
  store i8* null, i8** %5, align 8
  br label %3504

3479:                                             ; preds = %176, %170
  %3480 = call i32* @__errno_location() #21
  store i32 12, i32* %3480, align 4
  br label %3483

3481:                                             ; preds = %146
  %3482 = call i32* @__errno_location() #21
  store i32 22, i32* %3482, align 4
  br label %3483

3483:                                             ; preds = %3481, %3479
  %3484 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3485 = load %struct.char_directive*, %struct.char_directive** %3484, align 8
  %3486 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 4
  %3487 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %3486, i64 0, i64 0
  %3488 = icmp ne %struct.char_directive* %3485, %3487
  br i1 %3488, label %3489, label %3493

3489:                                             ; preds = %3483
  %3490 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %9, i32 0, i32 1
  %3491 = load %struct.char_directive*, %struct.char_directive** %3490, align 8
  %3492 = bitcast %struct.char_directive* %3491 to i8*
  call void @free(i8* noundef %3492) #18
  br label %3493

3493:                                             ; preds = %3489, %3483
  %3494 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3495 = load %struct.argument*, %struct.argument** %3494, align 8
  %3496 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 2
  %3497 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %3496, i64 0, i64 0
  %3498 = icmp ne %struct.argument* %3495, %3497
  br i1 %3498, label %3499, label %3503

3499:                                             ; preds = %3493
  %3500 = getelementptr inbounds %struct.arguments, %struct.arguments* %10, i32 0, i32 1
  %3501 = load %struct.argument*, %struct.argument** %3500, align 8
  %3502 = bitcast %struct.argument* %3501 to i8*
  call void @free(i8* noundef %3502) #18
  br label %3503

3503:                                             ; preds = %3499, %3493
  store i8* null, i8** %5, align 8
  br label %3504

3504:                                             ; preds = %3503, %3478, %3437, %140
  %3505 = load i8*, i8** %5, align 8
  ret i8* %3505
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strnlen(i8* noundef, i64 noundef) #7

; Function Attrs: nounwind
declare i64 @wcrtomb(i8* noundef, i32 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @wcslen(i32* noundef) #7

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.240, i64 0, i64 0))
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.241, i64 0, i64 0))
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1
  br label %18

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strlen(i8* noundef %22) #20
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @xsum(i64 noundef %0, i64 noundef %1) #10 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i64 [ %13, %12 ], [ -1, %14 ]
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @xsum3(i64 noundef %0, i64 noundef %1, i64 noundef %2) #10 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @xsum(i64 noundef %7, i64 noundef %8) #20
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @xsum(i64 noundef %9, i64 noundef %10) #20
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @xsum4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #10 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @xsum(i64 noundef %9, i64 noundef %10) #20
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @xsum(i64 noundef %11, i64 noundef %12) #20
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @xsum(i64 noundef %13, i64 noundef %14) #20
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @xmax(i64 noundef %0, i64 noundef %1) #10 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printf_fetchargs(%"struct.std::__va_list"* noundef %0, %struct.arguments* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arguments*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.argument*, align 8
  store %struct.arguments* %1, %struct.arguments** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.arguments*, %struct.arguments** %4, align 8
  %8 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %9 = load %struct.argument*, %struct.argument** %8, align 8
  %10 = getelementptr inbounds %struct.argument, %struct.argument* %9, i64 0
  store %struct.argument* %10, %struct.argument** %6, align 8
  br label %11

11:                                               ; preds = %1116, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.arguments*, %struct.arguments** %4, align 8
  %14 = getelementptr inbounds %struct.arguments, %struct.arguments* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 16
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %1121

17:                                               ; preds = %11
  %18 = load %struct.argument*, %struct.argument** %6, align 8
  %19 = getelementptr inbounds %struct.argument, %struct.argument* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  switch i32 %20, label %1114 [
    i32 1, label %21
    i32 2, label %45
    i32 3, label %69
    i32 4, label %93
    i32 5, label %117
    i32 6, label %140
    i32 7, label %163
    i32 8, label %186
    i32 9, label %209
    i32 10, label %232
    i32 11, label %255
    i32 12, label %279
    i32 13, label %303
    i32 14, label %327
    i32 15, label %351
    i32 16, label %374
    i32 17, label %397
    i32 18, label %420
    i32 19, label %443
    i32 20, label %467
    i32 21, label %491
    i32 22, label %514
    i32 23, label %537
    i32 24, label %560
    i32 25, label %583
    i32 26, label %606
    i32 27, label %629
    i32 28, label %652
    i32 29, label %679
    i32 30, label %702
    i32 31, label %725
    i32 32, label %758
    i32 33, label %791
    i32 34, label %814
    i32 35, label %837
    i32 36, label %860
    i32 37, label %883
    i32 38, label %906
    i32 39, label %929
    i32 40, label %952
    i32 41, label %975
    i32 42, label %998
    i32 43, label %1021
    i32 44, label %1044
    i32 45, label %1067
    i32 46, label %1090
    i32 0, label %1113
  ]

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = add i32 %23, 8
  store i32 %26, i32* %22, align 8
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 %23
  %32 = bitcast i8* %31 to i32*
  br label %38

33:                                               ; preds = %25, %21
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %34, align 8
  %37 = bitcast i8* %35 to i32*
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32* [ %32, %28 ], [ %37, %33 ]
  %40 = load i32, i32* %39, align 8
  %41 = trunc i32 %40 to i8
  %42 = load %struct.argument*, %struct.argument** %6, align 8
  %43 = getelementptr inbounds %struct.argument, %struct.argument* %42, i32 0, i32 1
  %44 = bitcast %union.anon.39* %43 to i8*
  store i8 %41, i8* %44, align 16
  br label %1115

45:                                               ; preds = %17
  %46 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = add i32 %47, 8
  store i32 %50, i32* %46, align 8
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 %47
  %56 = bitcast i8* %55 to i32*
  br label %62

57:                                               ; preds = %49, %45
  %58 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8* %60, i8** %58, align 8
  %61 = bitcast i8* %59 to i32*
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i32* [ %56, %52 ], [ %61, %57 ]
  %64 = load i32, i32* %63, align 8
  %65 = trunc i32 %64 to i8
  %66 = load %struct.argument*, %struct.argument** %6, align 8
  %67 = getelementptr inbounds %struct.argument, %struct.argument* %66, i32 0, i32 1
  %68 = bitcast %union.anon.39* %67 to i8*
  store i8 %65, i8* %68, align 16
  br label %1115

69:                                               ; preds = %17
  %70 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = add i32 %71, 8
  store i32 %74, i32* %70, align 8
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 %71
  %80 = bitcast i8* %79 to i32*
  br label %86

81:                                               ; preds = %73, %69
  %82 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  store i8* %84, i8** %82, align 8
  %85 = bitcast i8* %83 to i32*
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i32* [ %80, %76 ], [ %85, %81 ]
  %88 = load i32, i32* %87, align 8
  %89 = trunc i32 %88 to i16
  %90 = load %struct.argument*, %struct.argument** %6, align 8
  %91 = getelementptr inbounds %struct.argument, %struct.argument* %90, i32 0, i32 1
  %92 = bitcast %union.anon.39* %91 to i16*
  store i16 %89, i16* %92, align 16
  br label %1115

93:                                               ; preds = %17
  %94 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = add i32 %95, 8
  store i32 %98, i32* %94, align 8
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 %95
  %104 = bitcast i8* %103 to i32*
  br label %110

105:                                              ; preds = %97, %93
  %106 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8* %108, i8** %106, align 8
  %109 = bitcast i8* %107 to i32*
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32* [ %104, %100 ], [ %109, %105 ]
  %112 = load i32, i32* %111, align 8
  %113 = trunc i32 %112 to i16
  %114 = load %struct.argument*, %struct.argument** %6, align 8
  %115 = getelementptr inbounds %struct.argument, %struct.argument* %114, i32 0, i32 1
  %116 = bitcast %union.anon.39* %115 to i16*
  store i16 %113, i16* %116, align 16
  br label %1115

117:                                              ; preds = %17
  %118 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = add i32 %119, 8
  store i32 %122, i32* %118, align 8
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 %119
  %128 = bitcast i8* %127 to i32*
  br label %134

129:                                              ; preds = %121, %117
  %130 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  store i8* %132, i8** %130, align 8
  %133 = bitcast i8* %131 to i32*
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i32* [ %128, %124 ], [ %133, %129 ]
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.argument*, %struct.argument** %6, align 8
  %138 = getelementptr inbounds %struct.argument, %struct.argument* %137, i32 0, i32 1
  %139 = bitcast %union.anon.39* %138 to i32*
  store i32 %136, i32* %139, align 16
  br label %1115

140:                                              ; preds = %17
  %141 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = add i32 %142, 8
  store i32 %145, i32* %141, align 8
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 %142
  %151 = bitcast i8* %150 to i32*
  br label %157

152:                                              ; preds = %144, %140
  %153 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 8
  store i8* %155, i8** %153, align 8
  %156 = bitcast i8* %154 to i32*
  br label %157

157:                                              ; preds = %152, %147
  %158 = phi i32* [ %151, %147 ], [ %156, %152 ]
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.argument*, %struct.argument** %6, align 8
  %161 = getelementptr inbounds %struct.argument, %struct.argument* %160, i32 0, i32 1
  %162 = bitcast %union.anon.39* %161 to i32*
  store i32 %159, i32* %162, align 16
  br label %1115

163:                                              ; preds = %17
  %164 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = add i32 %165, 8
  store i32 %168, i32* %164, align 8
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 %165
  %174 = bitcast i8* %173 to i64*
  br label %180

175:                                              ; preds = %167, %163
  %176 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  store i8* %178, i8** %176, align 8
  %179 = bitcast i8* %177 to i64*
  br label %180

180:                                              ; preds = %175, %170
  %181 = phi i64* [ %174, %170 ], [ %179, %175 ]
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.argument*, %struct.argument** %6, align 8
  %184 = getelementptr inbounds %struct.argument, %struct.argument* %183, i32 0, i32 1
  %185 = bitcast %union.anon.39* %184 to i64*
  store i64 %182, i64* %185, align 16
  br label %1115

186:                                              ; preds = %17
  %187 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = add i32 %188, 8
  store i32 %191, i32* %187, align 8
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 %188
  %197 = bitcast i8* %196 to i64*
  br label %203

198:                                              ; preds = %190, %186
  %199 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 8
  store i8* %201, i8** %199, align 8
  %202 = bitcast i8* %200 to i64*
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i64* [ %197, %193 ], [ %202, %198 ]
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.argument*, %struct.argument** %6, align 8
  %207 = getelementptr inbounds %struct.argument, %struct.argument* %206, i32 0, i32 1
  %208 = bitcast %union.anon.39* %207 to i64*
  store i64 %205, i64* %208, align 16
  br label %1115

209:                                              ; preds = %17
  %210 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = add i32 %211, 8
  store i32 %214, i32* %210, align 8
  %215 = icmp sle i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 %211
  %220 = bitcast i8* %219 to i64*
  br label %226

221:                                              ; preds = %213, %209
  %222 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 8
  store i8* %224, i8** %222, align 8
  %225 = bitcast i8* %223 to i64*
  br label %226

226:                                              ; preds = %221, %216
  %227 = phi i64* [ %220, %216 ], [ %225, %221 ]
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.argument*, %struct.argument** %6, align 8
  %230 = getelementptr inbounds %struct.argument, %struct.argument* %229, i32 0, i32 1
  %231 = bitcast %union.anon.39* %230 to i64*
  store i64 %228, i64* %231, align 16
  br label %1115

232:                                              ; preds = %17
  %233 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = icmp sge i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = add i32 %234, 8
  store i32 %237, i32* %233, align 8
  %238 = icmp sle i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 %234
  %243 = bitcast i8* %242 to i64*
  br label %249

244:                                              ; preds = %236, %232
  %245 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 8
  store i8* %247, i8** %245, align 8
  %248 = bitcast i8* %246 to i64*
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i64* [ %243, %239 ], [ %248, %244 ]
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.argument*, %struct.argument** %6, align 8
  %253 = getelementptr inbounds %struct.argument, %struct.argument* %252, i32 0, i32 1
  %254 = bitcast %union.anon.39* %253 to i64*
  store i64 %251, i64* %254, align 16
  br label %1115

255:                                              ; preds = %17
  %256 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = add i32 %257, 8
  store i32 %260, i32* %256, align 8
  %261 = icmp sle i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 %257
  %266 = bitcast i8* %265 to i32*
  br label %272

267:                                              ; preds = %259, %255
  %268 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 8
  store i8* %270, i8** %268, align 8
  %271 = bitcast i8* %269 to i32*
  br label %272

272:                                              ; preds = %267, %262
  %273 = phi i32* [ %266, %262 ], [ %271, %267 ]
  %274 = load i32, i32* %273, align 8
  %275 = trunc i32 %274 to i8
  %276 = load %struct.argument*, %struct.argument** %6, align 8
  %277 = getelementptr inbounds %struct.argument, %struct.argument* %276, i32 0, i32 1
  %278 = bitcast %union.anon.39* %277 to i8*
  store i8 %275, i8* %278, align 16
  br label %1115

279:                                              ; preds = %17
  %280 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %279
  %284 = add i32 %281, 8
  store i32 %284, i32* %280, align 8
  %285 = icmp sle i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 %281
  %290 = bitcast i8* %289 to i32*
  br label %296

291:                                              ; preds = %283, %279
  %292 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 8
  store i8* %294, i8** %292, align 8
  %295 = bitcast i8* %293 to i32*
  br label %296

296:                                              ; preds = %291, %286
  %297 = phi i32* [ %290, %286 ], [ %295, %291 ]
  %298 = load i32, i32* %297, align 8
  %299 = trunc i32 %298 to i8
  %300 = load %struct.argument*, %struct.argument** %6, align 8
  %301 = getelementptr inbounds %struct.argument, %struct.argument* %300, i32 0, i32 1
  %302 = bitcast %union.anon.39* %301 to i8*
  store i8 %299, i8* %302, align 16
  br label %1115

303:                                              ; preds = %17
  %304 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %303
  %308 = add i32 %305, 8
  store i32 %308, i32* %304, align 8
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 %305
  %314 = bitcast i8* %313 to i32*
  br label %320

315:                                              ; preds = %307, %303
  %316 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 8
  store i8* %318, i8** %316, align 8
  %319 = bitcast i8* %317 to i32*
  br label %320

320:                                              ; preds = %315, %310
  %321 = phi i32* [ %314, %310 ], [ %319, %315 ]
  %322 = load i32, i32* %321, align 8
  %323 = trunc i32 %322 to i16
  %324 = load %struct.argument*, %struct.argument** %6, align 8
  %325 = getelementptr inbounds %struct.argument, %struct.argument* %324, i32 0, i32 1
  %326 = bitcast %union.anon.39* %325 to i16*
  store i16 %323, i16* %326, align 16
  br label %1115

327:                                              ; preds = %17
  %328 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = icmp sge i32 %329, 0
  br i1 %330, label %339, label %331

331:                                              ; preds = %327
  %332 = add i32 %329, 8
  store i32 %332, i32* %328, align 8
  %333 = icmp sle i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 %329
  %338 = bitcast i8* %337 to i32*
  br label %344

339:                                              ; preds = %331, %327
  %340 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 8
  store i8* %342, i8** %340, align 8
  %343 = bitcast i8* %341 to i32*
  br label %344

344:                                              ; preds = %339, %334
  %345 = phi i32* [ %338, %334 ], [ %343, %339 ]
  %346 = load i32, i32* %345, align 8
  %347 = trunc i32 %346 to i16
  %348 = load %struct.argument*, %struct.argument** %6, align 8
  %349 = getelementptr inbounds %struct.argument, %struct.argument* %348, i32 0, i32 1
  %350 = bitcast %union.anon.39* %349 to i16*
  store i16 %347, i16* %350, align 16
  br label %1115

351:                                              ; preds = %17
  %352 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %351
  %356 = add i32 %353, 8
  store i32 %356, i32* %352, align 8
  %357 = icmp sle i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %360 = load i8*, i8** %359, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 %353
  %362 = bitcast i8* %361 to i32*
  br label %368

363:                                              ; preds = %355, %351
  %364 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 8
  store i8* %366, i8** %364, align 8
  %367 = bitcast i8* %365 to i32*
  br label %368

368:                                              ; preds = %363, %358
  %369 = phi i32* [ %362, %358 ], [ %367, %363 ]
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.argument*, %struct.argument** %6, align 8
  %372 = getelementptr inbounds %struct.argument, %struct.argument* %371, i32 0, i32 1
  %373 = bitcast %union.anon.39* %372 to i32*
  store i32 %370, i32* %373, align 16
  br label %1115

374:                                              ; preds = %17
  %375 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %374
  %379 = add i32 %376, 8
  store i32 %379, i32* %375, align 8
  %380 = icmp sle i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %378
  %382 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 %376
  %385 = bitcast i8* %384 to i32*
  br label %391

386:                                              ; preds = %378, %374
  %387 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 8
  store i8* %389, i8** %387, align 8
  %390 = bitcast i8* %388 to i32*
  br label %391

391:                                              ; preds = %386, %381
  %392 = phi i32* [ %385, %381 ], [ %390, %386 ]
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.argument*, %struct.argument** %6, align 8
  %395 = getelementptr inbounds %struct.argument, %struct.argument* %394, i32 0, i32 1
  %396 = bitcast %union.anon.39* %395 to i32*
  store i32 %393, i32* %396, align 16
  br label %1115

397:                                              ; preds = %17
  %398 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = icmp sge i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %397
  %402 = add i32 %399, 8
  store i32 %402, i32* %398, align 8
  %403 = icmp sle i32 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %401
  %405 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 %399
  %408 = bitcast i8* %407 to i64*
  br label %414

409:                                              ; preds = %401, %397
  %410 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = getelementptr inbounds i8, i8* %411, i64 8
  store i8* %412, i8** %410, align 8
  %413 = bitcast i8* %411 to i64*
  br label %414

414:                                              ; preds = %409, %404
  %415 = phi i64* [ %408, %404 ], [ %413, %409 ]
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.argument*, %struct.argument** %6, align 8
  %418 = getelementptr inbounds %struct.argument, %struct.argument* %417, i32 0, i32 1
  %419 = bitcast %union.anon.39* %418 to i64*
  store i64 %416, i64* %419, align 16
  br label %1115

420:                                              ; preds = %17
  %421 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = icmp sge i32 %422, 0
  br i1 %423, label %432, label %424

424:                                              ; preds = %420
  %425 = add i32 %422, 8
  store i32 %425, i32* %421, align 8
  %426 = icmp sle i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %429 = load i8*, i8** %428, align 8
  %430 = getelementptr inbounds i8, i8* %429, i32 %422
  %431 = bitcast i8* %430 to i64*
  br label %437

432:                                              ; preds = %424, %420
  %433 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %434 = load i8*, i8** %433, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 8
  store i8* %435, i8** %433, align 8
  %436 = bitcast i8* %434 to i64*
  br label %437

437:                                              ; preds = %432, %427
  %438 = phi i64* [ %431, %427 ], [ %436, %432 ]
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.argument*, %struct.argument** %6, align 8
  %441 = getelementptr inbounds %struct.argument, %struct.argument* %440, i32 0, i32 1
  %442 = bitcast %union.anon.39* %441 to i64*
  store i64 %439, i64* %442, align 16
  br label %1115

443:                                              ; preds = %17
  %444 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = icmp sge i32 %445, 0
  br i1 %446, label %455, label %447

447:                                              ; preds = %443
  %448 = add i32 %445, 8
  store i32 %448, i32* %444, align 8
  %449 = icmp sle i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %452 = load i8*, i8** %451, align 8
  %453 = getelementptr inbounds i8, i8* %452, i32 %445
  %454 = bitcast i8* %453 to i32*
  br label %460

455:                                              ; preds = %447, %443
  %456 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 8
  store i8* %458, i8** %456, align 8
  %459 = bitcast i8* %457 to i32*
  br label %460

460:                                              ; preds = %455, %450
  %461 = phi i32* [ %454, %450 ], [ %459, %455 ]
  %462 = load i32, i32* %461, align 8
  %463 = trunc i32 %462 to i8
  %464 = load %struct.argument*, %struct.argument** %6, align 8
  %465 = getelementptr inbounds %struct.argument, %struct.argument* %464, i32 0, i32 1
  %466 = bitcast %union.anon.39* %465 to i8*
  store i8 %463, i8* %466, align 16
  br label %1115

467:                                              ; preds = %17
  %468 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %469 = load i32, i32* %468, align 8
  %470 = icmp sge i32 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %467
  %472 = add i32 %469, 8
  store i32 %472, i32* %468, align 8
  %473 = icmp sle i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %471
  %475 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %476 = load i8*, i8** %475, align 8
  %477 = getelementptr inbounds i8, i8* %476, i32 %469
  %478 = bitcast i8* %477 to i32*
  br label %484

479:                                              ; preds = %471, %467
  %480 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 8
  store i8* %482, i8** %480, align 8
  %483 = bitcast i8* %481 to i32*
  br label %484

484:                                              ; preds = %479, %474
  %485 = phi i32* [ %478, %474 ], [ %483, %479 ]
  %486 = load i32, i32* %485, align 8
  %487 = trunc i32 %486 to i8
  %488 = load %struct.argument*, %struct.argument** %6, align 8
  %489 = getelementptr inbounds %struct.argument, %struct.argument* %488, i32 0, i32 1
  %490 = bitcast %union.anon.39* %489 to i8*
  store i8 %487, i8* %490, align 16
  br label %1115

491:                                              ; preds = %17
  %492 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %493 = load i32, i32* %492, align 8
  %494 = icmp sge i32 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %491
  %496 = add i32 %493, 8
  store i32 %496, i32* %492, align 8
  %497 = icmp sle i32 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %495
  %499 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %500 = load i8*, i8** %499, align 8
  %501 = getelementptr inbounds i8, i8* %500, i32 %493
  %502 = bitcast i8* %501 to i64*
  br label %508

503:                                              ; preds = %495, %491
  %504 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 8
  store i8* %506, i8** %504, align 8
  %507 = bitcast i8* %505 to i64*
  br label %508

508:                                              ; preds = %503, %498
  %509 = phi i64* [ %502, %498 ], [ %507, %503 ]
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.argument*, %struct.argument** %6, align 8
  %512 = getelementptr inbounds %struct.argument, %struct.argument* %511, i32 0, i32 1
  %513 = bitcast %union.anon.39* %512 to i64*
  store i64 %510, i64* %513, align 16
  br label %1115

514:                                              ; preds = %17
  %515 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %516 = load i32, i32* %515, align 8
  %517 = icmp sge i32 %516, 0
  br i1 %517, label %526, label %518

518:                                              ; preds = %514
  %519 = add i32 %516, 8
  store i32 %519, i32* %515, align 8
  %520 = icmp sle i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %518
  %522 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %523 = load i8*, i8** %522, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 %516
  %525 = bitcast i8* %524 to i64*
  br label %531

526:                                              ; preds = %518, %514
  %527 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %528 = load i8*, i8** %527, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 8
  store i8* %529, i8** %527, align 8
  %530 = bitcast i8* %528 to i64*
  br label %531

531:                                              ; preds = %526, %521
  %532 = phi i64* [ %525, %521 ], [ %530, %526 ]
  %533 = load i64, i64* %532, align 8
  %534 = load %struct.argument*, %struct.argument** %6, align 8
  %535 = getelementptr inbounds %struct.argument, %struct.argument* %534, i32 0, i32 1
  %536 = bitcast %union.anon.39* %535 to i64*
  store i64 %533, i64* %536, align 16
  br label %1115

537:                                              ; preds = %17
  %538 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %539 = load i32, i32* %538, align 8
  %540 = icmp sge i32 %539, 0
  br i1 %540, label %549, label %541

541:                                              ; preds = %537
  %542 = add i32 %539, 8
  store i32 %542, i32* %538, align 8
  %543 = icmp sle i32 %542, 0
  br i1 %543, label %544, label %549

544:                                              ; preds = %541
  %545 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %546 = load i8*, i8** %545, align 8
  %547 = getelementptr inbounds i8, i8* %546, i32 %539
  %548 = bitcast i8* %547 to i64*
  br label %554

549:                                              ; preds = %541, %537
  %550 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %551 = load i8*, i8** %550, align 8
  %552 = getelementptr inbounds i8, i8* %551, i64 8
  store i8* %552, i8** %550, align 8
  %553 = bitcast i8* %551 to i64*
  br label %554

554:                                              ; preds = %549, %544
  %555 = phi i64* [ %548, %544 ], [ %553, %549 ]
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.argument*, %struct.argument** %6, align 8
  %558 = getelementptr inbounds %struct.argument, %struct.argument* %557, i32 0, i32 1
  %559 = bitcast %union.anon.39* %558 to i64*
  store i64 %556, i64* %559, align 16
  br label %1115

560:                                              ; preds = %17
  %561 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %562 = load i32, i32* %561, align 8
  %563 = icmp sge i32 %562, 0
  br i1 %563, label %572, label %564

564:                                              ; preds = %560
  %565 = add i32 %562, 8
  store i32 %565, i32* %561, align 8
  %566 = icmp sle i32 %565, 0
  br i1 %566, label %567, label %572

567:                                              ; preds = %564
  %568 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %569 = load i8*, i8** %568, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 %562
  %571 = bitcast i8* %570 to i64*
  br label %577

572:                                              ; preds = %564, %560
  %573 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %574 = load i8*, i8** %573, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 8
  store i8* %575, i8** %573, align 8
  %576 = bitcast i8* %574 to i64*
  br label %577

577:                                              ; preds = %572, %567
  %578 = phi i64* [ %571, %567 ], [ %576, %572 ]
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.argument*, %struct.argument** %6, align 8
  %581 = getelementptr inbounds %struct.argument, %struct.argument* %580, i32 0, i32 1
  %582 = bitcast %union.anon.39* %581 to i64*
  store i64 %579, i64* %582, align 16
  br label %1115

583:                                              ; preds = %17
  %584 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = icmp sge i32 %585, 0
  br i1 %586, label %595, label %587

587:                                              ; preds = %583
  %588 = add i32 %585, 8
  store i32 %588, i32* %584, align 8
  %589 = icmp sle i32 %588, 0
  br i1 %589, label %590, label %595

590:                                              ; preds = %587
  %591 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %592 = load i8*, i8** %591, align 8
  %593 = getelementptr inbounds i8, i8* %592, i32 %585
  %594 = bitcast i8* %593 to i64*
  br label %600

595:                                              ; preds = %587, %583
  %596 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %597 = load i8*, i8** %596, align 8
  %598 = getelementptr inbounds i8, i8* %597, i64 8
  store i8* %598, i8** %596, align 8
  %599 = bitcast i8* %597 to i64*
  br label %600

600:                                              ; preds = %595, %590
  %601 = phi i64* [ %594, %590 ], [ %599, %595 ]
  %602 = load i64, i64* %601, align 8
  %603 = load %struct.argument*, %struct.argument** %6, align 8
  %604 = getelementptr inbounds %struct.argument, %struct.argument* %603, i32 0, i32 1
  %605 = bitcast %union.anon.39* %604 to i64*
  store i64 %602, i64* %605, align 16
  br label %1115

606:                                              ; preds = %17
  %607 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %608 = load i32, i32* %607, align 8
  %609 = icmp sge i32 %608, 0
  br i1 %609, label %618, label %610

610:                                              ; preds = %606
  %611 = add i32 %608, 8
  store i32 %611, i32* %607, align 8
  %612 = icmp sle i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %610
  %614 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %615 = load i8*, i8** %614, align 8
  %616 = getelementptr inbounds i8, i8* %615, i32 %608
  %617 = bitcast i8* %616 to i64*
  br label %623

618:                                              ; preds = %610, %606
  %619 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %620 = load i8*, i8** %619, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 8
  store i8* %621, i8** %619, align 8
  %622 = bitcast i8* %620 to i64*
  br label %623

623:                                              ; preds = %618, %613
  %624 = phi i64* [ %617, %613 ], [ %622, %618 ]
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.argument*, %struct.argument** %6, align 8
  %627 = getelementptr inbounds %struct.argument, %struct.argument* %626, i32 0, i32 1
  %628 = bitcast %union.anon.39* %627 to i64*
  store i64 %625, i64* %628, align 16
  br label %1115

629:                                              ; preds = %17
  %630 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 4
  %631 = load i32, i32* %630, align 4
  %632 = icmp sge i32 %631, 0
  br i1 %632, label %641, label %633

633:                                              ; preds = %629
  %634 = add i32 %631, 16
  store i32 %634, i32* %630, align 4
  %635 = icmp sle i32 %634, 0
  br i1 %635, label %636, label %641

636:                                              ; preds = %633
  %637 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 2
  %638 = load i8*, i8** %637, align 8
  %639 = getelementptr inbounds i8, i8* %638, i32 %631
  %640 = bitcast i8* %639 to double*
  br label %646

641:                                              ; preds = %633, %629
  %642 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %643 = load i8*, i8** %642, align 8
  %644 = getelementptr inbounds i8, i8* %643, i64 8
  store i8* %644, i8** %642, align 8
  %645 = bitcast i8* %643 to double*
  br label %646

646:                                              ; preds = %641, %636
  %647 = phi double* [ %640, %636 ], [ %645, %641 ]
  %648 = load double, double* %647, align 8
  %649 = load %struct.argument*, %struct.argument** %6, align 8
  %650 = getelementptr inbounds %struct.argument, %struct.argument* %649, i32 0, i32 1
  %651 = bitcast %union.anon.39* %650 to double*
  store double %648, double* %651, align 16
  br label %1115

652:                                              ; preds = %17
  %653 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 4
  %654 = load i32, i32* %653, align 4
  %655 = icmp sge i32 %654, 0
  br i1 %655, label %664, label %656

656:                                              ; preds = %652
  %657 = add i32 %654, 16
  store i32 %657, i32* %653, align 4
  %658 = icmp sle i32 %657, 0
  br i1 %658, label %659, label %664

659:                                              ; preds = %656
  %660 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 2
  %661 = load i8*, i8** %660, align 8
  %662 = getelementptr inbounds i8, i8* %661, i32 %654
  %663 = bitcast i8* %662 to fp128*
  br label %673

664:                                              ; preds = %656, %652
  %665 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %666 = load i8*, i8** %665, align 8
  %667 = ptrtoint i8* %666 to i64
  %668 = add i64 %667, 15
  %669 = and i64 %668, -16
  %670 = inttoptr i64 %669 to i8*
  %671 = getelementptr inbounds i8, i8* %670, i64 16
  store i8* %671, i8** %665, align 8
  %672 = bitcast i8* %670 to fp128*
  br label %673

673:                                              ; preds = %664, %659
  %674 = phi fp128* [ %663, %659 ], [ %672, %664 ]
  %675 = load fp128, fp128* %674, align 16
  %676 = load %struct.argument*, %struct.argument** %6, align 8
  %677 = getelementptr inbounds %struct.argument, %struct.argument* %676, i32 0, i32 1
  %678 = bitcast %union.anon.39* %677 to fp128*
  store fp128 %675, fp128* %678, align 16
  br label %1115

679:                                              ; preds = %17
  %680 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %681 = load i32, i32* %680, align 8
  %682 = icmp sge i32 %681, 0
  br i1 %682, label %691, label %683

683:                                              ; preds = %679
  %684 = add i32 %681, 8
  store i32 %684, i32* %680, align 8
  %685 = icmp sle i32 %684, 0
  br i1 %685, label %686, label %691

686:                                              ; preds = %683
  %687 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %688 = load i8*, i8** %687, align 8
  %689 = getelementptr inbounds i8, i8* %688, i32 %681
  %690 = bitcast i8* %689 to i32*
  br label %696

691:                                              ; preds = %683, %679
  %692 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %693 = load i8*, i8** %692, align 8
  %694 = getelementptr inbounds i8, i8* %693, i64 8
  store i8* %694, i8** %692, align 8
  %695 = bitcast i8* %693 to i32*
  br label %696

696:                                              ; preds = %691, %686
  %697 = phi i32* [ %690, %686 ], [ %695, %691 ]
  %698 = load i32, i32* %697, align 8
  %699 = load %struct.argument*, %struct.argument** %6, align 8
  %700 = getelementptr inbounds %struct.argument, %struct.argument* %699, i32 0, i32 1
  %701 = bitcast %union.anon.39* %700 to i32*
  store i32 %698, i32* %701, align 16
  br label %1115

702:                                              ; preds = %17
  %703 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %704 = load i32, i32* %703, align 8
  %705 = icmp sge i32 %704, 0
  br i1 %705, label %714, label %706

706:                                              ; preds = %702
  %707 = add i32 %704, 8
  store i32 %707, i32* %703, align 8
  %708 = icmp sle i32 %707, 0
  br i1 %708, label %709, label %714

709:                                              ; preds = %706
  %710 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %711 = load i8*, i8** %710, align 8
  %712 = getelementptr inbounds i8, i8* %711, i32 %704
  %713 = bitcast i8* %712 to i32*
  br label %719

714:                                              ; preds = %706, %702
  %715 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %716 = load i8*, i8** %715, align 8
  %717 = getelementptr inbounds i8, i8* %716, i64 8
  store i8* %717, i8** %715, align 8
  %718 = bitcast i8* %716 to i32*
  br label %719

719:                                              ; preds = %714, %709
  %720 = phi i32* [ %713, %709 ], [ %718, %714 ]
  %721 = load i32, i32* %720, align 8
  %722 = load %struct.argument*, %struct.argument** %6, align 8
  %723 = getelementptr inbounds %struct.argument, %struct.argument* %722, i32 0, i32 1
  %724 = bitcast %union.anon.39* %723 to i32*
  store i32 %721, i32* %724, align 16
  br label %1115

725:                                              ; preds = %17
  %726 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %727 = load i32, i32* %726, align 8
  %728 = icmp sge i32 %727, 0
  br i1 %728, label %737, label %729

729:                                              ; preds = %725
  %730 = add i32 %727, 8
  store i32 %730, i32* %726, align 8
  %731 = icmp sle i32 %730, 0
  br i1 %731, label %732, label %737

732:                                              ; preds = %729
  %733 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %734 = load i8*, i8** %733, align 8
  %735 = getelementptr inbounds i8, i8* %734, i32 %727
  %736 = bitcast i8* %735 to i8**
  br label %742

737:                                              ; preds = %729, %725
  %738 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %739 = load i8*, i8** %738, align 8
  %740 = getelementptr inbounds i8, i8* %739, i64 8
  store i8* %740, i8** %738, align 8
  %741 = bitcast i8* %739 to i8**
  br label %742

742:                                              ; preds = %737, %732
  %743 = phi i8** [ %736, %732 ], [ %741, %737 ]
  %744 = load i8*, i8** %743, align 8
  %745 = load %struct.argument*, %struct.argument** %6, align 8
  %746 = getelementptr inbounds %struct.argument, %struct.argument* %745, i32 0, i32 1
  %747 = bitcast %union.anon.39* %746 to i8**
  store i8* %744, i8** %747, align 16
  %748 = load %struct.argument*, %struct.argument** %6, align 8
  %749 = getelementptr inbounds %struct.argument, %struct.argument* %748, i32 0, i32 1
  %750 = bitcast %union.anon.39* %749 to i8**
  %751 = load i8*, i8** %750, align 16
  %752 = icmp eq i8* %751, null
  br i1 %752, label %753, label %757

753:                                              ; preds = %742
  %754 = load %struct.argument*, %struct.argument** %6, align 8
  %755 = getelementptr inbounds %struct.argument, %struct.argument* %754, i32 0, i32 1
  %756 = bitcast %union.anon.39* %755 to i8**
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.256, i64 0, i64 0), i8** %756, align 16
  br label %757

757:                                              ; preds = %753, %742
  br label %1115

758:                                              ; preds = %17
  %759 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %760 = load i32, i32* %759, align 8
  %761 = icmp sge i32 %760, 0
  br i1 %761, label %770, label %762

762:                                              ; preds = %758
  %763 = add i32 %760, 8
  store i32 %763, i32* %759, align 8
  %764 = icmp sle i32 %763, 0
  br i1 %764, label %765, label %770

765:                                              ; preds = %762
  %766 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %767 = load i8*, i8** %766, align 8
  %768 = getelementptr inbounds i8, i8* %767, i32 %760
  %769 = bitcast i8* %768 to i32**
  br label %775

770:                                              ; preds = %762, %758
  %771 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %772 = load i8*, i8** %771, align 8
  %773 = getelementptr inbounds i8, i8* %772, i64 8
  store i8* %773, i8** %771, align 8
  %774 = bitcast i8* %772 to i32**
  br label %775

775:                                              ; preds = %770, %765
  %776 = phi i32** [ %769, %765 ], [ %774, %770 ]
  %777 = load i32*, i32** %776, align 8
  %778 = load %struct.argument*, %struct.argument** %6, align 8
  %779 = getelementptr inbounds %struct.argument, %struct.argument* %778, i32 0, i32 1
  %780 = bitcast %union.anon.39* %779 to i32**
  store i32* %777, i32** %780, align 16
  %781 = load %struct.argument*, %struct.argument** %6, align 8
  %782 = getelementptr inbounds %struct.argument, %struct.argument* %781, i32 0, i32 1
  %783 = bitcast %union.anon.39* %782 to i32**
  %784 = load i32*, i32** %783, align 16
  %785 = icmp eq i32* %784, null
  br i1 %785, label %786, label %790

786:                                              ; preds = %775
  %787 = load %struct.argument*, %struct.argument** %6, align 8
  %788 = getelementptr inbounds %struct.argument, %struct.argument* %787, i32 0, i32 1
  %789 = bitcast %union.anon.39* %788 to i32**
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @printf_fetchargs.wide_null_string, i64 0, i64 0), i32** %789, align 16
  br label %790

790:                                              ; preds = %786, %775
  br label %1115

791:                                              ; preds = %17
  %792 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %793 = load i32, i32* %792, align 8
  %794 = icmp sge i32 %793, 0
  br i1 %794, label %803, label %795

795:                                              ; preds = %791
  %796 = add i32 %793, 8
  store i32 %796, i32* %792, align 8
  %797 = icmp sle i32 %796, 0
  br i1 %797, label %798, label %803

798:                                              ; preds = %795
  %799 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %800 = load i8*, i8** %799, align 8
  %801 = getelementptr inbounds i8, i8* %800, i32 %793
  %802 = bitcast i8* %801 to i8**
  br label %808

803:                                              ; preds = %795, %791
  %804 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %805 = load i8*, i8** %804, align 8
  %806 = getelementptr inbounds i8, i8* %805, i64 8
  store i8* %806, i8** %804, align 8
  %807 = bitcast i8* %805 to i8**
  br label %808

808:                                              ; preds = %803, %798
  %809 = phi i8** [ %802, %798 ], [ %807, %803 ]
  %810 = load i8*, i8** %809, align 8
  %811 = load %struct.argument*, %struct.argument** %6, align 8
  %812 = getelementptr inbounds %struct.argument, %struct.argument* %811, i32 0, i32 1
  %813 = bitcast %union.anon.39* %812 to i8**
  store i8* %810, i8** %813, align 16
  br label %1115

814:                                              ; preds = %17
  %815 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %816 = load i32, i32* %815, align 8
  %817 = icmp sge i32 %816, 0
  br i1 %817, label %826, label %818

818:                                              ; preds = %814
  %819 = add i32 %816, 8
  store i32 %819, i32* %815, align 8
  %820 = icmp sle i32 %819, 0
  br i1 %820, label %821, label %826

821:                                              ; preds = %818
  %822 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %823 = load i8*, i8** %822, align 8
  %824 = getelementptr inbounds i8, i8* %823, i32 %816
  %825 = bitcast i8* %824 to i8**
  br label %831

826:                                              ; preds = %818, %814
  %827 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %828 = load i8*, i8** %827, align 8
  %829 = getelementptr inbounds i8, i8* %828, i64 8
  store i8* %829, i8** %827, align 8
  %830 = bitcast i8* %828 to i8**
  br label %831

831:                                              ; preds = %826, %821
  %832 = phi i8** [ %825, %821 ], [ %830, %826 ]
  %833 = load i8*, i8** %832, align 8
  %834 = load %struct.argument*, %struct.argument** %6, align 8
  %835 = getelementptr inbounds %struct.argument, %struct.argument* %834, i32 0, i32 1
  %836 = bitcast %union.anon.39* %835 to i8**
  store i8* %833, i8** %836, align 16
  br label %1115

837:                                              ; preds = %17
  %838 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %839 = load i32, i32* %838, align 8
  %840 = icmp sge i32 %839, 0
  br i1 %840, label %849, label %841

841:                                              ; preds = %837
  %842 = add i32 %839, 8
  store i32 %842, i32* %838, align 8
  %843 = icmp sle i32 %842, 0
  br i1 %843, label %844, label %849

844:                                              ; preds = %841
  %845 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %846 = load i8*, i8** %845, align 8
  %847 = getelementptr inbounds i8, i8* %846, i32 %839
  %848 = bitcast i8* %847 to i16**
  br label %854

849:                                              ; preds = %841, %837
  %850 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %851 = load i8*, i8** %850, align 8
  %852 = getelementptr inbounds i8, i8* %851, i64 8
  store i8* %852, i8** %850, align 8
  %853 = bitcast i8* %851 to i16**
  br label %854

854:                                              ; preds = %849, %844
  %855 = phi i16** [ %848, %844 ], [ %853, %849 ]
  %856 = load i16*, i16** %855, align 8
  %857 = load %struct.argument*, %struct.argument** %6, align 8
  %858 = getelementptr inbounds %struct.argument, %struct.argument* %857, i32 0, i32 1
  %859 = bitcast %union.anon.39* %858 to i16**
  store i16* %856, i16** %859, align 16
  br label %1115

860:                                              ; preds = %17
  %861 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %862 = load i32, i32* %861, align 8
  %863 = icmp sge i32 %862, 0
  br i1 %863, label %872, label %864

864:                                              ; preds = %860
  %865 = add i32 %862, 8
  store i32 %865, i32* %861, align 8
  %866 = icmp sle i32 %865, 0
  br i1 %866, label %867, label %872

867:                                              ; preds = %864
  %868 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %869 = load i8*, i8** %868, align 8
  %870 = getelementptr inbounds i8, i8* %869, i32 %862
  %871 = bitcast i8* %870 to i32**
  br label %877

872:                                              ; preds = %864, %860
  %873 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %874 = load i8*, i8** %873, align 8
  %875 = getelementptr inbounds i8, i8* %874, i64 8
  store i8* %875, i8** %873, align 8
  %876 = bitcast i8* %874 to i32**
  br label %877

877:                                              ; preds = %872, %867
  %878 = phi i32** [ %871, %867 ], [ %876, %872 ]
  %879 = load i32*, i32** %878, align 8
  %880 = load %struct.argument*, %struct.argument** %6, align 8
  %881 = getelementptr inbounds %struct.argument, %struct.argument* %880, i32 0, i32 1
  %882 = bitcast %union.anon.39* %881 to i32**
  store i32* %879, i32** %882, align 16
  br label %1115

883:                                              ; preds = %17
  %884 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %885 = load i32, i32* %884, align 8
  %886 = icmp sge i32 %885, 0
  br i1 %886, label %895, label %887

887:                                              ; preds = %883
  %888 = add i32 %885, 8
  store i32 %888, i32* %884, align 8
  %889 = icmp sle i32 %888, 0
  br i1 %889, label %890, label %895

890:                                              ; preds = %887
  %891 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %892 = load i8*, i8** %891, align 8
  %893 = getelementptr inbounds i8, i8* %892, i32 %885
  %894 = bitcast i8* %893 to i64**
  br label %900

895:                                              ; preds = %887, %883
  %896 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %897 = load i8*, i8** %896, align 8
  %898 = getelementptr inbounds i8, i8* %897, i64 8
  store i8* %898, i8** %896, align 8
  %899 = bitcast i8* %897 to i64**
  br label %900

900:                                              ; preds = %895, %890
  %901 = phi i64** [ %894, %890 ], [ %899, %895 ]
  %902 = load i64*, i64** %901, align 8
  %903 = load %struct.argument*, %struct.argument** %6, align 8
  %904 = getelementptr inbounds %struct.argument, %struct.argument* %903, i32 0, i32 1
  %905 = bitcast %union.anon.39* %904 to i64**
  store i64* %902, i64** %905, align 16
  br label %1115

906:                                              ; preds = %17
  %907 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %908 = load i32, i32* %907, align 8
  %909 = icmp sge i32 %908, 0
  br i1 %909, label %918, label %910

910:                                              ; preds = %906
  %911 = add i32 %908, 8
  store i32 %911, i32* %907, align 8
  %912 = icmp sle i32 %911, 0
  br i1 %912, label %913, label %918

913:                                              ; preds = %910
  %914 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %915 = load i8*, i8** %914, align 8
  %916 = getelementptr inbounds i8, i8* %915, i32 %908
  %917 = bitcast i8* %916 to i64**
  br label %923

918:                                              ; preds = %910, %906
  %919 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %920 = load i8*, i8** %919, align 8
  %921 = getelementptr inbounds i8, i8* %920, i64 8
  store i8* %921, i8** %919, align 8
  %922 = bitcast i8* %920 to i64**
  br label %923

923:                                              ; preds = %918, %913
  %924 = phi i64** [ %917, %913 ], [ %922, %918 ]
  %925 = load i64*, i64** %924, align 8
  %926 = load %struct.argument*, %struct.argument** %6, align 8
  %927 = getelementptr inbounds %struct.argument, %struct.argument* %926, i32 0, i32 1
  %928 = bitcast %union.anon.39* %927 to i64**
  store i64* %925, i64** %928, align 16
  br label %1115

929:                                              ; preds = %17
  %930 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %931 = load i32, i32* %930, align 8
  %932 = icmp sge i32 %931, 0
  br i1 %932, label %941, label %933

933:                                              ; preds = %929
  %934 = add i32 %931, 8
  store i32 %934, i32* %930, align 8
  %935 = icmp sle i32 %934, 0
  br i1 %935, label %936, label %941

936:                                              ; preds = %933
  %937 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %938 = load i8*, i8** %937, align 8
  %939 = getelementptr inbounds i8, i8* %938, i32 %931
  %940 = bitcast i8* %939 to i8**
  br label %946

941:                                              ; preds = %933, %929
  %942 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %943 = load i8*, i8** %942, align 8
  %944 = getelementptr inbounds i8, i8* %943, i64 8
  store i8* %944, i8** %942, align 8
  %945 = bitcast i8* %943 to i8**
  br label %946

946:                                              ; preds = %941, %936
  %947 = phi i8** [ %940, %936 ], [ %945, %941 ]
  %948 = load i8*, i8** %947, align 8
  %949 = load %struct.argument*, %struct.argument** %6, align 8
  %950 = getelementptr inbounds %struct.argument, %struct.argument* %949, i32 0, i32 1
  %951 = bitcast %union.anon.39* %950 to i8**
  store i8* %948, i8** %951, align 16
  br label %1115

952:                                              ; preds = %17
  %953 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %954 = load i32, i32* %953, align 8
  %955 = icmp sge i32 %954, 0
  br i1 %955, label %964, label %956

956:                                              ; preds = %952
  %957 = add i32 %954, 8
  store i32 %957, i32* %953, align 8
  %958 = icmp sle i32 %957, 0
  br i1 %958, label %959, label %964

959:                                              ; preds = %956
  %960 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %961 = load i8*, i8** %960, align 8
  %962 = getelementptr inbounds i8, i8* %961, i32 %954
  %963 = bitcast i8* %962 to i16**
  br label %969

964:                                              ; preds = %956, %952
  %965 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %966 = load i8*, i8** %965, align 8
  %967 = getelementptr inbounds i8, i8* %966, i64 8
  store i8* %967, i8** %965, align 8
  %968 = bitcast i8* %966 to i16**
  br label %969

969:                                              ; preds = %964, %959
  %970 = phi i16** [ %963, %959 ], [ %968, %964 ]
  %971 = load i16*, i16** %970, align 8
  %972 = load %struct.argument*, %struct.argument** %6, align 8
  %973 = getelementptr inbounds %struct.argument, %struct.argument* %972, i32 0, i32 1
  %974 = bitcast %union.anon.39* %973 to i16**
  store i16* %971, i16** %974, align 16
  br label %1115

975:                                              ; preds = %17
  %976 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %977 = load i32, i32* %976, align 8
  %978 = icmp sge i32 %977, 0
  br i1 %978, label %987, label %979

979:                                              ; preds = %975
  %980 = add i32 %977, 8
  store i32 %980, i32* %976, align 8
  %981 = icmp sle i32 %980, 0
  br i1 %981, label %982, label %987

982:                                              ; preds = %979
  %983 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %984 = load i8*, i8** %983, align 8
  %985 = getelementptr inbounds i8, i8* %984, i32 %977
  %986 = bitcast i8* %985 to i32**
  br label %992

987:                                              ; preds = %979, %975
  %988 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %989 = load i8*, i8** %988, align 8
  %990 = getelementptr inbounds i8, i8* %989, i64 8
  store i8* %990, i8** %988, align 8
  %991 = bitcast i8* %989 to i32**
  br label %992

992:                                              ; preds = %987, %982
  %993 = phi i32** [ %986, %982 ], [ %991, %987 ]
  %994 = load i32*, i32** %993, align 8
  %995 = load %struct.argument*, %struct.argument** %6, align 8
  %996 = getelementptr inbounds %struct.argument, %struct.argument* %995, i32 0, i32 1
  %997 = bitcast %union.anon.39* %996 to i32**
  store i32* %994, i32** %997, align 16
  br label %1115

998:                                              ; preds = %17
  %999 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %1000 = load i32, i32* %999, align 8
  %1001 = icmp sge i32 %1000, 0
  br i1 %1001, label %1010, label %1002

1002:                                             ; preds = %998
  %1003 = add i32 %1000, 8
  store i32 %1003, i32* %999, align 8
  %1004 = icmp sle i32 %1003, 0
  br i1 %1004, label %1005, label %1010

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %1007 = load i8*, i8** %1006, align 8
  %1008 = getelementptr inbounds i8, i8* %1007, i32 %1000
  %1009 = bitcast i8* %1008 to i64**
  br label %1015

1010:                                             ; preds = %1002, %998
  %1011 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %1012 = load i8*, i8** %1011, align 8
  %1013 = getelementptr inbounds i8, i8* %1012, i64 8
  store i8* %1013, i8** %1011, align 8
  %1014 = bitcast i8* %1012 to i64**
  br label %1015

1015:                                             ; preds = %1010, %1005
  %1016 = phi i64** [ %1009, %1005 ], [ %1014, %1010 ]
  %1017 = load i64*, i64** %1016, align 8
  %1018 = load %struct.argument*, %struct.argument** %6, align 8
  %1019 = getelementptr inbounds %struct.argument, %struct.argument* %1018, i32 0, i32 1
  %1020 = bitcast %union.anon.39* %1019 to i64**
  store i64* %1017, i64** %1020, align 16
  br label %1115

1021:                                             ; preds = %17
  %1022 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %1023 = load i32, i32* %1022, align 8
  %1024 = icmp sge i32 %1023, 0
  br i1 %1024, label %1033, label %1025

1025:                                             ; preds = %1021
  %1026 = add i32 %1023, 8
  store i32 %1026, i32* %1022, align 8
  %1027 = icmp sle i32 %1026, 0
  br i1 %1027, label %1028, label %1033

1028:                                             ; preds = %1025
  %1029 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %1030 = load i8*, i8** %1029, align 8
  %1031 = getelementptr inbounds i8, i8* %1030, i32 %1023
  %1032 = bitcast i8* %1031 to i8**
  br label %1038

1033:                                             ; preds = %1025, %1021
  %1034 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %1035 = load i8*, i8** %1034, align 8
  %1036 = getelementptr inbounds i8, i8* %1035, i64 8
  store i8* %1036, i8** %1034, align 8
  %1037 = bitcast i8* %1035 to i8**
  br label %1038

1038:                                             ; preds = %1033, %1028
  %1039 = phi i8** [ %1032, %1028 ], [ %1037, %1033 ]
  %1040 = load i8*, i8** %1039, align 8
  %1041 = load %struct.argument*, %struct.argument** %6, align 8
  %1042 = getelementptr inbounds %struct.argument, %struct.argument* %1041, i32 0, i32 1
  %1043 = bitcast %union.anon.39* %1042 to i8**
  store i8* %1040, i8** %1043, align 16
  br label %1115

1044:                                             ; preds = %17
  %1045 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %1046 = load i32, i32* %1045, align 8
  %1047 = icmp sge i32 %1046, 0
  br i1 %1047, label %1056, label %1048

1048:                                             ; preds = %1044
  %1049 = add i32 %1046, 8
  store i32 %1049, i32* %1045, align 8
  %1050 = icmp sle i32 %1049, 0
  br i1 %1050, label %1051, label %1056

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %1053 = load i8*, i8** %1052, align 8
  %1054 = getelementptr inbounds i8, i8* %1053, i32 %1046
  %1055 = bitcast i8* %1054 to i64**
  br label %1061

1056:                                             ; preds = %1048, %1044
  %1057 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %1058 = load i8*, i8** %1057, align 8
  %1059 = getelementptr inbounds i8, i8* %1058, i64 8
  store i8* %1059, i8** %1057, align 8
  %1060 = bitcast i8* %1058 to i64**
  br label %1061

1061:                                             ; preds = %1056, %1051
  %1062 = phi i64** [ %1055, %1051 ], [ %1060, %1056 ]
  %1063 = load i64*, i64** %1062, align 8
  %1064 = load %struct.argument*, %struct.argument** %6, align 8
  %1065 = getelementptr inbounds %struct.argument, %struct.argument* %1064, i32 0, i32 1
  %1066 = bitcast %union.anon.39* %1065 to i64**
  store i64* %1063, i64** %1066, align 16
  br label %1115

1067:                                             ; preds = %17
  %1068 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %1069 = load i32, i32* %1068, align 8
  %1070 = icmp sge i32 %1069, 0
  br i1 %1070, label %1079, label %1071

1071:                                             ; preds = %1067
  %1072 = add i32 %1069, 8
  store i32 %1072, i32* %1068, align 8
  %1073 = icmp sle i32 %1072, 0
  br i1 %1073, label %1074, label %1079

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %1076 = load i8*, i8** %1075, align 8
  %1077 = getelementptr inbounds i8, i8* %1076, i32 %1069
  %1078 = bitcast i8* %1077 to i64**
  br label %1084

1079:                                             ; preds = %1071, %1067
  %1080 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %1081 = load i8*, i8** %1080, align 8
  %1082 = getelementptr inbounds i8, i8* %1081, i64 8
  store i8* %1082, i8** %1080, align 8
  %1083 = bitcast i8* %1081 to i64**
  br label %1084

1084:                                             ; preds = %1079, %1074
  %1085 = phi i64** [ %1078, %1074 ], [ %1083, %1079 ]
  %1086 = load i64*, i64** %1085, align 8
  %1087 = load %struct.argument*, %struct.argument** %6, align 8
  %1088 = getelementptr inbounds %struct.argument, %struct.argument* %1087, i32 0, i32 1
  %1089 = bitcast %union.anon.39* %1088 to i64**
  store i64* %1086, i64** %1089, align 16
  br label %1115

1090:                                             ; preds = %17
  %1091 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 3
  %1092 = load i32, i32* %1091, align 8
  %1093 = icmp sge i32 %1092, 0
  br i1 %1093, label %1102, label %1094

1094:                                             ; preds = %1090
  %1095 = add i32 %1092, 8
  store i32 %1095, i32* %1091, align 8
  %1096 = icmp sle i32 %1095, 0
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1094
  %1098 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 1
  %1099 = load i8*, i8** %1098, align 8
  %1100 = getelementptr inbounds i8, i8* %1099, i32 %1092
  %1101 = bitcast i8* %1100 to i64**
  br label %1107

1102:                                             ; preds = %1094, %1090
  %1103 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %0, i32 0, i32 0
  %1104 = load i8*, i8** %1103, align 8
  %1105 = getelementptr inbounds i8, i8* %1104, i64 8
  store i8* %1105, i8** %1103, align 8
  %1106 = bitcast i8* %1104 to i64**
  br label %1107

1107:                                             ; preds = %1102, %1097
  %1108 = phi i64** [ %1101, %1097 ], [ %1106, %1102 ]
  %1109 = load i64*, i64** %1108, align 8
  %1110 = load %struct.argument*, %struct.argument** %6, align 8
  %1111 = getelementptr inbounds %struct.argument, %struct.argument* %1110, i32 0, i32 1
  %1112 = bitcast %union.anon.39* %1111 to i64**
  store i64* %1109, i64** %1112, align 16
  br label %1115

1113:                                             ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %1122

1114:                                             ; preds = %17
  call void @abort() #19
  unreachable

1115:                                             ; preds = %1107, %1084, %1061, %1038, %1015, %992, %969, %946, %923, %900, %877, %854, %831, %808, %790, %757, %719, %696, %673, %646, %623, %600, %577, %554, %531, %508, %484, %460, %437, %414, %391, %368, %344, %320, %296, %272, %249, %226, %203, %180, %157, %134, %110, %86, %62, %38
  br label %1116

1116:                                             ; preds = %1115
  %1117 = load i64, i64* %5, align 8
  %1118 = add i64 %1117, 1
  store i64 %1118, i64* %5, align 8
  %1119 = load %struct.argument*, %struct.argument** %6, align 8
  %1120 = getelementptr inbounds %struct.argument, %struct.argument* %1119, i32 1
  store %struct.argument* %1120, %struct.argument** %6, align 8
  br label %11, !llvm.loop !43

1121:                                             ; preds = %11
  store i32 0, i32* %3, align 4
  br label %1122

1122:                                             ; preds = %1121, %1113
  %1123 = load i32, i32* %3, align 4
  ret i32 %1123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printf_parse(i8* noundef %0, %struct.char_directives* noundef %1, %struct.arguments* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.char_directives*, align 8
  %7 = alloca %struct.arguments*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca %struct.char_directive*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.argument*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.argument*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca %struct.argument*, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.char_directive*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.char_directives* %1, %struct.char_directives** %6, align 8
  store %struct.arguments* %2, %struct.arguments** %7, align 8
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %42 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %43 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  store i64 7, i64* %10, align 8
  %44 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %45 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %44, i32 0, i32 4
  %46 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %45, i64 0, i64 0
  %47 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %48 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %47, i32 0, i32 1
  store %struct.char_directive* %46, %struct.char_directive** %48, align 8
  %49 = load %struct.arguments*, %struct.arguments** %7, align 8
  %50 = getelementptr inbounds %struct.arguments, %struct.arguments* %49, i32 0, i32 0
  store i64 0, i64* %50, align 16
  store i64 7, i64* %11, align 8
  %51 = load %struct.arguments*, %struct.arguments** %7, align 8
  %52 = getelementptr inbounds %struct.arguments, %struct.arguments* %51, i32 0, i32 2
  %53 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %52, i64 0, i64 0
  %54 = load %struct.arguments*, %struct.arguments** %7, align 8
  %55 = getelementptr inbounds %struct.arguments, %struct.arguments* %54, i32 0, i32 1
  store %struct.argument* %53, %struct.argument** %55, align 8
  br label %56

56:                                               ; preds = %1323, %3
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %1324

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* %14, align 1
  %65 = load i8, i8* %14, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %1323

68:                                               ; preds = %61
  store i64 -1, i64* %15, align 8
  %69 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %70 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %69, i32 0, i32 1
  %71 = load %struct.char_directive*, %struct.char_directive** %70, align 8
  %72 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %73 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %71, i64 %74
  store %struct.char_directive* %75, %struct.char_directive** %16, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  %78 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %79 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %81 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %83 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %82, i32 0, i32 3
  store i8* null, i8** %83, align 8
  %84 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %85 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %84, i32 0, i32 4
  store i8* null, i8** %85, align 8
  %86 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %87 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %86, i32 0, i32 5
  store i64 -1, i64* %87, align 8
  %88 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %89 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %88, i32 0, i32 6
  store i8* null, i8** %89, align 8
  %90 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %91 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %90, i32 0, i32 7
  store i8* null, i8** %91, align 8
  %92 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %93 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %92, i32 0, i32 8
  store i64 -1, i64* %93, align 8
  %94 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %95 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %94, i32 0, i32 10
  store i64 -1, i64* %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sge i32 %98, 48
  br i1 %99, label %100, label %174

100:                                              ; preds = %68
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sle i32 %103, 57
  br i1 %104, label %105, label %174

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  store i8* %106, i8** %17, align 8
  br label %107

107:                                              ; preds = %120, %105
  %108 = load i8*, i8** %17, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sge i32 %110, 48
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %17, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sle i32 %115, 57
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %17, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %17, align 8
  br label %107, !llvm.loop !44

123:                                              ; preds = %117
  %124 = load i8*, i8** %17, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 36
  br i1 %127, label %128, label %173

128:                                              ; preds = %123
  store i64 0, i64* %18, align 8
  %129 = load i8*, i8** %8, align 8
  store i8* %129, i8** %17, align 8
  br label %130

130:                                              ; preds = %157, %128
  %131 = load i8*, i8** %17, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %17, align 8
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sle i32 %138, 57
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ false, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %160

142:                                              ; preds = %140
  %143 = load i64, i64* %18, align 8
  %144 = icmp ule i64 %143, 1844674407370955161
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* %18, align 8
  %147 = mul i64 %146, 10
  br label %149

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %145
  %150 = phi i64 [ %147, %145 ], [ -1, %148 ]
  %151 = load i8*, i8** %17, align 8
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = sub nsw i32 %153, 48
  %155 = sext i32 %154 to i64
  %156 = call i64 @xsum(i64 noundef %150, i64 noundef %155) #20
  store i64 %156, i64* %18, align 8
  br label %157

157:                                              ; preds = %149
  %158 = load i8*, i8** %17, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %17, align 8
  br label %130, !llvm.loop !45

160:                                              ; preds = %140
  %161 = load i64, i64* %18, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %1340

164:                                              ; preds = %160
  %165 = load i64, i64* %18, align 8
  %166 = icmp eq i64 %165, -1
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %1340

168:                                              ; preds = %164
  %169 = load i64, i64* %18, align 8
  %170 = sub i64 %169, 1
  store i64 %170, i64* %15, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %8, align 8
  br label %173

173:                                              ; preds = %168, %123
  br label %174

174:                                              ; preds = %173, %100, %68
  br label %175

175:                                              ; preds = %266, %174
  %176 = load i8*, i8** %8, align 8
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 39
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %182 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %8, align 8
  br label %266

187:                                              ; preds = %175
  %188 = load i8*, i8** %8, align 8
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 45
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %194 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, 2
  store i32 %196, i32* %194, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %8, align 8
  br label %265

199:                                              ; preds = %187
  %200 = load i8*, i8** %8, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 43
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %206 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, 4
  store i32 %208, i32* %206, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %8, align 8
  br label %264

211:                                              ; preds = %199
  %212 = load i8*, i8** %8, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 32
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %218 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, 8
  store i32 %220, i32* %218, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %8, align 8
  br label %263

223:                                              ; preds = %211
  %224 = load i8*, i8** %8, align 8
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 35
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %230 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, 16
  store i32 %232, i32* %230, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %8, align 8
  br label %262

235:                                              ; preds = %223
  %236 = load i8*, i8** %8, align 8
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 48
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %242 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, 32
  store i32 %244, i32* %242, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %8, align 8
  br label %261

247:                                              ; preds = %235
  %248 = load i8*, i8** %8, align 8
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %250, 73
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %254 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, 64
  store i32 %256, i32* %254, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %8, align 8
  br label %260

259:                                              ; preds = %247
  br label %267

260:                                              ; preds = %252
  br label %261

261:                                              ; preds = %260, %240
  br label %262

262:                                              ; preds = %261, %228
  br label %263

263:                                              ; preds = %262, %216
  br label %264

264:                                              ; preds = %263, %204
  br label %265

265:                                              ; preds = %264, %192
  br label %266

266:                                              ; preds = %265, %180
  br label %175

267:                                              ; preds = %259
  %268 = load i8*, i8** %8, align 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = icmp eq i32 %270, 42
  br i1 %271, label %272, label %507

272:                                              ; preds = %267
  %273 = load i8*, i8** %8, align 8
  %274 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %275 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** %8, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %8, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %280 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %279, i32 0, i32 4
  store i8* %278, i8** %280, align 8
  %281 = load i64, i64* %12, align 8
  %282 = icmp ult i64 %281, 1
  br i1 %282, label %283, label %284

283:                                              ; preds = %272
  store i64 1, i64* %12, align 8
  br label %284

284:                                              ; preds = %283, %272
  %285 = load i8*, i8** %8, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp sge i32 %287, 48
  br i1 %288, label %289, label %365

289:                                              ; preds = %284
  %290 = load i8*, i8** %8, align 8
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp sle i32 %292, 57
  br i1 %293, label %294, label %365

294:                                              ; preds = %289
  %295 = load i8*, i8** %8, align 8
  store i8* %295, i8** %19, align 8
  br label %296

296:                                              ; preds = %309, %294
  %297 = load i8*, i8** %19, align 8
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp sge i32 %299, 48
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i8*, i8** %19, align 8
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp sle i32 %304, 57
  br label %306

306:                                              ; preds = %301, %296
  %307 = phi i1 [ false, %296 ], [ %305, %301 ]
  br i1 %307, label %308, label %312

308:                                              ; preds = %306
  br label %309

309:                                              ; preds = %308
  %310 = load i8*, i8** %19, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %19, align 8
  br label %296, !llvm.loop !46

312:                                              ; preds = %306
  %313 = load i8*, i8** %19, align 8
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 36
  br i1 %316, label %317, label %364

317:                                              ; preds = %312
  store i64 0, i64* %20, align 8
  %318 = load i8*, i8** %8, align 8
  store i8* %318, i8** %19, align 8
  br label %319

319:                                              ; preds = %346, %317
  %320 = load i8*, i8** %19, align 8
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp sge i32 %322, 48
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load i8*, i8** %19, align 8
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = icmp sle i32 %327, 57
  br label %329

329:                                              ; preds = %324, %319
  %330 = phi i1 [ false, %319 ], [ %328, %324 ]
  br i1 %330, label %331, label %349

331:                                              ; preds = %329
  %332 = load i64, i64* %20, align 8
  %333 = icmp ule i64 %332, 1844674407370955161
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i64, i64* %20, align 8
  %336 = mul i64 %335, 10
  br label %338

337:                                              ; preds = %331
  br label %338

338:                                              ; preds = %337, %334
  %339 = phi i64 [ %336, %334 ], [ -1, %337 ]
  %340 = load i8*, i8** %19, align 8
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = sub nsw i32 %342, 48
  %344 = sext i32 %343 to i64
  %345 = call i64 @xsum(i64 noundef %339, i64 noundef %344) #20
  store i64 %345, i64* %20, align 8
  br label %346

346:                                              ; preds = %338
  %347 = load i8*, i8** %19, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %19, align 8
  br label %319, !llvm.loop !47

349:                                              ; preds = %329
  %350 = load i64, i64* %20, align 8
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  br label %1340

353:                                              ; preds = %349
  %354 = load i64, i64* %20, align 8
  %355 = icmp eq i64 %354, -1
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  br label %1340

357:                                              ; preds = %353
  %358 = load i64, i64* %20, align 8
  %359 = sub i64 %358, 1
  %360 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %361 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %360, i32 0, i32 5
  store i64 %359, i64* %361, align 8
  %362 = load i8*, i8** %19, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  store i8* %363, i8** %8, align 8
  br label %364

364:                                              ; preds = %357, %312
  br label %365

365:                                              ; preds = %364, %289, %284
  %366 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %367 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %368, -1
  br i1 %369, label %370, label %381

370:                                              ; preds = %365
  %371 = load i64, i64* %9, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %9, align 8
  %373 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %374 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %373, i32 0, i32 5
  store i64 %371, i64* %374, align 8
  %375 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %376 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %375, i32 0, i32 5
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, -1
  br i1 %378, label %379, label %380

379:                                              ; preds = %370
  br label %1340

380:                                              ; preds = %370
  br label %381

381:                                              ; preds = %380, %365
  %382 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %383 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %21, align 8
  %385 = load i64, i64* %21, align 8
  %386 = load i64, i64* %11, align 8
  %387 = icmp uge i64 %385, %386
  br i1 %387, label %388, label %462

388:                                              ; preds = %381
  %389 = load i64, i64* %11, align 8
  %390 = icmp ule i64 %389, 9223372036854775807
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i64, i64* %11, align 8
  %393 = mul i64 %392, 2
  br label %395

394:                                              ; preds = %388
  br label %395

395:                                              ; preds = %394, %391
  %396 = phi i64 [ %393, %391 ], [ -1, %394 ]
  store i64 %396, i64* %11, align 8
  %397 = load i64, i64* %11, align 8
  %398 = load i64, i64* %21, align 8
  %399 = icmp ule i64 %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %395
  %401 = load i64, i64* %21, align 8
  %402 = call i64 @xsum(i64 noundef %401, i64 noundef 1) #20
  store i64 %402, i64* %11, align 8
  br label %403

403:                                              ; preds = %400, %395
  %404 = load i64, i64* %11, align 8
  %405 = icmp ule i64 %404, 576460752303423487
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i64, i64* %11, align 8
  %408 = mul i64 %407, 32
  br label %410

409:                                              ; preds = %403
  br label %410

410:                                              ; preds = %409, %406
  %411 = phi i64 [ %408, %406 ], [ -1, %409 ]
  store i64 %411, i64* %22, align 8
  %412 = load i64, i64* %22, align 8
  %413 = icmp eq i64 %412, -1
  br i1 %413, label %414, label %415

414:                                              ; preds = %410
  br label %1368

415:                                              ; preds = %410
  %416 = load %struct.arguments*, %struct.arguments** %7, align 8
  %417 = getelementptr inbounds %struct.arguments, %struct.arguments* %416, i32 0, i32 1
  %418 = load %struct.argument*, %struct.argument** %417, align 8
  %419 = load %struct.arguments*, %struct.arguments** %7, align 8
  %420 = getelementptr inbounds %struct.arguments, %struct.arguments* %419, i32 0, i32 2
  %421 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %420, i64 0, i64 0
  %422 = icmp ne %struct.argument* %418, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %415
  %424 = load %struct.arguments*, %struct.arguments** %7, align 8
  %425 = getelementptr inbounds %struct.arguments, %struct.arguments* %424, i32 0, i32 1
  %426 = load %struct.argument*, %struct.argument** %425, align 8
  %427 = bitcast %struct.argument* %426 to i8*
  %428 = load i64, i64* %22, align 8
  %429 = call i8* @rpl_realloc(i8* noundef %427, i64 noundef %428)
  br label %433

430:                                              ; preds = %415
  %431 = load i64, i64* %22, align 8
  %432 = call noalias i8* @malloc(i64 noundef %431) #18
  br label %433

433:                                              ; preds = %430, %423
  %434 = phi i8* [ %429, %423 ], [ %432, %430 ]
  %435 = bitcast i8* %434 to %struct.argument*
  store %struct.argument* %435, %struct.argument** %23, align 8
  %436 = load %struct.argument*, %struct.argument** %23, align 8
  %437 = icmp eq %struct.argument* %436, null
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  br label %1368

439:                                              ; preds = %433
  %440 = load %struct.arguments*, %struct.arguments** %7, align 8
  %441 = getelementptr inbounds %struct.arguments, %struct.arguments* %440, i32 0, i32 1
  %442 = load %struct.argument*, %struct.argument** %441, align 8
  %443 = load %struct.arguments*, %struct.arguments** %7, align 8
  %444 = getelementptr inbounds %struct.arguments, %struct.arguments* %443, i32 0, i32 2
  %445 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %444, i64 0, i64 0
  %446 = icmp eq %struct.argument* %442, %445
  br i1 %446, label %447, label %458

447:                                              ; preds = %439
  %448 = load %struct.argument*, %struct.argument** %23, align 8
  %449 = bitcast %struct.argument* %448 to i8*
  %450 = load %struct.arguments*, %struct.arguments** %7, align 8
  %451 = getelementptr inbounds %struct.arguments, %struct.arguments* %450, i32 0, i32 1
  %452 = load %struct.argument*, %struct.argument** %451, align 8
  %453 = bitcast %struct.argument* %452 to i8*
  %454 = load %struct.arguments*, %struct.arguments** %7, align 8
  %455 = getelementptr inbounds %struct.arguments, %struct.arguments* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 16
  %457 = mul i64 %456, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %449, i8* align 16 %453, i64 %457, i1 false)
  br label %458

458:                                              ; preds = %447, %439
  %459 = load %struct.argument*, %struct.argument** %23, align 8
  %460 = load %struct.arguments*, %struct.arguments** %7, align 8
  %461 = getelementptr inbounds %struct.arguments, %struct.arguments* %460, i32 0, i32 1
  store %struct.argument* %459, %struct.argument** %461, align 8
  br label %462

462:                                              ; preds = %458, %381
  br label %463

463:                                              ; preds = %469, %462
  %464 = load %struct.arguments*, %struct.arguments** %7, align 8
  %465 = getelementptr inbounds %struct.arguments, %struct.arguments* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 16
  %467 = load i64, i64* %21, align 8
  %468 = icmp ule i64 %466, %467
  br i1 %468, label %469, label %479

469:                                              ; preds = %463
  %470 = load %struct.arguments*, %struct.arguments** %7, align 8
  %471 = getelementptr inbounds %struct.arguments, %struct.arguments* %470, i32 0, i32 1
  %472 = load %struct.argument*, %struct.argument** %471, align 8
  %473 = load %struct.arguments*, %struct.arguments** %7, align 8
  %474 = getelementptr inbounds %struct.arguments, %struct.arguments* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 16
  %476 = add i64 %475, 1
  store i64 %476, i64* %474, align 16
  %477 = getelementptr inbounds %struct.argument, %struct.argument* %472, i64 %475
  %478 = getelementptr inbounds %struct.argument, %struct.argument* %477, i32 0, i32 0
  store i32 0, i32* %478, align 16
  br label %463, !llvm.loop !48

479:                                              ; preds = %463
  %480 = load %struct.arguments*, %struct.arguments** %7, align 8
  %481 = getelementptr inbounds %struct.arguments, %struct.arguments* %480, i32 0, i32 1
  %482 = load %struct.argument*, %struct.argument** %481, align 8
  %483 = load i64, i64* %21, align 8
  %484 = getelementptr inbounds %struct.argument, %struct.argument* %482, i64 %483
  %485 = getelementptr inbounds %struct.argument, %struct.argument* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 16
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %495

488:                                              ; preds = %479
  %489 = load %struct.arguments*, %struct.arguments** %7, align 8
  %490 = getelementptr inbounds %struct.arguments, %struct.arguments* %489, i32 0, i32 1
  %491 = load %struct.argument*, %struct.argument** %490, align 8
  %492 = load i64, i64* %21, align 8
  %493 = getelementptr inbounds %struct.argument, %struct.argument* %491, i64 %492
  %494 = getelementptr inbounds %struct.argument, %struct.argument* %493, i32 0, i32 0
  store i32 5, i32* %494, align 16
  br label %506

495:                                              ; preds = %479
  %496 = load %struct.arguments*, %struct.arguments** %7, align 8
  %497 = getelementptr inbounds %struct.arguments, %struct.arguments* %496, i32 0, i32 1
  %498 = load %struct.argument*, %struct.argument** %497, align 8
  %499 = load i64, i64* %21, align 8
  %500 = getelementptr inbounds %struct.argument, %struct.argument* %498, i64 %499
  %501 = getelementptr inbounds %struct.argument, %struct.argument* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 16
  %503 = icmp ne i32 %502, 5
  br i1 %503, label %504, label %505

504:                                              ; preds = %495
  br label %1340

505:                                              ; preds = %495
  br label %506

506:                                              ; preds = %505, %488
  br label %557

507:                                              ; preds = %267
  %508 = load i8*, i8** %8, align 8
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp sge i32 %510, 48
  br i1 %511, label %512, label %556

512:                                              ; preds = %507
  %513 = load i8*, i8** %8, align 8
  %514 = load i8, i8* %513, align 1
  %515 = zext i8 %514 to i32
  %516 = icmp sle i32 %515, 57
  br i1 %516, label %517, label %556

517:                                              ; preds = %512
  %518 = load i8*, i8** %8, align 8
  %519 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %520 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %519, i32 0, i32 3
  store i8* %518, i8** %520, align 8
  br label %521

521:                                              ; preds = %534, %517
  %522 = load i8*, i8** %8, align 8
  %523 = load i8, i8* %522, align 1
  %524 = zext i8 %523 to i32
  %525 = icmp sge i32 %524, 48
  br i1 %525, label %526, label %531

526:                                              ; preds = %521
  %527 = load i8*, i8** %8, align 8
  %528 = load i8, i8* %527, align 1
  %529 = zext i8 %528 to i32
  %530 = icmp sle i32 %529, 57
  br label %531

531:                                              ; preds = %526, %521
  %532 = phi i1 [ false, %521 ], [ %530, %526 ]
  br i1 %532, label %533, label %537

533:                                              ; preds = %531
  br label %534

534:                                              ; preds = %533
  %535 = load i8*, i8** %8, align 8
  %536 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %536, i8** %8, align 8
  br label %521, !llvm.loop !49

537:                                              ; preds = %531
  %538 = load i8*, i8** %8, align 8
  %539 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %540 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %539, i32 0, i32 4
  store i8* %538, i8** %540, align 8
  %541 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %542 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %541, i32 0, i32 4
  %543 = load i8*, i8** %542, align 8
  %544 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %545 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %544, i32 0, i32 3
  %546 = load i8*, i8** %545, align 8
  %547 = ptrtoint i8* %543 to i64
  %548 = ptrtoint i8* %546 to i64
  %549 = sub i64 %547, %548
  store i64 %549, i64* %24, align 8
  %550 = load i64, i64* %12, align 8
  %551 = load i64, i64* %24, align 8
  %552 = icmp ult i64 %550, %551
  br i1 %552, label %553, label %555

553:                                              ; preds = %537
  %554 = load i64, i64* %24, align 8
  store i64 %554, i64* %12, align 8
  br label %555

555:                                              ; preds = %553, %537
  br label %556

556:                                              ; preds = %555, %512, %507
  br label %557

557:                                              ; preds = %556, %506
  %558 = load i8*, i8** %8, align 8
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  %561 = icmp eq i32 %560, 46
  br i1 %561, label %562, label %846

562:                                              ; preds = %557
  %563 = load i8*, i8** %8, align 8
  %564 = getelementptr inbounds i8, i8* %563, i32 1
  store i8* %564, i8** %8, align 8
  %565 = load i8*, i8** %8, align 8
  %566 = load i8, i8* %565, align 1
  %567 = zext i8 %566 to i32
  %568 = icmp eq i32 %567, 42
  br i1 %568, label %569, label %805

569:                                              ; preds = %562
  %570 = load i8*, i8** %8, align 8
  %571 = getelementptr inbounds i8, i8* %570, i64 -1
  %572 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %573 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %572, i32 0, i32 6
  store i8* %571, i8** %573, align 8
  %574 = load i8*, i8** %8, align 8
  %575 = getelementptr inbounds i8, i8* %574, i32 1
  store i8* %575, i8** %8, align 8
  %576 = load i8*, i8** %8, align 8
  %577 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %578 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %577, i32 0, i32 7
  store i8* %576, i8** %578, align 8
  %579 = load i64, i64* %13, align 8
  %580 = icmp ult i64 %579, 2
  br i1 %580, label %581, label %582

581:                                              ; preds = %569
  store i64 2, i64* %13, align 8
  br label %582

582:                                              ; preds = %581, %569
  %583 = load i8*, i8** %8, align 8
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = icmp sge i32 %585, 48
  br i1 %586, label %587, label %663

587:                                              ; preds = %582
  %588 = load i8*, i8** %8, align 8
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i32
  %591 = icmp sle i32 %590, 57
  br i1 %591, label %592, label %663

592:                                              ; preds = %587
  %593 = load i8*, i8** %8, align 8
  store i8* %593, i8** %25, align 8
  br label %594

594:                                              ; preds = %607, %592
  %595 = load i8*, i8** %25, align 8
  %596 = load i8, i8* %595, align 1
  %597 = zext i8 %596 to i32
  %598 = icmp sge i32 %597, 48
  br i1 %598, label %599, label %604

599:                                              ; preds = %594
  %600 = load i8*, i8** %25, align 8
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i32
  %603 = icmp sle i32 %602, 57
  br label %604

604:                                              ; preds = %599, %594
  %605 = phi i1 [ false, %594 ], [ %603, %599 ]
  br i1 %605, label %606, label %610

606:                                              ; preds = %604
  br label %607

607:                                              ; preds = %606
  %608 = load i8*, i8** %25, align 8
  %609 = getelementptr inbounds i8, i8* %608, i32 1
  store i8* %609, i8** %25, align 8
  br label %594, !llvm.loop !50

610:                                              ; preds = %604
  %611 = load i8*, i8** %25, align 8
  %612 = load i8, i8* %611, align 1
  %613 = zext i8 %612 to i32
  %614 = icmp eq i32 %613, 36
  br i1 %614, label %615, label %662

615:                                              ; preds = %610
  store i64 0, i64* %26, align 8
  %616 = load i8*, i8** %8, align 8
  store i8* %616, i8** %25, align 8
  br label %617

617:                                              ; preds = %644, %615
  %618 = load i8*, i8** %25, align 8
  %619 = load i8, i8* %618, align 1
  %620 = zext i8 %619 to i32
  %621 = icmp sge i32 %620, 48
  br i1 %621, label %622, label %627

622:                                              ; preds = %617
  %623 = load i8*, i8** %25, align 8
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp sle i32 %625, 57
  br label %627

627:                                              ; preds = %622, %617
  %628 = phi i1 [ false, %617 ], [ %626, %622 ]
  br i1 %628, label %629, label %647

629:                                              ; preds = %627
  %630 = load i64, i64* %26, align 8
  %631 = icmp ule i64 %630, 1844674407370955161
  br i1 %631, label %632, label %635

632:                                              ; preds = %629
  %633 = load i64, i64* %26, align 8
  %634 = mul i64 %633, 10
  br label %636

635:                                              ; preds = %629
  br label %636

636:                                              ; preds = %635, %632
  %637 = phi i64 [ %634, %632 ], [ -1, %635 ]
  %638 = load i8*, i8** %25, align 8
  %639 = load i8, i8* %638, align 1
  %640 = zext i8 %639 to i32
  %641 = sub nsw i32 %640, 48
  %642 = sext i32 %641 to i64
  %643 = call i64 @xsum(i64 noundef %637, i64 noundef %642) #20
  store i64 %643, i64* %26, align 8
  br label %644

644:                                              ; preds = %636
  %645 = load i8*, i8** %25, align 8
  %646 = getelementptr inbounds i8, i8* %645, i32 1
  store i8* %646, i8** %25, align 8
  br label %617, !llvm.loop !51

647:                                              ; preds = %627
  %648 = load i64, i64* %26, align 8
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %647
  br label %1340

651:                                              ; preds = %647
  %652 = load i64, i64* %26, align 8
  %653 = icmp eq i64 %652, -1
  br i1 %653, label %654, label %655

654:                                              ; preds = %651
  br label %1340

655:                                              ; preds = %651
  %656 = load i64, i64* %26, align 8
  %657 = sub i64 %656, 1
  %658 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %659 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %658, i32 0, i32 8
  store i64 %657, i64* %659, align 8
  %660 = load i8*, i8** %25, align 8
  %661 = getelementptr inbounds i8, i8* %660, i64 1
  store i8* %661, i8** %8, align 8
  br label %662

662:                                              ; preds = %655, %610
  br label %663

663:                                              ; preds = %662, %587, %582
  %664 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %665 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %664, i32 0, i32 8
  %666 = load i64, i64* %665, align 8
  %667 = icmp eq i64 %666, -1
  br i1 %667, label %668, label %679

668:                                              ; preds = %663
  %669 = load i64, i64* %9, align 8
  %670 = add i64 %669, 1
  store i64 %670, i64* %9, align 8
  %671 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %672 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %671, i32 0, i32 8
  store i64 %669, i64* %672, align 8
  %673 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %674 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %673, i32 0, i32 8
  %675 = load i64, i64* %674, align 8
  %676 = icmp eq i64 %675, -1
  br i1 %676, label %677, label %678

677:                                              ; preds = %668
  br label %1340

678:                                              ; preds = %668
  br label %679

679:                                              ; preds = %678, %663
  %680 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %681 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %680, i32 0, i32 8
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %27, align 8
  %683 = load i64, i64* %27, align 8
  %684 = load i64, i64* %11, align 8
  %685 = icmp uge i64 %683, %684
  br i1 %685, label %686, label %760

686:                                              ; preds = %679
  %687 = load i64, i64* %11, align 8
  %688 = icmp ule i64 %687, 9223372036854775807
  br i1 %688, label %689, label %692

689:                                              ; preds = %686
  %690 = load i64, i64* %11, align 8
  %691 = mul i64 %690, 2
  br label %693

692:                                              ; preds = %686
  br label %693

693:                                              ; preds = %692, %689
  %694 = phi i64 [ %691, %689 ], [ -1, %692 ]
  store i64 %694, i64* %11, align 8
  %695 = load i64, i64* %11, align 8
  %696 = load i64, i64* %27, align 8
  %697 = icmp ule i64 %695, %696
  br i1 %697, label %698, label %701

698:                                              ; preds = %693
  %699 = load i64, i64* %27, align 8
  %700 = call i64 @xsum(i64 noundef %699, i64 noundef 1) #20
  store i64 %700, i64* %11, align 8
  br label %701

701:                                              ; preds = %698, %693
  %702 = load i64, i64* %11, align 8
  %703 = icmp ule i64 %702, 576460752303423487
  br i1 %703, label %704, label %707

704:                                              ; preds = %701
  %705 = load i64, i64* %11, align 8
  %706 = mul i64 %705, 32
  br label %708

707:                                              ; preds = %701
  br label %708

708:                                              ; preds = %707, %704
  %709 = phi i64 [ %706, %704 ], [ -1, %707 ]
  store i64 %709, i64* %28, align 8
  %710 = load i64, i64* %28, align 8
  %711 = icmp eq i64 %710, -1
  br i1 %711, label %712, label %713

712:                                              ; preds = %708
  br label %1368

713:                                              ; preds = %708
  %714 = load %struct.arguments*, %struct.arguments** %7, align 8
  %715 = getelementptr inbounds %struct.arguments, %struct.arguments* %714, i32 0, i32 1
  %716 = load %struct.argument*, %struct.argument** %715, align 8
  %717 = load %struct.arguments*, %struct.arguments** %7, align 8
  %718 = getelementptr inbounds %struct.arguments, %struct.arguments* %717, i32 0, i32 2
  %719 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %718, i64 0, i64 0
  %720 = icmp ne %struct.argument* %716, %719
  br i1 %720, label %721, label %728

721:                                              ; preds = %713
  %722 = load %struct.arguments*, %struct.arguments** %7, align 8
  %723 = getelementptr inbounds %struct.arguments, %struct.arguments* %722, i32 0, i32 1
  %724 = load %struct.argument*, %struct.argument** %723, align 8
  %725 = bitcast %struct.argument* %724 to i8*
  %726 = load i64, i64* %28, align 8
  %727 = call i8* @rpl_realloc(i8* noundef %725, i64 noundef %726)
  br label %731

728:                                              ; preds = %713
  %729 = load i64, i64* %28, align 8
  %730 = call noalias i8* @malloc(i64 noundef %729) #18
  br label %731

731:                                              ; preds = %728, %721
  %732 = phi i8* [ %727, %721 ], [ %730, %728 ]
  %733 = bitcast i8* %732 to %struct.argument*
  store %struct.argument* %733, %struct.argument** %29, align 8
  %734 = load %struct.argument*, %struct.argument** %29, align 8
  %735 = icmp eq %struct.argument* %734, null
  br i1 %735, label %736, label %737

736:                                              ; preds = %731
  br label %1368

737:                                              ; preds = %731
  %738 = load %struct.arguments*, %struct.arguments** %7, align 8
  %739 = getelementptr inbounds %struct.arguments, %struct.arguments* %738, i32 0, i32 1
  %740 = load %struct.argument*, %struct.argument** %739, align 8
  %741 = load %struct.arguments*, %struct.arguments** %7, align 8
  %742 = getelementptr inbounds %struct.arguments, %struct.arguments* %741, i32 0, i32 2
  %743 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %742, i64 0, i64 0
  %744 = icmp eq %struct.argument* %740, %743
  br i1 %744, label %745, label %756

745:                                              ; preds = %737
  %746 = load %struct.argument*, %struct.argument** %29, align 8
  %747 = bitcast %struct.argument* %746 to i8*
  %748 = load %struct.arguments*, %struct.arguments** %7, align 8
  %749 = getelementptr inbounds %struct.arguments, %struct.arguments* %748, i32 0, i32 1
  %750 = load %struct.argument*, %struct.argument** %749, align 8
  %751 = bitcast %struct.argument* %750 to i8*
  %752 = load %struct.arguments*, %struct.arguments** %7, align 8
  %753 = getelementptr inbounds %struct.arguments, %struct.arguments* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 16
  %755 = mul i64 %754, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %747, i8* align 16 %751, i64 %755, i1 false)
  br label %756

756:                                              ; preds = %745, %737
  %757 = load %struct.argument*, %struct.argument** %29, align 8
  %758 = load %struct.arguments*, %struct.arguments** %7, align 8
  %759 = getelementptr inbounds %struct.arguments, %struct.arguments* %758, i32 0, i32 1
  store %struct.argument* %757, %struct.argument** %759, align 8
  br label %760

760:                                              ; preds = %756, %679
  br label %761

761:                                              ; preds = %767, %760
  %762 = load %struct.arguments*, %struct.arguments** %7, align 8
  %763 = getelementptr inbounds %struct.arguments, %struct.arguments* %762, i32 0, i32 0
  %764 = load i64, i64* %763, align 16
  %765 = load i64, i64* %27, align 8
  %766 = icmp ule i64 %764, %765
  br i1 %766, label %767, label %777

767:                                              ; preds = %761
  %768 = load %struct.arguments*, %struct.arguments** %7, align 8
  %769 = getelementptr inbounds %struct.arguments, %struct.arguments* %768, i32 0, i32 1
  %770 = load %struct.argument*, %struct.argument** %769, align 8
  %771 = load %struct.arguments*, %struct.arguments** %7, align 8
  %772 = getelementptr inbounds %struct.arguments, %struct.arguments* %771, i32 0, i32 0
  %773 = load i64, i64* %772, align 16
  %774 = add i64 %773, 1
  store i64 %774, i64* %772, align 16
  %775 = getelementptr inbounds %struct.argument, %struct.argument* %770, i64 %773
  %776 = getelementptr inbounds %struct.argument, %struct.argument* %775, i32 0, i32 0
  store i32 0, i32* %776, align 16
  br label %761, !llvm.loop !52

777:                                              ; preds = %761
  %778 = load %struct.arguments*, %struct.arguments** %7, align 8
  %779 = getelementptr inbounds %struct.arguments, %struct.arguments* %778, i32 0, i32 1
  %780 = load %struct.argument*, %struct.argument** %779, align 8
  %781 = load i64, i64* %27, align 8
  %782 = getelementptr inbounds %struct.argument, %struct.argument* %780, i64 %781
  %783 = getelementptr inbounds %struct.argument, %struct.argument* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 16
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %793

786:                                              ; preds = %777
  %787 = load %struct.arguments*, %struct.arguments** %7, align 8
  %788 = getelementptr inbounds %struct.arguments, %struct.arguments* %787, i32 0, i32 1
  %789 = load %struct.argument*, %struct.argument** %788, align 8
  %790 = load i64, i64* %27, align 8
  %791 = getelementptr inbounds %struct.argument, %struct.argument* %789, i64 %790
  %792 = getelementptr inbounds %struct.argument, %struct.argument* %791, i32 0, i32 0
  store i32 5, i32* %792, align 16
  br label %804

793:                                              ; preds = %777
  %794 = load %struct.arguments*, %struct.arguments** %7, align 8
  %795 = getelementptr inbounds %struct.arguments, %struct.arguments* %794, i32 0, i32 1
  %796 = load %struct.argument*, %struct.argument** %795, align 8
  %797 = load i64, i64* %27, align 8
  %798 = getelementptr inbounds %struct.argument, %struct.argument* %796, i64 %797
  %799 = getelementptr inbounds %struct.argument, %struct.argument* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 16
  %801 = icmp ne i32 %800, 5
  br i1 %801, label %802, label %803

802:                                              ; preds = %793
  br label %1340

803:                                              ; preds = %793
  br label %804

804:                                              ; preds = %803, %786
  br label %845

805:                                              ; preds = %562
  %806 = load i8*, i8** %8, align 8
  %807 = getelementptr inbounds i8, i8* %806, i64 -1
  %808 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %809 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %808, i32 0, i32 6
  store i8* %807, i8** %809, align 8
  br label %810

810:                                              ; preds = %823, %805
  %811 = load i8*, i8** %8, align 8
  %812 = load i8, i8* %811, align 1
  %813 = zext i8 %812 to i32
  %814 = icmp sge i32 %813, 48
  br i1 %814, label %815, label %820

815:                                              ; preds = %810
  %816 = load i8*, i8** %8, align 8
  %817 = load i8, i8* %816, align 1
  %818 = zext i8 %817 to i32
  %819 = icmp sle i32 %818, 57
  br label %820

820:                                              ; preds = %815, %810
  %821 = phi i1 [ false, %810 ], [ %819, %815 ]
  br i1 %821, label %822, label %826

822:                                              ; preds = %820
  br label %823

823:                                              ; preds = %822
  %824 = load i8*, i8** %8, align 8
  %825 = getelementptr inbounds i8, i8* %824, i32 1
  store i8* %825, i8** %8, align 8
  br label %810, !llvm.loop !53

826:                                              ; preds = %820
  %827 = load i8*, i8** %8, align 8
  %828 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %829 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %828, i32 0, i32 7
  store i8* %827, i8** %829, align 8
  %830 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %831 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %830, i32 0, i32 7
  %832 = load i8*, i8** %831, align 8
  %833 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %834 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %833, i32 0, i32 6
  %835 = load i8*, i8** %834, align 8
  %836 = ptrtoint i8* %832 to i64
  %837 = ptrtoint i8* %835 to i64
  %838 = sub i64 %836, %837
  store i64 %838, i64* %30, align 8
  %839 = load i64, i64* %13, align 8
  %840 = load i64, i64* %30, align 8
  %841 = icmp ult i64 %839, %840
  br i1 %841, label %842, label %844

842:                                              ; preds = %826
  %843 = load i64, i64* %30, align 8
  store i64 %843, i64* %13, align 8
  br label %844

844:                                              ; preds = %842, %826
  br label %845

845:                                              ; preds = %844, %804
  br label %846

846:                                              ; preds = %845, %557
  store i32 5, i32* %31, align 4
  store i32 6, i32* %32, align 4
  store i32 36, i32* %33, align 4
  store i32 27, i32* %34, align 4
  %847 = load i8*, i8** %8, align 8
  %848 = load i8, i8* %847, align 1
  %849 = zext i8 %848 to i32
  %850 = icmp eq i32 %849, 104
  br i1 %850, label %851, label %864

851:                                              ; preds = %846
  %852 = load i8*, i8** %8, align 8
  %853 = getelementptr inbounds i8, i8* %852, i64 1
  %854 = load i8, i8* %853, align 1
  %855 = zext i8 %854 to i32
  %856 = icmp eq i32 %855, 104
  br i1 %856, label %857, label %860

857:                                              ; preds = %851
  store i32 1, i32* %31, align 4
  store i32 2, i32* %32, align 4
  store i32 34, i32* %33, align 4
  %858 = load i8*, i8** %8, align 8
  %859 = getelementptr inbounds i8, i8* %858, i64 2
  store i8* %859, i8** %8, align 8
  br label %863

860:                                              ; preds = %851
  store i32 3, i32* %31, align 4
  store i32 4, i32* %32, align 4
  store i32 35, i32* %33, align 4
  %861 = load i8*, i8** %8, align 8
  %862 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %862, i8** %8, align 8
  br label %863

863:                                              ; preds = %860, %857
  br label %1053

864:                                              ; preds = %846
  %865 = load i8*, i8** %8, align 8
  %866 = load i8, i8* %865, align 1
  %867 = zext i8 %866 to i32
  %868 = icmp eq i32 %867, 108
  br i1 %868, label %869, label %882

869:                                              ; preds = %864
  %870 = load i8*, i8** %8, align 8
  %871 = getelementptr inbounds i8, i8* %870, i64 1
  %872 = load i8, i8* %871, align 1
  %873 = zext i8 %872 to i32
  %874 = icmp eq i32 %873, 108
  br i1 %874, label %875, label %878

875:                                              ; preds = %869
  store i32 9, i32* %31, align 4
  store i32 10, i32* %32, align 4
  store i32 38, i32* %33, align 4
  store i32 28, i32* %34, align 4
  %876 = load i8*, i8** %8, align 8
  %877 = getelementptr inbounds i8, i8* %876, i64 2
  store i8* %877, i8** %8, align 8
  br label %881

878:                                              ; preds = %869
  store i32 7, i32* %31, align 4
  store i32 8, i32* %32, align 4
  store i32 37, i32* %33, align 4
  %879 = load i8*, i8** %8, align 8
  %880 = getelementptr inbounds i8, i8* %879, i32 1
  store i8* %880, i8** %8, align 8
  br label %881

881:                                              ; preds = %878, %875
  br label %1052

882:                                              ; preds = %864
  %883 = load i8*, i8** %8, align 8
  %884 = load i8, i8* %883, align 1
  %885 = zext i8 %884 to i32
  %886 = icmp eq i32 %885, 106
  br i1 %886, label %887, label %890

887:                                              ; preds = %882
  store i32 7, i32* %31, align 4
  store i32 8, i32* %32, align 4
  store i32 37, i32* %33, align 4
  %888 = load i8*, i8** %8, align 8
  %889 = getelementptr inbounds i8, i8* %888, i32 1
  store i8* %889, i8** %8, align 8
  br label %1051

890:                                              ; preds = %882
  %891 = load i8*, i8** %8, align 8
  %892 = load i8, i8* %891, align 1
  %893 = zext i8 %892 to i32
  %894 = icmp eq i32 %893, 122
  br i1 %894, label %900, label %895

895:                                              ; preds = %890
  %896 = load i8*, i8** %8, align 8
  %897 = load i8, i8* %896, align 1
  %898 = zext i8 %897 to i32
  %899 = icmp eq i32 %898, 90
  br i1 %899, label %900, label %903

900:                                              ; preds = %895, %890
  store i32 7, i32* %31, align 4
  store i32 8, i32* %32, align 4
  store i32 37, i32* %33, align 4
  %901 = load i8*, i8** %8, align 8
  %902 = getelementptr inbounds i8, i8* %901, i32 1
  store i8* %902, i8** %8, align 8
  br label %1050

903:                                              ; preds = %895
  %904 = load i8*, i8** %8, align 8
  %905 = load i8, i8* %904, align 1
  %906 = zext i8 %905 to i32
  %907 = icmp eq i32 %906, 116
  br i1 %907, label %908, label %911

908:                                              ; preds = %903
  store i32 7, i32* %31, align 4
  store i32 8, i32* %32, align 4
  store i32 37, i32* %33, align 4
  %909 = load i8*, i8** %8, align 8
  %910 = getelementptr inbounds i8, i8* %909, i32 1
  store i8* %910, i8** %8, align 8
  br label %1049

911:                                              ; preds = %903
  %912 = load i8*, i8** %8, align 8
  %913 = load i8, i8* %912, align 1
  %914 = zext i8 %913 to i32
  %915 = icmp eq i32 %914, 119
  br i1 %915, label %916, label %1039

916:                                              ; preds = %911
  %917 = load i8*, i8** %8, align 8
  %918 = getelementptr inbounds i8, i8* %917, i64 1
  %919 = load i8, i8* %918, align 1
  %920 = zext i8 %919 to i32
  %921 = icmp eq i32 %920, 102
  br i1 %921, label %922, label %980

922:                                              ; preds = %916
  %923 = load i8*, i8** %8, align 8
  %924 = getelementptr inbounds i8, i8* %923, i64 2
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = icmp eq i32 %926, 56
  br i1 %927, label %928, label %931

928:                                              ; preds = %922
  store i32 19, i32* %31, align 4
  store i32 20, i32* %32, align 4
  store i32 43, i32* %33, align 4
  %929 = load i8*, i8** %8, align 8
  %930 = getelementptr inbounds i8, i8* %929, i64 3
  store i8* %930, i8** %8, align 8
  br label %979

931:                                              ; preds = %922
  %932 = load i8*, i8** %8, align 8
  %933 = getelementptr inbounds i8, i8* %932, i64 2
  %934 = load i8, i8* %933, align 1
  %935 = zext i8 %934 to i32
  %936 = icmp eq i32 %935, 49
  br i1 %936, label %937, label %946

937:                                              ; preds = %931
  %938 = load i8*, i8** %8, align 8
  %939 = getelementptr inbounds i8, i8* %938, i64 3
  %940 = load i8, i8* %939, align 1
  %941 = zext i8 %940 to i32
  %942 = icmp eq i32 %941, 54
  br i1 %942, label %943, label %946

943:                                              ; preds = %937
  store i32 21, i32* %31, align 4
  store i32 22, i32* %32, align 4
  store i32 44, i32* %33, align 4
  %944 = load i8*, i8** %8, align 8
  %945 = getelementptr inbounds i8, i8* %944, i64 4
  store i8* %945, i8** %8, align 8
  br label %978

946:                                              ; preds = %937, %931
  %947 = load i8*, i8** %8, align 8
  %948 = getelementptr inbounds i8, i8* %947, i64 2
  %949 = load i8, i8* %948, align 1
  %950 = zext i8 %949 to i32
  %951 = icmp eq i32 %950, 51
  br i1 %951, label %952, label %961

952:                                              ; preds = %946
  %953 = load i8*, i8** %8, align 8
  %954 = getelementptr inbounds i8, i8* %953, i64 3
  %955 = load i8, i8* %954, align 1
  %956 = zext i8 %955 to i32
  %957 = icmp eq i32 %956, 50
  br i1 %957, label %958, label %961

958:                                              ; preds = %952
  store i32 23, i32* %31, align 4
  store i32 24, i32* %32, align 4
  store i32 45, i32* %33, align 4
  %959 = load i8*, i8** %8, align 8
  %960 = getelementptr inbounds i8, i8* %959, i64 4
  store i8* %960, i8** %8, align 8
  br label %977

961:                                              ; preds = %952, %946
  %962 = load i8*, i8** %8, align 8
  %963 = getelementptr inbounds i8, i8* %962, i64 2
  %964 = load i8, i8* %963, align 1
  %965 = zext i8 %964 to i32
  %966 = icmp eq i32 %965, 54
  br i1 %966, label %967, label %976

967:                                              ; preds = %961
  %968 = load i8*, i8** %8, align 8
  %969 = getelementptr inbounds i8, i8* %968, i64 3
  %970 = load i8, i8* %969, align 1
  %971 = zext i8 %970 to i32
  %972 = icmp eq i32 %971, 52
  br i1 %972, label %973, label %976

973:                                              ; preds = %967
  store i32 25, i32* %31, align 4
  store i32 26, i32* %32, align 4
  store i32 46, i32* %33, align 4
  %974 = load i8*, i8** %8, align 8
  %975 = getelementptr inbounds i8, i8* %974, i64 4
  store i8* %975, i8** %8, align 8
  br label %976

976:                                              ; preds = %973, %967, %961
  br label %977

977:                                              ; preds = %976, %958
  br label %978

978:                                              ; preds = %977, %943
  br label %979

979:                                              ; preds = %978, %928
  br label %1038

980:                                              ; preds = %916
  %981 = load i8*, i8** %8, align 8
  %982 = getelementptr inbounds i8, i8* %981, i64 1
  %983 = load i8, i8* %982, align 1
  %984 = zext i8 %983 to i32
  %985 = icmp eq i32 %984, 56
  br i1 %985, label %986, label %989

986:                                              ; preds = %980
  store i32 11, i32* %31, align 4
  store i32 12, i32* %32, align 4
  store i32 39, i32* %33, align 4
  %987 = load i8*, i8** %8, align 8
  %988 = getelementptr inbounds i8, i8* %987, i64 2
  store i8* %988, i8** %8, align 8
  br label %1037

989:                                              ; preds = %980
  %990 = load i8*, i8** %8, align 8
  %991 = getelementptr inbounds i8, i8* %990, i64 1
  %992 = load i8, i8* %991, align 1
  %993 = zext i8 %992 to i32
  %994 = icmp eq i32 %993, 49
  br i1 %994, label %995, label %1004

995:                                              ; preds = %989
  %996 = load i8*, i8** %8, align 8
  %997 = getelementptr inbounds i8, i8* %996, i64 2
  %998 = load i8, i8* %997, align 1
  %999 = zext i8 %998 to i32
  %1000 = icmp eq i32 %999, 54
  br i1 %1000, label %1001, label %1004

1001:                                             ; preds = %995
  store i32 13, i32* %31, align 4
  store i32 14, i32* %32, align 4
  store i32 40, i32* %33, align 4
  %1002 = load i8*, i8** %8, align 8
  %1003 = getelementptr inbounds i8, i8* %1002, i64 3
  store i8* %1003, i8** %8, align 8
  br label %1036

1004:                                             ; preds = %995, %989
  %1005 = load i8*, i8** %8, align 8
  %1006 = getelementptr inbounds i8, i8* %1005, i64 1
  %1007 = load i8, i8* %1006, align 1
  %1008 = zext i8 %1007 to i32
  %1009 = icmp eq i32 %1008, 51
  br i1 %1009, label %1010, label %1019

1010:                                             ; preds = %1004
  %1011 = load i8*, i8** %8, align 8
  %1012 = getelementptr inbounds i8, i8* %1011, i64 2
  %1013 = load i8, i8* %1012, align 1
  %1014 = zext i8 %1013 to i32
  %1015 = icmp eq i32 %1014, 50
  br i1 %1015, label %1016, label %1019

1016:                                             ; preds = %1010
  store i32 15, i32* %31, align 4
  store i32 16, i32* %32, align 4
  store i32 41, i32* %33, align 4
  %1017 = load i8*, i8** %8, align 8
  %1018 = getelementptr inbounds i8, i8* %1017, i64 3
  store i8* %1018, i8** %8, align 8
  br label %1035

1019:                                             ; preds = %1010, %1004
  %1020 = load i8*, i8** %8, align 8
  %1021 = getelementptr inbounds i8, i8* %1020, i64 1
  %1022 = load i8, i8* %1021, align 1
  %1023 = zext i8 %1022 to i32
  %1024 = icmp eq i32 %1023, 54
  br i1 %1024, label %1025, label %1034

1025:                                             ; preds = %1019
  %1026 = load i8*, i8** %8, align 8
  %1027 = getelementptr inbounds i8, i8* %1026, i64 2
  %1028 = load i8, i8* %1027, align 1
  %1029 = zext i8 %1028 to i32
  %1030 = icmp eq i32 %1029, 52
  br i1 %1030, label %1031, label %1034

1031:                                             ; preds = %1025
  store i32 17, i32* %31, align 4
  store i32 18, i32* %32, align 4
  store i32 42, i32* %33, align 4
  %1032 = load i8*, i8** %8, align 8
  %1033 = getelementptr inbounds i8, i8* %1032, i64 3
  store i8* %1033, i8** %8, align 8
  br label %1034

1034:                                             ; preds = %1031, %1025, %1019
  br label %1035

1035:                                             ; preds = %1034, %1016
  br label %1036

1036:                                             ; preds = %1035, %1001
  br label %1037

1037:                                             ; preds = %1036, %986
  br label %1038

1038:                                             ; preds = %1037, %979
  br label %1048

1039:                                             ; preds = %911
  %1040 = load i8*, i8** %8, align 8
  %1041 = load i8, i8* %1040, align 1
  %1042 = zext i8 %1041 to i32
  %1043 = icmp eq i32 %1042, 76
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1039
  store i32 9, i32* %31, align 4
  store i32 10, i32* %32, align 4
  store i32 38, i32* %33, align 4
  store i32 28, i32* %34, align 4
  %1045 = load i8*, i8** %8, align 8
  %1046 = getelementptr inbounds i8, i8* %1045, i32 1
  store i8* %1046, i8** %8, align 8
  br label %1047

1047:                                             ; preds = %1044, %1039
  br label %1048

1048:                                             ; preds = %1047, %1038
  br label %1049

1049:                                             ; preds = %1048, %908
  br label %1050

1050:                                             ; preds = %1049, %900
  br label %1051

1051:                                             ; preds = %1050, %887
  br label %1052

1052:                                             ; preds = %1051, %881
  br label %1053

1053:                                             ; preds = %1052, %863
  %1054 = load i32, i32* %33, align 4
  %1055 = load i8*, i8** %8, align 8
  %1056 = getelementptr inbounds i8, i8* %1055, i32 1
  store i8* %1056, i8** %8, align 8
  %1057 = load i8, i8* %1055, align 1
  store i8 %1057, i8* %14, align 1
  %1058 = load i8, i8* %14, align 1
  %1059 = zext i8 %1058 to i32
  switch i32 %1059, label %1088 [
    i32 100, label %1060
    i32 105, label %1060
    i32 98, label %1062
    i32 111, label %1062
    i32 117, label %1062
    i32 120, label %1062
    i32 88, label %1062
    i32 66, label %1062
    i32 102, label %1064
    i32 70, label %1064
    i32 101, label %1064
    i32 69, label %1064
    i32 103, label %1064
    i32 71, label %1064
    i32 97, label %1064
    i32 65, label %1064
    i32 99, label %1066
    i32 67, label %1075
    i32 115, label %1076
    i32 83, label %1085
    i32 112, label %1086
    i32 37, label %1087
  ]

1060:                                             ; preds = %1053, %1053
  %1061 = load i32, i32* %31, align 4
  store i32 %1061, i32* %35, align 4
  br label %1089

1062:                                             ; preds = %1053, %1053, %1053, %1053, %1053, %1053
  %1063 = load i32, i32* %32, align 4
  store i32 %1063, i32* %35, align 4
  br label %1089

1064:                                             ; preds = %1053, %1053, %1053, %1053, %1053, %1053, %1053, %1053
  %1065 = load i32, i32* %34, align 4
  store i32 %1065, i32* %35, align 4
  br label %1089

1066:                                             ; preds = %1053
  %1067 = load i32, i32* %31, align 4
  %1068 = icmp eq i32 %1067, 7
  br i1 %1068, label %1072, label %1069

1069:                                             ; preds = %1066
  %1070 = load i32, i32* %31, align 4
  %1071 = icmp eq i32 %1070, 9
  br i1 %1071, label %1072, label %1073

1072:                                             ; preds = %1069, %1066
  store i32 30, i32* %35, align 4
  br label %1074

1073:                                             ; preds = %1069
  store i32 29, i32* %35, align 4
  br label %1074

1074:                                             ; preds = %1073, %1072
  br label %1089

1075:                                             ; preds = %1053
  store i32 30, i32* %35, align 4
  store i8 99, i8* %14, align 1
  br label %1089

1076:                                             ; preds = %1053
  %1077 = load i32, i32* %31, align 4
  %1078 = icmp eq i32 %1077, 7
  br i1 %1078, label %1082, label %1079

1079:                                             ; preds = %1076
  %1080 = load i32, i32* %31, align 4
  %1081 = icmp eq i32 %1080, 9
  br i1 %1081, label %1082, label %1083

1082:                                             ; preds = %1079, %1076
  store i32 32, i32* %35, align 4
  br label %1084

1083:                                             ; preds = %1079
  store i32 31, i32* %35, align 4
  br label %1084

1084:                                             ; preds = %1083, %1082
  br label %1089

1085:                                             ; preds = %1053
  store i32 32, i32* %35, align 4
  store i8 115, i8* %14, align 1
  br label %1089

1086:                                             ; preds = %1053
  store i32 33, i32* %35, align 4
  br label %1089

1087:                                             ; preds = %1053
  store i32 0, i32* %35, align 4
  br label %1089

1088:                                             ; preds = %1053
  br label %1340

1089:                                             ; preds = %1087, %1086, %1085, %1084, %1075, %1074, %1064, %1062, %1060
  %1090 = load i32, i32* %35, align 4
  %1091 = icmp ne i32 %1090, 0
  br i1 %1091, label %1092, label %1239

1092:                                             ; preds = %1089
  %1093 = load i64, i64* %15, align 8
  %1094 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1095 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1094, i32 0, i32 10
  store i64 %1093, i64* %1095, align 8
  %1096 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1097 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1096, i32 0, i32 10
  %1098 = load i64, i64* %1097, align 8
  %1099 = icmp eq i64 %1098, -1
  br i1 %1099, label %1100, label %1111

1100:                                             ; preds = %1092
  %1101 = load i64, i64* %9, align 8
  %1102 = add i64 %1101, 1
  store i64 %1102, i64* %9, align 8
  %1103 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1104 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1103, i32 0, i32 10
  store i64 %1101, i64* %1104, align 8
  %1105 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1106 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1105, i32 0, i32 10
  %1107 = load i64, i64* %1106, align 8
  %1108 = icmp eq i64 %1107, -1
  br i1 %1108, label %1109, label %1110

1109:                                             ; preds = %1100
  br label %1340

1110:                                             ; preds = %1100
  br label %1111

1111:                                             ; preds = %1110, %1092
  %1112 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1113 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1112, i32 0, i32 10
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %36, align 8
  %1115 = load i64, i64* %36, align 8
  %1116 = load i64, i64* %11, align 8
  %1117 = icmp uge i64 %1115, %1116
  br i1 %1117, label %1118, label %1192

1118:                                             ; preds = %1111
  %1119 = load i64, i64* %11, align 8
  %1120 = icmp ule i64 %1119, 9223372036854775807
  br i1 %1120, label %1121, label %1124

1121:                                             ; preds = %1118
  %1122 = load i64, i64* %11, align 8
  %1123 = mul i64 %1122, 2
  br label %1125

1124:                                             ; preds = %1118
  br label %1125

1125:                                             ; preds = %1124, %1121
  %1126 = phi i64 [ %1123, %1121 ], [ -1, %1124 ]
  store i64 %1126, i64* %11, align 8
  %1127 = load i64, i64* %11, align 8
  %1128 = load i64, i64* %36, align 8
  %1129 = icmp ule i64 %1127, %1128
  br i1 %1129, label %1130, label %1133

1130:                                             ; preds = %1125
  %1131 = load i64, i64* %36, align 8
  %1132 = call i64 @xsum(i64 noundef %1131, i64 noundef 1) #20
  store i64 %1132, i64* %11, align 8
  br label %1133

1133:                                             ; preds = %1130, %1125
  %1134 = load i64, i64* %11, align 8
  %1135 = icmp ule i64 %1134, 576460752303423487
  br i1 %1135, label %1136, label %1139

1136:                                             ; preds = %1133
  %1137 = load i64, i64* %11, align 8
  %1138 = mul i64 %1137, 32
  br label %1140

1139:                                             ; preds = %1133
  br label %1140

1140:                                             ; preds = %1139, %1136
  %1141 = phi i64 [ %1138, %1136 ], [ -1, %1139 ]
  store i64 %1141, i64* %37, align 8
  %1142 = load i64, i64* %37, align 8
  %1143 = icmp eq i64 %1142, -1
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1140
  br label %1368

1145:                                             ; preds = %1140
  %1146 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1147 = getelementptr inbounds %struct.arguments, %struct.arguments* %1146, i32 0, i32 1
  %1148 = load %struct.argument*, %struct.argument** %1147, align 8
  %1149 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1150 = getelementptr inbounds %struct.arguments, %struct.arguments* %1149, i32 0, i32 2
  %1151 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %1150, i64 0, i64 0
  %1152 = icmp ne %struct.argument* %1148, %1151
  br i1 %1152, label %1153, label %1160

1153:                                             ; preds = %1145
  %1154 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1155 = getelementptr inbounds %struct.arguments, %struct.arguments* %1154, i32 0, i32 1
  %1156 = load %struct.argument*, %struct.argument** %1155, align 8
  %1157 = bitcast %struct.argument* %1156 to i8*
  %1158 = load i64, i64* %37, align 8
  %1159 = call i8* @rpl_realloc(i8* noundef %1157, i64 noundef %1158)
  br label %1163

1160:                                             ; preds = %1145
  %1161 = load i64, i64* %37, align 8
  %1162 = call noalias i8* @malloc(i64 noundef %1161) #18
  br label %1163

1163:                                             ; preds = %1160, %1153
  %1164 = phi i8* [ %1159, %1153 ], [ %1162, %1160 ]
  %1165 = bitcast i8* %1164 to %struct.argument*
  store %struct.argument* %1165, %struct.argument** %38, align 8
  %1166 = load %struct.argument*, %struct.argument** %38, align 8
  %1167 = icmp eq %struct.argument* %1166, null
  br i1 %1167, label %1168, label %1169

1168:                                             ; preds = %1163
  br label %1368

1169:                                             ; preds = %1163
  %1170 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1171 = getelementptr inbounds %struct.arguments, %struct.arguments* %1170, i32 0, i32 1
  %1172 = load %struct.argument*, %struct.argument** %1171, align 8
  %1173 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1174 = getelementptr inbounds %struct.arguments, %struct.arguments* %1173, i32 0, i32 2
  %1175 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %1174, i64 0, i64 0
  %1176 = icmp eq %struct.argument* %1172, %1175
  br i1 %1176, label %1177, label %1188

1177:                                             ; preds = %1169
  %1178 = load %struct.argument*, %struct.argument** %38, align 8
  %1179 = bitcast %struct.argument* %1178 to i8*
  %1180 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1181 = getelementptr inbounds %struct.arguments, %struct.arguments* %1180, i32 0, i32 1
  %1182 = load %struct.argument*, %struct.argument** %1181, align 8
  %1183 = bitcast %struct.argument* %1182 to i8*
  %1184 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1185 = getelementptr inbounds %struct.arguments, %struct.arguments* %1184, i32 0, i32 0
  %1186 = load i64, i64* %1185, align 16
  %1187 = mul i64 %1186, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1179, i8* align 16 %1183, i64 %1187, i1 false)
  br label %1188

1188:                                             ; preds = %1177, %1169
  %1189 = load %struct.argument*, %struct.argument** %38, align 8
  %1190 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1191 = getelementptr inbounds %struct.arguments, %struct.arguments* %1190, i32 0, i32 1
  store %struct.argument* %1189, %struct.argument** %1191, align 8
  br label %1192

1192:                                             ; preds = %1188, %1111
  br label %1193

1193:                                             ; preds = %1199, %1192
  %1194 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1195 = getelementptr inbounds %struct.arguments, %struct.arguments* %1194, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 16
  %1197 = load i64, i64* %36, align 8
  %1198 = icmp ule i64 %1196, %1197
  br i1 %1198, label %1199, label %1209

1199:                                             ; preds = %1193
  %1200 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1201 = getelementptr inbounds %struct.arguments, %struct.arguments* %1200, i32 0, i32 1
  %1202 = load %struct.argument*, %struct.argument** %1201, align 8
  %1203 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1204 = getelementptr inbounds %struct.arguments, %struct.arguments* %1203, i32 0, i32 0
  %1205 = load i64, i64* %1204, align 16
  %1206 = add i64 %1205, 1
  store i64 %1206, i64* %1204, align 16
  %1207 = getelementptr inbounds %struct.argument, %struct.argument* %1202, i64 %1205
  %1208 = getelementptr inbounds %struct.argument, %struct.argument* %1207, i32 0, i32 0
  store i32 0, i32* %1208, align 16
  br label %1193, !llvm.loop !54

1209:                                             ; preds = %1193
  %1210 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1211 = getelementptr inbounds %struct.arguments, %struct.arguments* %1210, i32 0, i32 1
  %1212 = load %struct.argument*, %struct.argument** %1211, align 8
  %1213 = load i64, i64* %36, align 8
  %1214 = getelementptr inbounds %struct.argument, %struct.argument* %1212, i64 %1213
  %1215 = getelementptr inbounds %struct.argument, %struct.argument* %1214, i32 0, i32 0
  %1216 = load i32, i32* %1215, align 16
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1218, label %1226

1218:                                             ; preds = %1209
  %1219 = load i32, i32* %35, align 4
  %1220 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1221 = getelementptr inbounds %struct.arguments, %struct.arguments* %1220, i32 0, i32 1
  %1222 = load %struct.argument*, %struct.argument** %1221, align 8
  %1223 = load i64, i64* %36, align 8
  %1224 = getelementptr inbounds %struct.argument, %struct.argument* %1222, i64 %1223
  %1225 = getelementptr inbounds %struct.argument, %struct.argument* %1224, i32 0, i32 0
  store i32 %1219, i32* %1225, align 16
  br label %1238

1226:                                             ; preds = %1209
  %1227 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1228 = getelementptr inbounds %struct.arguments, %struct.arguments* %1227, i32 0, i32 1
  %1229 = load %struct.argument*, %struct.argument** %1228, align 8
  %1230 = load i64, i64* %36, align 8
  %1231 = getelementptr inbounds %struct.argument, %struct.argument* %1229, i64 %1230
  %1232 = getelementptr inbounds %struct.argument, %struct.argument* %1231, i32 0, i32 0
  %1233 = load i32, i32* %1232, align 16
  %1234 = load i32, i32* %35, align 4
  %1235 = icmp ne i32 %1233, %1234
  br i1 %1235, label %1236, label %1237

1236:                                             ; preds = %1226
  br label %1340

1237:                                             ; preds = %1226
  br label %1238

1238:                                             ; preds = %1237, %1218
  br label %1239

1239:                                             ; preds = %1238, %1089
  %1240 = load i8, i8* %14, align 1
  %1241 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1242 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1241, i32 0, i32 9
  store i8 %1240, i8* %1242, align 8
  %1243 = load i8*, i8** %8, align 8
  %1244 = load %struct.char_directive*, %struct.char_directive** %16, align 8
  %1245 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1244, i32 0, i32 1
  store i8* %1243, i8** %1245, align 8
  %1246 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1247 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1246, i32 0, i32 0
  %1248 = load i64, i64* %1247, align 8
  %1249 = add i64 %1248, 1
  store i64 %1249, i64* %1247, align 8
  %1250 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1251 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1250, i32 0, i32 0
  %1252 = load i64, i64* %1251, align 8
  %1253 = load i64, i64* %10, align 8
  %1254 = icmp uge i64 %1252, %1253
  br i1 %1254, label %1255, label %1322

1255:                                             ; preds = %1239
  %1256 = load i64, i64* %10, align 8
  %1257 = icmp ule i64 %1256, 9223372036854775807
  br i1 %1257, label %1258, label %1261

1258:                                             ; preds = %1255
  %1259 = load i64, i64* %10, align 8
  %1260 = mul i64 %1259, 2
  br label %1262

1261:                                             ; preds = %1255
  br label %1262

1262:                                             ; preds = %1261, %1258
  %1263 = phi i64 [ %1260, %1258 ], [ -1, %1261 ]
  store i64 %1263, i64* %10, align 8
  %1264 = load i64, i64* %10, align 8
  %1265 = icmp ule i64 %1264, 209622091746699450
  br i1 %1265, label %1266, label %1269

1266:                                             ; preds = %1262
  %1267 = load i64, i64* %10, align 8
  %1268 = mul i64 %1267, 88
  br label %1270

1269:                                             ; preds = %1262
  br label %1270

1270:                                             ; preds = %1269, %1266
  %1271 = phi i64 [ %1268, %1266 ], [ -1, %1269 ]
  store i64 %1271, i64* %39, align 8
  %1272 = load i64, i64* %39, align 8
  %1273 = icmp eq i64 %1272, -1
  br i1 %1273, label %1274, label %1275

1274:                                             ; preds = %1270
  br label %1368

1275:                                             ; preds = %1270
  %1276 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1277 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1276, i32 0, i32 1
  %1278 = load %struct.char_directive*, %struct.char_directive** %1277, align 8
  %1279 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1280 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1279, i32 0, i32 4
  %1281 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %1280, i64 0, i64 0
  %1282 = icmp ne %struct.char_directive* %1278, %1281
  br i1 %1282, label %1283, label %1290

1283:                                             ; preds = %1275
  %1284 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1285 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1284, i32 0, i32 1
  %1286 = load %struct.char_directive*, %struct.char_directive** %1285, align 8
  %1287 = bitcast %struct.char_directive* %1286 to i8*
  %1288 = load i64, i64* %39, align 8
  %1289 = call i8* @rpl_realloc(i8* noundef %1287, i64 noundef %1288)
  br label %1293

1290:                                             ; preds = %1275
  %1291 = load i64, i64* %39, align 8
  %1292 = call noalias i8* @malloc(i64 noundef %1291) #18
  br label %1293

1293:                                             ; preds = %1290, %1283
  %1294 = phi i8* [ %1289, %1283 ], [ %1292, %1290 ]
  %1295 = bitcast i8* %1294 to %struct.char_directive*
  store %struct.char_directive* %1295, %struct.char_directive** %40, align 8
  %1296 = load %struct.char_directive*, %struct.char_directive** %40, align 8
  %1297 = icmp eq %struct.char_directive* %1296, null
  br i1 %1297, label %1298, label %1299

1298:                                             ; preds = %1293
  br label %1368

1299:                                             ; preds = %1293
  %1300 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1301 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1300, i32 0, i32 1
  %1302 = load %struct.char_directive*, %struct.char_directive** %1301, align 8
  %1303 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1304 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1303, i32 0, i32 4
  %1305 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %1304, i64 0, i64 0
  %1306 = icmp eq %struct.char_directive* %1302, %1305
  br i1 %1306, label %1307, label %1318

1307:                                             ; preds = %1299
  %1308 = load %struct.char_directive*, %struct.char_directive** %40, align 8
  %1309 = bitcast %struct.char_directive* %1308 to i8*
  %1310 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1311 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1310, i32 0, i32 1
  %1312 = load %struct.char_directive*, %struct.char_directive** %1311, align 8
  %1313 = bitcast %struct.char_directive* %1312 to i8*
  %1314 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1315 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1314, i32 0, i32 0
  %1316 = load i64, i64* %1315, align 8
  %1317 = mul i64 %1316, 88
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1309, i8* align 8 %1313, i64 %1317, i1 false)
  br label %1318

1318:                                             ; preds = %1307, %1299
  %1319 = load %struct.char_directive*, %struct.char_directive** %40, align 8
  %1320 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1321 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1320, i32 0, i32 1
  store %struct.char_directive* %1319, %struct.char_directive** %1321, align 8
  br label %1322

1322:                                             ; preds = %1318, %1239
  br label %1323

1323:                                             ; preds = %1322, %61
  br label %56, !llvm.loop !55

1324:                                             ; preds = %56
  %1325 = load i8*, i8** %8, align 8
  %1326 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1327 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1326, i32 0, i32 1
  %1328 = load %struct.char_directive*, %struct.char_directive** %1327, align 8
  %1329 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1330 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1329, i32 0, i32 0
  %1331 = load i64, i64* %1330, align 8
  %1332 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1328, i64 %1331
  %1333 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %1332, i32 0, i32 0
  store i8* %1325, i8** %1333, align 8
  %1334 = load i64, i64* %12, align 8
  %1335 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1336 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1335, i32 0, i32 2
  store i64 %1334, i64* %1336, align 8
  %1337 = load i64, i64* %13, align 8
  %1338 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1339 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1338, i32 0, i32 3
  store i64 %1337, i64* %1339, align 8
  store i32 0, i32* %4, align 4
  br label %1396

1340:                                             ; preds = %1236, %1109, %1088, %802, %677, %654, %650, %504, %379, %356, %352, %167, %163
  %1341 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1342 = getelementptr inbounds %struct.arguments, %struct.arguments* %1341, i32 0, i32 1
  %1343 = load %struct.argument*, %struct.argument** %1342, align 8
  %1344 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1345 = getelementptr inbounds %struct.arguments, %struct.arguments* %1344, i32 0, i32 2
  %1346 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %1345, i64 0, i64 0
  %1347 = icmp ne %struct.argument* %1343, %1346
  br i1 %1347, label %1348, label %1353

1348:                                             ; preds = %1340
  %1349 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1350 = getelementptr inbounds %struct.arguments, %struct.arguments* %1349, i32 0, i32 1
  %1351 = load %struct.argument*, %struct.argument** %1350, align 8
  %1352 = bitcast %struct.argument* %1351 to i8*
  call void @free(i8* noundef %1352) #18
  br label %1353

1353:                                             ; preds = %1348, %1340
  %1354 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1355 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1354, i32 0, i32 1
  %1356 = load %struct.char_directive*, %struct.char_directive** %1355, align 8
  %1357 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1358 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1357, i32 0, i32 4
  %1359 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %1358, i64 0, i64 0
  %1360 = icmp ne %struct.char_directive* %1356, %1359
  br i1 %1360, label %1361, label %1366

1361:                                             ; preds = %1353
  %1362 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1363 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1362, i32 0, i32 1
  %1364 = load %struct.char_directive*, %struct.char_directive** %1363, align 8
  %1365 = bitcast %struct.char_directive* %1364 to i8*
  call void @free(i8* noundef %1365) #18
  br label %1366

1366:                                             ; preds = %1361, %1353
  %1367 = call i32* @__errno_location() #21
  store i32 22, i32* %1367, align 4
  store i32 -1, i32* %4, align 4
  br label %1396

1368:                                             ; preds = %1298, %1274, %1168, %1144, %736, %712, %438, %414
  %1369 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1370 = getelementptr inbounds %struct.arguments, %struct.arguments* %1369, i32 0, i32 1
  %1371 = load %struct.argument*, %struct.argument** %1370, align 8
  %1372 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1373 = getelementptr inbounds %struct.arguments, %struct.arguments* %1372, i32 0, i32 2
  %1374 = getelementptr inbounds [7 x %struct.argument], [7 x %struct.argument]* %1373, i64 0, i64 0
  %1375 = icmp ne %struct.argument* %1371, %1374
  br i1 %1375, label %1376, label %1381

1376:                                             ; preds = %1368
  %1377 = load %struct.arguments*, %struct.arguments** %7, align 8
  %1378 = getelementptr inbounds %struct.arguments, %struct.arguments* %1377, i32 0, i32 1
  %1379 = load %struct.argument*, %struct.argument** %1378, align 8
  %1380 = bitcast %struct.argument* %1379 to i8*
  call void @free(i8* noundef %1380) #18
  br label %1381

1381:                                             ; preds = %1376, %1368
  %1382 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1383 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1382, i32 0, i32 1
  %1384 = load %struct.char_directive*, %struct.char_directive** %1383, align 8
  %1385 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1386 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1385, i32 0, i32 4
  %1387 = getelementptr inbounds [7 x %struct.char_directive], [7 x %struct.char_directive]* %1386, i64 0, i64 0
  %1388 = icmp ne %struct.char_directive* %1384, %1387
  br i1 %1388, label %1389, label %1394

1389:                                             ; preds = %1381
  %1390 = load %struct.char_directives*, %struct.char_directives** %6, align 8
  %1391 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %1390, i32 0, i32 1
  %1392 = load %struct.char_directive*, %struct.char_directive** %1391, align 8
  %1393 = bitcast %struct.char_directive* %1392 to i8*
  call void @free(i8* noundef %1393) #18
  br label %1394

1394:                                             ; preds = %1389, %1381
  %1395 = call i32* @__errno_location() #21
  store i32 12, i32* %1395, align 4
  store i32 -1, i32* %4, align 4
  br label %1396

1396:                                             ; preds = %1394, %1366, %1324
  %1397 = load i32, i32* %4, align 4
  ret i32 %1397
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
attributes #10 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nofree nosync nounwind willreturn }
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
