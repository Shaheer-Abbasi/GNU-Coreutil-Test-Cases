; ModuleID = 'src/tee.bc'
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
%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  -a, --append\0A         append to the given FILEs, do not overwrite\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  -i, --ignore-interrupts\0A         ignore interrupt signals\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"  -p\0A         operate in a more appropriate MODE with pipes\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"      --output-error[=MODE]\0A         set behavior on write error.  See MODE below\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [586 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  warn           diagnose errors writing to any output\0A  warn-nopipe    diagnose errors writing to any output not a pipe\0A  exit           exit on error writing to any output\0A  exit-nopipe    exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AWith \22nopipe\22 MODEs, exit immediately if all outputs become broken pipes.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@append = internal global i8 0, align 1, !dbg !65
@ignore_interrupts = internal global i8 0, align 1, !dbg !68
@optarg = external global i8*, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4, !dbg !81
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null], align 8, !dbg !87
@output_error = internal global i32 0, align 4, !dbg !70
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !72
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"fdin != -1 || fdout != -1\00", align 1
@.str.1.70 = private unnamed_addr constant [13 x i8] c"src/iopoll.c\00", align 1
@__PRETTY_FUNCTION__.iopoll_internal = private unnamed_addr constant [44 x i8] c"int iopoll_internal(int, int, _Bool, _Bool)\00", align 1
@.str.2.71 = private unnamed_addr constant [8 x i8] c"0 < ret\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), align 8, !dbg !105
@argmatch_die = dso_local global void ()* @__argmatch_die, align 8, !dbg !110
@.str.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.86 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.87 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.88 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.89 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.90 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal global i8 0, align 1, !dbg !127
@.str.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.96 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.97 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !129
@stderr = external global %struct._IO_FILE*, align 8
@.str.99 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !158
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !135
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !154
@.str.1.105 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.106 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.107 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !156
@.str.4.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.101 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.102 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !160
@.str.124 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.125 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !166
@.str.128 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.130 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.131 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.132 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.133 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.134 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.135 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.136 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.137 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.130, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.131, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.133, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.135, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.137, i32 0, i32 0), i8* null], align 8, !dbg !177
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !192
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !210
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !224
@nslots = internal global i32 1, align 4, !dbg !231
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !212
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !233
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !198
@.str.10.138 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.139 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.140 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.141 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !217
@.str.156 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.157 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.158 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.159 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.160 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.161 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.162 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.163 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.164 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.165 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.166 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.167 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.168 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.169 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.170 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.171 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.172 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.177 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.178 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.179 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.180 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.181 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.182 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.183 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !238
@exit_failure = dso_local global i32 1, align 4, !dbg !246
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.196 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.223 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !252
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4, !dbg !272
@.str.236 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.237 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !368 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load i32, i32* %2, align 4, !dbg !371
  %4 = icmp ne i32 %3, 0, !dbg !373
  br i1 %4, label %5, label %12, !dbg !374

5:                                                ; preds = %1
  br label %6, !dbg !375

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !376
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !376
  %9 = load i8*, i8** @program_name, align 8, !dbg !376
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !376
  br label %11, !dbg !376

11:                                               ; preds = %6
  br label %28, !dbg !376

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !378
  %14 = load i8*, i8** @program_name, align 8, !dbg !380
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !381
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !382
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !382
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !382
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !383
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !383
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !384
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !384
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !385
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !385
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !386
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !386
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !387
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !387
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !388
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24), !dbg !388
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([586 x i8], [586 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !389
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !389
  %27 = call i32 @fputs_unlocked(i8* noundef %25, %struct._IO_FILE* noundef %26), !dbg !389
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !390
  br label %28

28:                                               ; preds = %12, %11
  %29 = load i32, i32* %2, align 4, !dbg !391
  call void @exit(i32 noundef %29) #20, !dbg !392
  unreachable, !dbg !392
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !74 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !393, metadata !DIExpression()), !dbg !394
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !395, metadata !DIExpression()), !dbg !396
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !397
  %15 = icmp eq i32 %14, -1, !dbg !399
  br i1 %15, label %16, label %30, !dbg !400

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !401, metadata !DIExpression()), !dbg !403
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #19, !dbg !404
  store i8* %17, i8** %5, align 8, !dbg !403
  %18 = load i8*, i8** %5, align 8, !dbg !405
  %19 = icmp ne i8* %18, null, !dbg !405
  br i1 %19, label %20, label %27, !dbg !406

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !407
  %22 = load i8, i8* %21, align 1, !dbg !408
  %23 = icmp ne i8 %22, 0, !dbg !408
  br i1 %23, label %24, label %27, !dbg !409

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !410
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)), !dbg !411
  br label %27, !dbg !409

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !409
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !412
  br label %30, !dbg !413

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !414
  %32 = icmp ne i32 %31, 0, !dbg !414
  br i1 %32, label %33, label %37, !dbg !416

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !417
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !417
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !417
  br label %274, !dbg !419

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !420, metadata !DIExpression()), !dbg !421
  store i8 1, i8* %6, align 1, !dbg !421
  call void @llvm.dbg.declare(metadata i8** %7, metadata !422, metadata !DIExpression()), !dbg !423
  %38 = load i8*, i8** %4, align 8, !dbg !424
  %39 = load i8*, i8** %4, align 8, !dbg !425
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #21, !dbg !426
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !427
  store i8* %41, i8** %7, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata i8** %8, metadata !428, metadata !DIExpression()), !dbg !429
  %42 = load i8*, i8** %4, align 8, !dbg !430
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !431
  store i8* %43, i8** %8, align 8, !dbg !429
  %44 = load i8*, i8** %8, align 8, !dbg !432
  %45 = icmp ne i8* %44, null, !dbg !432
  br i1 %45, label %48, label %46, !dbg !434

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !435
  store i8* %47, i8** %8, align 8, !dbg !437
  store i8 0, i8* %6, align 1, !dbg !438
  br label %89, !dbg !439

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !440
  %50 = load i8*, i8** %7, align 8, !dbg !442
  %51 = icmp ne i8* %49, %50, !dbg !443
  br i1 %51, label %52, label %88, !dbg !444

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !445, metadata !DIExpression()), !dbg !447
  %53 = load i8*, i8** %7, align 8, !dbg !448
  store i8* %53, i8** %9, align 8, !dbg !447
  call void @llvm.dbg.declare(metadata i64* %10, metadata !449, metadata !DIExpression()), !dbg !450
  store i64 0, i64* %10, align 8, !dbg !450
  br label %54, !dbg !451

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !452
  %56 = load i8*, i8** %8, align 8, !dbg !453
  %57 = icmp ult i8* %55, %56, !dbg !454
  br i1 %57, label %58, label %61, !dbg !455

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !456
  %60 = icmp ult i64 %59, 2, !dbg !457
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !458
  br i1 %62, label %63, label %82, !dbg !451

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !459
  %65 = load i16*, i16** %64, align 8, !dbg !459
  %66 = load i8*, i8** %9, align 8, !dbg !459
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !459
  store i8* %67, i8** %9, align 8, !dbg !459
  %68 = load i8, i8* %66, align 1, !dbg !459
  %69 = zext i8 %68 to i32, !dbg !459
  %70 = sext i32 %69 to i64, !dbg !459
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !459
  %72 = load i16, i16* %71, align 2, !dbg !459
  %73 = zext i16 %72 to i32, !dbg !459
  %74 = and i32 %73, 8192, !dbg !459
  %75 = icmp ne i32 %74, 0, !dbg !460
  %76 = xor i1 %75, true, !dbg !460
  %77 = xor i1 %76, true, !dbg !461
  %78 = zext i1 %77 to i32, !dbg !461
  %79 = sext i32 %78 to i64, !dbg !461
  %80 = load i64, i64* %10, align 8, !dbg !462
  %81 = add i64 %80, %79, !dbg !462
  store i64 %81, i64* %10, align 8, !dbg !462
  br label %54, !dbg !451, !llvm.loop !463

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !465
  %84 = icmp eq i64 %83, 2, !dbg !467
  br i1 %84, label %85, label %87, !dbg !468

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !469
  store i8* %86, i8** %8, align 8, !dbg !471
  store i8 0, i8* %6, align 1, !dbg !472
  br label %87, !dbg !473

87:                                               ; preds = %85, %82
  br label %88, !dbg !474

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !475, metadata !DIExpression()), !dbg !476
  %90 = load i8*, i8** %8, align 8, !dbg !477
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #21, !dbg !478
  store i64 %91, i64* %11, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata i8** %12, metadata !479, metadata !DIExpression()), !dbg !480
  %92 = load i8*, i8** %8, align 8, !dbg !481
  %93 = load i64, i64* %11, align 8, !dbg !482
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !483
  store i8* %94, i8** %12, align 8, !dbg !480
  br label %95, !dbg !484

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !485
  %97 = load i8, i8* %96, align 1, !dbg !486
  %98 = zext i8 %97 to i32, !dbg !486
  %99 = icmp ne i32 %98, 0, !dbg !486
  br i1 %99, label %100, label %105, !dbg !487

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !488
  %102 = load i8, i8* %101, align 1, !dbg !489
  %103 = zext i8 %102 to i32, !dbg !489
  %104 = icmp ne i32 %103, 10, !dbg !490
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !491
  br i1 %106, label %107, label %164, !dbg !484

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !492
  %109 = load i8, i8* %108, align 1, !dbg !495
  %110 = zext i8 %109 to i32, !dbg !495
  %111 = icmp eq i32 %110, 45, !dbg !496
  br i1 %111, label %112, label %119, !dbg !497

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !498
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !499
  %115 = load i8, i8* %114, align 1, !dbg !500
  %116 = zext i8 %115 to i32, !dbg !500
  %117 = icmp eq i32 %116, 45, !dbg !501
  br i1 %117, label %118, label %119, !dbg !502

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !503
  br label %119, !dbg !504

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !505
  %121 = load i16*, i16** %120, align 8, !dbg !505
  %122 = load i8*, i8** %12, align 8, !dbg !505
  %123 = load i8, i8* %122, align 1, !dbg !505
  %124 = zext i8 %123 to i32, !dbg !505
  %125 = sext i32 %124 to i64, !dbg !505
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !505
  %127 = load i16, i16* %126, align 2, !dbg !505
  %128 = zext i16 %127 to i32, !dbg !505
  %129 = and i32 %128, 8192, !dbg !505
  %130 = icmp ne i32 %129, 0, !dbg !505
  br i1 %130, label %131, label %161, !dbg !507

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !508
  %133 = load i8, i8* %132, align 1, !dbg !511
  %134 = zext i8 %133 to i32, !dbg !511
  %135 = icmp eq i32 %134, 9, !dbg !512
  br i1 %135, label %149, label %136, !dbg !513

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !514
  %138 = load i16*, i16** %137, align 8, !dbg !514
  %139 = load i8*, i8** %12, align 8, !dbg !514
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !514
  %141 = load i8, i8* %140, align 1, !dbg !514
  %142 = zext i8 %141 to i32, !dbg !514
  %143 = sext i32 %142 to i64, !dbg !514
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !514
  %145 = load i16, i16* %144, align 2, !dbg !514
  %146 = zext i16 %145 to i32, !dbg !514
  %147 = and i32 %146, 8192, !dbg !514
  %148 = icmp ne i32 %147, 0, !dbg !514
  br i1 %148, label %149, label %150, !dbg !515

149:                                              ; preds = %136, %131
  br label %164, !dbg !516

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !517
  %152 = trunc i8 %151 to i1, !dbg !517
  br i1 %152, label %160, label %153, !dbg !519

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !520
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !521
  %156 = load i8, i8* %155, align 1, !dbg !522
  %157 = zext i8 %156 to i32, !dbg !522
  %158 = icmp ne i32 %157, 45, !dbg !523
  br i1 %158, label %159, label %160, !dbg !524

159:                                              ; preds = %153
  br label %164, !dbg !525

160:                                              ; preds = %153, %150
  br label %161, !dbg !526

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !527
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !527
  store i8* %163, i8** %12, align 8, !dbg !527
  br label %95, !dbg !484, !llvm.loop !528

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !530
  %166 = load i8*, i8** %7, align 8, !dbg !530
  %167 = load i8*, i8** %4, align 8, !dbg !530
  %168 = ptrtoint i8* %166 to i64, !dbg !530
  %169 = ptrtoint i8* %167 to i64, !dbg !530
  %170 = sub i64 %168, %169, !dbg !530
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !530
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !530
  call void @llvm.dbg.declare(metadata i8** %13, metadata !531, metadata !DIExpression()), !dbg !532
  %173 = load i8*, i8** %3, align 8, !dbg !533
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !534
  br i1 %174, label %175, label %176, !dbg !534

175:                                              ; preds = %164
  br label %232, !dbg !534

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !535
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)), !dbg !536
  br i1 %178, label %179, label %180, !dbg !536

179:                                              ; preds = %176
  br label %230, !dbg !536

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !537
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)), !dbg !538
  br i1 %182, label %183, label %184, !dbg !538

183:                                              ; preds = %180
  br label %228, !dbg !538

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !539
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)), !dbg !540
  br i1 %186, label %187, label %188, !dbg !540

187:                                              ; preds = %184
  br label %226, !dbg !540

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !541
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)), !dbg !542
  br i1 %190, label %191, label %192, !dbg !542

191:                                              ; preds = %188
  br label %224, !dbg !542

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !543
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)), !dbg !544
  br i1 %194, label %195, label %196, !dbg !544

195:                                              ; preds = %192
  br label %222, !dbg !544

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !545
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)), !dbg !546
  br i1 %198, label %199, label %200, !dbg !546

199:                                              ; preds = %196
  br label %220, !dbg !546

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !547
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)), !dbg !548
  br i1 %202, label %203, label %204, !dbg !548

203:                                              ; preds = %200
  br label %218, !dbg !548

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !549
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0)), !dbg !550
  br i1 %206, label %207, label %208, !dbg !550

207:                                              ; preds = %204
  br label %216, !dbg !550

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !551
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)), !dbg !552
  br i1 %210, label %211, label %212, !dbg !552

211:                                              ; preds = %208
  br label %214, !dbg !552

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !553
  br label %214, !dbg !552

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !552
  br label %216, !dbg !550

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !550
  br label %218, !dbg !548

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !548
  br label %220, !dbg !546

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !546
  br label %222, !dbg !544

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !544
  br label %224, !dbg !542

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !542
  br label %226, !dbg !540

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !540
  br label %228, !dbg !538

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !538
  br label %230, !dbg !536

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !536
  br label %232, !dbg !534

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !534
  store i8* %233, i8** %13, align 8, !dbg !532
  %234 = load i8*, i8** %8, align 8, !dbg !554
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 noundef 6) #21, !dbg !554
  %236 = icmp eq i32 %235, 0, !dbg !554
  br i1 %236, label %241, label %237, !dbg !556

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !557
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64 noundef 9) #21, !dbg !557
  %240 = icmp eq i32 %239, 0, !dbg !557
  br i1 %240, label %241, label %248, !dbg !558

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !559
  %243 = load i8*, i8** %13, align 8, !dbg !561
  %244 = load i64, i64* %11, align 8, !dbg !562
  %245 = trunc i64 %244 to i32, !dbg !563
  %246 = load i8*, i8** %8, align 8, !dbg !564
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !565
  br label %254, !dbg !566

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !567
  %250 = load i64, i64* %11, align 8, !dbg !569
  %251 = trunc i64 %250 to i32, !dbg !570
  %252 = load i8*, i8** %8, align 8, !dbg !571
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !572
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !573
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !573
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !574
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !574
  %259 = load i8*, i8** %7, align 8, !dbg !575
  %260 = load i8*, i8** %12, align 8, !dbg !575
  %261 = load i8*, i8** %7, align 8, !dbg !575
  %262 = ptrtoint i8* %260 to i64, !dbg !575
  %263 = ptrtoint i8* %261 to i64, !dbg !575
  %264 = sub i64 %262, %263, !dbg !575
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !575
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !575
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !576
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !576
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !577
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !577
  %271 = load i8*, i8** %12, align 8, !dbg !578
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !578
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !578
  br label %274, !dbg !579

274:                                              ; preds = %254, %33
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !580 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !585, metadata !DIExpression()), !dbg !594
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !594
  call void @llvm.dbg.declare(metadata i8** %4, metadata !595, metadata !DIExpression()), !dbg !596
  %9 = load i8*, i8** %2, align 8, !dbg !597
  store i8* %9, i8** %4, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !598, metadata !DIExpression()), !dbg !600
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !601
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !600
  br label %11, !dbg !602

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !603
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !604
  %14 = load i8*, i8** %13, align 8, !dbg !604
  %15 = icmp ne i8* %14, null, !dbg !603
  br i1 %15, label %16, label %23, !dbg !605

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !606
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !607
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !608
  %20 = load i8*, i8** %19, align 8, !dbg !608
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !609
  %22 = xor i1 %21, true, !dbg !610
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !611
  br i1 %24, label %25, label %28, !dbg !602

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !612
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !612
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !612
  br label %11, !dbg !602, !llvm.loop !613

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !614
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !616
  %31 = load i8*, i8** %30, align 8, !dbg !616
  %32 = icmp ne i8* %31, null, !dbg !614
  br i1 %32, label %33, label %37, !dbg !617

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !618
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !619
  %36 = load i8*, i8** %35, align 8, !dbg !619
  store i8* %36, i8** %4, align 8, !dbg !620
  br label %37, !dbg !621

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !622
  call void @llvm.dbg.declare(metadata i8** %6, metadata !623, metadata !DIExpression()), !dbg !624
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !625
  store i8* %38, i8** %6, align 8, !dbg !624
  %39 = load i8*, i8** %6, align 8, !dbg !626
  %40 = icmp ne i8* %39, null, !dbg !626
  br i1 %40, label %41, label %49, !dbg !628

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !629
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #21, !dbg !629
  %44 = icmp ne i32 %43, 0, !dbg !629
  br i1 %44, label %45, label %49, !dbg !630

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0)) #19, !dbg !631
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !631
  br label %49, !dbg !633

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !634, metadata !DIExpression()), !dbg !635
  %50 = load i8*, i8** %2, align 8, !dbg !636
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !637
  br i1 %51, label %52, label %53, !dbg !637

52:                                               ; preds = %49
  br label %55, !dbg !637

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !638
  br label %55, !dbg !637

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !637
  store i8* %56, i8** %7, align 8, !dbg !635
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0)) #19, !dbg !639
  %58 = load i8*, i8** %7, align 8, !dbg !640
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef %58), !dbg !641
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0)) #19, !dbg !642
  %61 = load i8*, i8** %4, align 8, !dbg !643
  %62 = load i8*, i8** %4, align 8, !dbg !644
  %63 = load i8*, i8** %2, align 8, !dbg !645
  %64 = icmp eq i8* %62, %63, !dbg !646
  %65 = zext i1 %64 to i64, !dbg !644
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !644
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !647
  ret void, !dbg !648
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !649 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !653, metadata !DIExpression()), !dbg !654
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !655, metadata !DIExpression()), !dbg !656
  %9 = load i8**, i8*** %5, align 8, !dbg !657
  %10 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !657
  %11 = load i8*, i8** %10, align 8, !dbg !657
  call void @set_program_name(i8* noundef %11), !dbg !658
  %12 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !659
  %13 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !660
  %14 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !661
  %15 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !662
  call void @llvm.dbg.declare(metadata i32* %6, metadata !663, metadata !DIExpression()), !dbg !664
  br label %16, !dbg !665

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %4, align 4, !dbg !666
  %18 = load i8**, i8*** %5, align 8, !dbg !667
  %19 = call i32 @getopt_long(i32 noundef %17, i8** noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !668
  store i32 %19, i32* %6, align 4, !dbg !669
  %20 = icmp ne i32 %19, -1, !dbg !670
  br i1 %20, label %21, label %45, !dbg !665

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4, !dbg !671
  switch i32 %22, label %43 [
    i32 97, label %23
    i32 105, label %24
    i32 112, label %25
    i32 -2, label %36
    i32 -3, label %37
  ], !dbg !673

23:                                               ; preds = %21
  store i8 1, i8* @append, align 1, !dbg !674
  br label %44, !dbg !676

24:                                               ; preds = %21
  store i8 1, i8* @ignore_interrupts, align 1, !dbg !677
  br label %44, !dbg !678

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8, !dbg !679
  %27 = icmp ne i8* %26, null, !dbg !679
  br i1 %27, label %28, label %34, !dbg !681

28:                                               ; preds = %25
  %29 = load i8*, i8** @optarg, align 8, !dbg !682
  %30 = load void ()*, void ()** @argmatch_die, align 8, !dbg !682
  %31 = call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %29, i8** noundef getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* noundef bitcast ([4 x i32]* @output_error_types to i8*), i64 noundef 4, void ()* noundef %30, i1 noundef true), !dbg !682
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %31, !dbg !682
  %33 = load i32, i32* %32, align 4, !dbg !682
  store i32 %33, i32* @output_error, align 4, !dbg !683
  br label %35, !dbg !684

34:                                               ; preds = %25
  store i32 2, i32* @output_error, align 4, !dbg !685
  br label %35

35:                                               ; preds = %34, %28
  br label %44, !dbg !686

36:                                               ; preds = %21
  call void @usage(i32 noundef 0) #23, !dbg !687
  unreachable, !dbg !687

37:                                               ; preds = %21
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688
  %39 = load i8*, i8** @Version, align 8, !dbg !688
  %40 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)), !dbg !688
  %41 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0)), !dbg !688
  %42 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)), !dbg !688
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %39, i8* noundef %40, i8* noundef %41, i8* noundef %42, i8* noundef null), !dbg !688
  call void @exit(i32 noundef 0) #20, !dbg !688
  unreachable, !dbg !688

43:                                               ; preds = %21
  call void @usage(i32 noundef 1) #23, !dbg !689
  unreachable, !dbg !689

44:                                               ; preds = %35, %24, %23
  br label %16, !dbg !665, !llvm.loop !690

45:                                               ; preds = %16
  %46 = load i8, i8* @ignore_interrupts, align 1, !dbg !692
  %47 = trunc i8 %46 to i1, !dbg !692
  br i1 %47, label %48, label %50, !dbg !694

48:                                               ; preds = %45
  %49 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #19, !dbg !695
  br label %50, !dbg !695

50:                                               ; preds = %48, %45
  %51 = load i32, i32* @output_error, align 4, !dbg !696
  %52 = icmp ne i32 %51, 0, !dbg !698
  br i1 %52, label %53, label %55, !dbg !699

53:                                               ; preds = %50
  %54 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #19, !dbg !700
  br label %55, !dbg !700

55:                                               ; preds = %53, %50
  call void @llvm.dbg.declare(metadata i8* %7, metadata !701, metadata !DIExpression()), !dbg !702
  %56 = load i32, i32* @output_error, align 4, !dbg !703
  %57 = icmp eq i32 %56, 2, !dbg !704
  br i1 %57, label %61, label %58, !dbg !705

58:                                               ; preds = %55
  %59 = load i32, i32* @output_error, align 4, !dbg !706
  %60 = icmp eq i32 %59, 4, !dbg !707
  br i1 %60, label %61, label %63, !dbg !708

61:                                               ; preds = %58, %55
  %62 = call i1 @iopoll_input_ok(i32 noundef 0), !dbg !709
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i1 [ false, %58 ], [ %62, %61 ], !dbg !710
  %65 = zext i1 %64 to i8, !dbg !702
  store i8 %65, i8* %7, align 1, !dbg !702
  call void @llvm.dbg.declare(metadata i8* %8, metadata !711, metadata !DIExpression()), !dbg !712
  %66 = load i32, i32* %4, align 4, !dbg !713
  %67 = load i32, i32* @optind, align 4, !dbg !714
  %68 = sub nsw i32 %66, %67, !dbg !715
  %69 = load i8**, i8*** %5, align 8, !dbg !716
  %70 = load i32, i32* @optind, align 4, !dbg !717
  %71 = sext i32 %70 to i64, !dbg !716
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71, !dbg !716
  %73 = load i8, i8* %7, align 1, !dbg !718
  %74 = trunc i8 %73 to i1, !dbg !718
  %75 = call i1 @tee_files(i32 noundef %68, i8** noundef %72, i1 noundef %74), !dbg !719
  %76 = zext i1 %75 to i8, !dbg !712
  store i8 %76, i8* %8, align 1, !dbg !712
  %77 = call i32 @close(i32 noundef 0), !dbg !720
  %78 = icmp ne i32 %77, 0, !dbg !722
  br i1 %78, label %79, label %83, !dbg !723

79:                                               ; preds = %63
  %80 = call i32* @__errno_location() #22, !dbg !724
  %81 = load i32, i32* %80, align 4, !dbg !724
  %82 = call i8* @gettext(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)) #19, !dbg !724
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %81, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %82), !dbg !724
  unreachable, !dbg !724

83:                                               ; preds = %63
  %84 = load i8, i8* %8, align 1, !dbg !725
  %85 = trunc i8 %84 to i1, !dbg !725
  %86 = zext i1 %85 to i64, !dbg !725
  %87 = select i1 %85, i32 0, i32 1, !dbg !725
  ret i32 %87, !dbg !726
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @tee_files(i32 noundef %0, i8** noundef %1, i1 noundef %2) #4 !dbg !727 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [8192 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !730, metadata !DIExpression()), !dbg !731
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !732, metadata !DIExpression()), !dbg !733
  %20 = zext i1 %2 to i8
  store i8 %20, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata i64* %7, metadata !736, metadata !DIExpression()), !dbg !737
  store i64 0, i64* %7, align 8, !dbg !737
  call void @llvm.dbg.declare(metadata i32** %8, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata i8** %9, metadata !740, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata [8192 x i8]* %10, metadata !743, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i64* %11, metadata !748, metadata !DIExpression()), !dbg !753
  store i64 0, i64* %11, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata i32* %12, metadata !754, metadata !DIExpression()), !dbg !755
  store i32 0, i32* %12, align 4, !dbg !755
  call void @llvm.dbg.declare(metadata i8* %13, metadata !756, metadata !DIExpression()), !dbg !757
  store i8 1, i8* %13, align 1, !dbg !757
  call void @llvm.dbg.declare(metadata i32* %14, metadata !758, metadata !DIExpression()), !dbg !759
  %21 = load i8, i8* @append, align 1, !dbg !760
  %22 = trunc i8 %21 to i1, !dbg !760
  %23 = zext i1 %22 to i64, !dbg !760
  %24 = select i1 %22, i32 1024, i32 512, !dbg !760
  %25 = or i32 65, %24, !dbg !761
  store i32 %25, i32* %14, align 4, !dbg !759
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0), !dbg !762
  call void @xset_binary_mode(i32 noundef 1, i32 noundef 0), !dbg !763
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !764
  call void @fadvise(%struct._IO_FILE* noundef %26, i32 noundef 2), !dbg !765
  %27 = load i32, i32* %4, align 4, !dbg !766
  %28 = add nsw i32 %27, 1, !dbg !767
  %29 = sext i32 %28 to i64, !dbg !766
  %30 = call noalias nonnull i8* @xnmalloc(i64 noundef %29, i64 noundef 4) #24, !dbg !768
  %31 = bitcast i8* %30 to i32*, !dbg !768
  store i32* %31, i32** %8, align 8, !dbg !769
  %32 = load i8, i8* %6, align 1, !dbg !770
  %33 = trunc i8 %32 to i1, !dbg !770
  br i1 %33, label %34, label %39, !dbg !772

34:                                               ; preds = %3
  %35 = load i32, i32* %4, align 4, !dbg !773
  %36 = add nsw i32 %35, 1, !dbg !774
  %37 = sext i32 %36 to i64, !dbg !773
  %38 = call noalias nonnull i8* @xnmalloc(i64 noundef %37, i64 noundef 1) #24, !dbg !775
  store i8* %38, i8** %9, align 8, !dbg !776
  br label %39, !dbg !777

39:                                               ; preds = %34, %3
  %40 = load i8**, i8*** %5, align 8, !dbg !778
  %41 = getelementptr inbounds i8*, i8** %40, i32 -1, !dbg !778
  store i8** %41, i8*** %5, align 8, !dbg !778
  %42 = load i32*, i32** %8, align 8, !dbg !779
  %43 = getelementptr inbounds i32, i32* %42, i64 0, !dbg !779
  store i32 1, i32* %43, align 4, !dbg !780
  %44 = load i8, i8* %6, align 1, !dbg !781
  %45 = trunc i8 %44 to i1, !dbg !781
  br i1 %45, label %46, label %54, !dbg !783

46:                                               ; preds = %39
  %47 = load i32*, i32** %8, align 8, !dbg !784
  %48 = getelementptr inbounds i32, i32* %47, i64 0, !dbg !784
  %49 = load i32, i32* %48, align 4, !dbg !784
  %50 = call i1 @iopoll_output_ok(i32 noundef %49), !dbg !785
  %51 = load i8*, i8** %9, align 8, !dbg !786
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !786
  %53 = zext i1 %50 to i8, !dbg !787
  store i8 %53, i8* %52, align 1, !dbg !787
  br label %54, !dbg !786

54:                                               ; preds = %46, %39
  %55 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0)) #19, !dbg !788
  %56 = call i8* @bad_cast(i8* noundef %55), !dbg !789
  %57 = load i8**, i8*** %5, align 8, !dbg !790
  %58 = getelementptr inbounds i8*, i8** %57, i64 0, !dbg !790
  store i8* %56, i8** %58, align 8, !dbg !791
  %59 = load i64, i64* %7, align 8, !dbg !792
  %60 = add i64 %59, 1, !dbg !792
  store i64 %60, i64* %7, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata i32* %15, metadata !793, metadata !DIExpression()), !dbg !795
  store i32 1, i32* %15, align 4, !dbg !795
  br label %61, !dbg !796

61:                                               ; preds = %175, %54
  %62 = load i32, i32* %15, align 4, !dbg !797
  %63 = load i32, i32* %4, align 4, !dbg !799
  %64 = icmp sle i32 %62, %63, !dbg !800
  br i1 %64, label %65, label %178, !dbg !801

65:                                               ; preds = %61
  %66 = load i8**, i8*** %5, align 8, !dbg !802
  %67 = load i32, i32* %15, align 4, !dbg !804
  %68 = sext i32 %67 to i64, !dbg !802
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68, !dbg !802
  %70 = load i8*, i8** %69, align 8, !dbg !802
  %71 = load i32, i32* %14, align 4, !dbg !805
  %72 = call i32 (i8*, i32, ...) @open_safer(i8* noundef %70, i32 noundef %71, i32 noundef 438), !dbg !806
  %73 = load i32*, i32** %8, align 8, !dbg !807
  %74 = load i32, i32* %15, align 4, !dbg !808
  %75 = sext i32 %74 to i64, !dbg !807
  %76 = getelementptr inbounds i32, i32* %73, i64 %75, !dbg !807
  store i32 %72, i32* %76, align 4, !dbg !809
  %77 = load i32*, i32** %8, align 8, !dbg !810
  %78 = load i32, i32* %15, align 4, !dbg !812
  %79 = sext i32 %78 to i64, !dbg !810
  %80 = getelementptr inbounds i32, i32* %77, i64 %79, !dbg !810
  %81 = load i32, i32* %80, align 4, !dbg !810
  %82 = icmp slt i32 %81, 0, !dbg !813
  br i1 %82, label %83, label %156, !dbg !814

83:                                               ; preds = %65
  %84 = load i8, i8* %6, align 1, !dbg !815
  %85 = trunc i8 %84 to i1, !dbg !815
  br i1 %85, label %86, label %91, !dbg !818

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8, !dbg !819
  %88 = load i32, i32* %15, align 4, !dbg !820
  %89 = sext i32 %88 to i64, !dbg !819
  %90 = getelementptr inbounds i8, i8* %87, i64 %89, !dbg !819
  store i8 0, i8* %90, align 1, !dbg !821
  br label %91, !dbg !819

91:                                               ; preds = %86, %83
  %92 = load i32, i32* @output_error, align 4, !dbg !822
  %93 = icmp eq i32 %92, 3, !dbg !822
  br i1 %93, label %97, label %94, !dbg !822

94:                                               ; preds = %91
  %95 = load i32, i32* @output_error, align 4, !dbg !822
  %96 = icmp eq i32 %95, 4, !dbg !822
  br label %97, !dbg !822

97:                                               ; preds = %94, %91
  %98 = phi i1 [ true, %91 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32, !dbg !822
  %100 = call i1 @llvm.is.constant.i32(i32 %99), !dbg !822
  br i1 %100, label %101, label %131, !dbg !822

101:                                              ; preds = %97
  %102 = load i32, i32* @output_error, align 4, !dbg !822
  %103 = icmp eq i32 %102, 3, !dbg !822
  br i1 %103, label %107, label %104, !dbg !822

104:                                              ; preds = %101
  %105 = load i32, i32* @output_error, align 4, !dbg !822
  %106 = icmp eq i32 %105, 4, !dbg !822
  br label %107, !dbg !822

107:                                              ; preds = %104, %101
  %108 = phi i1 [ true, %101 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32, !dbg !822
  %110 = call i32* @__errno_location() #22, !dbg !822
  %111 = load i32, i32* %110, align 4, !dbg !822
  %112 = load i8**, i8*** %5, align 8, !dbg !822
  %113 = load i32, i32* %15, align 4, !dbg !822
  %114 = sext i32 %113 to i64, !dbg !822
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114, !dbg !822
  %116 = load i8*, i8** %115, align 8, !dbg !822
  %117 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %116), !dbg !822
  call void (i32, i32, i8*, ...) @error(i32 noundef %109, i32 noundef %111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %117), !dbg !822
  %118 = load i32, i32* @output_error, align 4, !dbg !822
  %119 = icmp eq i32 %118, 3, !dbg !822
  br i1 %119, label %123, label %120, !dbg !822

120:                                              ; preds = %107
  %121 = load i32, i32* @output_error, align 4, !dbg !822
  %122 = icmp eq i32 %121, 4, !dbg !822
  br label %123, !dbg !822

123:                                              ; preds = %120, %107
  %124 = phi i1 [ true, %107 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32, !dbg !822
  %126 = icmp ne i32 %125, 0, !dbg !822
  br i1 %126, label %127, label %129, !dbg !822

127:                                              ; preds = %123
  unreachable, !dbg !822

128:                                              ; No predecessors!
  br label %130, !dbg !822

129:                                              ; preds = %123
  br label %130, !dbg !822

130:                                              ; preds = %129, %128
  br label %155, !dbg !822

131:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata i32* %16, metadata !823, metadata !DIExpression()), !dbg !826
  %132 = load i32, i32* @output_error, align 4, !dbg !826
  %133 = icmp eq i32 %132, 3, !dbg !826
  br i1 %133, label %137, label %134, !dbg !826

134:                                              ; preds = %131
  %135 = load i32, i32* @output_error, align 4, !dbg !826
  %136 = icmp eq i32 %135, 4, !dbg !826
  br label %137, !dbg !826

137:                                              ; preds = %134, %131
  %138 = phi i1 [ true, %131 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32, !dbg !826
  store i32 %139, i32* %16, align 4, !dbg !826
  %140 = load i32, i32* %16, align 4, !dbg !826
  %141 = call i32* @__errno_location() #22, !dbg !826
  %142 = load i32, i32* %141, align 4, !dbg !826
  %143 = load i8**, i8*** %5, align 8, !dbg !826
  %144 = load i32, i32* %15, align 4, !dbg !826
  %145 = sext i32 %144 to i64, !dbg !826
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145, !dbg !826
  %147 = load i8*, i8** %146, align 8, !dbg !826
  %148 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %147), !dbg !826
  call void (i32, i32, i8*, ...) @error(i32 noundef %140, i32 noundef %142, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %148), !dbg !826
  %149 = load i32, i32* %16, align 4, !dbg !826
  %150 = icmp ne i32 %149, 0, !dbg !826
  br i1 %150, label %151, label %153, !dbg !826

151:                                              ; preds = %137
  unreachable, !dbg !826

152:                                              ; No predecessors!
  br label %154, !dbg !826

153:                                              ; preds = %137
  br label %154, !dbg !826

154:                                              ; preds = %153, %152
  br label %155, !dbg !822

155:                                              ; preds = %154, %130
  store i8 0, i8* %13, align 1, !dbg !827
  br label %174, !dbg !828

156:                                              ; preds = %65
  %157 = load i8, i8* %6, align 1, !dbg !829
  %158 = trunc i8 %157 to i1, !dbg !829
  br i1 %158, label %159, label %171, !dbg !832

159:                                              ; preds = %156
  %160 = load i32*, i32** %8, align 8, !dbg !833
  %161 = load i32, i32* %15, align 4, !dbg !834
  %162 = sext i32 %161 to i64, !dbg !833
  %163 = getelementptr inbounds i32, i32* %160, i64 %162, !dbg !833
  %164 = load i32, i32* %163, align 4, !dbg !833
  %165 = call i1 @iopoll_output_ok(i32 noundef %164), !dbg !835
  %166 = load i8*, i8** %9, align 8, !dbg !836
  %167 = load i32, i32* %15, align 4, !dbg !837
  %168 = sext i32 %167 to i64, !dbg !836
  %169 = getelementptr inbounds i8, i8* %166, i64 %168, !dbg !836
  %170 = zext i1 %165 to i8, !dbg !838
  store i8 %170, i8* %169, align 1, !dbg !838
  br label %171, !dbg !836

171:                                              ; preds = %159, %156
  %172 = load i64, i64* %7, align 8, !dbg !839
  %173 = add i64 %172, 1, !dbg !839
  store i64 %173, i64* %7, align 8, !dbg !839
  br label %174

174:                                              ; preds = %171, %155
  br label %175, !dbg !840

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4, !dbg !841
  %177 = add nsw i32 %176, 1, !dbg !841
  store i32 %177, i32* %15, align 4, !dbg !841
  br label %61, !dbg !842, !llvm.loop !843

178:                                              ; preds = %61
  br label %179, !dbg !845

179:                                              ; preds = %281, %233, %208, %178
  %180 = load i64, i64* %7, align 8, !dbg !846
  %181 = icmp ne i64 %180, 0, !dbg !845
  br i1 %181, label %182, label %282, !dbg !845

182:                                              ; preds = %179
  %183 = load i8, i8* %6, align 1, !dbg !847
  %184 = trunc i8 %183 to i1, !dbg !847
  br i1 %184, label %185, label %224, !dbg !850

185:                                              ; preds = %182
  %186 = load i8*, i8** %9, align 8, !dbg !851
  %187 = load i32, i32* %12, align 4, !dbg !852
  %188 = sext i32 %187 to i64, !dbg !851
  %189 = getelementptr inbounds i8, i8* %186, i64 %188, !dbg !851
  %190 = load i8, i8* %189, align 1, !dbg !851
  %191 = trunc i8 %190 to i1, !dbg !851
  br i1 %191, label %192, label %224, !dbg !853

192:                                              ; preds = %185
  call void @llvm.dbg.declare(metadata i32* %17, metadata !854, metadata !DIExpression()), !dbg !856
  %193 = load i32*, i32** %8, align 8, !dbg !857
  %194 = load i32, i32* %12, align 4, !dbg !858
  %195 = sext i32 %194 to i64, !dbg !857
  %196 = getelementptr inbounds i32, i32* %193, i64 %195, !dbg !857
  %197 = load i32, i32* %196, align 4, !dbg !857
  %198 = call i32 @iopoll(i32 noundef 0, i32 noundef %197, i1 noundef true), !dbg !859
  store i32 %198, i32* %17, align 4, !dbg !856
  %199 = load i32, i32* %17, align 4, !dbg !860
  %200 = icmp eq i32 %199, -2, !dbg !862
  br i1 %200, label %201, label %215, !dbg !863

201:                                              ; preds = %192
  %202 = call i32* @__errno_location() #22, !dbg !864
  store i32 32, i32* %202, align 4, !dbg !866
  %203 = load i32*, i32** %8, align 8, !dbg !867
  %204 = load i8**, i8*** %5, align 8, !dbg !869
  %205 = load i32, i32* %12, align 4, !dbg !870
  %206 = call i1 @fail_output(i32* noundef %203, i8** noundef %204, i32 noundef %205), !dbg !871
  br i1 %206, label %207, label %208, !dbg !872

207:                                              ; preds = %201
  store i8 0, i8* %13, align 1, !dbg !873
  br label %208, !dbg !874

208:                                              ; preds = %207, %201
  %209 = load i64, i64* %7, align 8, !dbg !875
  %210 = add i64 %209, -1, !dbg !875
  store i64 %210, i64* %7, align 8, !dbg !875
  %211 = load i32*, i32** %8, align 8, !dbg !876
  %212 = load i32, i32* %4, align 4, !dbg !877
  %213 = load i32, i32* %12, align 4, !dbg !878
  %214 = call i32 @get_next_out(i32* noundef %211, i32 noundef %212, i32 noundef %213) #21, !dbg !879
  store i32 %214, i32* %12, align 4, !dbg !880
  br label %179, !dbg !881, !llvm.loop !882

215:                                              ; preds = %192
  %216 = load i32, i32* %17, align 4, !dbg !884
  %217 = icmp eq i32 %216, -3, !dbg !886
  br i1 %217, label %218, label %222, !dbg !887

218:                                              ; preds = %215
  %219 = call i32* @__errno_location() #22, !dbg !888
  %220 = load i32, i32* %219, align 4, !dbg !888
  %221 = call i8* @gettext(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #19, !dbg !888
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %220, i8* noundef %221), !dbg !888
  store i8 0, i8* %13, align 1, !dbg !890
  br label %222, !dbg !891

222:                                              ; preds = %218, %215
  br label %223

223:                                              ; preds = %222
  br label %224, !dbg !892

224:                                              ; preds = %223, %185, %182
  %225 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0, !dbg !893
  %226 = call i64 @read(i32 noundef 0, i8* noundef %225, i64 noundef 8192), !dbg !894
  store i64 %226, i64* %11, align 8, !dbg !895
  %227 = load i64, i64* %11, align 8, !dbg !896
  %228 = icmp slt i64 %227, 0, !dbg !898
  br i1 %228, label %229, label %234, !dbg !899

229:                                              ; preds = %224
  %230 = call i32* @__errno_location() #22, !dbg !900
  %231 = load i32, i32* %230, align 4, !dbg !900
  %232 = icmp eq i32 %231, 4, !dbg !901
  br i1 %232, label %233, label %234, !dbg !902

233:                                              ; preds = %229
  br label %179, !dbg !903, !llvm.loop !882

234:                                              ; preds = %229, %224
  %235 = load i64, i64* %11, align 8, !dbg !904
  %236 = icmp sle i64 %235, 0, !dbg !906
  br i1 %236, label %237, label %238, !dbg !907

237:                                              ; preds = %234
  br label %282, !dbg !908

238:                                              ; preds = %234
  call void @llvm.dbg.declare(metadata i32* %18, metadata !909, metadata !DIExpression()), !dbg !911
  store i32 0, i32* %18, align 4, !dbg !911
  br label %239, !dbg !912

239:                                              ; preds = %278, %238
  %240 = load i32, i32* %18, align 4, !dbg !913
  %241 = load i32, i32* %4, align 4, !dbg !915
  %242 = icmp sle i32 %240, %241, !dbg !916
  br i1 %242, label %243, label %281, !dbg !917

243:                                              ; preds = %239
  %244 = load i32*, i32** %8, align 8, !dbg !918
  %245 = load i32, i32* %18, align 4, !dbg !920
  %246 = sext i32 %245 to i64, !dbg !918
  %247 = getelementptr inbounds i32, i32* %244, i64 %246, !dbg !918
  %248 = load i32, i32* %247, align 4, !dbg !918
  %249 = icmp sle i32 0, %248, !dbg !921
  br i1 %249, label %250, label %277, !dbg !922

250:                                              ; preds = %243
  %251 = load i32*, i32** %8, align 8, !dbg !923
  %252 = load i32, i32* %18, align 4, !dbg !924
  %253 = sext i32 %252 to i64, !dbg !923
  %254 = getelementptr inbounds i32, i32* %251, i64 %253, !dbg !923
  %255 = load i32, i32* %254, align 4, !dbg !923
  %256 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0, !dbg !925
  %257 = load i64, i64* %11, align 8, !dbg !926
  %258 = call i1 @write_wait(i32 noundef %255, i8* noundef %256, i64 noundef %257), !dbg !927
  br i1 %258, label %277, label %259, !dbg !928

259:                                              ; preds = %250
  %260 = load i32*, i32** %8, align 8, !dbg !929
  %261 = load i8**, i8*** %5, align 8, !dbg !932
  %262 = load i32, i32* %18, align 4, !dbg !933
  %263 = call i1 @fail_output(i32* noundef %260, i8** noundef %261, i32 noundef %262), !dbg !934
  br i1 %263, label %264, label %265, !dbg !935

264:                                              ; preds = %259
  store i8 0, i8* %13, align 1, !dbg !936
  br label %265, !dbg !937

265:                                              ; preds = %264, %259
  %266 = load i64, i64* %7, align 8, !dbg !938
  %267 = add i64 %266, -1, !dbg !938
  store i64 %267, i64* %7, align 8, !dbg !938
  %268 = load i32, i32* %18, align 4, !dbg !939
  %269 = load i32, i32* %12, align 4, !dbg !941
  %270 = icmp eq i32 %268, %269, !dbg !942
  br i1 %270, label %271, label %276, !dbg !943

271:                                              ; preds = %265
  %272 = load i32*, i32** %8, align 8, !dbg !944
  %273 = load i32, i32* %4, align 4, !dbg !945
  %274 = load i32, i32* %12, align 4, !dbg !946
  %275 = call i32 @get_next_out(i32* noundef %272, i32 noundef %273, i32 noundef %274) #21, !dbg !947
  store i32 %275, i32* %12, align 4, !dbg !948
  br label %276, !dbg !949

276:                                              ; preds = %271, %265
  br label %277, !dbg !950

277:                                              ; preds = %276, %250, %243
  br label %278, !dbg !951

278:                                              ; preds = %277
  %279 = load i32, i32* %18, align 4, !dbg !952
  %280 = add nsw i32 %279, 1, !dbg !952
  store i32 %280, i32* %18, align 4, !dbg !952
  br label %239, !dbg !953, !llvm.loop !954

281:                                              ; preds = %239
  br label %179, !dbg !845, !llvm.loop !882

282:                                              ; preds = %237, %179
  %283 = load i64, i64* %11, align 8, !dbg !956
  %284 = icmp eq i64 %283, -1, !dbg !958
  br i1 %284, label %285, label %289, !dbg !959

285:                                              ; preds = %282
  %286 = call i32* @__errno_location() #22, !dbg !960
  %287 = load i32, i32* %286, align 4, !dbg !960
  %288 = call i8* @gettext(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0)) #19, !dbg !960
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %287, i8* noundef %288), !dbg !960
  store i8 0, i8* %13, align 1, !dbg !962
  br label %289, !dbg !963

289:                                              ; preds = %285, %282
  call void @llvm.dbg.declare(metadata i32* %19, metadata !964, metadata !DIExpression()), !dbg !966
  store i32 1, i32* %19, align 4, !dbg !966
  br label %290, !dbg !967

290:                                              ; preds = %318, %289
  %291 = load i32, i32* %19, align 4, !dbg !968
  %292 = load i32, i32* %4, align 4, !dbg !970
  %293 = icmp sle i32 %291, %292, !dbg !971
  br i1 %293, label %294, label %321, !dbg !972

294:                                              ; preds = %290
  %295 = load i32*, i32** %8, align 8, !dbg !973
  %296 = load i32, i32* %19, align 4, !dbg !975
  %297 = sext i32 %296 to i64, !dbg !973
  %298 = getelementptr inbounds i32, i32* %295, i64 %297, !dbg !973
  %299 = load i32, i32* %298, align 4, !dbg !973
  %300 = icmp sle i32 0, %299, !dbg !976
  br i1 %300, label %301, label %317, !dbg !977

301:                                              ; preds = %294
  %302 = load i32*, i32** %8, align 8, !dbg !978
  %303 = load i32, i32* %19, align 4, !dbg !979
  %304 = sext i32 %303 to i64, !dbg !978
  %305 = getelementptr inbounds i32, i32* %302, i64 %304, !dbg !978
  %306 = load i32, i32* %305, align 4, !dbg !978
  %307 = call i1 @close_wait(i32 noundef %306), !dbg !980
  br i1 %307, label %317, label %308, !dbg !981

308:                                              ; preds = %301
  %309 = call i32* @__errno_location() #22, !dbg !982
  %310 = load i32, i32* %309, align 4, !dbg !982
  %311 = load i8**, i8*** %5, align 8, !dbg !982
  %312 = load i32, i32* %19, align 4, !dbg !982
  %313 = sext i32 %312 to i64, !dbg !982
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313, !dbg !982
  %315 = load i8*, i8** %314, align 8, !dbg !982
  %316 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %315), !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %310, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %316), !dbg !982
  store i8 0, i8* %13, align 1, !dbg !984
  br label %317, !dbg !985

317:                                              ; preds = %308, %301, %294
  br label %318, !dbg !986

318:                                              ; preds = %317
  %319 = load i32, i32* %19, align 4, !dbg !987
  %320 = add nsw i32 %319, 1, !dbg !987
  store i32 %320, i32* %19, align 4, !dbg !987
  br label %290, !dbg !988, !llvm.loop !989

321:                                              ; preds = %290
  %322 = load i32*, i32** %8, align 8, !dbg !991
  %323 = bitcast i32* %322 to i8*, !dbg !991
  call void @free(i8* noundef %323) #19, !dbg !992
  %324 = load i8, i8* %6, align 1, !dbg !993
  %325 = trunc i8 %324 to i1, !dbg !993
  br i1 %325, label %326, label %328, !dbg !995

326:                                              ; preds = %321
  %327 = load i8*, i8** %9, align 8, !dbg !996
  call void @free(i8* noundef %327) #19, !dbg !997
  br label %328, !dbg !997

328:                                              ; preds = %326, %321
  %329 = load i8, i8* %13, align 1, !dbg !998
  %330 = trunc i8 %329 to i1, !dbg !998
  ret i1 %330, !dbg !999
}

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bad_cast(i8* noundef %0) #4 !dbg !1000 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  %3 = load i8*, i8** %2, align 8, !dbg !1005
  ret i8* %3, !dbg !1006
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @fail_output(i32* noundef %0, i8** noundef %1, i32 noundef %2) #4 !dbg !1007 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1010, metadata !DIExpression()), !dbg !1011
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1016, metadata !DIExpression()), !dbg !1017
  %10 = call i32* @__errno_location() #22, !dbg !1018
  %11 = load i32, i32* %10, align 4, !dbg !1018
  store i32 %11, i32* %7, align 4, !dbg !1017
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1019, metadata !DIExpression()), !dbg !1020
  %12 = call i32* @__errno_location() #22, !dbg !1021
  %13 = load i32, i32* %12, align 4, !dbg !1021
  %14 = icmp ne i32 %13, 32, !dbg !1022
  br i1 %14, label %21, label %15, !dbg !1023

15:                                               ; preds = %3
  %16 = load i32, i32* @output_error, align 4, !dbg !1024
  %17 = icmp eq i32 %16, 3, !dbg !1025
  br i1 %17, label %21, label %18, !dbg !1026

18:                                               ; preds = %15
  %19 = load i32, i32* @output_error, align 4, !dbg !1027
  %20 = icmp eq i32 %19, 1, !dbg !1028
  br label %21, !dbg !1026

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ true, %15 ], [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i8, !dbg !1020
  store i8 %23, i8* %8, align 1, !dbg !1020
  %24 = load i8, i8* %8, align 1, !dbg !1029
  %25 = trunc i8 %24 to i1, !dbg !1029
  br i1 %25, label %26, label %89, !dbg !1031

26:                                               ; preds = %21
  %27 = load i32, i32* @output_error, align 4, !dbg !1032
  %28 = icmp eq i32 %27, 3, !dbg !1032
  br i1 %28, label %32, label %29, !dbg !1032

29:                                               ; preds = %26
  %30 = load i32, i32* @output_error, align 4, !dbg !1032
  %31 = icmp eq i32 %30, 4, !dbg !1032
  br label %32, !dbg !1032

32:                                               ; preds = %29, %26
  %33 = phi i1 [ true, %26 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32, !dbg !1032
  %35 = call i1 @llvm.is.constant.i32(i32 %34), !dbg !1032
  br i1 %35, label %36, label %65, !dbg !1032

36:                                               ; preds = %32
  %37 = load i32, i32* @output_error, align 4, !dbg !1032
  %38 = icmp eq i32 %37, 3, !dbg !1032
  br i1 %38, label %42, label %39, !dbg !1032

39:                                               ; preds = %36
  %40 = load i32, i32* @output_error, align 4, !dbg !1032
  %41 = icmp eq i32 %40, 4, !dbg !1032
  br label %42, !dbg !1032

42:                                               ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32, !dbg !1032
  %45 = load i32, i32* %7, align 4, !dbg !1032
  %46 = load i8**, i8*** %5, align 8, !dbg !1032
  %47 = load i32, i32* %6, align 4, !dbg !1032
  %48 = sext i32 %47 to i64, !dbg !1032
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48, !dbg !1032
  %50 = load i8*, i8** %49, align 8, !dbg !1032
  %51 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %50), !dbg !1032
  call void (i32, i32, i8*, ...) @error(i32 noundef %44, i32 noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %51), !dbg !1032
  %52 = load i32, i32* @output_error, align 4, !dbg !1032
  %53 = icmp eq i32 %52, 3, !dbg !1032
  br i1 %53, label %57, label %54, !dbg !1032

54:                                               ; preds = %42
  %55 = load i32, i32* @output_error, align 4, !dbg !1032
  %56 = icmp eq i32 %55, 4, !dbg !1032
  br label %57, !dbg !1032

57:                                               ; preds = %54, %42
  %58 = phi i1 [ true, %42 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32, !dbg !1032
  %60 = icmp ne i32 %59, 0, !dbg !1032
  br i1 %60, label %61, label %63, !dbg !1032

61:                                               ; preds = %57
  unreachable, !dbg !1032

62:                                               ; No predecessors!
  br label %64, !dbg !1032

63:                                               ; preds = %57
  br label %64, !dbg !1032

64:                                               ; preds = %63, %62
  br label %88, !dbg !1032

65:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1034, metadata !DIExpression()), !dbg !1036
  %66 = load i32, i32* @output_error, align 4, !dbg !1036
  %67 = icmp eq i32 %66, 3, !dbg !1036
  br i1 %67, label %71, label %68, !dbg !1036

68:                                               ; preds = %65
  %69 = load i32, i32* @output_error, align 4, !dbg !1036
  %70 = icmp eq i32 %69, 4, !dbg !1036
  br label %71, !dbg !1036

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32, !dbg !1036
  store i32 %73, i32* %9, align 4, !dbg !1036
  %74 = load i32, i32* %9, align 4, !dbg !1036
  %75 = load i32, i32* %7, align 4, !dbg !1036
  %76 = load i8**, i8*** %5, align 8, !dbg !1036
  %77 = load i32, i32* %6, align 4, !dbg !1036
  %78 = sext i32 %77 to i64, !dbg !1036
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78, !dbg !1036
  %80 = load i8*, i8** %79, align 8, !dbg !1036
  %81 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %80), !dbg !1036
  call void (i32, i32, i8*, ...) @error(i32 noundef %74, i32 noundef %75, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %81), !dbg !1036
  %82 = load i32, i32* %9, align 4, !dbg !1036
  %83 = icmp ne i32 %82, 0, !dbg !1036
  br i1 %83, label %84, label %86, !dbg !1036

84:                                               ; preds = %71
  unreachable, !dbg !1036

85:                                               ; No predecessors!
  br label %87, !dbg !1036

86:                                               ; preds = %71
  br label %87, !dbg !1036

87:                                               ; preds = %86, %85
  br label %88, !dbg !1032

88:                                               ; preds = %87, %64
  br label %89, !dbg !1037

89:                                               ; preds = %88, %21
  %90 = load i32*, i32** %4, align 8, !dbg !1038
  %91 = load i32, i32* %6, align 4, !dbg !1039
  %92 = sext i32 %91 to i64, !dbg !1038
  %93 = getelementptr inbounds i32, i32* %90, i64 %92, !dbg !1038
  store i32 -1, i32* %93, align 4, !dbg !1040
  %94 = load i8, i8* %8, align 1, !dbg !1041
  %95 = trunc i8 %94 to i1, !dbg !1041
  ret i1 %95, !dbg !1042
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i32 @get_next_out(i32* noundef %0, i32 noundef %1, i32 noundef %2) #10 !dbg !1043 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1050, metadata !DIExpression()), !dbg !1051
  %8 = load i32, i32* %7, align 4, !dbg !1052
  %9 = add nsw i32 %8, 1, !dbg !1052
  store i32 %9, i32* %7, align 4, !dbg !1052
  br label %10, !dbg !1054

10:                                               ; preds = %24, %3
  %11 = load i32, i32* %7, align 4, !dbg !1055
  %12 = load i32, i32* %6, align 4, !dbg !1057
  %13 = icmp sle i32 %11, %12, !dbg !1058
  br i1 %13, label %14, label %27, !dbg !1059

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8, !dbg !1060
  %16 = load i32, i32* %7, align 4, !dbg !1062
  %17 = sext i32 %16 to i64, !dbg !1060
  %18 = getelementptr inbounds i32, i32* %15, i64 %17, !dbg !1060
  %19 = load i32, i32* %18, align 4, !dbg !1060
  %20 = icmp sle i32 0, %19, !dbg !1063
  br i1 %20, label %21, label %23, !dbg !1064

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4, !dbg !1065
  store i32 %22, i32* %4, align 4, !dbg !1066
  br label %28, !dbg !1066

23:                                               ; preds = %14
  br label %24, !dbg !1067

24:                                               ; preds = %23
  %25 = load i32, i32* %7, align 4, !dbg !1068
  %26 = add nsw i32 %25, 1, !dbg !1068
  store i32 %26, i32* %7, align 4, !dbg !1068
  br label %10, !dbg !1069, !llvm.loop !1070

27:                                               ; preds = %10
  store i32 -1, i32* %4, align 4, !dbg !1072
  br label %28, !dbg !1072

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %4, align 4, !dbg !1073
  ret i32 %29, !dbg !1073
}

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef %2) #4 !dbg !1074 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1079, metadata !DIExpression()), !dbg !1080
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1081, metadata !DIExpression()), !dbg !1082
  %8 = load i32, i32* %4, align 4, !dbg !1083
  %9 = load i32, i32* %5, align 4, !dbg !1084
  %10 = load i8, i8* %6, align 1, !dbg !1085
  %11 = trunc i8 %10 to i1, !dbg !1085
  %12 = call i32 @iopoll_internal(i32 noundef %8, i32 noundef %9, i1 noundef %11, i1 noundef true), !dbg !1086
  ret i32 %12, !dbg !1087
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef %3) #4 !dbg !1088 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.pollfd], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1093, metadata !DIExpression()), !dbg !1094
  %13 = zext i1 %2 to i8
  store i8 %13, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1095, metadata !DIExpression()), !dbg !1096
  %14 = zext i1 %3 to i8
  store i8 %14, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1097, metadata !DIExpression()), !dbg !1098
  %15 = load i32, i32* %6, align 4, !dbg !1099
  %16 = icmp ne i32 %15, -1, !dbg !1099
  br i1 %16, label %20, label %17, !dbg !1099

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4, !dbg !1099
  %19 = icmp ne i32 %18, -1, !dbg !1099
  br i1 %19, label %20, label %21, !dbg !1102

20:                                               ; preds = %17, %4
  br label %22, !dbg !1102

21:                                               ; preds = %17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.70, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #20, !dbg !1099
  unreachable, !dbg !1099

22:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata [2 x %struct.pollfd]* %10, metadata !1103, metadata !DIExpression()), !dbg !1112
  %23 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0, !dbg !1113
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0, !dbg !1114
  %25 = load i32, i32* %6, align 4, !dbg !1115
  store i32 %25, i32* %24, align 4, !dbg !1114
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 1, !dbg !1114
  store i16 129, i16* %26, align 4, !dbg !1114
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 2, !dbg !1114
  store i16 0, i16* %27, align 2, !dbg !1114
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i64 1, !dbg !1113
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 0, !dbg !1116
  %30 = load i32, i32* %7, align 4, !dbg !1117
  store i32 %30, i32* %29, align 4, !dbg !1116
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 1, !dbg !1116
  store i16 128, i16* %31, align 4, !dbg !1116
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 2, !dbg !1116
  store i16 0, i16* %32, align 2, !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i32 56, i32* %11, align 4, !dbg !1119
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i32 0, i32* %12, align 4, !dbg !1121
  %33 = load i8, i8* %9, align 1, !dbg !1122
  %34 = trunc i8 %33 to i1, !dbg !1122
  br i1 %34, label %40, label %35, !dbg !1124

35:                                               ; preds = %22
  %36 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1, !dbg !1125
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i32 0, i32 1, !dbg !1127
  store i16 4, i16* %37, align 4, !dbg !1128
  %38 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0, !dbg !1129
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 0, i32 1, !dbg !1130
  store i16 4, i16* %39, align 4, !dbg !1131
  store i32 4, i32* %11, align 4, !dbg !1132
  br label %40, !dbg !1133

40:                                               ; preds = %35, %22
  br label %41, !dbg !1134

41:                                               ; preds = %91, %59, %40
  %42 = load i32, i32* %12, align 4, !dbg !1135
  %43 = icmp sle i32 0, %42, !dbg !1136
  br i1 %43, label %48, label %44, !dbg !1137

44:                                               ; preds = %41
  %45 = call i32* @__errno_location() #22, !dbg !1138
  %46 = load i32, i32* %45, align 4, !dbg !1138
  %47 = icmp eq i32 %46, 4, !dbg !1139
  br label %48, !dbg !1137

48:                                               ; preds = %44, %41
  %49 = phi i1 [ true, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %92, !dbg !1134

50:                                               ; preds = %48
  %51 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0, !dbg !1140
  %52 = load i8, i8* %8, align 1, !dbg !1142
  %53 = trunc i8 %52 to i1, !dbg !1142
  %54 = zext i1 %53 to i64, !dbg !1142
  %55 = select i1 %53, i32 -1, i32 0, !dbg !1142
  %56 = call i32 @poll(%struct.pollfd* noundef %51, i64 noundef 2, i32 noundef %55), !dbg !1143
  store i32 %56, i32* %12, align 4, !dbg !1144
  %57 = load i32, i32* %12, align 4, !dbg !1145
  %58 = icmp slt i32 %57, 0, !dbg !1147
  br i1 %58, label %59, label %60, !dbg !1148

59:                                               ; preds = %50
  br label %41, !dbg !1149, !llvm.loop !1150

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4, !dbg !1152
  %62 = icmp eq i32 %61, 0, !dbg !1154
  br i1 %62, label %63, label %67, !dbg !1155

63:                                               ; preds = %60
  %64 = load i8, i8* %8, align 1, !dbg !1156
  %65 = trunc i8 %64 to i1, !dbg !1156
  br i1 %65, label %67, label %66, !dbg !1157

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4, !dbg !1158
  br label %93, !dbg !1158

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %12, align 4, !dbg !1159
  %69 = icmp slt i32 0, %68, !dbg !1159
  br i1 %69, label %70, label %71, !dbg !1162

70:                                               ; preds = %67
  br label %72, !dbg !1162

71:                                               ; preds = %67
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.70, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #20, !dbg !1159
  unreachable, !dbg !1159

72:                                               ; preds = %70
  %73 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0, !dbg !1163
  %74 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %73, i32 0, i32 2, !dbg !1165
  %75 = load i16, i16* %74, align 2, !dbg !1165
  %76 = icmp ne i16 %75, 0, !dbg !1163
  br i1 %76, label %77, label %78, !dbg !1166

77:                                               ; preds = %72
  store i32 0, i32* %5, align 4, !dbg !1167
  br label %93, !dbg !1167

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1, !dbg !1168
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 2, !dbg !1170
  %81 = load i16, i16* %80, align 2, !dbg !1170
  %82 = sext i16 %81 to i32, !dbg !1168
  %83 = load i32, i32* %11, align 4, !dbg !1171
  %84 = and i32 %82, %83, !dbg !1172
  %85 = icmp ne i32 %84, 0, !dbg !1172
  br i1 %85, label %86, label %91, !dbg !1173

86:                                               ; preds = %78
  %87 = load i8, i8* %9, align 1, !dbg !1174
  %88 = trunc i8 %87 to i1, !dbg !1174
  %89 = zext i1 %88 to i64, !dbg !1174
  %90 = select i1 %88, i32 -2, i32 0, !dbg !1174
  store i32 %90, i32* %5, align 4, !dbg !1175
  br label %93, !dbg !1175

91:                                               ; preds = %78
  br label %41, !dbg !1134, !llvm.loop !1150

92:                                               ; preds = %48
  store i32 -3, i32* %5, align 4, !dbg !1176
  br label %93, !dbg !1176

93:                                               ; preds = %92, %86, %77, %66
  %94 = load i32, i32* %5, align 4, !dbg !1177
  ret i32 %94, !dbg !1177
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

declare i32 @poll(%struct.pollfd* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @iopoll_input_ok(i32 noundef %0) #4 !dbg !1178 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1181, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1183, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1221, metadata !DIExpression()), !dbg !1222
  %5 = load i32, i32* %2, align 4, !dbg !1223
  %6 = call i32 @fstat(i32 noundef %5, %struct.stat* noundef %3) #19, !dbg !1224
  %7 = icmp eq i32 %6, 0, !dbg !1225
  br i1 %7, label %8, label %20, !dbg !1226

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2, !dbg !1227
  %10 = load i32, i32* %9, align 8, !dbg !1227
  %11 = and i32 %10, 61440, !dbg !1227
  %12 = icmp eq i32 %11, 32768, !dbg !1227
  br i1 %12, label %18, label %13, !dbg !1228

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2, !dbg !1229
  %15 = load i32, i32* %14, align 8, !dbg !1229
  %16 = and i32 %15, 61440, !dbg !1229
  %17 = icmp eq i32 %16, 24576, !dbg !1229
  br label %18, !dbg !1228

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i1 [ false, %1 ], [ %19, %18 ], !dbg !1230
  %22 = zext i1 %21 to i8, !dbg !1222
  store i8 %22, i8* %4, align 1, !dbg !1222
  %23 = load i8, i8* %4, align 1, !dbg !1231
  %24 = trunc i8 %23 to i1, !dbg !1231
  %25 = xor i1 %24, true, !dbg !1232
  ret i1 %25, !dbg !1233
}

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @iopoll_output_ok(i32 noundef %0) #4 !dbg !1234 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1235, metadata !DIExpression()), !dbg !1236
  %3 = load i32, i32* %2, align 4, !dbg !1237
  %4 = call i32 @isapipe(i32 noundef %3), !dbg !1238
  %5 = icmp sgt i32 %4, 0, !dbg !1239
  ret i1 %5, !dbg !1240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @close_wait(i32 noundef %0) #4 !dbg !1241 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1242, metadata !DIExpression()), !dbg !1243
  br label %3, !dbg !1244

3:                                                ; preds = %6, %1
  %4 = load i32, i32* %2, align 4, !dbg !1245
  %5 = call i1 @wait_for_nonblocking_write(i32 noundef %4), !dbg !1246
  br i1 %5, label %6, label %7, !dbg !1244

6:                                                ; preds = %3
  br label %3, !dbg !1244, !llvm.loop !1247

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4, !dbg !1249
  %9 = call i32 @close(i32 noundef %8), !dbg !1250
  %10 = icmp eq i32 %9, 0, !dbg !1251
  ret i1 %10, !dbg !1252
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @wait_for_nonblocking_write(i32 noundef %0) #4 !dbg !1253 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1254, metadata !DIExpression()), !dbg !1255
  %4 = call i32* @__errno_location() #22, !dbg !1256
  %5 = load i32, i32* %4, align 4, !dbg !1256
  %6 = icmp eq i32 %5, 11, !dbg !1256
  br i1 %6, label %12, label %7, !dbg !1256

7:                                                ; preds = %1
  %8 = call i32* @__errno_location() #22, !dbg !1256
  %9 = load i32, i32* %8, align 4, !dbg !1256
  %10 = icmp eq i32 %9, 11, !dbg !1256
  br i1 %10, label %12, label %11, !dbg !1258

11:                                               ; preds = %7
  store i1 false, i1* %2, align 1, !dbg !1259
  br label %19, !dbg !1259

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4, !dbg !1260
  %14 = call i32 @iopoll_internal(i32 noundef -1, i32 noundef %13, i1 noundef true, i1 noundef false), !dbg !1262
  %15 = icmp ne i32 %14, 0, !dbg !1263
  br i1 %15, label %16, label %18, !dbg !1264

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !1265
  store i32 11, i32* %17, align 4, !dbg !1267
  store i1 false, i1* %2, align 1, !dbg !1268
  br label %19, !dbg !1268

18:                                               ; preds = %12
  store i1 true, i1* %2, align 1, !dbg !1269
  br label %19, !dbg !1269

19:                                               ; preds = %18, %16, %11
  %20 = load i1, i1* %2, align 1, !dbg !1270
  ret i1 %20, !dbg !1270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @write_wait(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1271 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1280, metadata !DIExpression()), !dbg !1283
  %10 = load i8*, i8** %6, align 8, !dbg !1284
  store i8* %10, i8** %8, align 8, !dbg !1283
  br label %11, !dbg !1285

11:                                               ; preds = %3, %30
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1286, metadata !DIExpression()), !dbg !1288
  %12 = load i32, i32* %5, align 4, !dbg !1289
  %13 = load i8*, i8** %8, align 8, !dbg !1290
  %14 = load i64, i64* %7, align 8, !dbg !1291
  %15 = call i64 @write(i32 noundef %12, i8* noundef %13, i64 noundef %14), !dbg !1292
  store i64 %15, i64* %9, align 8, !dbg !1288
  %16 = load i64, i64* %9, align 8, !dbg !1293
  %17 = icmp slt i64 %16, 0, !dbg !1295
  br i1 %17, label %18, label %19, !dbg !1296

18:                                               ; preds = %11
  store i64 0, i64* %9, align 8, !dbg !1297
  br label %19, !dbg !1298

19:                                               ; preds = %18, %11
  %20 = load i64, i64* %9, align 8, !dbg !1299
  %21 = load i64, i64* %7, align 8, !dbg !1300
  %22 = sub i64 %21, %20, !dbg !1300
  store i64 %22, i64* %7, align 8, !dbg !1300
  %23 = load i64, i64* %7, align 8, !dbg !1301
  %24 = icmp ule i64 %23, 0, !dbg !1303
  br i1 %24, label %25, label %26, !dbg !1304

25:                                               ; preds = %19
  store i1 true, i1* %4, align 1, !dbg !1305
  br label %34, !dbg !1305

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4, !dbg !1306
  %28 = call i1 @wait_for_nonblocking_write(i32 noundef %27), !dbg !1308
  br i1 %28, label %30, label %29, !dbg !1309

29:                                               ; preds = %26
  store i1 false, i1* %4, align 1, !dbg !1310
  br label %34, !dbg !1310

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8, !dbg !1311
  %32 = load i8*, i8** %8, align 8, !dbg !1312
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1312
  store i8* %33, i8** %8, align 8, !dbg !1312
  br label %11, !dbg !1285, !llvm.loop !1313

34:                                               ; preds = %29, %25
  %35 = load i1, i1* %4, align 1, !dbg !1315
  ret i1 %35, !dbg !1315
}

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__argmatch_die() #4 !dbg !1316 {
  call void @usage(i32 noundef 1), !dbg !1317
  ret void, !dbg !1318
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @argmatch(i8* noundef %0, i8** noundef %1, i8* noundef %2, i64 noundef %3) #10 !dbg !1319 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1331, metadata !DIExpression()), !dbg !1332
  %14 = load i8*, i8** %6, align 8, !dbg !1333
  %15 = call i64 @strlen(i8* noundef %14) #21, !dbg !1334
  store i64 %15, i64* %10, align 8, !dbg !1332
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i64 -1, i64* %11, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i8 0, i8* %12, align 1, !dbg !1338
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1339, metadata !DIExpression()), !dbg !1341
  store i64 0, i64* %13, align 8, !dbg !1341
  br label %16, !dbg !1342

16:                                               ; preds = %67, %4
  %17 = load i8**, i8*** %7, align 8, !dbg !1343
  %18 = load i64, i64* %13, align 8, !dbg !1345
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18, !dbg !1343
  %20 = load i8*, i8** %19, align 8, !dbg !1343
  %21 = icmp ne i8* %20, null, !dbg !1346
  br i1 %21, label %22, label %70, !dbg !1346

22:                                               ; preds = %16
  %23 = load i8**, i8*** %7, align 8, !dbg !1347
  %24 = load i64, i64* %13, align 8, !dbg !1350
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24, !dbg !1347
  %26 = load i8*, i8** %25, align 8, !dbg !1347
  %27 = load i8*, i8** %6, align 8, !dbg !1351
  %28 = load i64, i64* %10, align 8, !dbg !1352
  %29 = call i32 @strncmp(i8* noundef %26, i8* noundef %27, i64 noundef %28) #21, !dbg !1353
  %30 = icmp ne i32 %29, 0, !dbg !1353
  br i1 %30, label %66, label %31, !dbg !1354

31:                                               ; preds = %22
  %32 = load i8**, i8*** %7, align 8, !dbg !1355
  %33 = load i64, i64* %13, align 8, !dbg !1358
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1355
  %35 = load i8*, i8** %34, align 8, !dbg !1355
  %36 = call i64 @strlen(i8* noundef %35) #21, !dbg !1359
  %37 = load i64, i64* %10, align 8, !dbg !1360
  %38 = icmp eq i64 %36, %37, !dbg !1361
  br i1 %38, label %39, label %41, !dbg !1362

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8, !dbg !1363
  store i64 %40, i64* %5, align 8, !dbg !1364
  br label %76, !dbg !1364

41:                                               ; preds = %31
  %42 = load i64, i64* %11, align 8, !dbg !1365
  %43 = icmp eq i64 %42, -1, !dbg !1367
  br i1 %43, label %44, label %46, !dbg !1368

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8, !dbg !1369
  store i64 %45, i64* %11, align 8, !dbg !1370
  br label %64, !dbg !1371

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !1372
  %48 = icmp eq i8* %47, null, !dbg !1375
  br i1 %48, label %62, label %49, !dbg !1376

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !1377
  %51 = load i64, i64* %9, align 8, !dbg !1378
  %52 = load i64, i64* %11, align 8, !dbg !1379
  %53 = mul i64 %51, %52, !dbg !1380
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1381
  %55 = load i8*, i8** %8, align 8, !dbg !1382
  %56 = load i64, i64* %9, align 8, !dbg !1383
  %57 = load i64, i64* %13, align 8, !dbg !1384
  %58 = mul i64 %56, %57, !dbg !1385
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1386
  %60 = load i64, i64* %9, align 8, !dbg !1387
  %61 = call i1 @memeq(i8* noundef %54, i8* noundef %59, i64 noundef %60), !dbg !1388
  br i1 %61, label %63, label %62, !dbg !1389

62:                                               ; preds = %49, %46
  store i8 1, i8* %12, align 1, !dbg !1390
  br label %63, !dbg !1392

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64
  br label %66, !dbg !1393

66:                                               ; preds = %65, %22
  br label %67, !dbg !1394

67:                                               ; preds = %66
  %68 = load i64, i64* %13, align 8, !dbg !1395
  %69 = add i64 %68, 1, !dbg !1395
  store i64 %69, i64* %13, align 8, !dbg !1395
  br label %16, !dbg !1396, !llvm.loop !1397

70:                                               ; preds = %16
  %71 = load i8, i8* %12, align 1, !dbg !1399
  %72 = trunc i8 %71 to i1, !dbg !1399
  br i1 %72, label %73, label %74, !dbg !1401

73:                                               ; preds = %70
  store i64 -2, i64* %5, align 8, !dbg !1402
  br label %76, !dbg !1402

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8, !dbg !1403
  store i64 %75, i64* %5, align 8, !dbg !1404
  br label %76, !dbg !1404

76:                                               ; preds = %74, %73, %39
  %77 = load i64, i64* %5, align 8, !dbg !1405
  ret i64 %77, !dbg !1405
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* noundef %0, i8** noundef %1) #10 !dbg !1406 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1413, metadata !DIExpression()), !dbg !1415
  store i64 0, i64* %6, align 8, !dbg !1415
  br label %7, !dbg !1416

7:                                                ; preds = %23, %2
  %8 = load i8**, i8*** %5, align 8, !dbg !1417
  %9 = load i64, i64* %6, align 8, !dbg !1419
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !1417
  %11 = load i8*, i8** %10, align 8, !dbg !1417
  %12 = icmp ne i8* %11, null, !dbg !1420
  br i1 %12, label %13, label %26, !dbg !1420

13:                                               ; preds = %7
  %14 = load i8**, i8*** %5, align 8, !dbg !1421
  %15 = load i64, i64* %6, align 8, !dbg !1424
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15, !dbg !1421
  %17 = load i8*, i8** %16, align 8, !dbg !1421
  %18 = load i8*, i8** %4, align 8, !dbg !1425
  %19 = call i1 @streq(i8* noundef %17, i8* noundef %18), !dbg !1426
  br i1 %19, label %20, label %22, !dbg !1427

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8, !dbg !1428
  store i64 %21, i64* %3, align 8, !dbg !1429
  br label %27, !dbg !1429

22:                                               ; preds = %13
  br label %23, !dbg !1430

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8, !dbg !1431
  %25 = add i64 %24, 1, !dbg !1431
  store i64 %25, i64* %6, align 8, !dbg !1431
  br label %7, !dbg !1432, !llvm.loop !1433

26:                                               ; preds = %7
  store i64 -1, i64* %3, align 8, !dbg !1435
  br label %27, !dbg !1435

27:                                               ; preds = %26, %20
  %28 = load i64, i64* %3, align 8, !dbg !1436
  ret i64 %28, !dbg !1436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1437 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1446, metadata !DIExpression()), !dbg !1447
  %8 = load i64, i64* %6, align 8, !dbg !1448
  %9 = icmp eq i64 %8, -1, !dbg !1449
  br i1 %9, label %10, label %12, !dbg !1448

10:                                               ; preds = %3
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.86, i64 0, i64 0)) #19, !dbg !1450
  br label %14, !dbg !1448

12:                                               ; preds = %3
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.87, i64 0, i64 0)) #19, !dbg !1451
  br label %14, !dbg !1448

14:                                               ; preds = %12, %10
  %15 = phi i8* [ %11, %10 ], [ %13, %12 ], !dbg !1448
  store i8* %15, i8** %7, align 8, !dbg !1447
  %16 = load i8*, i8** %7, align 8, !dbg !1452
  %17 = load i8*, i8** %5, align 8, !dbg !1452
  %18 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %17), !dbg !1452
  %19 = load i8*, i8** %4, align 8, !dbg !1452
  %20 = call i8* @quote_n(i32 noundef 1, i8* noundef %19), !dbg !1452
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %16, i8* noundef %18, i8* noundef %20), !dbg !1452
  ret void, !dbg !1453
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_valid(i8** noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1454 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1461, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i8* null, i8** %7, align 8, !dbg !1464
  %9 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.88, i64 0, i64 0)) #19, !dbg !1465
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1465
  %11 = call i32 @fputs_unlocked(i8* noundef %9, %struct._IO_FILE* noundef %10), !dbg !1465
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1466, metadata !DIExpression()), !dbg !1468
  store i64 0, i64* %8, align 8, !dbg !1468
  br label %12, !dbg !1469

12:                                               ; preds = %52, %3
  %13 = load i8**, i8*** %4, align 8, !dbg !1470
  %14 = load i64, i64* %8, align 8, !dbg !1472
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !1470
  %16 = load i8*, i8** %15, align 8, !dbg !1470
  %17 = icmp ne i8* %16, null, !dbg !1473
  br i1 %17, label %18, label %55, !dbg !1473

18:                                               ; preds = %12
  %19 = load i64, i64* %8, align 8, !dbg !1474
  %20 = icmp eq i64 %19, 0, !dbg !1476
  br i1 %20, label %30, label %21, !dbg !1477

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8, !dbg !1478
  %23 = load i8*, i8** %5, align 8, !dbg !1479
  %24 = load i64, i64* %6, align 8, !dbg !1480
  %25 = load i64, i64* %8, align 8, !dbg !1481
  %26 = mul i64 %24, %25, !dbg !1482
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !1483
  %28 = load i64, i64* %6, align 8, !dbg !1484
  %29 = call i1 @memeq(i8* noundef %22, i8* noundef %27, i64 noundef %28), !dbg !1485
  br i1 %29, label %43, label %30, !dbg !1486

30:                                               ; preds = %21, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1487
  %32 = load i8**, i8*** %4, align 8, !dbg !1489
  %33 = load i64, i64* %8, align 8, !dbg !1490
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1489
  %35 = load i8*, i8** %34, align 8, !dbg !1489
  %36 = call i8* @quote(i8* noundef %35), !dbg !1491
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.89, i64 0, i64 0), i8* noundef %36), !dbg !1492
  %38 = load i8*, i8** %5, align 8, !dbg !1493
  %39 = load i64, i64* %6, align 8, !dbg !1494
  %40 = load i64, i64* %8, align 8, !dbg !1495
  %41 = mul i64 %39, %40, !dbg !1496
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !1497
  store i8* %42, i8** %7, align 8, !dbg !1498
  br label %51, !dbg !1499

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1500
  %45 = load i8**, i8*** %4, align 8, !dbg !1502
  %46 = load i64, i64* %8, align 8, !dbg !1503
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46, !dbg !1502
  %48 = load i8*, i8** %47, align 8, !dbg !1502
  %49 = call i8* @quote(i8* noundef %48), !dbg !1504
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.90, i64 0, i64 0), i8* noundef %49), !dbg !1505
  br label %51

51:                                               ; preds = %43, %30
  br label %52, !dbg !1506

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8, !dbg !1507
  %54 = add i64 %53, 1, !dbg !1507
  store i64 %54, i64* %8, align 8, !dbg !1507
  br label %12, !dbg !1508, !llvm.loop !1509

55:                                               ; preds = %12
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1511
  %57 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %56), !dbg !1511
  ret void, !dbg !1512
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** noundef %2, i8* noundef %3, i64 noundef %4, void ()* noundef %5, i1 noundef %6) #4 !dbg !1513 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void ()*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1518, metadata !DIExpression()), !dbg !1519
  store i8** %2, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i64 %4, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1524, metadata !DIExpression()), !dbg !1525
  store void ()* %5, void ()** %14, align 8
  call void @llvm.dbg.declare(metadata void ()** %14, metadata !1526, metadata !DIExpression()), !dbg !1527
  %17 = zext i1 %6 to i8
  store i8 %17, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1530, metadata !DIExpression()), !dbg !1531
  %18 = load i8, i8* %15, align 1, !dbg !1532
  %19 = trunc i8 %18 to i1, !dbg !1532
  br i1 %19, label %20, label %26, !dbg !1534

20:                                               ; preds = %7
  %21 = load i8*, i8** %10, align 8, !dbg !1535
  %22 = load i8**, i8*** %11, align 8, !dbg !1536
  %23 = load i8*, i8** %12, align 8, !dbg !1537
  %24 = load i64, i64* %13, align 8, !dbg !1538
  %25 = call i64 @argmatch(i8* noundef %21, i8** noundef %22, i8* noundef %23, i64 noundef %24) #21, !dbg !1539
  store i64 %25, i64* %16, align 8, !dbg !1540
  br label %30, !dbg !1541

26:                                               ; preds = %7
  %27 = load i8*, i8** %10, align 8, !dbg !1542
  %28 = load i8**, i8*** %11, align 8, !dbg !1543
  %29 = call i64 @argmatch_exact(i8* noundef %27, i8** noundef %28) #21, !dbg !1544
  store i64 %29, i64* %16, align 8, !dbg !1545
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i64, i64* %16, align 8, !dbg !1546
  %32 = icmp sge i64 %31, 0, !dbg !1548
  br i1 %32, label %33, label %35, !dbg !1549

33:                                               ; preds = %30
  %34 = load i64, i64* %16, align 8, !dbg !1550
  store i64 %34, i64* %8, align 8, !dbg !1551
  br label %43, !dbg !1551

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8, !dbg !1552
  %37 = load i8*, i8** %10, align 8, !dbg !1553
  %38 = load i64, i64* %16, align 8, !dbg !1554
  call void @argmatch_invalid(i8* noundef %36, i8* noundef %37, i64 noundef %38), !dbg !1555
  %39 = load i8**, i8*** %11, align 8, !dbg !1556
  %40 = load i8*, i8** %12, align 8, !dbg !1557
  %41 = load i64, i64* %13, align 8, !dbg !1558
  call void @argmatch_valid(i8** noundef %39, i8* noundef %40, i64 noundef %41), !dbg !1559
  %42 = load void ()*, void ()** %14, align 8, !dbg !1560
  call void %42(), !dbg !1561
  store i64 -1, i64* %8, align 8, !dbg !1562
  br label %43, !dbg !1562

43:                                               ; preds = %35, %33
  %44 = load i64, i64* %8, align 8, !dbg !1563
  ret i64 %44, !dbg !1563
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* noundef %0, i8** noundef %1, i8* noundef %2, i64 noundef %3) #10 !dbg !1564 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1575, metadata !DIExpression()), !dbg !1577
  store i64 0, i64* %10, align 8, !dbg !1577
  br label %11, !dbg !1578

11:                                               ; preds = %32, %4
  %12 = load i8**, i8*** %7, align 8, !dbg !1579
  %13 = load i64, i64* %10, align 8, !dbg !1581
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1579
  %15 = load i8*, i8** %14, align 8, !dbg !1579
  %16 = icmp ne i8* %15, null, !dbg !1582
  br i1 %16, label %17, label %35, !dbg !1582

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1583
  %19 = load i8*, i8** %8, align 8, !dbg !1585
  %20 = load i64, i64* %9, align 8, !dbg !1586
  %21 = load i64, i64* %10, align 8, !dbg !1587
  %22 = mul i64 %20, %21, !dbg !1588
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1589
  %24 = load i64, i64* %9, align 8, !dbg !1590
  %25 = call i1 @memeq(i8* noundef %18, i8* noundef %23, i64 noundef %24), !dbg !1591
  br i1 %25, label %26, label %31, !dbg !1592

26:                                               ; preds = %17
  %27 = load i8**, i8*** %7, align 8, !dbg !1593
  %28 = load i64, i64* %10, align 8, !dbg !1594
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28, !dbg !1593
  %30 = load i8*, i8** %29, align 8, !dbg !1593
  store i8* %30, i8** %5, align 8, !dbg !1595
  br label %36, !dbg !1595

31:                                               ; preds = %17
  br label %32, !dbg !1596

32:                                               ; preds = %31
  %33 = load i64, i64* %10, align 8, !dbg !1597
  %34 = add i64 %33, 1, !dbg !1597
  store i64 %34, i64* %10, align 8, !dbg !1597
  br label %11, !dbg !1598, !llvm.loop !1599

35:                                               ; preds = %11
  store i8* null, i8** %5, align 8, !dbg !1601
  br label %36, !dbg !1601

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %5, align 8, !dbg !1602
  ret i8* %37, !dbg !1602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1603 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1604, metadata !DIExpression()), !dbg !1605
  %3 = load i8*, i8** %2, align 8, !dbg !1606
  store i8* %3, i8** @file_name, align 8, !dbg !1607
  ret void, !dbg !1608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1609 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1612, metadata !DIExpression()), !dbg !1613
  %4 = load i8, i8* %2, align 1, !dbg !1614
  %5 = trunc i8 %4 to i1, !dbg !1614
  %6 = zext i1 %5 to i8, !dbg !1615
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1615
  ret void, !dbg !1616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1617 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1618
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1620
  %4 = icmp ne i32 %3, 0, !dbg !1621
  br i1 %4, label %5, label %28, !dbg !1622

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1623
  %7 = trunc i8 %6 to i1, !dbg !1623
  br i1 %7, label %8, label %12, !dbg !1624

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !1625
  %10 = load i32, i32* %9, align 4, !dbg !1625
  %11 = icmp eq i32 %10, 32, !dbg !1626
  br i1 %11, label %28, label %12, !dbg !1627

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1628, metadata !DIExpression()), !dbg !1630
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.96, i64 0, i64 0)) #19, !dbg !1631
  store i8* %13, i8** %1, align 8, !dbg !1630
  %14 = load i8*, i8** @file_name, align 8, !dbg !1632
  %15 = icmp ne i8* %14, null, !dbg !1632
  br i1 %15, label %16, label %22, !dbg !1634

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !1635
  %18 = load i32, i32* %17, align 4, !dbg !1635
  %19 = load i8*, i8** @file_name, align 8, !dbg !1635
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1635
  %21 = load i8*, i8** %1, align 8, !dbg !1635
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1635
  br label %26, !dbg !1635

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !1636
  %24 = load i32, i32* %23, align 4, !dbg !1636
  %25 = load i8*, i8** %1, align 8, !dbg !1636
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.98, i64 0, i64 0), i8* noundef %25), !dbg !1636
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1637
  call void @_exit(i32 noundef %27) #23, !dbg !1638
  unreachable, !dbg !1638

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1639
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1641
  %31 = icmp ne i32 %30, 0, !dbg !1642
  br i1 %31, label %32, label %34, !dbg !1643

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1644
  call void @_exit(i32 noundef %33) #23, !dbg !1645
  unreachable, !dbg !1645

34:                                               ; preds = %28
  ret void, !dbg !1646
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #12 !dbg !1647 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1650, metadata !DIExpression()), !dbg !1651
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1652, metadata !DIExpression()), !dbg !1651
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1653, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1654, metadata !DIExpression()), !dbg !1651
  call void @flush_stdout(), !dbg !1655
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1656
  %10 = icmp ne void ()* %9, null, !dbg !1656
  br i1 %10, label %11, label %13, !dbg !1658

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1659
  call void %12(), !dbg !1660
  br label %17, !dbg !1660

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1661
  %15 = call i8* @getprogname() #21, !dbg !1663
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i8* noundef %15), !dbg !1664
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1665
  %19 = load i32, i32* %6, align 4, !dbg !1665
  %20 = load i8*, i8** %7, align 8, !dbg !1665
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1665
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1665
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1665
  ret void, !dbg !1666
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1667 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 1, i32* %1, align 4, !dbg !1670
  %2 = load i32, i32* %1, align 4, !dbg !1671
  %3 = icmp sle i32 0, %2, !dbg !1673
  br i1 %3, label %4, label %11, !dbg !1674

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1675
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1676
  %7 = icmp ne i32 %6, 0, !dbg !1676
  br i1 %7, label %8, label %11, !dbg !1677

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1678
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1678
  br label %11, !dbg !1678

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1679
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1680 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1683, metadata !DIExpression()), !dbg !1682
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1684, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1685, metadata !DIExpression()), !dbg !1682
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1686
  %10 = load i8*, i8** %7, align 8, !dbg !1687
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1688
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1688
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1688
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1689
  %15 = add i32 %14, 1, !dbg !1689
  store i32 %15, i32* @error_message_count, align 4, !dbg !1689
  %16 = load i32, i32* %6, align 4, !dbg !1690
  %17 = icmp ne i32 %16, 0, !dbg !1690
  br i1 %17, label %18, label %20, !dbg !1692

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1693
  call void @print_errno_message(i32 noundef %19), !dbg !1694
  br label %20, !dbg !1694

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1695
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1695
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1696
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1696
  %25 = load i32, i32* %5, align 4, !dbg !1697
  %26 = icmp ne i32 %25, 0, !dbg !1697
  br i1 %26, label %27, label %29, !dbg !1699

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1700
  call void @exit(i32 noundef %28) #20, !dbg !1701
  unreachable, !dbg !1701

29:                                               ; preds = %20
  ret void, !dbg !1702
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1703 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1708, metadata !DIExpression()), !dbg !1712
  %5 = load i32, i32* %2, align 4, !dbg !1713
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1714
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1715
  store i8* %7, i8** %3, align 8, !dbg !1716
  %8 = load i8*, i8** %3, align 8, !dbg !1717
  %9 = icmp ne i8* %8, null, !dbg !1717
  br i1 %9, label %12, label %10, !dbg !1719

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.101, i64 0, i64 0)) #19, !dbg !1720
  store i8* %11, i8** %3, align 8, !dbg !1721
  br label %12, !dbg !1722

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1723
  %14 = load i8*, i8** %3, align 8, !dbg !1724
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.102, i64 0, i64 0), i8* noundef %14), !dbg !1725
  ret void, !dbg !1726
}

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1727 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1730, metadata !DIExpression()), !dbg !1731
  %3 = load i32, i32* %2, align 4, !dbg !1732
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1733
  %5 = icmp sle i32 0, %4, !dbg !1734
  %6 = zext i1 %5 to i32, !dbg !1734
  ret i32 %6, !dbg !1735
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1736 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1739, metadata !DIExpression()), !dbg !1740
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1745, metadata !DIExpression()), !dbg !1746
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1747
  call void @llvm.va_start(i8* %9), !dbg !1747
  %10 = load i32, i32* %4, align 4, !dbg !1748
  %11 = load i32, i32* %5, align 4, !dbg !1748
  %12 = load i8*, i8** %6, align 8, !dbg !1748
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1748
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1748
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #25, !dbg !1748
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1749
  call void @llvm.va_end(i8* %15), !dbg !1749
  ret void, !dbg !1750
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #12 !dbg !137 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1751, metadata !DIExpression()), !dbg !1752
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1753, metadata !DIExpression()), !dbg !1752
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1754, metadata !DIExpression()), !dbg !1752
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1755, metadata !DIExpression()), !dbg !1752
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1756, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1757, metadata !DIExpression()), !dbg !1752
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1758
  %14 = icmp ne i32 %13, 0, !dbg !1758
  br i1 %14, label %15, label %38, !dbg !1760

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1761
  %17 = load i32, i32* %10, align 4, !dbg !1764
  %18 = icmp eq i32 %16, %17, !dbg !1765
  br i1 %18, label %19, label %35, !dbg !1766

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1767
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1768
  %22 = icmp eq i8* %20, %21, !dbg !1769
  br i1 %22, label %34, label %23, !dbg !1770

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1771
  %25 = icmp ne i8* %24, null, !dbg !1772
  br i1 %25, label %26, label %35, !dbg !1773

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1774
  %28 = icmp ne i8* %27, null, !dbg !1775
  br i1 %28, label %29, label %35, !dbg !1776

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1777
  %31 = load i8*, i8** %9, align 8, !dbg !1778
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1779
  %33 = icmp eq i32 %32, 0, !dbg !1780
  br i1 %33, label %34, label %35, !dbg !1781

34:                                               ; preds = %29, %19
  br label %61, !dbg !1782

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1783
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1784
  %37 = load i32, i32* %10, align 4, !dbg !1785
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1786
  br label %38, !dbg !1787

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1788
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1789
  %40 = icmp ne void ()* %39, null, !dbg !1789
  br i1 %40, label %41, label %43, !dbg !1791

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1792
  call void %42(), !dbg !1793
  br label %47, !dbg !1793

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1794
  %45 = call i8* @getprogname() #21, !dbg !1796
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.105, i64 0, i64 0), i8* noundef %45), !dbg !1797
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1798
  %49 = load i8*, i8** %9, align 8, !dbg !1799
  %50 = icmp ne i8* %49, null, !dbg !1800
  %51 = zext i1 %50 to i64, !dbg !1799
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.106, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), !dbg !1799
  %53 = load i8*, i8** %9, align 8, !dbg !1801
  %54 = load i32, i32* %10, align 4, !dbg !1802
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1803
  %56 = load i32, i32* %7, align 4, !dbg !1804
  %57 = load i32, i32* %8, align 4, !dbg !1804
  %58 = load i8*, i8** %11, align 8, !dbg !1804
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1804
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1804
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1804
  br label %61, !dbg !1805

61:                                               ; preds = %47, %34
  ret void, !dbg !1805
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1806 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1809, metadata !DIExpression()), !dbg !1810
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1811, metadata !DIExpression()), !dbg !1812
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1813, metadata !DIExpression()), !dbg !1814
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1815, metadata !DIExpression()), !dbg !1816
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1819, metadata !DIExpression()), !dbg !1820
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1821
  call void @llvm.va_start(i8* %13), !dbg !1821
  %14 = load i32, i32* %6, align 4, !dbg !1822
  %15 = load i32, i32* %7, align 4, !dbg !1822
  %16 = load i8*, i8** %8, align 8, !dbg !1822
  %17 = load i32, i32* %9, align 4, !dbg !1822
  %18 = load i8*, i8** %10, align 8, !dbg !1822
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1822
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1822
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1822
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #25, !dbg !1822
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1823
  call void @llvm.va_end(i8* %21), !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 !dbg !1825 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1832, metadata !DIExpression()), !dbg !1833
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1836, metadata !DIExpression()), !dbg !1837
  %9 = load i32, i32* %5, align 4, !dbg !1838
  %10 = load i64, i64* %6, align 8, !dbg !1838
  %11 = load i64, i64* %7, align 8, !dbg !1838
  %12 = load i32, i32* %8, align 4, !dbg !1838
  %13 = call i32 @posix_fadvise(i32 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12) #19, !dbg !1838
  ret void, !dbg !1839
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) #4 !dbg !1840 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1895, metadata !DIExpression()), !dbg !1896
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1897, metadata !DIExpression()), !dbg !1898
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1899
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1899
  br i1 %6, label %7, label %11, !dbg !1901

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1902
  %9 = call i32 @fileno(%struct._IO_FILE* noundef %8) #19, !dbg !1903
  %10 = load i32, i32* %4, align 4, !dbg !1904
  call void @fdadvise(i32 noundef %9, i64 noundef 0, i64 noundef 0, i32 noundef %10), !dbg !1905
  br label %11, !dbg !1905

11:                                               ; preds = %7, %2
  ret void, !dbg !1906
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_safer(i8* noundef %0, i32 noundef %1, ...) #4 !dbg !1907 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.std::__va_list", align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1910, metadata !DIExpression()), !dbg !1911
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1912, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1914, metadata !DIExpression()), !dbg !1916
  store i32 0, i32* %5, align 4, !dbg !1916
  %7 = load i32, i32* %4, align 4, !dbg !1917
  %8 = and i32 %7, 64, !dbg !1919
  %9 = icmp ne i32 %8, 0, !dbg !1919
  br i1 %9, label %10, label %32, !dbg !1920

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1921, metadata !DIExpression()), !dbg !1933
  %11 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1934
  call void @llvm.va_start(i8* %11), !dbg !1934
  %12 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 3, !dbg !1935
  %13 = load i32, i32* %12, align 8, !dbg !1935
  %14 = icmp sge i32 %13, 0, !dbg !1935
  br i1 %14, label %23, label %15, !dbg !1935

15:                                               ; preds = %10
  %16 = add i32 %13, 8, !dbg !1935
  store i32 %16, i32* %12, align 8, !dbg !1935
  %17 = icmp sle i32 %16, 0, !dbg !1935
  br i1 %17, label %18, label %23, !dbg !1935

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 1, !dbg !1935
  %20 = load i8*, i8** %19, align 8, !dbg !1935
  %21 = getelementptr inbounds i8, i8* %20, i32 %13, !dbg !1935
  %22 = bitcast i8* %21 to i32*, !dbg !1935
  br label %28, !dbg !1935

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 0, !dbg !1935
  %25 = load i8*, i8** %24, align 8, !dbg !1935
  %26 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !1935
  store i8* %26, i8** %24, align 8, !dbg !1935
  %27 = bitcast i8* %25 to i32*, !dbg !1935
  br label %28, !dbg !1935

28:                                               ; preds = %23, %18
  %29 = phi i32* [ %22, %18 ], [ %27, %23 ], !dbg !1935
  %30 = load i32, i32* %29, align 8, !dbg !1935
  store i32 %30, i32* %5, align 4, !dbg !1936
  %31 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1937
  call void @llvm.va_end(i8* %31), !dbg !1937
  br label %32, !dbg !1938

32:                                               ; preds = %28, %2
  %33 = load i8*, i8** %3, align 8, !dbg !1939
  %34 = load i32, i32* %4, align 4, !dbg !1940
  %35 = load i32, i32* %5, align 4, !dbg !1941
  %36 = call i32 (i8*, i32, ...) @open(i8* noundef %33, i32 noundef %34, i32 noundef %35), !dbg !1942
  %37 = call i32 @fd_safer(i32 noundef %36), !dbg !1943
  ret i32 %37, !dbg !1944
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #10 !dbg !1945 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1948
  ret i8* %1, !dbg !1949
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isapipe(i32 noundef %0) #4 !dbg !1950 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1951, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1953, metadata !DIExpression()), !dbg !1955
  store i32 1, i32* %4, align 4, !dbg !1955
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1956, metadata !DIExpression()), !dbg !1957
  store i8 1, i8* %5, align 1, !dbg !1957
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1958, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1982, metadata !DIExpression()), !dbg !1983
  %8 = load i32, i32* %3, align 4, !dbg !1984
  %9 = call i32 @fstat(i32 noundef %8, %struct.stat* noundef %6) #19, !dbg !1985
  store i32 %9, i32* %7, align 4, !dbg !1983
  %10 = load i32, i32* %7, align 4, !dbg !1986
  %11 = icmp ne i32 %10, 0, !dbg !1988
  br i1 %11, label %12, label %14, !dbg !1989

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4, !dbg !1990
  store i32 %13, i32* %2, align 4, !dbg !1991
  br label %40, !dbg !1991

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !1992
  %16 = load i32, i32* %15, align 4, !dbg !1992
  %17 = load i32, i32* %4, align 4, !dbg !1993
  %18 = icmp ule i32 %16, %17, !dbg !1994
  br i1 %18, label %19, label %37, !dbg !1995

19:                                               ; preds = %14
  %20 = load i8, i8* %5, align 1, !dbg !1996
  %21 = trunc i8 %20 to i1, !dbg !1996
  br i1 %21, label %22, label %28, !dbg !1996

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2, !dbg !1997
  %24 = load i32, i32* %23, align 8, !dbg !1997
  %25 = and i32 %24, 61440, !dbg !1997
  %26 = icmp eq i32 %25, 4096, !dbg !1997
  %27 = zext i1 %26 to i32, !dbg !1997
  br label %34, !dbg !1996

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2, !dbg !1998
  %30 = load i32, i32* %29, align 8, !dbg !1998
  %31 = and i32 %30, 61440, !dbg !1998
  %32 = icmp eq i32 %31, 49152, !dbg !1998
  %33 = zext i1 %32 to i32, !dbg !1998
  br label %34, !dbg !1996

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %27, %22 ], [ %33, %28 ], !dbg !1996
  %36 = icmp ne i32 %35, 0, !dbg !1995
  br label %37

37:                                               ; preds = %34, %14
  %38 = phi i1 [ false, %14 ], [ %36, %34 ], !dbg !1999
  %39 = zext i1 %38 to i32, !dbg !1995
  store i32 %39, i32* %2, align 4, !dbg !2000
  br label %40, !dbg !2000

40:                                               ; preds = %37, %12
  %41 = load i32, i32* %2, align 4, !dbg !2001
  ret i32 %41, !dbg !2001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2002 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2010, metadata !DIExpression()), !dbg !2011
  %7 = load i8*, i8** %4, align 8, !dbg !2012
  %8 = load i8*, i8** %5, align 8, !dbg !2013
  %9 = load i64, i64* %6, align 8, !dbg !2014
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !2015
  %11 = icmp ne i32 %10, 0, !dbg !2016
  %12 = xor i1 %11, true, !dbg !2016
  ret i1 %12, !dbg !2017
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !2018 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2021, metadata !DIExpression()), !dbg !2022
  %5 = load i8*, i8** %2, align 8, !dbg !2023
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !2024
  store i8* %6, i8** %3, align 8, !dbg !2022
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2025, metadata !DIExpression()), !dbg !2026
  %7 = load i8*, i8** %3, align 8, !dbg !2027
  %8 = icmp ne i8* %7, null, !dbg !2027
  br i1 %8, label %9, label %12, !dbg !2027

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !2028
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !2029
  br label %14, !dbg !2027

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !2030
  br label %14, !dbg !2027

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !2027
  store i8* %15, i8** %4, align 8, !dbg !2026
  %16 = load i8*, i8** %4, align 8, !dbg !2031
  %17 = load i8*, i8** %2, align 8, !dbg !2033
  %18 = ptrtoint i8* %16 to i64, !dbg !2034
  %19 = ptrtoint i8* %17 to i64, !dbg !2034
  %20 = sub i64 %18, %19, !dbg !2034
  %21 = icmp sle i64 7, %20, !dbg !2035
  br i1 %21, label %22, label %36, !dbg !2036

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !2037
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !2038
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i64 noundef 7), !dbg !2039
  br i1 %25, label %26, label %36, !dbg !2040

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !2041
  store i8* %27, i8** %2, align 8, !dbg !2043
  %28 = load i8*, i8** %4, align 8, !dbg !2044
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.125, i64 0, i64 0), i64 noundef 3) #21, !dbg !2046
  %30 = icmp eq i32 %29, 0, !dbg !2047
  br i1 %30, label %31, label %35, !dbg !2048

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !2049
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !2049
  store i8* %33, i8** %4, align 8, !dbg !2049
  %34 = load i8*, i8** %4, align 8, !dbg !2051
  store i8* %34, i8** %2, align 8, !dbg !2052
  br label %35, !dbg !2053

35:                                               ; preds = %31, %26
  br label %36, !dbg !2054

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !2055
  store i8* %37, i8** @program_name, align 8, !dbg !2056
  %38 = load i8*, i8** %2, align 8, !dbg !2057
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !2058
  %39 = load i8*, i8** %4, align 8, !dbg !2059
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !2060
  ret void, !dbg !2061
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !168 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2062, metadata !DIExpression()), !dbg !2063
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2064, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2066, metadata !DIExpression()), !dbg !2067
  %9 = load i8*, i8** %4, align 8, !dbg !2068
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !2069
  store i8* %10, i8** %6, align 8, !dbg !2067
  %11 = load i8*, i8** %6, align 8, !dbg !2070
  %12 = load i8*, i8** %4, align 8, !dbg !2072
  %13 = icmp ne i8* %11, %12, !dbg !2073
  br i1 %13, label %14, label %16, !dbg !2074

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2075
  store i8* %15, i8** %3, align 8, !dbg !2076
  br label %26, !dbg !2076

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2077, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2083, metadata !DIExpression()), !dbg !2094
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2095
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !2096
  %18 = icmp eq i64 %17, 2, !dbg !2098
  br i1 %18, label %19, label %24, !dbg !2099

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2100
  %21 = icmp eq i32 %20, 2047, !dbg !2101
  br i1 %21, label %22, label %24, !dbg !2102

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !2103
  store i8* %23, i8** %3, align 8, !dbg !2104
  br label %26, !dbg !2104

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !2105
  store i8* %25, i8** %3, align 8, !dbg !2106
  br label %26, !dbg !2106

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !2107
  ret i8* %27, !dbg !2107
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !2108 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2114, metadata !DIExpression()), !dbg !2115
  %5 = call i32* @__errno_location() #22, !dbg !2116
  %6 = load i32, i32* %5, align 4, !dbg !2116
  store i32 %6, i32* %3, align 4, !dbg !2115
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2117, metadata !DIExpression()), !dbg !2118
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2119
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2119
  br i1 %8, label %9, label %11, !dbg !2119

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2120
  br label %12, !dbg !2119

11:                                               ; preds = %1
  br label %12, !dbg !2119

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2119
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2119
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #26, !dbg !2121
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2121
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2118
  %17 = load i32, i32* %3, align 4, !dbg !2122
  %18 = call i32* @__errno_location() #22, !dbg !2123
  store i32 %17, i32* %18, align 4, !dbg !2124
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2125
  ret %struct.quoting_options* %19, !dbg !2126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !2127 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2132, metadata !DIExpression()), !dbg !2133
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2134
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2134
  br i1 %4, label %5, label %7, !dbg !2134

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2135
  br label %8, !dbg !2134

7:                                                ; preds = %1
  br label %8, !dbg !2134

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2134
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2136
  %11 = load i32, i32* %10, align 8, !dbg !2136
  ret i32 %11, !dbg !2137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2138 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2143, metadata !DIExpression()), !dbg !2144
  %5 = load i32, i32* %4, align 4, !dbg !2145
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2146
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2146
  br i1 %7, label %8, label %10, !dbg !2146

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2147
  br label %11, !dbg !2146

10:                                               ; preds = %2
  br label %11, !dbg !2146

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2146
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2148
  store i32 %5, i32* %13, align 8, !dbg !2149
  ret void, !dbg !2150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !2151 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2154, metadata !DIExpression()), !dbg !2155
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2156, metadata !DIExpression()), !dbg !2157
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2158, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2160, metadata !DIExpression()), !dbg !2161
  %11 = load i8, i8* %5, align 1, !dbg !2162
  store i8 %11, i8* %7, align 1, !dbg !2161
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2163, metadata !DIExpression()), !dbg !2165
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2166
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2166
  br i1 %13, label %14, label %16, !dbg !2166

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2167
  br label %17, !dbg !2166

16:                                               ; preds = %3
  br label %17, !dbg !2166

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2166
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2168
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !2169
  %21 = load i8, i8* %7, align 1, !dbg !2170
  %22 = zext i8 %21 to i64, !dbg !2170
  %23 = udiv i64 %22, 32, !dbg !2171
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2172
  store i32* %24, i32** %8, align 8, !dbg !2165
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2173, metadata !DIExpression()), !dbg !2174
  %25 = load i8, i8* %7, align 1, !dbg !2175
  %26 = zext i8 %25 to i64, !dbg !2175
  %27 = urem i64 %26, 32, !dbg !2176
  %28 = trunc i64 %27 to i32, !dbg !2175
  store i32 %28, i32* %9, align 4, !dbg !2174
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2177, metadata !DIExpression()), !dbg !2178
  %29 = load i32*, i32** %8, align 8, !dbg !2179
  %30 = load i32, i32* %29, align 4, !dbg !2180
  %31 = load i32, i32* %9, align 4, !dbg !2181
  %32 = lshr i32 %30, %31, !dbg !2182
  %33 = and i32 %32, 1, !dbg !2183
  store i32 %33, i32* %10, align 4, !dbg !2178
  %34 = load i32, i32* %6, align 4, !dbg !2184
  %35 = and i32 %34, 1, !dbg !2185
  %36 = load i32, i32* %10, align 4, !dbg !2186
  %37 = xor i32 %35, %36, !dbg !2187
  %38 = load i32, i32* %9, align 4, !dbg !2188
  %39 = shl i32 %37, %38, !dbg !2189
  %40 = load i32*, i32** %8, align 8, !dbg !2190
  %41 = load i32, i32* %40, align 4, !dbg !2191
  %42 = xor i32 %41, %39, !dbg !2191
  store i32 %42, i32* %40, align 4, !dbg !2191
  %43 = load i32, i32* %10, align 4, !dbg !2192
  ret i32 %43, !dbg !2193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2194 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2199, metadata !DIExpression()), !dbg !2200
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2201
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2201
  br i1 %7, label %9, label %8, !dbg !2203

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2204
  br label %9, !dbg !2205

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2206, metadata !DIExpression()), !dbg !2207
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2208
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2209
  %12 = load i32, i32* %11, align 4, !dbg !2209
  store i32 %12, i32* %5, align 4, !dbg !2207
  %13 = load i32, i32* %4, align 4, !dbg !2210
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2211
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2212
  store i32 %13, i32* %15, align 4, !dbg !2213
  %16 = load i32, i32* %5, align 4, !dbg !2214
  ret i32 %16, !dbg !2215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2216 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2223, metadata !DIExpression()), !dbg !2224
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2225
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2225
  br i1 %8, label %10, label %9, !dbg !2227

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2228
  br label %10, !dbg !2229

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2230
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2231
  store i32 10, i32* %12, align 8, !dbg !2232
  %13 = load i8*, i8** %5, align 8, !dbg !2233
  %14 = icmp ne i8* %13, null, !dbg !2233
  br i1 %14, label %15, label %18, !dbg !2235

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2236
  %17 = icmp ne i8* %16, null, !dbg !2236
  br i1 %17, label %19, label %18, !dbg !2237

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !2238
  unreachable, !dbg !2238

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2239
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2240
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2241
  store i8* %20, i8** %22, align 8, !dbg !2242
  %23 = load i8*, i8** %6, align 8, !dbg !2243
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2244
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2245
  store i8* %23, i8** %25, align 8, !dbg !2246
  ret void, !dbg !2247
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !2248 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2251, metadata !DIExpression()), !dbg !2252
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2253, metadata !DIExpression()), !dbg !2254
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2255, metadata !DIExpression()), !dbg !2256
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2257, metadata !DIExpression()), !dbg !2258
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2259, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2261, metadata !DIExpression()), !dbg !2262
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2263
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2263
  br i1 %15, label %16, label %18, !dbg !2263

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2264
  br label %19, !dbg !2263

18:                                               ; preds = %5
  br label %19, !dbg !2263

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2263
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2265, metadata !DIExpression()), !dbg !2266
  %21 = call i32* @__errno_location() #22, !dbg !2267
  %22 = load i32, i32* %21, align 4, !dbg !2267
  store i32 %22, i32* %12, align 4, !dbg !2266
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2268, metadata !DIExpression()), !dbg !2269
  %23 = load i8*, i8** %6, align 8, !dbg !2270
  %24 = load i64, i64* %7, align 8, !dbg !2271
  %25 = load i8*, i8** %8, align 8, !dbg !2272
  %26 = load i64, i64* %9, align 8, !dbg !2273
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2274
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2275
  %29 = load i32, i32* %28, align 8, !dbg !2275
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2276
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2277
  %32 = load i32, i32* %31, align 4, !dbg !2277
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2278
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2279
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2278
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2280
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2281
  %38 = load i8*, i8** %37, align 8, !dbg !2281
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2282
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2283
  %41 = load i8*, i8** %40, align 8, !dbg !2283
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !2284
  store i64 %42, i64* %13, align 8, !dbg !2269
  %43 = load i32, i32* %12, align 4, !dbg !2285
  %44 = call i32* @__errno_location() #22, !dbg !2286
  store i32 %43, i32* %44, align 4, !dbg !2287
  %45 = load i64, i64* %13, align 8, !dbg !2288
  ret i64 %45, !dbg !2289
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2290 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2295, metadata !DIExpression()), !dbg !2296
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2299, metadata !DIExpression()), !dbg !2300
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2301, metadata !DIExpression()), !dbg !2302
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2309, metadata !DIExpression()), !dbg !2310
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2313, metadata !DIExpression()), !dbg !2314
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !2315
  %45 = icmp eq i64 %44, 1, !dbg !2316
  %46 = zext i1 %45 to i8, !dbg !2314
  store i8 %46, i8* %20, align 1, !dbg !2314
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i64 0, i64* %21, align 8, !dbg !2318
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2319, metadata !DIExpression()), !dbg !2320
  store i64 0, i64* %22, align 8, !dbg !2320
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2321, metadata !DIExpression()), !dbg !2322
  store i8* null, i8** %23, align 8, !dbg !2322
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2323, metadata !DIExpression()), !dbg !2324
  store i64 0, i64* %24, align 8, !dbg !2324
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2325, metadata !DIExpression()), !dbg !2326
  store i8 0, i8* %25, align 1, !dbg !2326
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2327, metadata !DIExpression()), !dbg !2328
  %47 = load i32, i32* %16, align 4, !dbg !2329
  %48 = and i32 %47, 2, !dbg !2330
  %49 = icmp ne i32 %48, 0, !dbg !2331
  %50 = zext i1 %49 to i8, !dbg !2328
  store i8 %50, i8* %26, align 1, !dbg !2328
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2332, metadata !DIExpression()), !dbg !2333
  store i8 0, i8* %27, align 1, !dbg !2333
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2334, metadata !DIExpression()), !dbg !2335
  store i8 1, i8* %28, align 1, !dbg !2335
  br label %51, !dbg !2336

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2337), !dbg !2338
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2339, metadata !DIExpression()), !dbg !2340
  store i8 0, i8* %29, align 1, !dbg !2340
  %52 = load i32, i32* %15, align 4, !dbg !2341
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
  ], !dbg !2342

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2343
  store i8 1, i8* %26, align 1, !dbg !2345
  br label %54, !dbg !2346

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2347
  %56 = trunc i8 %55 to i1, !dbg !2347
  br i1 %56, label %70, label %57, !dbg !2349

57:                                               ; preds = %54
  br label %58, !dbg !2350

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2351
  %60 = load i64, i64* %12, align 8, !dbg !2351
  %61 = icmp ult i64 %59, %60, !dbg !2351
  br i1 %61, label %62, label %66, !dbg !2354

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2351
  %64 = load i64, i64* %21, align 8, !dbg !2351
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2351
  store i8 34, i8* %65, align 1, !dbg !2351
  br label %66, !dbg !2351

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2354
  %68 = add i64 %67, 1, !dbg !2354
  store i64 %68, i64* %21, align 8, !dbg !2354
  br label %69, !dbg !2354

69:                                               ; preds = %66
  br label %70, !dbg !2354

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2355
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), i8** %23, align 8, !dbg !2356
  store i64 1, i64* %24, align 8, !dbg !2357
  br label %138, !dbg !2358

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2359
  store i8 0, i8* %26, align 1, !dbg !2360
  br label %138, !dbg !2361

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2362
  %74 = icmp ne i32 %73, 10, !dbg !2365
  br i1 %74, label %75, label %80, !dbg !2366

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2367
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.139, i64 0, i64 0), i32 noundef %76), !dbg !2369
  store i8* %77, i8** %18, align 8, !dbg !2370
  %78 = load i32, i32* %15, align 4, !dbg !2371
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), i32 noundef %78), !dbg !2372
  store i8* %79, i8** %19, align 8, !dbg !2373
  br label %80, !dbg !2374

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2375
  %82 = trunc i8 %81 to i1, !dbg !2375
  br i1 %82, label %108, label %83, !dbg !2377

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2378, metadata !DIExpression()), !dbg !2380
  %84 = load i8*, i8** %18, align 8, !dbg !2381
  store i8* %84, i8** %30, align 8, !dbg !2380
  br label %85, !dbg !2382

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2383
  %87 = load i8, i8* %86, align 1, !dbg !2385
  %88 = icmp ne i8 %87, 0, !dbg !2386
  br i1 %88, label %89, label %107, !dbg !2386

89:                                               ; preds = %85
  br label %90, !dbg !2387

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2388
  %92 = load i64, i64* %12, align 8, !dbg !2388
  %93 = icmp ult i64 %91, %92, !dbg !2388
  br i1 %93, label %94, label %100, !dbg !2391

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2388
  %96 = load i8, i8* %95, align 1, !dbg !2388
  %97 = load i8*, i8** %11, align 8, !dbg !2388
  %98 = load i64, i64* %21, align 8, !dbg !2388
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2388
  store i8 %96, i8* %99, align 1, !dbg !2388
  br label %100, !dbg !2388

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2391
  %102 = add i64 %101, 1, !dbg !2391
  store i64 %102, i64* %21, align 8, !dbg !2391
  br label %103, !dbg !2391

103:                                              ; preds = %100
  br label %104, !dbg !2391

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2392
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2392
  store i8* %106, i8** %30, align 8, !dbg !2392
  br label %85, !dbg !2393, !llvm.loop !2394

107:                                              ; preds = %85
  br label %108, !dbg !2395

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2396
  %109 = load i8*, i8** %19, align 8, !dbg !2397
  store i8* %109, i8** %23, align 8, !dbg !2398
  %110 = load i8*, i8** %23, align 8, !dbg !2399
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !2400
  store i64 %111, i64* %24, align 8, !dbg !2401
  br label %138, !dbg !2402

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2403
  br label %113, !dbg !2404

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2405
  br label %114, !dbg !2406

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2407
  %116 = trunc i8 %115 to i1, !dbg !2407
  br i1 %116, label %118, label %117, !dbg !2409

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2410
  br label %118, !dbg !2411

118:                                              ; preds = %117, %114
  br label %119, !dbg !2407

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2412
  %120 = load i8, i8* %26, align 1, !dbg !2413
  %121 = trunc i8 %120 to i1, !dbg !2413
  br i1 %121, label %135, label %122, !dbg !2415

122:                                              ; preds = %119
  br label %123, !dbg !2416

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2417
  %125 = load i64, i64* %12, align 8, !dbg !2417
  %126 = icmp ult i64 %124, %125, !dbg !2417
  br i1 %126, label %127, label %131, !dbg !2420

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2417
  %129 = load i64, i64* %21, align 8, !dbg !2417
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2417
  store i8 39, i8* %130, align 1, !dbg !2417
  br label %131, !dbg !2417

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2420
  %133 = add i64 %132, 1, !dbg !2420
  store i64 %133, i64* %21, align 8, !dbg !2420
  br label %134, !dbg !2420

134:                                              ; preds = %131
  br label %135, !dbg !2420

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), i8** %23, align 8, !dbg !2421
  store i64 1, i64* %24, align 8, !dbg !2422
  br label %138, !dbg !2423

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2424
  br label %138, !dbg !2425

137:                                              ; preds = %51
  call void @abort() #20, !dbg !2426
  unreachable, !dbg !2426

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2427, metadata !DIExpression()), !dbg !2429
  store i64 0, i64* %31, align 8, !dbg !2429
  br label %139, !dbg !2430

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2431
  %141 = icmp eq i64 %140, -1, !dbg !2433
  br i1 %141, label %142, label %150, !dbg !2431

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2434
  %144 = load i64, i64* %31, align 8, !dbg !2435
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2434
  %146 = load i8, i8* %145, align 1, !dbg !2434
  %147 = zext i8 %146 to i32, !dbg !2434
  %148 = icmp eq i32 %147, 0, !dbg !2436
  %149 = zext i1 %148 to i32, !dbg !2436
  br label %155, !dbg !2431

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2437
  %152 = load i64, i64* %14, align 8, !dbg !2438
  %153 = icmp eq i64 %151, %152, !dbg !2439
  %154 = zext i1 %153 to i32, !dbg !2439
  br label %155, !dbg !2431

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2431
  %157 = icmp ne i32 %156, 0, !dbg !2440
  %158 = xor i1 %157, true, !dbg !2440
  br i1 %158, label %159, label %996, !dbg !2441

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2442, metadata !DIExpression()), !dbg !2444
  store i8 0, i8* %32, align 1, !dbg !2444
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2445, metadata !DIExpression()), !dbg !2446
  store i8 0, i8* %33, align 1, !dbg !2446
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2447, metadata !DIExpression()), !dbg !2448
  store i8 0, i8* %34, align 1, !dbg !2448
  %160 = load i8, i8* %25, align 1, !dbg !2449
  %161 = trunc i8 %160 to i1, !dbg !2449
  br i1 %161, label %162, label %197, !dbg !2451

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2452
  %164 = icmp ne i32 %163, 2, !dbg !2453
  br i1 %164, label %165, label %197, !dbg !2454

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2455
  %167 = icmp ne i64 %166, 0, !dbg !2455
  br i1 %167, label %168, label %197, !dbg !2456

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2457
  %170 = load i64, i64* %24, align 8, !dbg !2458
  %171 = add i64 %169, %170, !dbg !2459
  %172 = load i64, i64* %14, align 8, !dbg !2460
  %173 = icmp eq i64 %172, -1, !dbg !2461
  br i1 %173, label %174, label %180, !dbg !2462

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2463
  %176 = icmp ult i64 1, %175, !dbg !2464
  br i1 %176, label %177, label %180, !dbg !2460

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2465
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !2466
  store i64 %179, i64* %14, align 8, !dbg !2467
  br label %182, !dbg !2460

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2468
  br label %182, !dbg !2460

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2460
  %184 = icmp ule i64 %171, %183, !dbg !2469
  br i1 %184, label %185, label %197, !dbg !2470

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2471
  %187 = load i64, i64* %31, align 8, !dbg !2472
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2473
  %189 = load i8*, i8** %23, align 8, !dbg !2474
  %190 = load i64, i64* %24, align 8, !dbg !2475
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2476
  br i1 %191, label %192, label %197, !dbg !2477

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2478
  %194 = trunc i8 %193 to i1, !dbg !2478
  br i1 %194, label %195, label %196, !dbg !2481

195:                                              ; preds = %192
  br label %1078, !dbg !2482

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2483
  br label %197, !dbg !2484

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2485, metadata !DIExpression()), !dbg !2486
  %198 = load i8*, i8** %13, align 8, !dbg !2487
  %199 = load i64, i64* %31, align 8, !dbg !2488
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2487
  %201 = load i8, i8* %200, align 1, !dbg !2487
  store i8 %201, i8* %35, align 1, !dbg !2486
  %202 = load i8, i8* %35, align 1, !dbg !2489
  %203 = zext i8 %202 to i32, !dbg !2489
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
  ], !dbg !2490

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2491
  %206 = trunc i8 %205 to i1, !dbg !2491
  br i1 %206, label %207, label %318, !dbg !2494

207:                                              ; preds = %204
  br label %208, !dbg !2495

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2497
  %210 = trunc i8 %209 to i1, !dbg !2497
  br i1 %210, label %211, label %212, !dbg !2500

211:                                              ; preds = %208
  br label %1078, !dbg !2497

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2500
  %213 = load i32, i32* %15, align 4, !dbg !2501
  %214 = icmp eq i32 %213, 2, !dbg !2501
  br i1 %214, label %215, label %255, !dbg !2501

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2501
  %217 = trunc i8 %216 to i1, !dbg !2501
  br i1 %217, label %255, label %218, !dbg !2500

218:                                              ; preds = %215
  br label %219, !dbg !2503

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2505
  %221 = load i64, i64* %12, align 8, !dbg !2505
  %222 = icmp ult i64 %220, %221, !dbg !2505
  br i1 %222, label %223, label %227, !dbg !2508

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2505
  %225 = load i64, i64* %21, align 8, !dbg !2505
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2505
  store i8 39, i8* %226, align 1, !dbg !2505
  br label %227, !dbg !2505

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2508
  %229 = add i64 %228, 1, !dbg !2508
  store i64 %229, i64* %21, align 8, !dbg !2508
  br label %230, !dbg !2508

230:                                              ; preds = %227
  br label %231, !dbg !2503

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2509
  %233 = load i64, i64* %12, align 8, !dbg !2509
  %234 = icmp ult i64 %232, %233, !dbg !2509
  br i1 %234, label %235, label %239, !dbg !2512

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2509
  %237 = load i64, i64* %21, align 8, !dbg !2509
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2509
  store i8 36, i8* %238, align 1, !dbg !2509
  br label %239, !dbg !2509

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2512
  %241 = add i64 %240, 1, !dbg !2512
  store i64 %241, i64* %21, align 8, !dbg !2512
  br label %242, !dbg !2512

242:                                              ; preds = %239
  br label %243, !dbg !2503

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2513
  %245 = load i64, i64* %12, align 8, !dbg !2513
  %246 = icmp ult i64 %244, %245, !dbg !2513
  br i1 %246, label %247, label %251, !dbg !2516

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2513
  %249 = load i64, i64* %21, align 8, !dbg !2513
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2513
  store i8 39, i8* %250, align 1, !dbg !2513
  br label %251, !dbg !2513

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2516
  %253 = add i64 %252, 1, !dbg !2516
  store i64 %253, i64* %21, align 8, !dbg !2516
  br label %254, !dbg !2516

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2503
  br label %255, !dbg !2503

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2500

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2517
  %258 = load i64, i64* %12, align 8, !dbg !2517
  %259 = icmp ult i64 %257, %258, !dbg !2517
  br i1 %259, label %260, label %264, !dbg !2520

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2517
  %262 = load i64, i64* %21, align 8, !dbg !2517
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2517
  store i8 92, i8* %263, align 1, !dbg !2517
  br label %264, !dbg !2517

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2520
  %266 = add i64 %265, 1, !dbg !2520
  store i64 %266, i64* %21, align 8, !dbg !2520
  br label %267, !dbg !2520

267:                                              ; preds = %264
  br label %268, !dbg !2500

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2521
  %270 = icmp ne i32 %269, 2, !dbg !2523
  br i1 %270, label %271, label %317, !dbg !2524

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2525
  %273 = add i64 %272, 1, !dbg !2526
  %274 = load i64, i64* %14, align 8, !dbg !2527
  %275 = icmp ult i64 %273, %274, !dbg !2528
  br i1 %275, label %276, label %317, !dbg !2529

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2530
  %278 = load i64, i64* %31, align 8, !dbg !2531
  %279 = add i64 %278, 1, !dbg !2532
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2530
  %281 = load i8, i8* %280, align 1, !dbg !2530
  %282 = zext i8 %281 to i32, !dbg !2530
  %283 = icmp sle i32 48, %282, !dbg !2533
  br i1 %283, label %284, label %317, !dbg !2534

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2535
  %286 = load i64, i64* %31, align 8, !dbg !2536
  %287 = add i64 %286, 1, !dbg !2537
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2535
  %289 = load i8, i8* %288, align 1, !dbg !2535
  %290 = zext i8 %289 to i32, !dbg !2535
  %291 = icmp sle i32 %290, 57, !dbg !2538
  br i1 %291, label %292, label %317, !dbg !2539

292:                                              ; preds = %284
  br label %293, !dbg !2540

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2542
  %295 = load i64, i64* %12, align 8, !dbg !2542
  %296 = icmp ult i64 %294, %295, !dbg !2542
  br i1 %296, label %297, label %301, !dbg !2545

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2542
  %299 = load i64, i64* %21, align 8, !dbg !2542
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2542
  store i8 48, i8* %300, align 1, !dbg !2542
  br label %301, !dbg !2542

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2545
  %303 = add i64 %302, 1, !dbg !2545
  store i64 %303, i64* %21, align 8, !dbg !2545
  br label %304, !dbg !2545

304:                                              ; preds = %301
  br label %305, !dbg !2546

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2547
  %307 = load i64, i64* %12, align 8, !dbg !2547
  %308 = icmp ult i64 %306, %307, !dbg !2547
  br i1 %308, label %309, label %313, !dbg !2550

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2547
  %311 = load i64, i64* %21, align 8, !dbg !2547
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2547
  store i8 48, i8* %312, align 1, !dbg !2547
  br label %313, !dbg !2547

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2550
  %315 = add i64 %314, 1, !dbg !2550
  store i64 %315, i64* %21, align 8, !dbg !2550
  br label %316, !dbg !2550

316:                                              ; preds = %313
  br label %317, !dbg !2551

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2552
  br label %324, !dbg !2553

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2554
  %320 = and i32 %319, 1, !dbg !2556
  %321 = icmp ne i32 %320, 0, !dbg !2556
  br i1 %321, label %322, label %323, !dbg !2557

322:                                              ; preds = %318
  br label %993, !dbg !2558

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2559

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2560
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2561

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2562
  %329 = trunc i8 %328 to i1, !dbg !2562
  br i1 %329, label %330, label %331, !dbg !2565

330:                                              ; preds = %327
  br label %1078, !dbg !2566

331:                                              ; preds = %327
  br label %418, !dbg !2567

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2568
  %334 = and i32 %333, 4, !dbg !2570
  %335 = icmp ne i32 %334, 0, !dbg !2570
  br i1 %335, label %336, label %417, !dbg !2571

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2572
  %338 = add i64 %337, 2, !dbg !2573
  %339 = load i64, i64* %14, align 8, !dbg !2574
  %340 = icmp ult i64 %338, %339, !dbg !2575
  br i1 %340, label %341, label %417, !dbg !2576

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2577
  %343 = load i64, i64* %31, align 8, !dbg !2578
  %344 = add i64 %343, 1, !dbg !2579
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2577
  %346 = load i8, i8* %345, align 1, !dbg !2577
  %347 = zext i8 %346 to i32, !dbg !2577
  %348 = icmp eq i32 %347, 63, !dbg !2580
  br i1 %348, label %349, label %417, !dbg !2581

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2582
  %351 = load i64, i64* %31, align 8, !dbg !2583
  %352 = add i64 %351, 2, !dbg !2584
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2582
  %354 = load i8, i8* %353, align 1, !dbg !2582
  %355 = zext i8 %354 to i32, !dbg !2582
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
  ], !dbg !2585

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2586
  %358 = trunc i8 %357 to i1, !dbg !2586
  br i1 %358, label %359, label %360, !dbg !2589

359:                                              ; preds = %356
  br label %1078, !dbg !2590

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2591
  %362 = load i64, i64* %31, align 8, !dbg !2592
  %363 = add i64 %362, 2, !dbg !2593
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2591
  %365 = load i8, i8* %364, align 1, !dbg !2591
  store i8 %365, i8* %35, align 1, !dbg !2594
  %366 = load i64, i64* %31, align 8, !dbg !2595
  %367 = add i64 %366, 2, !dbg !2595
  store i64 %367, i64* %31, align 8, !dbg !2595
  br label %368, !dbg !2596

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2597
  %370 = load i64, i64* %12, align 8, !dbg !2597
  %371 = icmp ult i64 %369, %370, !dbg !2597
  br i1 %371, label %372, label %376, !dbg !2600

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2597
  %374 = load i64, i64* %21, align 8, !dbg !2597
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2597
  store i8 63, i8* %375, align 1, !dbg !2597
  br label %376, !dbg !2597

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2600
  %378 = add i64 %377, 1, !dbg !2600
  store i64 %378, i64* %21, align 8, !dbg !2600
  br label %379, !dbg !2600

379:                                              ; preds = %376
  br label %380, !dbg !2601

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2602
  %382 = load i64, i64* %12, align 8, !dbg !2602
  %383 = icmp ult i64 %381, %382, !dbg !2602
  br i1 %383, label %384, label %388, !dbg !2605

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2602
  %386 = load i64, i64* %21, align 8, !dbg !2602
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2602
  store i8 34, i8* %387, align 1, !dbg !2602
  br label %388, !dbg !2602

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2605
  %390 = add i64 %389, 1, !dbg !2605
  store i64 %390, i64* %21, align 8, !dbg !2605
  br label %391, !dbg !2605

391:                                              ; preds = %388
  br label %392, !dbg !2606

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2607
  %394 = load i64, i64* %12, align 8, !dbg !2607
  %395 = icmp ult i64 %393, %394, !dbg !2607
  br i1 %395, label %396, label %400, !dbg !2610

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2607
  %398 = load i64, i64* %21, align 8, !dbg !2607
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2607
  store i8 34, i8* %399, align 1, !dbg !2607
  br label %400, !dbg !2607

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2610
  %402 = add i64 %401, 1, !dbg !2610
  store i64 %402, i64* %21, align 8, !dbg !2610
  br label %403, !dbg !2610

403:                                              ; preds = %400
  br label %404, !dbg !2611

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2612
  %406 = load i64, i64* %12, align 8, !dbg !2612
  %407 = icmp ult i64 %405, %406, !dbg !2612
  br i1 %407, label %408, label %412, !dbg !2615

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2612
  %410 = load i64, i64* %21, align 8, !dbg !2612
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2612
  store i8 63, i8* %411, align 1, !dbg !2612
  br label %412, !dbg !2612

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2615
  %414 = add i64 %413, 1, !dbg !2615
  store i64 %414, i64* %21, align 8, !dbg !2615
  br label %415, !dbg !2615

415:                                              ; preds = %412
  br label %416, !dbg !2616

416:                                              ; preds = %349, %415
  br label %417, !dbg !2617

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2618

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2619

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2620
  br label %454, !dbg !2622

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2623
  br label %454, !dbg !2624

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2625
  br label %454, !dbg !2626

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2627
  br label %446, !dbg !2628

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2629
  br label %446, !dbg !2630

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2631
  br label %446, !dbg !2632

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2633
  br label %454, !dbg !2634

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2635
  store i8 %427, i8* %36, align 1, !dbg !2636
  %428 = load i32, i32* %15, align 4, !dbg !2637
  %429 = icmp eq i32 %428, 2, !dbg !2639
  br i1 %429, label %430, label %435, !dbg !2640

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2641
  %432 = trunc i8 %431 to i1, !dbg !2641
  br i1 %432, label %433, label %434, !dbg !2644

433:                                              ; preds = %430
  br label %1078, !dbg !2645

434:                                              ; preds = %430
  br label %942, !dbg !2646

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2647
  %437 = trunc i8 %436 to i1, !dbg !2647
  br i1 %437, label %438, label %445, !dbg !2649

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2650
  %440 = trunc i8 %439 to i1, !dbg !2650
  br i1 %440, label %441, label %445, !dbg !2651

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2652
  %443 = icmp ne i64 %442, 0, !dbg !2652
  br i1 %443, label %444, label %445, !dbg !2653

444:                                              ; preds = %441
  br label %942, !dbg !2654

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2652

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2655), !dbg !2656
  %447 = load i32, i32* %15, align 4, !dbg !2657
  %448 = icmp eq i32 %447, 2, !dbg !2659
  br i1 %448, label %449, label %453, !dbg !2660

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2661
  %451 = trunc i8 %450 to i1, !dbg !2661
  br i1 %451, label %452, label %453, !dbg !2662

452:                                              ; preds = %449
  br label %1078, !dbg !2663

453:                                              ; preds = %449, %446
  br label %454, !dbg !2661

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2664), !dbg !2665
  %455 = load i8, i8* %25, align 1, !dbg !2666
  %456 = trunc i8 %455 to i1, !dbg !2666
  br i1 %456, label %457, label %459, !dbg !2668

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2669
  store i8 %458, i8* %35, align 1, !dbg !2671
  br label %880, !dbg !2672

459:                                              ; preds = %454
  br label %849, !dbg !2673

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2674
  %462 = icmp eq i64 %461, -1, !dbg !2676
  br i1 %462, label %463, label %469, !dbg !2677

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2678
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2678
  %466 = load i8, i8* %465, align 1, !dbg !2678
  %467 = zext i8 %466 to i32, !dbg !2678
  %468 = icmp eq i32 %467, 0, !dbg !2679
  br i1 %468, label %473, label %472, !dbg !2674

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2680
  %471 = icmp eq i64 %470, 1, !dbg !2681
  br i1 %471, label %473, label %472, !dbg !2677

472:                                              ; preds = %469, %463
  br label %849, !dbg !2682

473:                                              ; preds = %469, %463
  br label %474, !dbg !2683

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2684
  %476 = icmp ne i64 %475, 0, !dbg !2686
  br i1 %476, label %477, label %478, !dbg !2687

477:                                              ; preds = %474
  br label %849, !dbg !2688

478:                                              ; preds = %474
  br label %479, !dbg !2689

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2690
  br label %480, !dbg !2691

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2692
  %482 = icmp eq i32 %481, 2, !dbg !2694
  br i1 %482, label %483, label %487, !dbg !2695

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2696
  %485 = trunc i8 %484 to i1, !dbg !2696
  br i1 %485, label %486, label %487, !dbg !2697

486:                                              ; preds = %483
  br label %1078, !dbg !2698

487:                                              ; preds = %483, %480
  br label %849, !dbg !2699

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2700
  store i8 1, i8* %34, align 1, !dbg !2701
  %489 = load i32, i32* %15, align 4, !dbg !2702
  %490 = icmp eq i32 %489, 2, !dbg !2704
  br i1 %490, label %491, label %540, !dbg !2705

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2706
  %493 = trunc i8 %492 to i1, !dbg !2706
  br i1 %493, label %494, label %495, !dbg !2709

494:                                              ; preds = %491
  br label %1078, !dbg !2710

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2711
  %497 = icmp ne i64 %496, 0, !dbg !2711
  br i1 %497, label %498, label %503, !dbg !2713

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2714
  %500 = icmp ne i64 %499, 0, !dbg !2714
  br i1 %500, label %503, label %501, !dbg !2715

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2716
  store i64 %502, i64* %22, align 8, !dbg !2718
  store i64 0, i64* %12, align 8, !dbg !2719
  br label %503, !dbg !2720

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2721

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2722
  %506 = load i64, i64* %12, align 8, !dbg !2722
  %507 = icmp ult i64 %505, %506, !dbg !2722
  br i1 %507, label %508, label %512, !dbg !2725

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2722
  %510 = load i64, i64* %21, align 8, !dbg !2722
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2722
  store i8 39, i8* %511, align 1, !dbg !2722
  br label %512, !dbg !2722

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2725
  %514 = add i64 %513, 1, !dbg !2725
  store i64 %514, i64* %21, align 8, !dbg !2725
  br label %515, !dbg !2725

515:                                              ; preds = %512
  br label %516, !dbg !2726

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2727
  %518 = load i64, i64* %12, align 8, !dbg !2727
  %519 = icmp ult i64 %517, %518, !dbg !2727
  br i1 %519, label %520, label %524, !dbg !2730

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2727
  %522 = load i64, i64* %21, align 8, !dbg !2727
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2727
  store i8 92, i8* %523, align 1, !dbg !2727
  br label %524, !dbg !2727

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2730
  %526 = add i64 %525, 1, !dbg !2730
  store i64 %526, i64* %21, align 8, !dbg !2730
  br label %527, !dbg !2730

527:                                              ; preds = %524
  br label %528, !dbg !2731

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2732
  %530 = load i64, i64* %12, align 8, !dbg !2732
  %531 = icmp ult i64 %529, %530, !dbg !2732
  br i1 %531, label %532, label %536, !dbg !2735

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2732
  %534 = load i64, i64* %21, align 8, !dbg !2732
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2732
  store i8 39, i8* %535, align 1, !dbg !2732
  br label %536, !dbg !2732

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2735
  %538 = add i64 %537, 1, !dbg !2735
  store i64 %538, i64* %21, align 8, !dbg !2735
  br label %539, !dbg !2735

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2736
  br label %540, !dbg !2737

540:                                              ; preds = %539, %488
  br label %849, !dbg !2738

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2739
  br label %849, !dbg !2740

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2744, metadata !DIExpression()), !dbg !2745
  %543 = load i8, i8* %20, align 1, !dbg !2746
  %544 = trunc i8 %543 to i1, !dbg !2746
  br i1 %544, label %545, label %557, !dbg !2748

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2749
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2751
  %547 = load i16*, i16** %546, align 8, !dbg !2751
  %548 = load i8, i8* %35, align 1, !dbg !2751
  %549 = zext i8 %548 to i32, !dbg !2751
  %550 = sext i32 %549 to i64, !dbg !2751
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2751
  %552 = load i16, i16* %551, align 2, !dbg !2751
  %553 = zext i16 %552 to i32, !dbg !2751
  %554 = and i32 %553, 16384, !dbg !2751
  %555 = icmp ne i32 %554, 0, !dbg !2752
  %556 = zext i1 %555 to i8, !dbg !2753
  store i8 %556, i8* %38, align 1, !dbg !2753
  br label %648, !dbg !2754

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2755, metadata !DIExpression()), !dbg !2767
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2768
  store i64 0, i64* %37, align 8, !dbg !2769
  store i8 1, i8* %38, align 1, !dbg !2770
  %558 = load i64, i64* %14, align 8, !dbg !2771
  %559 = icmp eq i64 %558, -1, !dbg !2773
  br i1 %559, label %560, label %563, !dbg !2774

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2775
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2776
  store i64 %562, i64* %14, align 8, !dbg !2777
  br label %563, !dbg !2778

563:                                              ; preds = %560, %557
  br label %564, !dbg !2779

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2780, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2785, metadata !DIExpression()), !dbg !2786
  %565 = load i8*, i8** %13, align 8, !dbg !2787
  %566 = load i64, i64* %31, align 8, !dbg !2788
  %567 = load i64, i64* %37, align 8, !dbg !2789
  %568 = add i64 %566, %567, !dbg !2790
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2787
  %570 = load i64, i64* %14, align 8, !dbg !2791
  %571 = load i64, i64* %31, align 8, !dbg !2792
  %572 = load i64, i64* %37, align 8, !dbg !2793
  %573 = add i64 %571, %572, !dbg !2794
  %574 = sub i64 %570, %573, !dbg !2795
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2796
  store i64 %575, i64* %41, align 8, !dbg !2786
  %576 = load i64, i64* %41, align 8, !dbg !2797
  %577 = icmp eq i64 %576, 0, !dbg !2799
  br i1 %577, label %578, label %579, !dbg !2800

578:                                              ; preds = %564
  br label %647, !dbg !2801

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2802
  %581 = icmp eq i64 %580, -1, !dbg !2804
  br i1 %581, label %582, label %583, !dbg !2805

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2806
  br label %647, !dbg !2808

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2809
  %585 = icmp eq i64 %584, -2, !dbg !2811
  br i1 %585, label %586, label %608, !dbg !2812

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2813
  br label %587, !dbg !2815

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2816
  %589 = load i64, i64* %37, align 8, !dbg !2817
  %590 = add i64 %588, %589, !dbg !2818
  %591 = load i64, i64* %14, align 8, !dbg !2819
  %592 = icmp ult i64 %590, %591, !dbg !2820
  br i1 %592, label %593, label %602, !dbg !2821

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2822
  %595 = load i64, i64* %31, align 8, !dbg !2823
  %596 = load i64, i64* %37, align 8, !dbg !2824
  %597 = add i64 %595, %596, !dbg !2825
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2822
  %599 = load i8, i8* %598, align 1, !dbg !2822
  %600 = zext i8 %599 to i32, !dbg !2822
  %601 = icmp ne i32 %600, 0, !dbg !2821
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2826
  br i1 %603, label %604, label %607, !dbg !2815

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2827
  %606 = add i64 %605, 1, !dbg !2827
  store i64 %606, i64* %37, align 8, !dbg !2827
  br label %587, !dbg !2815, !llvm.loop !2828

607:                                              ; preds = %602
  br label %647, !dbg !2829

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2830
  %610 = trunc i8 %609 to i1, !dbg !2830
  br i1 %610, label %611, label %635, !dbg !2833

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2834
  %613 = icmp eq i32 %612, 2, !dbg !2835
  br i1 %613, label %614, label %635, !dbg !2836

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2837, metadata !DIExpression()), !dbg !2840
  store i64 1, i64* %42, align 8, !dbg !2840
  br label %615, !dbg !2841

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2842
  %617 = load i64, i64* %41, align 8, !dbg !2844
  %618 = icmp ult i64 %616, %617, !dbg !2845
  br i1 %618, label %619, label %634, !dbg !2846

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2847
  %621 = load i64, i64* %31, align 8, !dbg !2848
  %622 = load i64, i64* %37, align 8, !dbg !2849
  %623 = add i64 %621, %622, !dbg !2850
  %624 = load i64, i64* %42, align 8, !dbg !2851
  %625 = add i64 %623, %624, !dbg !2852
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2847
  %627 = load i8, i8* %626, align 1, !dbg !2847
  %628 = zext i8 %627 to i32, !dbg !2847
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2853

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2854

630:                                              ; preds = %619
  br label %631, !dbg !2856

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2857
  %633 = add i64 %632, 1, !dbg !2857
  store i64 %633, i64* %42, align 8, !dbg !2857
  br label %615, !dbg !2858, !llvm.loop !2859

634:                                              ; preds = %615
  br label %635, !dbg !2861

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2862
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2864
  %638 = icmp ne i32 %637, 0, !dbg !2864
  br i1 %638, label %640, label %639, !dbg !2865

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2866
  br label %640, !dbg !2867

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2868
  %642 = load i64, i64* %37, align 8, !dbg !2869
  %643 = add i64 %642, %641, !dbg !2869
  store i64 %643, i64* %37, align 8, !dbg !2869
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2870

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2871
  %650 = trunc i8 %649 to i1, !dbg !2871
  %651 = zext i1 %650 to i8, !dbg !2872
  store i8 %651, i8* %34, align 1, !dbg !2872
  %652 = load i64, i64* %37, align 8, !dbg !2873
  %653 = icmp ult i64 1, %652, !dbg !2875
  br i1 %653, label %660, label %654, !dbg !2876

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2877
  %656 = trunc i8 %655 to i1, !dbg !2877
  br i1 %656, label %657, label %848, !dbg !2878

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2879
  %659 = trunc i8 %658 to i1, !dbg !2879
  br i1 %659, label %848, label %660, !dbg !2880

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2881, metadata !DIExpression()), !dbg !2883
  %661 = load i64, i64* %31, align 8, !dbg !2884
  %662 = load i64, i64* %37, align 8, !dbg !2885
  %663 = add i64 %661, %662, !dbg !2886
  store i64 %663, i64* %43, align 8, !dbg !2883
  br label %664, !dbg !2887

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2888
  %666 = trunc i8 %665 to i1, !dbg !2888
  br i1 %666, label %667, label %772, !dbg !2893

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2894
  %669 = trunc i8 %668 to i1, !dbg !2894
  br i1 %669, label %772, label %670, !dbg !2895

670:                                              ; preds = %667
  br label %671, !dbg !2896

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2898
  %673 = trunc i8 %672 to i1, !dbg !2898
  br i1 %673, label %674, label %675, !dbg !2901

674:                                              ; preds = %671
  br label %1078, !dbg !2898

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2901
  %676 = load i32, i32* %15, align 4, !dbg !2902
  %677 = icmp eq i32 %676, 2, !dbg !2902
  br i1 %677, label %678, label %718, !dbg !2902

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2902
  %680 = trunc i8 %679 to i1, !dbg !2902
  br i1 %680, label %718, label %681, !dbg !2901

681:                                              ; preds = %678
  br label %682, !dbg !2904

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2906
  %684 = load i64, i64* %12, align 8, !dbg !2906
  %685 = icmp ult i64 %683, %684, !dbg !2906
  br i1 %685, label %686, label %690, !dbg !2909

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2906
  %688 = load i64, i64* %21, align 8, !dbg !2906
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2906
  store i8 39, i8* %689, align 1, !dbg !2906
  br label %690, !dbg !2906

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2909
  %692 = add i64 %691, 1, !dbg !2909
  store i64 %692, i64* %21, align 8, !dbg !2909
  br label %693, !dbg !2909

693:                                              ; preds = %690
  br label %694, !dbg !2904

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2910
  %696 = load i64, i64* %12, align 8, !dbg !2910
  %697 = icmp ult i64 %695, %696, !dbg !2910
  br i1 %697, label %698, label %702, !dbg !2913

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2910
  %700 = load i64, i64* %21, align 8, !dbg !2910
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2910
  store i8 36, i8* %701, align 1, !dbg !2910
  br label %702, !dbg !2910

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2913
  %704 = add i64 %703, 1, !dbg !2913
  store i64 %704, i64* %21, align 8, !dbg !2913
  br label %705, !dbg !2913

705:                                              ; preds = %702
  br label %706, !dbg !2904

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2914
  %708 = load i64, i64* %12, align 8, !dbg !2914
  %709 = icmp ult i64 %707, %708, !dbg !2914
  br i1 %709, label %710, label %714, !dbg !2917

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2914
  %712 = load i64, i64* %21, align 8, !dbg !2914
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2914
  store i8 39, i8* %713, align 1, !dbg !2914
  br label %714, !dbg !2914

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2917
  %716 = add i64 %715, 1, !dbg !2917
  store i64 %716, i64* %21, align 8, !dbg !2917
  br label %717, !dbg !2917

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2904
  br label %718, !dbg !2904

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2901

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2918
  %721 = load i64, i64* %12, align 8, !dbg !2918
  %722 = icmp ult i64 %720, %721, !dbg !2918
  br i1 %722, label %723, label %727, !dbg !2921

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2918
  %725 = load i64, i64* %21, align 8, !dbg !2918
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2918
  store i8 92, i8* %726, align 1, !dbg !2918
  br label %727, !dbg !2918

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2921
  %729 = add i64 %728, 1, !dbg !2921
  store i64 %729, i64* %21, align 8, !dbg !2921
  br label %730, !dbg !2921

730:                                              ; preds = %727
  br label %731, !dbg !2901

731:                                              ; preds = %730
  br label %732, !dbg !2922

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2923
  %734 = load i64, i64* %12, align 8, !dbg !2923
  %735 = icmp ult i64 %733, %734, !dbg !2923
  br i1 %735, label %736, label %745, !dbg !2926

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2923
  %738 = zext i8 %737 to i32, !dbg !2923
  %739 = ashr i32 %738, 6, !dbg !2923
  %740 = add nsw i32 48, %739, !dbg !2923
  %741 = trunc i32 %740 to i8, !dbg !2923
  %742 = load i8*, i8** %11, align 8, !dbg !2923
  %743 = load i64, i64* %21, align 8, !dbg !2923
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2923
  store i8 %741, i8* %744, align 1, !dbg !2923
  br label %745, !dbg !2923

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2926
  %747 = add i64 %746, 1, !dbg !2926
  store i64 %747, i64* %21, align 8, !dbg !2926
  br label %748, !dbg !2926

748:                                              ; preds = %745
  br label %749, !dbg !2927

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2928
  %751 = load i64, i64* %12, align 8, !dbg !2928
  %752 = icmp ult i64 %750, %751, !dbg !2928
  br i1 %752, label %753, label %763, !dbg !2931

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2928
  %755 = zext i8 %754 to i32, !dbg !2928
  %756 = ashr i32 %755, 3, !dbg !2928
  %757 = and i32 %756, 7, !dbg !2928
  %758 = add nsw i32 48, %757, !dbg !2928
  %759 = trunc i32 %758 to i8, !dbg !2928
  %760 = load i8*, i8** %11, align 8, !dbg !2928
  %761 = load i64, i64* %21, align 8, !dbg !2928
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2928
  store i8 %759, i8* %762, align 1, !dbg !2928
  br label %763, !dbg !2928

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2931
  %765 = add i64 %764, 1, !dbg !2931
  store i64 %765, i64* %21, align 8, !dbg !2931
  br label %766, !dbg !2931

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2932
  %768 = zext i8 %767 to i32, !dbg !2932
  %769 = and i32 %768, 7, !dbg !2933
  %770 = add nsw i32 48, %769, !dbg !2934
  %771 = trunc i32 %770 to i8, !dbg !2935
  store i8 %771, i8* %35, align 1, !dbg !2936
  br label %789, !dbg !2937

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2938
  %774 = trunc i8 %773 to i1, !dbg !2938
  br i1 %774, label %775, label %788, !dbg !2940

775:                                              ; preds = %772
  br label %776, !dbg !2941

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2943
  %778 = load i64, i64* %12, align 8, !dbg !2943
  %779 = icmp ult i64 %777, %778, !dbg !2943
  br i1 %779, label %780, label %784, !dbg !2946

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2943
  %782 = load i64, i64* %21, align 8, !dbg !2943
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2943
  store i8 92, i8* %783, align 1, !dbg !2943
  br label %784, !dbg !2943

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2946
  %786 = add i64 %785, 1, !dbg !2946
  store i64 %786, i64* %21, align 8, !dbg !2946
  br label %787, !dbg !2946

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2947
  br label %788, !dbg !2948

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2949
  %791 = load i64, i64* %31, align 8, !dbg !2951
  %792 = add i64 %791, 1, !dbg !2952
  %793 = icmp ule i64 %790, %792, !dbg !2953
  br i1 %793, label %794, label %795, !dbg !2954

794:                                              ; preds = %789
  br label %847, !dbg !2955

795:                                              ; preds = %789
  br label %796, !dbg !2956

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2957
  %798 = trunc i8 %797 to i1, !dbg !2957
  br i1 %798, label %799, label %827, !dbg !2957

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2957
  %801 = trunc i8 %800 to i1, !dbg !2957
  br i1 %801, label %827, label %802, !dbg !2960

802:                                              ; preds = %799
  br label %803, !dbg !2961

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2963
  %805 = load i64, i64* %12, align 8, !dbg !2963
  %806 = icmp ult i64 %804, %805, !dbg !2963
  br i1 %806, label %807, label %811, !dbg !2966

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2963
  %809 = load i64, i64* %21, align 8, !dbg !2963
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2963
  store i8 39, i8* %810, align 1, !dbg !2963
  br label %811, !dbg !2963

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2966
  %813 = add i64 %812, 1, !dbg !2966
  store i64 %813, i64* %21, align 8, !dbg !2966
  br label %814, !dbg !2966

814:                                              ; preds = %811
  br label %815, !dbg !2961

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2967
  %817 = load i64, i64* %12, align 8, !dbg !2967
  %818 = icmp ult i64 %816, %817, !dbg !2967
  br i1 %818, label %819, label %823, !dbg !2970

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2967
  %821 = load i64, i64* %21, align 8, !dbg !2967
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2967
  store i8 39, i8* %822, align 1, !dbg !2967
  br label %823, !dbg !2967

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2970
  %825 = add i64 %824, 1, !dbg !2970
  store i64 %825, i64* %21, align 8, !dbg !2970
  br label %826, !dbg !2970

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2961
  br label %827, !dbg !2961

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2960

828:                                              ; preds = %827
  br label %829, !dbg !2971

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2972
  %831 = load i64, i64* %12, align 8, !dbg !2972
  %832 = icmp ult i64 %830, %831, !dbg !2972
  br i1 %832, label %833, label %838, !dbg !2975

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2972
  %835 = load i8*, i8** %11, align 8, !dbg !2972
  %836 = load i64, i64* %21, align 8, !dbg !2972
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2972
  store i8 %834, i8* %837, align 1, !dbg !2972
  br label %838, !dbg !2972

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2975
  %840 = add i64 %839, 1, !dbg !2975
  store i64 %840, i64* %21, align 8, !dbg !2975
  br label %841, !dbg !2975

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2976
  %843 = load i64, i64* %31, align 8, !dbg !2977
  %844 = add i64 %843, 1, !dbg !2977
  store i64 %844, i64* %31, align 8, !dbg !2977
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2976
  %846 = load i8, i8* %845, align 1, !dbg !2976
  store i8 %846, i8* %35, align 1, !dbg !2978
  br label %664, !dbg !2979, !llvm.loop !2980

847:                                              ; preds = %794
  br label %942, !dbg !2983

848:                                              ; preds = %657, %654
  br label %849, !dbg !2984

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2985
  %851 = trunc i8 %850 to i1, !dbg !2985
  br i1 %851, label %852, label %855, !dbg !2987

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2988
  %854 = icmp ne i32 %853, 2, !dbg !2989
  br i1 %854, label %858, label %855, !dbg !2990

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2991
  %857 = trunc i8 %856 to i1, !dbg !2991
  br i1 %857, label %858, label %875, !dbg !2992

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2993
  %860 = icmp ne i32* %859, null, !dbg !2993
  br i1 %860, label %861, label %875, !dbg !2994

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2995
  %863 = load i8, i8* %35, align 1, !dbg !2996
  %864 = zext i8 %863 to i64, !dbg !2996
  %865 = udiv i64 %864, 32, !dbg !2997
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2995
  %867 = load i32, i32* %866, align 4, !dbg !2995
  %868 = load i8, i8* %35, align 1, !dbg !2998
  %869 = zext i8 %868 to i64, !dbg !2998
  %870 = urem i64 %869, 32, !dbg !2999
  %871 = trunc i64 %870 to i32, !dbg !3000
  %872 = lshr i32 %867, %871, !dbg !3000
  %873 = and i32 %872, 1, !dbg !3001
  %874 = icmp ne i32 %873, 0, !dbg !3001
  br i1 %874, label %879, label %875, !dbg !3002

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !3003
  %877 = trunc i8 %876 to i1, !dbg !3003
  br i1 %877, label %879, label %878, !dbg !3004

878:                                              ; preds = %875
  br label %942, !dbg !3005

879:                                              ; preds = %875, %861
  br label %880, !dbg !3003

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !3006), !dbg !3007
  br label %881, !dbg !3008

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !3009
  %883 = trunc i8 %882 to i1, !dbg !3009
  br i1 %883, label %884, label %885, !dbg !3012

884:                                              ; preds = %881
  br label %1078, !dbg !3009

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !3012
  %886 = load i32, i32* %15, align 4, !dbg !3013
  %887 = icmp eq i32 %886, 2, !dbg !3013
  br i1 %887, label %888, label %928, !dbg !3013

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !3013
  %890 = trunc i8 %889 to i1, !dbg !3013
  br i1 %890, label %928, label %891, !dbg !3012

891:                                              ; preds = %888
  br label %892, !dbg !3015

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !3017
  %894 = load i64, i64* %12, align 8, !dbg !3017
  %895 = icmp ult i64 %893, %894, !dbg !3017
  br i1 %895, label %896, label %900, !dbg !3020

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !3017
  %898 = load i64, i64* %21, align 8, !dbg !3017
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !3017
  store i8 39, i8* %899, align 1, !dbg !3017
  br label %900, !dbg !3017

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !3020
  %902 = add i64 %901, 1, !dbg !3020
  store i64 %902, i64* %21, align 8, !dbg !3020
  br label %903, !dbg !3020

903:                                              ; preds = %900
  br label %904, !dbg !3015

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !3021
  %906 = load i64, i64* %12, align 8, !dbg !3021
  %907 = icmp ult i64 %905, %906, !dbg !3021
  br i1 %907, label %908, label %912, !dbg !3024

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !3021
  %910 = load i64, i64* %21, align 8, !dbg !3021
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !3021
  store i8 36, i8* %911, align 1, !dbg !3021
  br label %912, !dbg !3021

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !3024
  %914 = add i64 %913, 1, !dbg !3024
  store i64 %914, i64* %21, align 8, !dbg !3024
  br label %915, !dbg !3024

915:                                              ; preds = %912
  br label %916, !dbg !3015

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !3025
  %918 = load i64, i64* %12, align 8, !dbg !3025
  %919 = icmp ult i64 %917, %918, !dbg !3025
  br i1 %919, label %920, label %924, !dbg !3028

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !3025
  %922 = load i64, i64* %21, align 8, !dbg !3025
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !3025
  store i8 39, i8* %923, align 1, !dbg !3025
  br label %924, !dbg !3025

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !3028
  %926 = add i64 %925, 1, !dbg !3028
  store i64 %926, i64* %21, align 8, !dbg !3028
  br label %927, !dbg !3028

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !3015
  br label %928, !dbg !3015

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !3012

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !3029
  %931 = load i64, i64* %12, align 8, !dbg !3029
  %932 = icmp ult i64 %930, %931, !dbg !3029
  br i1 %932, label %933, label %937, !dbg !3032

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !3029
  %935 = load i64, i64* %21, align 8, !dbg !3029
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !3029
  store i8 92, i8* %936, align 1, !dbg !3029
  br label %937, !dbg !3029

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !3032
  %939 = add i64 %938, 1, !dbg !3032
  store i64 %939, i64* %21, align 8, !dbg !3032
  br label %940, !dbg !3032

940:                                              ; preds = %937
  br label %941, !dbg !3012

941:                                              ; preds = %940
  br label %942, !dbg !3012

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !3033), !dbg !3034
  br label %943, !dbg !3035

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !3036
  %945 = trunc i8 %944 to i1, !dbg !3036
  br i1 %945, label %946, label %974, !dbg !3036

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !3036
  %948 = trunc i8 %947 to i1, !dbg !3036
  br i1 %948, label %974, label %949, !dbg !3039

949:                                              ; preds = %946
  br label %950, !dbg !3040

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !3042
  %952 = load i64, i64* %12, align 8, !dbg !3042
  %953 = icmp ult i64 %951, %952, !dbg !3042
  br i1 %953, label %954, label %958, !dbg !3045

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !3042
  %956 = load i64, i64* %21, align 8, !dbg !3042
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !3042
  store i8 39, i8* %957, align 1, !dbg !3042
  br label %958, !dbg !3042

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !3045
  %960 = add i64 %959, 1, !dbg !3045
  store i64 %960, i64* %21, align 8, !dbg !3045
  br label %961, !dbg !3045

961:                                              ; preds = %958
  br label %962, !dbg !3040

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !3046
  %964 = load i64, i64* %12, align 8, !dbg !3046
  %965 = icmp ult i64 %963, %964, !dbg !3046
  br i1 %965, label %966, label %970, !dbg !3049

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !3046
  %968 = load i64, i64* %21, align 8, !dbg !3046
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !3046
  store i8 39, i8* %969, align 1, !dbg !3046
  br label %970, !dbg !3046

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !3049
  %972 = add i64 %971, 1, !dbg !3049
  store i64 %972, i64* %21, align 8, !dbg !3049
  br label %973, !dbg !3049

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !3040
  br label %974, !dbg !3040

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !3039

975:                                              ; preds = %974
  br label %976, !dbg !3050

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !3051
  %978 = load i64, i64* %12, align 8, !dbg !3051
  %979 = icmp ult i64 %977, %978, !dbg !3051
  br i1 %979, label %980, label %985, !dbg !3054

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !3051
  %982 = load i8*, i8** %11, align 8, !dbg !3051
  %983 = load i64, i64* %21, align 8, !dbg !3051
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !3051
  store i8 %981, i8* %984, align 1, !dbg !3051
  br label %985, !dbg !3051

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !3054
  %987 = add i64 %986, 1, !dbg !3054
  store i64 %987, i64* %21, align 8, !dbg !3054
  br label %988, !dbg !3054

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !3055
  %990 = trunc i8 %989 to i1, !dbg !3055
  br i1 %990, label %992, label %991, !dbg !3057

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !3058
  br label %992, !dbg !3059

992:                                              ; preds = %991, %988
  br label %993, !dbg !3060

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !3061
  %995 = add i64 %994, 1, !dbg !3061
  store i64 %995, i64* %31, align 8, !dbg !3061
  br label %139, !dbg !3062, !llvm.loop !3063

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !3065
  %998 = icmp eq i64 %997, 0, !dbg !3067
  br i1 %998, label %999, label %1006, !dbg !3068

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !3069
  %1001 = icmp eq i32 %1000, 2, !dbg !3070
  br i1 %1001, label %1002, label %1006, !dbg !3071

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !3072
  %1004 = trunc i8 %1003 to i1, !dbg !3072
  br i1 %1004, label %1005, label %1006, !dbg !3073

1005:                                             ; preds = %1002
  br label %1078, !dbg !3074

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !3075
  %1008 = icmp eq i32 %1007, 2, !dbg !3077
  br i1 %1008, label %1009, label %1038, !dbg !3078

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !3079
  %1011 = trunc i8 %1010 to i1, !dbg !3079
  br i1 %1011, label %1038, label %1012, !dbg !3080

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !3081
  %1014 = trunc i8 %1013 to i1, !dbg !3081
  br i1 %1014, label %1015, label %1038, !dbg !3082

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !3083
  %1017 = trunc i8 %1016 to i1, !dbg !3083
  br i1 %1017, label %1018, label %1028, !dbg !3086

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !3087
  %1020 = load i64, i64* %22, align 8, !dbg !3088
  %1021 = load i8*, i8** %13, align 8, !dbg !3089
  %1022 = load i64, i64* %14, align 8, !dbg !3090
  %1023 = load i32, i32* %16, align 4, !dbg !3091
  %1024 = load i32*, i32** %17, align 8, !dbg !3092
  %1025 = load i8*, i8** %18, align 8, !dbg !3093
  %1026 = load i8*, i8** %19, align 8, !dbg !3094
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !3095
  store i64 %1027, i64* %10, align 8, !dbg !3096
  br label %1096, !dbg !3096

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !3097
  %1030 = icmp ne i64 %1029, 0, !dbg !3097
  br i1 %1030, label %1036, label %1031, !dbg !3099

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !3100
  %1033 = icmp ne i64 %1032, 0, !dbg !3100
  br i1 %1033, label %1034, label %1036, !dbg !3101

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !3102
  store i64 %1035, i64* %12, align 8, !dbg !3104
  store i64 0, i64* %21, align 8, !dbg !3105
  br label %51, !dbg !3106

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !3107

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !3108
  %1040 = icmp ne i8* %1039, null, !dbg !3108
  br i1 %1040, label %1041, label %1068, !dbg !3110

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !3111
  %1043 = trunc i8 %1042 to i1, !dbg !3111
  br i1 %1043, label %1068, label %1044, !dbg !3112

1044:                                             ; preds = %1041
  br label %1045, !dbg !3113

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !3114
  %1047 = load i8, i8* %1046, align 1, !dbg !3117
  %1048 = icmp ne i8 %1047, 0, !dbg !3118
  br i1 %1048, label %1049, label %1067, !dbg !3118

1049:                                             ; preds = %1045
  br label %1050, !dbg !3119

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !3120
  %1052 = load i64, i64* %12, align 8, !dbg !3120
  %1053 = icmp ult i64 %1051, %1052, !dbg !3120
  br i1 %1053, label %1054, label %1060, !dbg !3123

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !3120
  %1056 = load i8, i8* %1055, align 1, !dbg !3120
  %1057 = load i8*, i8** %11, align 8, !dbg !3120
  %1058 = load i64, i64* %21, align 8, !dbg !3120
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !3120
  store i8 %1056, i8* %1059, align 1, !dbg !3120
  br label %1060, !dbg !3120

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !3123
  %1062 = add i64 %1061, 1, !dbg !3123
  store i64 %1062, i64* %21, align 8, !dbg !3123
  br label %1063, !dbg !3123

1063:                                             ; preds = %1060
  br label %1064, !dbg !3123

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !3124
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !3124
  store i8* %1066, i8** %23, align 8, !dbg !3124
  br label %1045, !dbg !3125, !llvm.loop !3126

1067:                                             ; preds = %1045
  br label %1068, !dbg !3127

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !3128
  %1070 = load i64, i64* %12, align 8, !dbg !3130
  %1071 = icmp ult i64 %1069, %1070, !dbg !3131
  br i1 %1071, label %1072, label %1076, !dbg !3132

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !3133
  %1074 = load i64, i64* %21, align 8, !dbg !3134
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !3133
  store i8 0, i8* %1075, align 1, !dbg !3135
  br label %1076, !dbg !3133

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !3136
  store i64 %1077, i64* %10, align 8, !dbg !3137
  br label %1096, !dbg !3137

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !3138), !dbg !3139
  %1079 = load i32, i32* %15, align 4, !dbg !3140
  %1080 = icmp eq i32 %1079, 2, !dbg !3142
  br i1 %1080, label %1081, label %1085, !dbg !3143

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !3144
  %1083 = trunc i8 %1082 to i1, !dbg !3144
  br i1 %1083, label %1084, label %1085, !dbg !3145

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !3146
  br label %1085, !dbg !3147

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !3148
  %1087 = load i64, i64* %12, align 8, !dbg !3149
  %1088 = load i8*, i8** %13, align 8, !dbg !3150
  %1089 = load i64, i64* %14, align 8, !dbg !3151
  %1090 = load i32, i32* %15, align 4, !dbg !3152
  %1091 = load i32, i32* %16, align 4, !dbg !3153
  %1092 = and i32 %1091, -3, !dbg !3154
  %1093 = load i8*, i8** %18, align 8, !dbg !3155
  %1094 = load i8*, i8** %19, align 8, !dbg !3156
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !3157
  store i64 %1095, i64* %10, align 8, !dbg !3158
  br label %1096, !dbg !3158

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !3159
  ret i64 %1097, !dbg !3159
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !219 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3164, metadata !DIExpression()), !dbg !3165
  %9 = load i8*, i8** %4, align 8, !dbg !3166
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.141, i64 0, i64 0), i8* noundef %9) #19, !dbg !3166
  store i8* %10, i8** %6, align 8, !dbg !3165
  %11 = load i8*, i8** %6, align 8, !dbg !3167
  %12 = load i8*, i8** %4, align 8, !dbg !3169
  %13 = icmp ne i8* %11, %12, !dbg !3170
  br i1 %13, label %14, label %16, !dbg !3171

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !3172
  store i8* %15, i8** %3, align 8, !dbg !3173
  br label %37, !dbg !3173

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !3178
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !3179
  %18 = icmp eq i64 %17, 3, !dbg !3181
  br i1 %18, label %19, label %32, !dbg !3182

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !3183
  %21 = icmp eq i32 %20, 8216, !dbg !3184
  br i1 %21, label %22, label %32, !dbg !3185

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !3186
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !3186
  %25 = load i8, i8* %24, align 1, !dbg !3186
  %26 = zext i8 %25 to i32, !dbg !3186
  %27 = icmp eq i32 %26, 39, !dbg !3187
  %28 = zext i1 %27 to i32, !dbg !3187
  %29 = sext i32 %28 to i64, !dbg !3188
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !3188
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !3188
  store i8* %31, i8** %3, align 8, !dbg !3189
  br label %37, !dbg !3189

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !3190
  %34 = icmp eq i32 %33, 9, !dbg !3191
  %35 = zext i1 %34 to i64, !dbg !3190
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), !dbg !3190
  store i8* %36, i8** %3, align 8, !dbg !3192
  br label %37, !dbg !3192

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !3193
  ret i8* %38, !dbg !3193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !3194 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3199, metadata !DIExpression()), !dbg !3200
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3201, metadata !DIExpression()), !dbg !3202
  %7 = load i8*, i8** %4, align 8, !dbg !3203
  %8 = load i64, i64* %5, align 8, !dbg !3204
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3205
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !3206
  ret i8* %10, !dbg !3207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3208 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3215, metadata !DIExpression()), !dbg !3216
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3219, metadata !DIExpression()), !dbg !3220
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3221
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3221
  br i1 %15, label %16, label %18, !dbg !3221

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3222
  br label %19, !dbg !3221

18:                                               ; preds = %4
  br label %19, !dbg !3221

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3221
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3220
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3223, metadata !DIExpression()), !dbg !3224
  %21 = call i32* @__errno_location() #22, !dbg !3225
  %22 = load i32, i32* %21, align 4, !dbg !3225
  store i32 %22, i32* %10, align 4, !dbg !3224
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3226, metadata !DIExpression()), !dbg !3227
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3228
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3229
  %25 = load i32, i32* %24, align 4, !dbg !3229
  %26 = load i64*, i64** %7, align 8, !dbg !3230
  %27 = icmp ne i64* %26, null, !dbg !3230
  %28 = zext i1 %27 to i64, !dbg !3230
  %29 = select i1 %27, i32 0, i32 1, !dbg !3230
  %30 = or i32 %25, %29, !dbg !3231
  store i32 %30, i32* %11, align 4, !dbg !3227
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3232, metadata !DIExpression()), !dbg !3233
  %31 = load i8*, i8** %5, align 8, !dbg !3234
  %32 = load i64, i64* %6, align 8, !dbg !3235
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3236
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3237
  %35 = load i32, i32* %34, align 8, !dbg !3237
  %36 = load i32, i32* %11, align 4, !dbg !3238
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3239
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3240
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !3239
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3241
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3242
  %42 = load i8*, i8** %41, align 8, !dbg !3242
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3243
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3244
  %45 = load i8*, i8** %44, align 8, !dbg !3244
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !3245
  %47 = add i64 %46, 1, !dbg !3246
  store i64 %47, i64* %12, align 8, !dbg !3233
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3247, metadata !DIExpression()), !dbg !3248
  %48 = load i64, i64* %12, align 8, !dbg !3249
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #27, !dbg !3250
  store i8* %49, i8** %13, align 8, !dbg !3248
  %50 = load i8*, i8** %13, align 8, !dbg !3251
  %51 = load i64, i64* %12, align 8, !dbg !3252
  %52 = load i8*, i8** %5, align 8, !dbg !3253
  %53 = load i64, i64* %6, align 8, !dbg !3254
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3255
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3256
  %56 = load i32, i32* %55, align 8, !dbg !3256
  %57 = load i32, i32* %11, align 4, !dbg !3257
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3258
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3259
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3258
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3260
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3261
  %63 = load i8*, i8** %62, align 8, !dbg !3261
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3262
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3263
  %66 = load i8*, i8** %65, align 8, !dbg !3263
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !3264
  %68 = load i32, i32* %10, align 4, !dbg !3265
  %69 = call i32* @__errno_location() #22, !dbg !3266
  store i32 %68, i32* %69, align 4, !dbg !3267
  %70 = load i64*, i64** %7, align 8, !dbg !3268
  %71 = icmp ne i64* %70, null, !dbg !3268
  br i1 %71, label %72, label %76, !dbg !3270

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3271
  %74 = sub i64 %73, 1, !dbg !3272
  %75 = load i64*, i64** %7, align 8, !dbg !3273
  store i64 %74, i64* %75, align 8, !dbg !3274
  br label %76, !dbg !3275

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3276
  ret i8* %77, !dbg !3277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !3278 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3281
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3280
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3282, metadata !DIExpression()), !dbg !3284
  store i32 1, i32* %2, align 4, !dbg !3284
  br label %4, !dbg !3285

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3286
  %6 = load i32, i32* @nslots, align 4, !dbg !3288
  %7 = icmp slt i32 %5, %6, !dbg !3289
  br i1 %7, label %8, label %18, !dbg !3290

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3291
  %10 = load i32, i32* %2, align 4, !dbg !3292
  %11 = sext i32 %10 to i64, !dbg !3291
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3291
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3293
  %14 = load i8*, i8** %13, align 8, !dbg !3293
  call void @free(i8* noundef %14) #19, !dbg !3294
  br label %15, !dbg !3294

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3295
  %17 = add nsw i32 %16, 1, !dbg !3295
  store i32 %17, i32* %2, align 4, !dbg !3295
  br label %4, !dbg !3296, !llvm.loop !3297

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3299
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3299
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3301
  %22 = load i8*, i8** %21, align 8, !dbg !3301
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3302
  br i1 %23, label %24, label %29, !dbg !3303

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3304
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3304
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3306
  %28 = load i8*, i8** %27, align 8, !dbg !3306
  call void @free(i8* noundef %28) #19, !dbg !3307
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3308
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3309
  br label %29, !dbg !3310

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3311
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3313
  br i1 %31, label %32, label %35, !dbg !3314

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3315
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3315
  call void @free(i8* noundef %34) #19, !dbg !3317
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3318
  br label %35, !dbg !3319

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3320
  ret void, !dbg !3321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3322 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3325, metadata !DIExpression()), !dbg !3326
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3327, metadata !DIExpression()), !dbg !3328
  %5 = load i32, i32* %3, align 4, !dbg !3329
  %6 = load i8*, i8** %4, align 8, !dbg !3330
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3331
  ret i8* %7, !dbg !3332
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3333 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3340, metadata !DIExpression()), !dbg !3341
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3344, metadata !DIExpression()), !dbg !3345
  %18 = call i32* @__errno_location() #22, !dbg !3346
  %19 = load i32, i32* %18, align 4, !dbg !3346
  store i32 %19, i32* %9, align 4, !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3347, metadata !DIExpression()), !dbg !3348
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3349
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3348
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3350, metadata !DIExpression()), !dbg !3351
  store i32 2147483647, i32* %11, align 4, !dbg !3351
  %21 = load i32, i32* %5, align 4, !dbg !3352
  %22 = icmp sle i32 0, %21, !dbg !3354
  br i1 %22, label %23, label %27, !dbg !3355

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3356
  %25 = load i32, i32* %11, align 4, !dbg !3357
  %26 = icmp slt i32 %24, %25, !dbg !3358
  br i1 %26, label %28, label %27, !dbg !3359

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !3360
  unreachable, !dbg !3360

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3361
  %30 = load i32, i32* %5, align 4, !dbg !3363
  %31 = icmp sle i32 %29, %30, !dbg !3364
  br i1 %31, label %32, label %73, !dbg !3365

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3366, metadata !DIExpression()), !dbg !3368
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3369
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3370
  %35 = zext i1 %34 to i8, !dbg !3368
  store i8 %35, i8* %12, align 1, !dbg !3368
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3371, metadata !DIExpression()), !dbg !3372
  %36 = load i32, i32* @nslots, align 4, !dbg !3373
  %37 = sext i32 %36 to i64, !dbg !3373
  store i64 %37, i64* %13, align 8, !dbg !3372
  %38 = load i8, i8* %12, align 1, !dbg !3374
  %39 = trunc i8 %38 to i1, !dbg !3374
  br i1 %39, label %40, label %41, !dbg !3374

40:                                               ; preds = %32
  br label %43, !dbg !3374

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3375
  br label %43, !dbg !3374

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3374
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3374
  %46 = load i32, i32* %5, align 4, !dbg !3376
  %47 = load i32, i32* @nslots, align 4, !dbg !3377
  %48 = sub nsw i32 %46, %47, !dbg !3378
  %49 = add nsw i32 %48, 1, !dbg !3379
  %50 = sext i32 %49 to i64, !dbg !3376
  %51 = load i32, i32* %11, align 4, !dbg !3380
  %52 = sext i32 %51 to i64, !dbg !3380
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3381
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3381
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3382
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3383
  %55 = load i8, i8* %12, align 1, !dbg !3384
  %56 = trunc i8 %55 to i1, !dbg !3384
  br i1 %56, label %57, label %60, !dbg !3386

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3387
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3388
  br label %60, !dbg !3389

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3390
  %62 = load i32, i32* @nslots, align 4, !dbg !3391
  %63 = sext i32 %62 to i64, !dbg !3392
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3392
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3393
  %66 = load i64, i64* %13, align 8, !dbg !3394
  %67 = load i32, i32* @nslots, align 4, !dbg !3395
  %68 = sext i32 %67 to i64, !dbg !3395
  %69 = sub nsw i64 %66, %68, !dbg !3396
  %70 = mul i64 %69, 16, !dbg !3397
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3393
  %71 = load i64, i64* %13, align 8, !dbg !3398
  %72 = trunc i64 %71 to i32, !dbg !3398
  store i32 %72, i32* @nslots, align 4, !dbg !3399
  br label %73, !dbg !3400

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3401, metadata !DIExpression()), !dbg !3403
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3404
  %75 = load i32, i32* %5, align 4, !dbg !3405
  %76 = sext i32 %75 to i64, !dbg !3404
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3404
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3406
  %79 = load i64, i64* %78, align 8, !dbg !3406
  store i64 %79, i64* %14, align 8, !dbg !3403
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3407, metadata !DIExpression()), !dbg !3408
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3409
  %81 = load i32, i32* %5, align 4, !dbg !3410
  %82 = sext i32 %81 to i64, !dbg !3409
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3409
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3411
  %85 = load i8*, i8** %84, align 8, !dbg !3411
  store i8* %85, i8** %15, align 8, !dbg !3408
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3412, metadata !DIExpression()), !dbg !3413
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3414
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3415
  %88 = load i32, i32* %87, align 4, !dbg !3415
  %89 = or i32 %88, 1, !dbg !3416
  store i32 %89, i32* %16, align 4, !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3417, metadata !DIExpression()), !dbg !3418
  %90 = load i8*, i8** %15, align 8, !dbg !3419
  %91 = load i64, i64* %14, align 8, !dbg !3420
  %92 = load i8*, i8** %6, align 8, !dbg !3421
  %93 = load i64, i64* %7, align 8, !dbg !3422
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3423
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3424
  %96 = load i32, i32* %95, align 8, !dbg !3424
  %97 = load i32, i32* %16, align 4, !dbg !3425
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3426
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3427
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3426
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3428
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3429
  %103 = load i8*, i8** %102, align 8, !dbg !3429
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3430
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3431
  %106 = load i8*, i8** %105, align 8, !dbg !3431
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3432
  store i64 %107, i64* %17, align 8, !dbg !3418
  %108 = load i64, i64* %14, align 8, !dbg !3433
  %109 = load i64, i64* %17, align 8, !dbg !3435
  %110 = icmp ule i64 %108, %109, !dbg !3436
  br i1 %110, label %111, label %149, !dbg !3437

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3438
  %113 = add i64 %112, 1, !dbg !3440
  store i64 %113, i64* %14, align 8, !dbg !3441
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3442
  %115 = load i32, i32* %5, align 4, !dbg !3443
  %116 = sext i32 %115 to i64, !dbg !3442
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3442
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3444
  store i64 %113, i64* %118, align 8, !dbg !3445
  %119 = load i8*, i8** %15, align 8, !dbg !3446
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3448
  br i1 %120, label %121, label %123, !dbg !3449

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3450
  call void @free(i8* noundef %122) #19, !dbg !3451
  br label %123, !dbg !3451

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3452
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #27, !dbg !3453
  store i8* %125, i8** %15, align 8, !dbg !3454
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3455
  %127 = load i32, i32* %5, align 4, !dbg !3456
  %128 = sext i32 %127 to i64, !dbg !3455
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3455
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3457
  store i8* %125, i8** %130, align 8, !dbg !3458
  %131 = load i8*, i8** %15, align 8, !dbg !3459
  %132 = load i64, i64* %14, align 8, !dbg !3460
  %133 = load i8*, i8** %6, align 8, !dbg !3461
  %134 = load i64, i64* %7, align 8, !dbg !3462
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3463
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3464
  %137 = load i32, i32* %136, align 8, !dbg !3464
  %138 = load i32, i32* %16, align 4, !dbg !3465
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3466
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3467
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3466
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3468
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3469
  %144 = load i8*, i8** %143, align 8, !dbg !3469
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3470
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3471
  %147 = load i8*, i8** %146, align 8, !dbg !3471
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3472
  br label %149, !dbg !3473

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3474
  %151 = call i32* @__errno_location() #22, !dbg !3475
  store i32 %150, i32* %151, align 4, !dbg !3476
  %152 = load i8*, i8** %15, align 8, !dbg !3477
  ret i8* %152, !dbg !3478
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3479 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3484, metadata !DIExpression()), !dbg !3485
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3486, metadata !DIExpression()), !dbg !3487
  %7 = load i32, i32* %4, align 4, !dbg !3488
  %8 = load i8*, i8** %5, align 8, !dbg !3489
  %9 = load i64, i64* %6, align 8, !dbg !3490
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3491
  ret i8* %10, !dbg !3492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3493 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3494, metadata !DIExpression()), !dbg !3495
  %3 = load i8*, i8** %2, align 8, !dbg !3496
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3497
  ret i8* %4, !dbg !3498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3499 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3502, metadata !DIExpression()), !dbg !3503
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3504, metadata !DIExpression()), !dbg !3505
  %5 = load i8*, i8** %3, align 8, !dbg !3506
  %6 = load i64, i64* %4, align 8, !dbg !3507
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3508
  ret i8* %7, !dbg !3509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3510 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3513, metadata !DIExpression()), !dbg !3514
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3515, metadata !DIExpression()), !dbg !3516
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3519, metadata !DIExpression()), !dbg !3520
  %8 = load i32, i32* %5, align 4, !dbg !3521
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3522
  %9 = load i32, i32* %4, align 4, !dbg !3523
  %10 = load i8*, i8** %6, align 8, !dbg !3524
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3525
  ret i8* %11, !dbg !3526
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3527 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3532, metadata !DIExpression()), !dbg !3533
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3533
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3533
  %5 = load i32, i32* %3, align 4, !dbg !3534
  %6 = icmp eq i32 %5, 10, !dbg !3536
  br i1 %6, label %7, label %8, !dbg !3537

7:                                                ; preds = %2
  call void @abort() #20, !dbg !3538
  unreachable, !dbg !3538

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3539
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3540
  store i32 %9, i32* %10, align 8, !dbg !3541
  ret void, !dbg !3542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3543 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3548, metadata !DIExpression()), !dbg !3549
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3554, metadata !DIExpression()), !dbg !3555
  %10 = load i32, i32* %6, align 4, !dbg !3556
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3557
  %11 = load i32, i32* %5, align 4, !dbg !3558
  %12 = load i8*, i8** %7, align 8, !dbg !3559
  %13 = load i64, i64* %8, align 8, !dbg !3560
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3561
  ret i8* %14, !dbg !3562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3563 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3568, metadata !DIExpression()), !dbg !3569
  %5 = load i32, i32* %3, align 4, !dbg !3570
  %6 = load i8*, i8** %4, align 8, !dbg !3571
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3572
  ret i8* %7, !dbg !3573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3574 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3579, metadata !DIExpression()), !dbg !3580
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3581, metadata !DIExpression()), !dbg !3582
  %7 = load i32, i32* %4, align 4, !dbg !3583
  %8 = load i8*, i8** %5, align 8, !dbg !3584
  %9 = load i64, i64* %6, align 8, !dbg !3585
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3586
  ret i8* %10, !dbg !3587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3588 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3591, metadata !DIExpression()), !dbg !3592
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3597, metadata !DIExpression()), !dbg !3598
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3599
  %9 = load i8, i8* %6, align 1, !dbg !3600
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3601
  %11 = load i8*, i8** %4, align 8, !dbg !3602
  %12 = load i64, i64* %5, align 8, !dbg !3603
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3604
  ret i8* %13, !dbg !3605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3606 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3609, metadata !DIExpression()), !dbg !3610
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3611, metadata !DIExpression()), !dbg !3612
  %5 = load i8*, i8** %3, align 8, !dbg !3613
  %6 = load i8, i8* %4, align 1, !dbg !3614
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3615
  ret i8* %7, !dbg !3616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3617 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3618, metadata !DIExpression()), !dbg !3619
  %3 = load i8*, i8** %2, align 8, !dbg !3620
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3621
  ret i8* %4, !dbg !3622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3623 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3624, metadata !DIExpression()), !dbg !3625
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3626, metadata !DIExpression()), !dbg !3627
  %5 = load i8*, i8** %3, align 8, !dbg !3628
  %6 = load i64, i64* %4, align 8, !dbg !3629
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3630
  ret i8* %7, !dbg !3631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3632 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3639, metadata !DIExpression()), !dbg !3640
  %9 = load i32, i32* %5, align 4, !dbg !3641
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3642
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3642
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3642
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3643
  %13 = load i32, i32* %4, align 4, !dbg !3644
  %14 = load i8*, i8** %6, align 8, !dbg !3645
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3646
  ret i8* %15, !dbg !3647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3648 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3651, metadata !DIExpression()), !dbg !3652
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3655, metadata !DIExpression()), !dbg !3656
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3657, metadata !DIExpression()), !dbg !3658
  %9 = load i32, i32* %5, align 4, !dbg !3659
  %10 = load i8*, i8** %6, align 8, !dbg !3660
  %11 = load i8*, i8** %7, align 8, !dbg !3661
  %12 = load i8*, i8** %8, align 8, !dbg !3662
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3663
  ret i8* %13, !dbg !3664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3665 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3668, metadata !DIExpression()), !dbg !3669
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3670, metadata !DIExpression()), !dbg !3671
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3678, metadata !DIExpression()), !dbg !3679
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3680
  %13 = load i8*, i8** %7, align 8, !dbg !3681
  %14 = load i8*, i8** %8, align 8, !dbg !3682
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3683
  %15 = load i32, i32* %6, align 4, !dbg !3684
  %16 = load i8*, i8** %9, align 8, !dbg !3685
  %17 = load i64, i64* %10, align 8, !dbg !3686
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3687
  ret i8* %18, !dbg !3688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3689 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3692, metadata !DIExpression()), !dbg !3693
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3694, metadata !DIExpression()), !dbg !3695
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3696, metadata !DIExpression()), !dbg !3697
  %7 = load i8*, i8** %4, align 8, !dbg !3698
  %8 = load i8*, i8** %5, align 8, !dbg !3699
  %9 = load i8*, i8** %6, align 8, !dbg !3700
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3701
  ret i8* %10, !dbg !3702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3703 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3706, metadata !DIExpression()), !dbg !3707
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3708, metadata !DIExpression()), !dbg !3709
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3712, metadata !DIExpression()), !dbg !3713
  %9 = load i8*, i8** %5, align 8, !dbg !3714
  %10 = load i8*, i8** %6, align 8, !dbg !3715
  %11 = load i8*, i8** %7, align 8, !dbg !3716
  %12 = load i64, i64* %8, align 8, !dbg !3717
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3718
  ret i8* %13, !dbg !3719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3720 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3725, metadata !DIExpression()), !dbg !3726
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3727, metadata !DIExpression()), !dbg !3728
  %7 = load i32, i32* %4, align 4, !dbg !3729
  %8 = load i8*, i8** %5, align 8, !dbg !3730
  %9 = load i64, i64* %6, align 8, !dbg !3731
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3732
  ret i8* %10, !dbg !3733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3734 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3737, metadata !DIExpression()), !dbg !3738
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3739, metadata !DIExpression()), !dbg !3740
  %5 = load i8*, i8** %3, align 8, !dbg !3741
  %6 = load i64, i64* %4, align 8, !dbg !3742
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3743
  ret i8* %7, !dbg !3744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3745 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3748, metadata !DIExpression()), !dbg !3749
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3750, metadata !DIExpression()), !dbg !3751
  %5 = load i32, i32* %3, align 4, !dbg !3752
  %6 = load i8*, i8** %4, align 8, !dbg !3753
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3754
  ret i8* %7, !dbg !3755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3756 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3759, metadata !DIExpression()), !dbg !3760
  %3 = load i8*, i8** %2, align 8, !dbg !3761
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3762
  ret i8* %4, !dbg !3763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3764 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3767, metadata !DIExpression()), !dbg !3768
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3769, metadata !DIExpression()), !dbg !3770
  %5 = load i8*, i8** %3, align 8, !dbg !3771
  %6 = load i8*, i8** %4, align 8, !dbg !3772
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3773
  %8 = icmp ne i32 %7, 0, !dbg !3774
  %9 = xor i1 %8, true, !dbg !3774
  ret i1 %9, !dbg !3775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_safer(i32 noundef %0) #4 !dbg !3776 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3777, metadata !DIExpression()), !dbg !3778
  %5 = load i32, i32* %2, align 4, !dbg !3779
  %6 = icmp sle i32 0, %5, !dbg !3781
  br i1 %6, label %7, label %20, !dbg !3782

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !3783
  %9 = icmp sle i32 %8, 2, !dbg !3784
  br i1 %9, label %10, label %20, !dbg !3785

10:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3786, metadata !DIExpression()), !dbg !3788
  %11 = load i32, i32* %2, align 4, !dbg !3789
  %12 = call i32 @dup_safer(i32 noundef %11), !dbg !3790
  store i32 %12, i32* %3, align 4, !dbg !3788
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3791, metadata !DIExpression()), !dbg !3792
  %13 = call i32* @__errno_location() #22, !dbg !3793
  %14 = load i32, i32* %13, align 4, !dbg !3793
  store i32 %14, i32* %4, align 4, !dbg !3792
  %15 = load i32, i32* %2, align 4, !dbg !3794
  %16 = call i32 @close(i32 noundef %15), !dbg !3795
  %17 = load i32, i32* %4, align 4, !dbg !3796
  %18 = call i32* @__errno_location() #22, !dbg !3797
  store i32 %17, i32* %18, align 4, !dbg !3798
  %19 = load i32, i32* %3, align 4, !dbg !3799
  store i32 %19, i32* %2, align 4, !dbg !3800
  br label %20, !dbg !3801

20:                                               ; preds = %10, %7, %1
  %21 = load i32, i32* %2, align 4, !dbg !3802
  ret i32 %21, !dbg !3803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3804 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3841, metadata !DIExpression()), !dbg !3842
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3843, metadata !DIExpression()), !dbg !3844
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3845, metadata !DIExpression()), !dbg !3846
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3847, metadata !DIExpression()), !dbg !3848
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3849, metadata !DIExpression()), !dbg !3850
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3851, metadata !DIExpression()), !dbg !3852
  %13 = load i8*, i8** %8, align 8, !dbg !3853
  %14 = icmp ne i8* %13, null, !dbg !3853
  br i1 %14, label %15, label %21, !dbg !3855

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3856
  %17 = load i8*, i8** %8, align 8, !dbg !3857
  %18 = load i8*, i8** %9, align 8, !dbg !3858
  %19 = load i8*, i8** %10, align 8, !dbg !3859
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3860
  br label %26, !dbg !3860

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3861
  %23 = load i8*, i8** %9, align 8, !dbg !3862
  %24 = load i8*, i8** %10, align 8, !dbg !3863
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.157, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3864
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3865
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.159, i64 0, i64 0)) #19, !dbg !3866
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3867
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3868
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.160, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3868
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3869
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.161, i64 0, i64 0)) #19, !dbg !3870
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.162, i64 0, i64 0)), !dbg !3871
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3872
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.160, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3872
  %37 = load i64, i64* %12, align 8, !dbg !3873
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
  ], !dbg !3874

38:                                               ; preds = %26
  br label %241, !dbg !3875

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3877
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.163, i64 0, i64 0)) #19, !dbg !3878
  %42 = load i8**, i8*** %11, align 8, !dbg !3879
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3879
  %44 = load i8*, i8** %43, align 8, !dbg !3879
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3880
  br label %241, !dbg !3881

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3882
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.164, i64 0, i64 0)) #19, !dbg !3883
  %49 = load i8**, i8*** %11, align 8, !dbg !3884
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3884
  %51 = load i8*, i8** %50, align 8, !dbg !3884
  %52 = load i8**, i8*** %11, align 8, !dbg !3885
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3885
  %54 = load i8*, i8** %53, align 8, !dbg !3885
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3886
  br label %241, !dbg !3887

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3888
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.165, i64 0, i64 0)) #19, !dbg !3889
  %59 = load i8**, i8*** %11, align 8, !dbg !3890
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3890
  %61 = load i8*, i8** %60, align 8, !dbg !3890
  %62 = load i8**, i8*** %11, align 8, !dbg !3891
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3891
  %64 = load i8*, i8** %63, align 8, !dbg !3891
  %65 = load i8**, i8*** %11, align 8, !dbg !3892
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3892
  %67 = load i8*, i8** %66, align 8, !dbg !3892
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3893
  br label %241, !dbg !3894

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3895
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.166, i64 0, i64 0)) #19, !dbg !3896
  %72 = load i8**, i8*** %11, align 8, !dbg !3897
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3897
  %74 = load i8*, i8** %73, align 8, !dbg !3897
  %75 = load i8**, i8*** %11, align 8, !dbg !3898
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3898
  %77 = load i8*, i8** %76, align 8, !dbg !3898
  %78 = load i8**, i8*** %11, align 8, !dbg !3899
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3899
  %80 = load i8*, i8** %79, align 8, !dbg !3899
  %81 = load i8**, i8*** %11, align 8, !dbg !3900
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3900
  %83 = load i8*, i8** %82, align 8, !dbg !3900
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3901
  br label %241, !dbg !3902

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3903
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.167, i64 0, i64 0)) #19, !dbg !3904
  %88 = load i8**, i8*** %11, align 8, !dbg !3905
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3905
  %90 = load i8*, i8** %89, align 8, !dbg !3905
  %91 = load i8**, i8*** %11, align 8, !dbg !3906
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3906
  %93 = load i8*, i8** %92, align 8, !dbg !3906
  %94 = load i8**, i8*** %11, align 8, !dbg !3907
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3907
  %96 = load i8*, i8** %95, align 8, !dbg !3907
  %97 = load i8**, i8*** %11, align 8, !dbg !3908
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3908
  %99 = load i8*, i8** %98, align 8, !dbg !3908
  %100 = load i8**, i8*** %11, align 8, !dbg !3909
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3909
  %102 = load i8*, i8** %101, align 8, !dbg !3909
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3910
  br label %241, !dbg !3911

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3912
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.168, i64 0, i64 0)) #19, !dbg !3913
  %107 = load i8**, i8*** %11, align 8, !dbg !3914
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3914
  %109 = load i8*, i8** %108, align 8, !dbg !3914
  %110 = load i8**, i8*** %11, align 8, !dbg !3915
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3915
  %112 = load i8*, i8** %111, align 8, !dbg !3915
  %113 = load i8**, i8*** %11, align 8, !dbg !3916
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3916
  %115 = load i8*, i8** %114, align 8, !dbg !3916
  %116 = load i8**, i8*** %11, align 8, !dbg !3917
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3917
  %118 = load i8*, i8** %117, align 8, !dbg !3917
  %119 = load i8**, i8*** %11, align 8, !dbg !3918
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3918
  %121 = load i8*, i8** %120, align 8, !dbg !3918
  %122 = load i8**, i8*** %11, align 8, !dbg !3919
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3919
  %124 = load i8*, i8** %123, align 8, !dbg !3919
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3920
  br label %241, !dbg !3921

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3922
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.169, i64 0, i64 0)) #19, !dbg !3923
  %129 = load i8**, i8*** %11, align 8, !dbg !3924
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3924
  %131 = load i8*, i8** %130, align 8, !dbg !3924
  %132 = load i8**, i8*** %11, align 8, !dbg !3925
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3925
  %134 = load i8*, i8** %133, align 8, !dbg !3925
  %135 = load i8**, i8*** %11, align 8, !dbg !3926
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3926
  %137 = load i8*, i8** %136, align 8, !dbg !3926
  %138 = load i8**, i8*** %11, align 8, !dbg !3927
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3927
  %140 = load i8*, i8** %139, align 8, !dbg !3927
  %141 = load i8**, i8*** %11, align 8, !dbg !3928
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3928
  %143 = load i8*, i8** %142, align 8, !dbg !3928
  %144 = load i8**, i8*** %11, align 8, !dbg !3929
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3929
  %146 = load i8*, i8** %145, align 8, !dbg !3929
  %147 = load i8**, i8*** %11, align 8, !dbg !3930
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3930
  %149 = load i8*, i8** %148, align 8, !dbg !3930
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3931
  br label %241, !dbg !3932

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3933
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.170, i64 0, i64 0)) #19, !dbg !3934
  %154 = load i8**, i8*** %11, align 8, !dbg !3935
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3935
  %156 = load i8*, i8** %155, align 8, !dbg !3935
  %157 = load i8**, i8*** %11, align 8, !dbg !3936
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3936
  %159 = load i8*, i8** %158, align 8, !dbg !3936
  %160 = load i8**, i8*** %11, align 8, !dbg !3937
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3937
  %162 = load i8*, i8** %161, align 8, !dbg !3937
  %163 = load i8**, i8*** %11, align 8, !dbg !3938
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3938
  %165 = load i8*, i8** %164, align 8, !dbg !3938
  %166 = load i8**, i8*** %11, align 8, !dbg !3939
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3939
  %168 = load i8*, i8** %167, align 8, !dbg !3939
  %169 = load i8**, i8*** %11, align 8, !dbg !3940
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3940
  %171 = load i8*, i8** %170, align 8, !dbg !3940
  %172 = load i8**, i8*** %11, align 8, !dbg !3941
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3941
  %174 = load i8*, i8** %173, align 8, !dbg !3941
  %175 = load i8**, i8*** %11, align 8, !dbg !3942
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3942
  %177 = load i8*, i8** %176, align 8, !dbg !3942
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3943
  br label %241, !dbg !3944

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3945
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.171, i64 0, i64 0)) #19, !dbg !3946
  %182 = load i8**, i8*** %11, align 8, !dbg !3947
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3947
  %184 = load i8*, i8** %183, align 8, !dbg !3947
  %185 = load i8**, i8*** %11, align 8, !dbg !3948
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3948
  %187 = load i8*, i8** %186, align 8, !dbg !3948
  %188 = load i8**, i8*** %11, align 8, !dbg !3949
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3949
  %190 = load i8*, i8** %189, align 8, !dbg !3949
  %191 = load i8**, i8*** %11, align 8, !dbg !3950
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3950
  %193 = load i8*, i8** %192, align 8, !dbg !3950
  %194 = load i8**, i8*** %11, align 8, !dbg !3951
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3951
  %196 = load i8*, i8** %195, align 8, !dbg !3951
  %197 = load i8**, i8*** %11, align 8, !dbg !3952
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3952
  %199 = load i8*, i8** %198, align 8, !dbg !3952
  %200 = load i8**, i8*** %11, align 8, !dbg !3953
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3953
  %202 = load i8*, i8** %201, align 8, !dbg !3953
  %203 = load i8**, i8*** %11, align 8, !dbg !3954
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3954
  %205 = load i8*, i8** %204, align 8, !dbg !3954
  %206 = load i8**, i8*** %11, align 8, !dbg !3955
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3955
  %208 = load i8*, i8** %207, align 8, !dbg !3955
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3956
  br label %241, !dbg !3957

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3958
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.172, i64 0, i64 0)) #19, !dbg !3959
  %213 = load i8**, i8*** %11, align 8, !dbg !3960
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3960
  %215 = load i8*, i8** %214, align 8, !dbg !3960
  %216 = load i8**, i8*** %11, align 8, !dbg !3961
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3961
  %218 = load i8*, i8** %217, align 8, !dbg !3961
  %219 = load i8**, i8*** %11, align 8, !dbg !3962
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3962
  %221 = load i8*, i8** %220, align 8, !dbg !3962
  %222 = load i8**, i8*** %11, align 8, !dbg !3963
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3963
  %224 = load i8*, i8** %223, align 8, !dbg !3963
  %225 = load i8**, i8*** %11, align 8, !dbg !3964
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3964
  %227 = load i8*, i8** %226, align 8, !dbg !3964
  %228 = load i8**, i8*** %11, align 8, !dbg !3965
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3965
  %230 = load i8*, i8** %229, align 8, !dbg !3965
  %231 = load i8**, i8*** %11, align 8, !dbg !3966
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3966
  %233 = load i8*, i8** %232, align 8, !dbg !3966
  %234 = load i8**, i8*** %11, align 8, !dbg !3967
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3967
  %236 = load i8*, i8** %235, align 8, !dbg !3967
  %237 = load i8**, i8*** %11, align 8, !dbg !3968
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3968
  %239 = load i8*, i8** %238, align 8, !dbg !3968
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3969
  br label %241, !dbg !3970

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3971
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3972 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3977, metadata !DIExpression()), !dbg !3978
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3979, metadata !DIExpression()), !dbg !3980
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3981, metadata !DIExpression()), !dbg !3982
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3985, metadata !DIExpression()), !dbg !3986
  store i64 0, i64* %11, align 8, !dbg !3987
  br label %12, !dbg !3989

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3990
  %14 = load i64, i64* %11, align 8, !dbg !3992
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3990
  %16 = load i8*, i8** %15, align 8, !dbg !3990
  %17 = icmp ne i8* %16, null, !dbg !3993
  br i1 %17, label %18, label %22, !dbg !3993

18:                                               ; preds = %12
  br label %19, !dbg !3993

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3994
  %21 = add i64 %20, 1, !dbg !3994
  store i64 %21, i64* %11, align 8, !dbg !3994
  br label %12, !dbg !3995, !llvm.loop !3996

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3998
  %24 = load i8*, i8** %7, align 8, !dbg !3999
  %25 = load i8*, i8** %8, align 8, !dbg !4000
  %26 = load i8*, i8** %9, align 8, !dbg !4001
  %27 = load i8**, i8*** %10, align 8, !dbg !4002
  %28 = load i64, i64* %11, align 8, !dbg !4003
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4004
  ret void, !dbg !4005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4006 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4022, metadata !DIExpression()), !dbg !4023
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4024, metadata !DIExpression()), !dbg !4025
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4032, metadata !DIExpression()), !dbg !4034
  store i64 0, i64* %10, align 8, !dbg !4035
  br label %12, !dbg !4037

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4038
  %14 = icmp ult i64 %13, 10, !dbg !4040
  br i1 %14, label %15, label %38, !dbg !4041

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4042
  %17 = load i32, i32* %16, align 8, !dbg !4042
  %18 = icmp sge i32 %17, 0, !dbg !4042
  br i1 %18, label %27, label %19, !dbg !4042

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4042
  store i32 %20, i32* %16, align 8, !dbg !4042
  %21 = icmp sle i32 %20, 0, !dbg !4042
  br i1 %21, label %22, label %27, !dbg !4042

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4042
  %24 = load i8*, i8** %23, align 8, !dbg !4042
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4042
  %26 = bitcast i8* %25 to i8**, !dbg !4042
  br label %32, !dbg !4042

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4042
  %29 = load i8*, i8** %28, align 8, !dbg !4042
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4042
  store i8* %30, i8** %28, align 8, !dbg !4042
  %31 = bitcast i8* %29 to i8**, !dbg !4042
  br label %32, !dbg !4042

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4042
  %34 = load i8*, i8** %33, align 8, !dbg !4042
  %35 = load i64, i64* %10, align 8, !dbg !4043
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4044
  store i8* %34, i8** %36, align 8, !dbg !4045
  %37 = icmp ne i8* %34, null, !dbg !4046
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4047
  br i1 %39, label %40, label %44, !dbg !4048

40:                                               ; preds = %38
  br label %41, !dbg !4048

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4049
  %43 = add i64 %42, 1, !dbg !4049
  store i64 %43, i64* %10, align 8, !dbg !4049
  br label %12, !dbg !4050, !llvm.loop !4051

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4053
  %46 = load i8*, i8** %7, align 8, !dbg !4054
  %47 = load i8*, i8** %8, align 8, !dbg !4055
  %48 = load i8*, i8** %9, align 8, !dbg !4056
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4057
  %50 = load i64, i64* %10, align 8, !dbg !4058
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4059
  ret void, !dbg !4060
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4061 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4072, metadata !DIExpression()), !dbg !4073
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4074
  call void @llvm.va_start(i8* %11), !dbg !4074
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4075
  %13 = load i8*, i8** %6, align 8, !dbg !4076
  %14 = load i8*, i8** %7, align 8, !dbg !4077
  %15 = load i8*, i8** %8, align 8, !dbg !4078
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4079
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4079
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4079
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4080
  call void @llvm.va_end(i8* %18), !dbg !4080
  ret void, !dbg !4081
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4082 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4083
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.160, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4083
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.177, i64 0, i64 0)) #19, !dbg !4084
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.178, i64 0, i64 0)), !dbg !4085
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.179, i64 0, i64 0)) #19, !dbg !4086
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.180, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.181, i64 0, i64 0)), !dbg !4087
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.182, i64 0, i64 0)) #19, !dbg !4088
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.183, i64 0, i64 0)), !dbg !4089
  ret void, !dbg !4090
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !4091 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4095, metadata !DIExpression()), !dbg !4096
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4097, metadata !DIExpression()), !dbg !4098
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4099, metadata !DIExpression()), !dbg !4100
  %7 = load i8*, i8** %4, align 8, !dbg !4101
  %8 = load i64, i64* %5, align 8, !dbg !4102
  %9 = load i64, i64* %6, align 8, !dbg !4103
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #28, !dbg !4104
  ret i8* %10, !dbg !4105
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !4106 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4107, metadata !DIExpression()), !dbg !4108
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4109, metadata !DIExpression()), !dbg !4110
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4111, metadata !DIExpression()), !dbg !4112
  %7 = load i8*, i8** %4, align 8, !dbg !4113
  %8 = load i64, i64* %5, align 8, !dbg !4114
  %9 = load i64, i64* %6, align 8, !dbg !4115
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4116
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4117
  ret i8* %11, !dbg !4118
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4119 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4122, metadata !DIExpression()), !dbg !4123
  %3 = load i8*, i8** %2, align 8, !dbg !4124
  %4 = icmp ne i8* %3, null, !dbg !4124
  br i1 %4, label %6, label %5, !dbg !4126

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !4127
  unreachable, !dbg !4127

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4128
  ret i8* %7, !dbg !4129
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #16 !dbg !4130 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4133, metadata !DIExpression()), !dbg !4134
  %3 = load i64, i64* %2, align 8, !dbg !4135
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !4136
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4137
  ret i8* %5, !dbg !4138
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #16 !dbg !4139 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4142, metadata !DIExpression()), !dbg !4143
  %3 = load i64, i64* %2, align 8, !dbg !4144
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4145
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4146
  ret i8* %5, !dbg !4147
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #16 !dbg !4148 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4151, metadata !DIExpression()), !dbg !4152
  %3 = load i64, i64* %2, align 8, !dbg !4153
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #27, !dbg !4153
  ret i8* %4, !dbg !4154
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #17 !dbg !4155 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4158, metadata !DIExpression()), !dbg !4159
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4160, metadata !DIExpression()), !dbg !4161
  %5 = load i8*, i8** %3, align 8, !dbg !4162
  %6 = load i64, i64* %4, align 8, !dbg !4163
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4164
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4165
  ret i8* %8, !dbg !4166
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #17 !dbg !4167 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4170, metadata !DIExpression()), !dbg !4171
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4172, metadata !DIExpression()), !dbg !4173
  %5 = load i8*, i8** %3, align 8, !dbg !4174
  %6 = load i64, i64* %4, align 8, !dbg !4175
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4176
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4177
  ret i8* %8, !dbg !4178
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 !dbg !4179 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4182, metadata !DIExpression()), !dbg !4183
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4184, metadata !DIExpression()), !dbg !4185
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4186, metadata !DIExpression()), !dbg !4187
  %7 = load i8*, i8** %4, align 8, !dbg !4188
  %8 = load i64, i64* %5, align 8, !dbg !4189
  %9 = load i64, i64* %6, align 8, !dbg !4190
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4191
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4192
  ret i8* %11, !dbg !4193
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4194 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4197, metadata !DIExpression()), !dbg !4198
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4199, metadata !DIExpression()), !dbg !4200
  %5 = load i64, i64* %3, align 8, !dbg !4201
  %6 = load i64, i64* %4, align 8, !dbg !4202
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #28, !dbg !4203
  ret i8* %7, !dbg !4204
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4205 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4208, metadata !DIExpression()), !dbg !4209
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4210, metadata !DIExpression()), !dbg !4211
  %5 = load i64, i64* %3, align 8, !dbg !4212
  %6 = load i64, i64* %4, align 8, !dbg !4213
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #28, !dbg !4214
  ret i8* %7, !dbg !4215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4216 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4219, metadata !DIExpression()), !dbg !4220
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4221, metadata !DIExpression()), !dbg !4222
  %5 = load i8*, i8** %3, align 8, !dbg !4223
  %6 = load i64*, i64** %4, align 8, !dbg !4224
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4225
  ret i8* %7, !dbg !4226
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !307 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4227, metadata !DIExpression()), !dbg !4228
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4231, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4233, metadata !DIExpression()), !dbg !4234
  %8 = load i64*, i64** %5, align 8, !dbg !4235
  %9 = load i64, i64* %8, align 8, !dbg !4236
  store i64 %9, i64* %7, align 8, !dbg !4234
  %10 = load i8*, i8** %4, align 8, !dbg !4237
  %11 = icmp ne i8* %10, null, !dbg !4237
  br i1 %11, label %26, label %12, !dbg !4239

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4240
  %14 = icmp ne i64 %13, 0, !dbg !4240
  br i1 %14, label %25, label %15, !dbg !4243

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4244
  %17 = udiv i64 128, %16, !dbg !4246
  store i64 %17, i64* %7, align 8, !dbg !4247
  %18 = load i64, i64* %7, align 8, !dbg !4248
  %19 = icmp ne i64 %18, 0, !dbg !4249
  %20 = xor i1 %19, true, !dbg !4249
  %21 = zext i1 %20 to i32, !dbg !4249
  %22 = sext i32 %21 to i64, !dbg !4249
  %23 = load i64, i64* %7, align 8, !dbg !4250
  %24 = add i64 %23, %22, !dbg !4250
  store i64 %24, i64* %7, align 8, !dbg !4250
  br label %25, !dbg !4251

25:                                               ; preds = %15, %12
  br label %36, !dbg !4252

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4253
  %28 = load i64, i64* %7, align 8, !dbg !4253
  %29 = lshr i64 %28, 1, !dbg !4253
  %30 = add i64 %29, 1, !dbg !4253
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4253
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4253
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4253
  store i64 %33, i64* %7, align 8, !dbg !4253
  br i1 %32, label %34, label %35, !dbg !4256

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !4257
  unreachable, !dbg !4257

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4258
  %38 = load i64, i64* %7, align 8, !dbg !4259
  %39 = load i64, i64* %6, align 8, !dbg !4260
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #28, !dbg !4261
  store i8* %40, i8** %4, align 8, !dbg !4262
  %41 = load i64, i64* %7, align 8, !dbg !4263
  %42 = load i64*, i64** %5, align 8, !dbg !4264
  store i64 %41, i64* %42, align 8, !dbg !4265
  %43 = load i8*, i8** %4, align 8, !dbg !4266
  ret i8* %43, !dbg !4267
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !314 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4268, metadata !DIExpression()), !dbg !4269
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4270, metadata !DIExpression()), !dbg !4271
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4278, metadata !DIExpression()), !dbg !4279
  %15 = load i64*, i64** %7, align 8, !dbg !4280
  %16 = load i64, i64* %15, align 8, !dbg !4281
  store i64 %16, i64* %11, align 8, !dbg !4279
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4282, metadata !DIExpression()), !dbg !4283
  %17 = load i64, i64* %11, align 8, !dbg !4284
  %18 = load i64, i64* %11, align 8, !dbg !4284
  %19 = ashr i64 %18, 1, !dbg !4284
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4284
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4284
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4284
  store i64 %22, i64* %12, align 8, !dbg !4284
  br i1 %21, label %23, label %24, !dbg !4286

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4287
  br label %24, !dbg !4288

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4289
  %26 = icmp sle i64 0, %25, !dbg !4291
  br i1 %26, label %27, label %33, !dbg !4292

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4293
  %29 = load i64, i64* %12, align 8, !dbg !4294
  %30 = icmp slt i64 %28, %29, !dbg !4295
  br i1 %30, label %31, label %33, !dbg !4296

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4297
  store i64 %32, i64* %12, align 8, !dbg !4298
  br label %33, !dbg !4299

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4302, metadata !DIExpression()), !dbg !4303
  %34 = load i64, i64* %10, align 8, !dbg !4304
  %35 = icmp slt i64 %34, 0, !dbg !4304
  br i1 %35, label %36, label %82, !dbg !4304

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4304
  %38 = icmp slt i64 %37, 0, !dbg !4304
  br i1 %38, label %39, label %62, !dbg !4304

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4304

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4304
  %42 = load i64, i64* %10, align 8, !dbg !4304
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4304
  %44 = icmp slt i64 %41, %43, !dbg !4304
  br i1 %44, label %111, label %115, !dbg !4304

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4304

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4304
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4304
  br i1 %48, label %52, label %53, !dbg !4304

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4304
  %51 = icmp slt i64 0, %50, !dbg !4304
  br i1 %51, label %52, label %53, !dbg !4304

52:                                               ; preds = %49, %46
  br label %57, !dbg !4304

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4304
  %55 = sub nsw i64 0, %54, !dbg !4304
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4304
  br label %57, !dbg !4304

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4304
  %59 = load i64, i64* %12, align 8, !dbg !4304
  %60 = sub nsw i64 -1, %59, !dbg !4304
  %61 = icmp sle i64 %58, %60, !dbg !4304
  br i1 %61, label %111, label %115, !dbg !4304

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4304
  %64 = icmp eq i64 %63, -1, !dbg !4304
  br i1 %64, label %65, label %77, !dbg !4304

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4304

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4304
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4304
  %69 = icmp slt i64 0, %68, !dbg !4304
  br i1 %69, label %111, label %115, !dbg !4304

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4304
  %72 = icmp slt i64 0, %71, !dbg !4304
  br i1 %72, label %73, label %115, !dbg !4304

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4304
  %75 = sub nsw i64 %74, 1, !dbg !4304
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4304
  br i1 %76, label %111, label %115, !dbg !4304

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4304
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4304
  %80 = load i64, i64* %12, align 8, !dbg !4304
  %81 = icmp slt i64 %79, %80, !dbg !4304
  br i1 %81, label %111, label %115, !dbg !4304

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4304
  %84 = icmp eq i64 %83, 0, !dbg !4304
  br i1 %84, label %85, label %86, !dbg !4304

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4304

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4304
  %88 = icmp slt i64 %87, 0, !dbg !4304
  br i1 %88, label %89, label %106, !dbg !4304

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4304
  %91 = icmp eq i64 %90, -1, !dbg !4304
  br i1 %91, label %92, label %101, !dbg !4304

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4304

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4304
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4304
  %96 = icmp slt i64 0, %95, !dbg !4304
  br i1 %96, label %111, label %115, !dbg !4304

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4304
  %99 = sub nsw i64 %98, 1, !dbg !4304
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4304
  br i1 %100, label %111, label %115, !dbg !4304

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4304
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4304
  %104 = load i64, i64* %10, align 8, !dbg !4304
  %105 = icmp slt i64 %103, %104, !dbg !4304
  br i1 %105, label %111, label %115, !dbg !4304

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4304
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4304
  %109 = load i64, i64* %12, align 8, !dbg !4304
  %110 = icmp slt i64 %108, %109, !dbg !4304
  br i1 %110, label %111, label %115, !dbg !4304

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4304
  %113 = load i64, i64* %10, align 8, !dbg !4304
  %114 = mul i64 %112, %113, !dbg !4304
  store i64 %114, i64* %13, align 8, !dbg !4304
  br label %119, !dbg !4304

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4304
  %117 = load i64, i64* %10, align 8, !dbg !4304
  %118 = mul i64 %116, %117, !dbg !4304
  store i64 %118, i64* %13, align 8, !dbg !4304
  br label %119, !dbg !4304

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4304
  %121 = icmp ne i32 %120, 0, !dbg !4304
  br i1 %121, label %122, label %123, !dbg !4304

122:                                              ; preds = %119
  br label %129, !dbg !4304

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4305
  %125 = icmp slt i64 %124, 128, !dbg !4306
  %126 = zext i1 %125 to i64, !dbg !4305
  %127 = select i1 %125, i32 128, i32 0, !dbg !4305
  %128 = sext i32 %127 to i64, !dbg !4305
  br label %129, !dbg !4304

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4304
  store i64 %130, i64* %14, align 8, !dbg !4303
  %131 = load i64, i64* %14, align 8, !dbg !4307
  %132 = icmp ne i64 %131, 0, !dbg !4307
  br i1 %132, label %133, label %142, !dbg !4309

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4310
  %135 = load i64, i64* %10, align 8, !dbg !4312
  %136 = sdiv i64 %134, %135, !dbg !4313
  store i64 %136, i64* %12, align 8, !dbg !4314
  %137 = load i64, i64* %14, align 8, !dbg !4315
  %138 = load i64, i64* %14, align 8, !dbg !4316
  %139 = load i64, i64* %10, align 8, !dbg !4317
  %140 = srem i64 %138, %139, !dbg !4318
  %141 = sub nsw i64 %137, %140, !dbg !4319
  store i64 %141, i64* %13, align 8, !dbg !4320
  br label %142, !dbg !4321

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4322
  %144 = icmp ne i8* %143, null, !dbg !4322
  br i1 %144, label %147, label %145, !dbg !4324

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4325
  store i64 0, i64* %146, align 8, !dbg !4326
  br label %147, !dbg !4327

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4328
  %149 = load i64, i64* %11, align 8, !dbg !4330
  %150 = sub nsw i64 %148, %149, !dbg !4331
  %151 = load i64, i64* %8, align 8, !dbg !4332
  %152 = icmp slt i64 %150, %151, !dbg !4333
  br i1 %152, label %153, label %256, !dbg !4334

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4335
  %155 = load i64, i64* %8, align 8, !dbg !4335
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4335
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4335
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4335
  store i64 %158, i64* %12, align 8, !dbg !4335
  br i1 %157, label %255, label %159, !dbg !4336

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4337
  %161 = icmp sle i64 0, %160, !dbg !4338
  br i1 %161, label %162, label %166, !dbg !4339

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4340
  %164 = load i64, i64* %12, align 8, !dbg !4341
  %165 = icmp slt i64 %163, %164, !dbg !4342
  br i1 %165, label %255, label %166, !dbg !4343

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4344
  %168 = icmp slt i64 %167, 0, !dbg !4344
  br i1 %168, label %169, label %215, !dbg !4344

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4344
  %171 = icmp slt i64 %170, 0, !dbg !4344
  br i1 %171, label %172, label %195, !dbg !4344

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4344

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4344
  %175 = load i64, i64* %10, align 8, !dbg !4344
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4344
  %177 = icmp slt i64 %174, %176, !dbg !4344
  br i1 %177, label %244, label %248, !dbg !4344

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4344

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4344
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4344
  br i1 %181, label %185, label %186, !dbg !4344

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4344
  %184 = icmp slt i64 0, %183, !dbg !4344
  br i1 %184, label %185, label %186, !dbg !4344

185:                                              ; preds = %182, %179
  br label %190, !dbg !4344

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4344
  %188 = sub nsw i64 0, %187, !dbg !4344
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4344
  br label %190, !dbg !4344

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4344
  %192 = load i64, i64* %12, align 8, !dbg !4344
  %193 = sub nsw i64 -1, %192, !dbg !4344
  %194 = icmp sle i64 %191, %193, !dbg !4344
  br i1 %194, label %244, label %248, !dbg !4344

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4344
  %197 = icmp eq i64 %196, -1, !dbg !4344
  br i1 %197, label %198, label %210, !dbg !4344

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4344

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4344
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4344
  %202 = icmp slt i64 0, %201, !dbg !4344
  br i1 %202, label %244, label %248, !dbg !4344

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4344
  %205 = icmp slt i64 0, %204, !dbg !4344
  br i1 %205, label %206, label %248, !dbg !4344

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4344
  %208 = sub nsw i64 %207, 1, !dbg !4344
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4344
  br i1 %209, label %244, label %248, !dbg !4344

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4344
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4344
  %213 = load i64, i64* %12, align 8, !dbg !4344
  %214 = icmp slt i64 %212, %213, !dbg !4344
  br i1 %214, label %244, label %248, !dbg !4344

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4344
  %217 = icmp eq i64 %216, 0, !dbg !4344
  br i1 %217, label %218, label %219, !dbg !4344

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4344

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4344
  %221 = icmp slt i64 %220, 0, !dbg !4344
  br i1 %221, label %222, label %239, !dbg !4344

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4344
  %224 = icmp eq i64 %223, -1, !dbg !4344
  br i1 %224, label %225, label %234, !dbg !4344

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4344

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4344
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4344
  %229 = icmp slt i64 0, %228, !dbg !4344
  br i1 %229, label %244, label %248, !dbg !4344

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4344
  %232 = sub nsw i64 %231, 1, !dbg !4344
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4344
  br i1 %233, label %244, label %248, !dbg !4344

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4344
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4344
  %237 = load i64, i64* %10, align 8, !dbg !4344
  %238 = icmp slt i64 %236, %237, !dbg !4344
  br i1 %238, label %244, label %248, !dbg !4344

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4344
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4344
  %242 = load i64, i64* %12, align 8, !dbg !4344
  %243 = icmp slt i64 %241, %242, !dbg !4344
  br i1 %243, label %244, label %248, !dbg !4344

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4344
  %246 = load i64, i64* %10, align 8, !dbg !4344
  %247 = mul i64 %245, %246, !dbg !4344
  store i64 %247, i64* %13, align 8, !dbg !4344
  br label %252, !dbg !4344

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4344
  %250 = load i64, i64* %10, align 8, !dbg !4344
  %251 = mul i64 %249, %250, !dbg !4344
  store i64 %251, i64* %13, align 8, !dbg !4344
  br label %252, !dbg !4344

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4344
  %254 = icmp ne i32 %253, 0, !dbg !4344
  br i1 %254, label %255, label %256, !dbg !4345

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !4346
  unreachable, !dbg !4346

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4347
  %258 = load i64, i64* %13, align 8, !dbg !4348
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #26, !dbg !4349
  store i8* %259, i8** %6, align 8, !dbg !4350
  %260 = load i64, i64* %12, align 8, !dbg !4351
  %261 = load i64*, i64** %7, align 8, !dbg !4352
  store i64 %260, i64* %261, align 8, !dbg !4353
  %262 = load i8*, i8** %6, align 8, !dbg !4354
  ret i8* %262, !dbg !4355
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #16 !dbg !4356 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4357, metadata !DIExpression()), !dbg !4358
  %3 = load i64, i64* %2, align 8, !dbg !4359
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4360
  ret i8* %4, !dbg !4361
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4362 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4363, metadata !DIExpression()), !dbg !4364
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4365, metadata !DIExpression()), !dbg !4366
  %5 = load i64, i64* %3, align 8, !dbg !4367
  %6 = load i64, i64* %4, align 8, !dbg !4368
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !4369
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4370
  ret i8* %8, !dbg !4371
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #16 !dbg !4372 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4373, metadata !DIExpression()), !dbg !4374
  %3 = load i64, i64* %2, align 8, !dbg !4375
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4376
  ret i8* %4, !dbg !4377
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4378 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4381, metadata !DIExpression()), !dbg !4382
  %5 = load i64, i64* %3, align 8, !dbg !4383
  %6 = load i64, i64* %4, align 8, !dbg !4384
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4385
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4386
  ret i8* %8, !dbg !4387
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #17 !dbg !4388 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4393, metadata !DIExpression()), !dbg !4394
  %5 = load i64, i64* %4, align 8, !dbg !4395
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #27, !dbg !4396
  %7 = load i8*, i8** %3, align 8, !dbg !4397
  %8 = load i64, i64* %4, align 8, !dbg !4398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4399
  ret i8* %6, !dbg !4400
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #17 !dbg !4401 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4406, metadata !DIExpression()), !dbg !4407
  %5 = load i64, i64* %4, align 8, !dbg !4408
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #27, !dbg !4409
  %7 = load i8*, i8** %3, align 8, !dbg !4410
  %8 = load i64, i64* %4, align 8, !dbg !4411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4412
  ret i8* %6, !dbg !4413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4414 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4417, metadata !DIExpression()), !dbg !4418
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4419, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4421, metadata !DIExpression()), !dbg !4422
  %6 = load i64, i64* %4, align 8, !dbg !4423
  %7 = add nsw i64 %6, 1, !dbg !4424
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #27, !dbg !4425
  store i8* %8, i8** %5, align 8, !dbg !4422
  %9 = load i8*, i8** %5, align 8, !dbg !4426
  %10 = load i64, i64* %4, align 8, !dbg !4427
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4426
  store i8 0, i8* %11, align 1, !dbg !4428
  %12 = load i8*, i8** %5, align 8, !dbg !4429
  %13 = load i8*, i8** %3, align 8, !dbg !4430
  %14 = load i64, i64* %4, align 8, !dbg !4431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4432
  ret i8* %12, !dbg !4433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4434 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4435, metadata !DIExpression()), !dbg !4436
  %3 = load i8*, i8** %2, align 8, !dbg !4437
  %4 = load i8*, i8** %2, align 8, !dbg !4438
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !4439
  %6 = add i64 %5, 1, !dbg !4440
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #26, !dbg !4441
  ret i8* %7, !dbg !4442
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4443 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4444, metadata !DIExpression()), !dbg !4446
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4446
  store i32 %2, i32* %1, align 4, !dbg !4446
  %3 = load i32, i32* %1, align 4, !dbg !4446
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.196, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.197, i64 0, i64 0)) #19, !dbg !4446
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i64 0, i64 0), i8* noundef %4), !dbg !4446
  %5 = load i32, i32* %1, align 4, !dbg !4446
  %6 = icmp ne i32 %5, 0, !dbg !4446
  br i1 %6, label %7, label %9, !dbg !4446

7:                                                ; preds = %0
  unreachable, !dbg !4446

8:                                                ; No predecessors!
  br label %10, !dbg !4446

9:                                                ; preds = %0
  br label %10, !dbg !4446

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !4447
  unreachable, !dbg !4447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xset_binary_mode_error() #4 !dbg !4448 {
  ret void, !dbg !4450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xset_binary_mode(i32 noundef %0, i32 noundef %1) #4 !dbg !4451 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4454, metadata !DIExpression()), !dbg !4455
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4456, metadata !DIExpression()), !dbg !4457
  %5 = load i32, i32* %3, align 4, !dbg !4458
  %6 = load i32, i32* %4, align 4, !dbg !4460
  %7 = call i32 @set_binary_mode(i32 noundef %5, i32 noundef %6), !dbg !4461
  %8 = icmp slt i32 %7, 0, !dbg !4462
  br i1 %8, label %9, label %10, !dbg !4463

9:                                                ; preds = %2
  call void @xset_binary_mode_error(), !dbg !4464
  br label %10, !dbg !4464

10:                                               ; preds = %9, %2
  ret void, !dbg !4465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gl_set_fd_mode(i32 noundef %0, i32 noundef %1) #4 !dbg !4466 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4470, metadata !DIExpression()), !dbg !4471
  ret i32 0, !dbg !4472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_binary_mode(i32 noundef %0, i32 noundef %1) #4 !dbg !4473 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4474, metadata !DIExpression()), !dbg !4475
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4476, metadata !DIExpression()), !dbg !4477
  %5 = load i32, i32* %3, align 4, !dbg !4478
  %6 = load i32, i32* %4, align 4, !dbg !4479
  %7 = call i32 @_gl_set_fd_mode(i32 noundef %5, i32 noundef %6), !dbg !4480
  ret i32 %7, !dbg !4481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4482 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4488, metadata !DIExpression()), !dbg !4489
  %3 = load i32, i32* %2, align 4, !dbg !4490
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !4491
  ret i32 %4, !dbg !4492
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4493 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4532, metadata !DIExpression()), !dbg !4534
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4535
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !4536
  %9 = icmp ne i64 %8, 0, !dbg !4537
  %10 = zext i1 %9 to i8, !dbg !4534
  store i8 %10, i8* %4, align 1, !dbg !4534
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4538, metadata !DIExpression()), !dbg !4539
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4540
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !4540
  %13 = icmp ne i32 %12, 0, !dbg !4541
  %14 = zext i1 %13 to i8, !dbg !4539
  store i8 %14, i8* %5, align 1, !dbg !4539
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4542, metadata !DIExpression()), !dbg !4543
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4544
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4545
  %17 = icmp ne i32 %16, 0, !dbg !4546
  %18 = zext i1 %17 to i8, !dbg !4543
  store i8 %18, i8* %6, align 1, !dbg !4543
  %19 = load i8, i8* %5, align 1, !dbg !4547
  %20 = trunc i8 %19 to i1, !dbg !4547
  br i1 %20, label %31, label %21, !dbg !4549

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4550
  %23 = trunc i8 %22 to i1, !dbg !4550
  br i1 %23, label %24, label %37, !dbg !4551

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4552
  %26 = trunc i8 %25 to i1, !dbg !4552
  br i1 %26, label %31, label %27, !dbg !4553

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !4554
  %29 = load i32, i32* %28, align 4, !dbg !4554
  %30 = icmp ne i32 %29, 9, !dbg !4555
  br i1 %30, label %31, label %37, !dbg !4556

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4557
  %33 = trunc i8 %32 to i1, !dbg !4557
  br i1 %33, label %36, label %34, !dbg !4560

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !4561
  store i32 0, i32* %35, align 4, !dbg !4562
  br label %36, !dbg !4561

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4563
  br label %38, !dbg !4563

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4564
  br label %38, !dbg !4564

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4565
  ret i32 %39, !dbg !4565
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4566 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4605, metadata !DIExpression()), !dbg !4606
  store i32 0, i32* %4, align 4, !dbg !4606
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4607, metadata !DIExpression()), !dbg !4608
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4609
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !4610
  store i32 %8, i32* %5, align 4, !dbg !4608
  %9 = load i32, i32* %5, align 4, !dbg !4611
  %10 = icmp slt i32 %9, 0, !dbg !4613
  br i1 %10, label %11, label %14, !dbg !4614

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4615
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4616
  store i32 %13, i32* %2, align 4, !dbg !4617
  br label %40, !dbg !4617

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4618
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !4618
  %17 = icmp ne i32 %16, 0, !dbg !4618
  br i1 %17, label %18, label %23, !dbg !4620

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4621
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !4622
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !4623
  %22 = icmp ne i64 %21, -1, !dbg !4624
  br i1 %22, label %23, label %30, !dbg !4625

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4626
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4627
  %26 = icmp ne i32 %25, 0, !dbg !4627
  br i1 %26, label %27, label %30, !dbg !4628

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !4629
  %29 = load i32, i32* %28, align 4, !dbg !4629
  store i32 %29, i32* %4, align 4, !dbg !4630
  br label %30, !dbg !4631

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i32 0, i32* %6, align 4, !dbg !4633
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4634
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4635
  store i32 %32, i32* %6, align 4, !dbg !4636
  %33 = load i32, i32* %4, align 4, !dbg !4637
  %34 = icmp ne i32 %33, 0, !dbg !4639
  br i1 %34, label %35, label %38, !dbg !4640

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4641
  %37 = call i32* @__errno_location() #22, !dbg !4643
  store i32 %36, i32* %37, align 4, !dbg !4644
  store i32 -1, i32* %6, align 4, !dbg !4645
  br label %38, !dbg !4646

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4647
  store i32 %39, i32* %2, align 4, !dbg !4648
  br label %40, !dbg !4648

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4649
  ret i32 %41, !dbg !4649
}

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4650 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4687, metadata !DIExpression()), !dbg !4688
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4689
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4691
  br i1 %5, label %10, label %6, !dbg !4692

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4693
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !4693
  %9 = icmp ne i32 %8, 0, !dbg !4693
  br i1 %9, label %13, label %10, !dbg !4694

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4695
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4696
  store i32 %12, i32* %2, align 4, !dbg !4697
  br label %17, !dbg !4697

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4698
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4699
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4700
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4701
  store i32 %16, i32* %2, align 4, !dbg !4702
  br label %17, !dbg !4702

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4703
  ret i32 %18, !dbg !4703
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4704 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4707, metadata !DIExpression()), !dbg !4708
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4709
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4711
  %5 = load i32, i32* %4, align 8, !dbg !4711
  %6 = and i32 %5, 256, !dbg !4712
  %7 = icmp ne i32 %6, 0, !dbg !4712
  br i1 %7, label %8, label %11, !dbg !4713

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4714
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4715
  br label %11, !dbg !4715

11:                                               ; preds = %8, %1
  ret void, !dbg !4716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4717 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4754, metadata !DIExpression()), !dbg !4755
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4756, metadata !DIExpression()), !dbg !4757
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4758, metadata !DIExpression()), !dbg !4759
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4760
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4762
  %11 = load i8*, i8** %10, align 8, !dbg !4762
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4763
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4764
  %14 = load i8*, i8** %13, align 8, !dbg !4764
  %15 = icmp eq i8* %11, %14, !dbg !4765
  br i1 %15, label %16, label %46, !dbg !4766

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4767
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4768
  %19 = load i8*, i8** %18, align 8, !dbg !4768
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4769
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4770
  %22 = load i8*, i8** %21, align 8, !dbg !4770
  %23 = icmp eq i8* %19, %22, !dbg !4771
  br i1 %23, label %24, label %46, !dbg !4772

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4773
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4774
  %27 = load i8*, i8** %26, align 8, !dbg !4774
  %28 = icmp eq i8* %27, null, !dbg !4775
  br i1 %28, label %29, label %46, !dbg !4776

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4777, metadata !DIExpression()), !dbg !4779
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4780
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !4781
  %32 = load i64, i64* %6, align 8, !dbg !4782
  %33 = load i32, i32* %7, align 4, !dbg !4783
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !4784
  store i64 %34, i64* %8, align 8, !dbg !4779
  %35 = load i64, i64* %8, align 8, !dbg !4785
  %36 = icmp eq i64 %35, -1, !dbg !4787
  br i1 %36, label %37, label %38, !dbg !4788

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4789
  br label %51, !dbg !4789

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4791
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4792
  %41 = load i32, i32* %40, align 8, !dbg !4793
  %42 = and i32 %41, -17, !dbg !4793
  store i32 %42, i32* %40, align 8, !dbg !4793
  %43 = load i64, i64* %8, align 8, !dbg !4794
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4795
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4796
  store i64 %43, i64* %45, align 8, !dbg !4797
  store i32 0, i32* %4, align 4, !dbg !4798
  br label %51, !dbg !4798

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4799
  %48 = load i64, i64* %6, align 8, !dbg !4800
  %49 = load i32, i32* %7, align 4, !dbg !4801
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4802
  store i32 %50, i32* %4, align 4, !dbg !4803
  br label %51, !dbg !4803

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4804
  ret i32 %52, !dbg !4804
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #12 !dbg !4805 {
  %1 = call i32* @__errno_location() #22, !dbg !4808
  store i32 12, i32* %1, align 4, !dbg !4809
  ret i8* null, !dbg !4810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4811 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4812, metadata !DIExpression()), !dbg !4813
  %3 = load i64, i64* %2, align 8, !dbg !4814
  %4 = icmp ule i64 %3, -1, !dbg !4815
  br i1 %4, label %5, label %8, !dbg !4814

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4816
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4817
  br label %10, !dbg !4814

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #25, !dbg !4818
  br label %10, !dbg !4814

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4814
  ret i8* %11, !dbg !4819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4820 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4821, metadata !DIExpression()), !dbg !4822
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4823, metadata !DIExpression()), !dbg !4824
  %5 = load i64, i64* %4, align 8, !dbg !4825
  %6 = icmp ule i64 %5, -1, !dbg !4826
  br i1 %6, label %7, label %11, !dbg !4825

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4827
  %9 = load i64, i64* %4, align 8, !dbg !4828
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4829
  br label %13, !dbg !4825

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #25, !dbg !4830
  br label %13, !dbg !4825

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4825
  ret i8* %14, !dbg !4831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4832 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4833, metadata !DIExpression()), !dbg !4834
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4835, metadata !DIExpression()), !dbg !4836
  %6 = load i64, i64* %4, align 8, !dbg !4837
  %7 = icmp ult i64 -1, %6, !dbg !4839
  br i1 %7, label %8, label %14, !dbg !4840

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4841
  %10 = icmp ne i64 %9, 0, !dbg !4844
  br i1 %10, label %11, label %13, !dbg !4845

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #25, !dbg !4846
  store i8* %12, i8** %3, align 8, !dbg !4847
  br label %27, !dbg !4847

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4848
  br label %14, !dbg !4849

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4850
  %16 = icmp ult i64 -1, %15, !dbg !4852
  br i1 %16, label %17, label %23, !dbg !4853

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4854
  %19 = icmp ne i64 %18, 0, !dbg !4857
  br i1 %19, label %20, label %22, !dbg !4858

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #25, !dbg !4859
  store i8* %21, i8** %3, align 8, !dbg !4860
  br label %27, !dbg !4860

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4861
  br label %23, !dbg !4862

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4863
  %25 = load i64, i64* %5, align 8, !dbg !4864
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4865
  store i8* %26, i8** %3, align 8, !dbg !4866
  br label %27, !dbg !4866

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4867
  ret i8* %28, !dbg !4867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4868 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4869, metadata !DIExpression()), !dbg !4870
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4873, metadata !DIExpression()), !dbg !4874
  %7 = load i64, i64* %5, align 8, !dbg !4875
  %8 = icmp ule i64 %7, -1, !dbg !4876
  br i1 %8, label %9, label %17, !dbg !4877

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4878
  %11 = icmp ule i64 %10, -1, !dbg !4879
  br i1 %11, label %12, label %17, !dbg !4875

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4880
  %14 = load i64, i64* %5, align 8, !dbg !4881
  %15 = load i64, i64* %6, align 8, !dbg !4882
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4883
  br label %19, !dbg !4875

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #25, !dbg !4884
  br label %19, !dbg !4875

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4875
  ret i8* %20, !dbg !4885
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4886 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4891, metadata !DIExpression()), !dbg !4892
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4893, metadata !DIExpression()), !dbg !4894
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4895, metadata !DIExpression()), !dbg !4896
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4897, metadata !DIExpression()), !dbg !4898
  %11 = load i8*, i8** %7, align 8, !dbg !4899
  %12 = icmp eq i8* %11, null, !dbg !4901
  br i1 %12, label %13, label %14, !dbg !4902

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4903
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.223, i64 0, i64 0), i8** %7, align 8, !dbg !4905
  store i64 1, i64* %8, align 8, !dbg !4906
  br label %14, !dbg !4907

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4908
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4910
  br i1 %16, label %17, label %18, !dbg !4911

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4912
  br label %18, !dbg !4913

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4914, metadata !DIExpression()), !dbg !4915
  %19 = load i32*, i32** %6, align 8, !dbg !4916
  %20 = load i8*, i8** %7, align 8, !dbg !4917
  %21 = load i64, i64* %8, align 8, !dbg !4918
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4919
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4920
  store i64 %23, i64* %10, align 8, !dbg !4915
  %24 = load i64, i64* %10, align 8, !dbg !4921
  %25 = icmp ult i64 %24, -3, !dbg !4923
  br i1 %25, label %26, label %32, !dbg !4924

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4925
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !4926
  %29 = icmp ne i32 %28, 0, !dbg !4926
  br i1 %29, label %32, label %30, !dbg !4927

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4928
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4929
  br label %32, !dbg !4929

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4930
  %34 = icmp eq i64 %33, -3, !dbg !4932
  br i1 %34, label %35, label %36, !dbg !4933

35:                                               ; preds = %32
  call void @abort() #20, !dbg !4934
  unreachable, !dbg !4934

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4935
  %38 = icmp ule i64 -2, %37, !dbg !4937
  br i1 %38, label %39, label %53, !dbg !4938

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4939
  %41 = icmp ne i64 %40, 0, !dbg !4940
  br i1 %41, label %42, label %53, !dbg !4941

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4942
  br i1 %43, label %53, label %44, !dbg !4943

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4944
  %46 = icmp ne i32* %45, null, !dbg !4947
  br i1 %46, label %47, label %52, !dbg !4948

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4949
  %49 = load i8, i8* %48, align 1, !dbg !4950
  %50 = zext i8 %49 to i32, !dbg !4951
  %51 = load i32*, i32** %6, align 8, !dbg !4952
  store i32 %50, i32* %51, align 4, !dbg !4953
  br label %52, !dbg !4954

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4955
  br label %55, !dbg !4955

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4956
  store i64 %54, i64* %5, align 8, !dbg !4957
  br label %55, !dbg !4957

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4958
  ret i64 %56, !dbg !4958
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4959 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4974, metadata !DIExpression()), !dbg !4975
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4976
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4977
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4977
  ret void, !dbg !4978
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4979 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4981, metadata !DIExpression()), !dbg !4982
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4983, metadata !DIExpression()), !dbg !4984
  %5 = load i8*, i8** %3, align 8, !dbg !4985
  %6 = load i64, i64* %4, align 8, !dbg !4986
  %7 = icmp ne i64 %6, 0, !dbg !4986
  br i1 %7, label %8, label %10, !dbg !4986

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4987
  br label %11, !dbg !4986

10:                                               ; preds = %2
  br label %11, !dbg !4986

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4986
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4988
  ret i8* %13, !dbg !4989
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4990 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4995, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4997, metadata !DIExpression()), !dbg !4998
  %9 = load i64, i64* %7, align 8, !dbg !4999
  %10 = icmp ult i64 %9, 0, !dbg !4999
  br i1 %10, label %11, label %60, !dbg !4999

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4999
  %13 = icmp ult i64 %12, 0, !dbg !4999
  br i1 %13, label %14, label %37, !dbg !4999

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4999

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4999
  %17 = load i64, i64* %7, align 8, !dbg !4999
  %18 = udiv i64 -1, %17, !dbg !4999
  %19 = icmp ult i64 %16, %18, !dbg !4999
  br i1 %19, label %92, label %96, !dbg !4999

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4999

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4999
  %23 = icmp ult i64 %22, 1, !dbg !4999
  br i1 %23, label %27, label %28, !dbg !4999

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4999
  %26 = icmp ult i64 0, %25, !dbg !4999
  br i1 %26, label %27, label %28, !dbg !4999

27:                                               ; preds = %24, %21
  br label %32, !dbg !4999

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4999
  %30 = sub i64 0, %29, !dbg !4999
  %31 = udiv i64 -1, %30, !dbg !4999
  br label %32, !dbg !4999

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4999
  %34 = load i64, i64* %6, align 8, !dbg !4999
  %35 = sub i64 -1, %34, !dbg !4999
  %36 = icmp ule i64 %33, %35, !dbg !4999
  br i1 %36, label %92, label %96, !dbg !4999

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4999

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4999

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4999

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4999
  %42 = icmp eq i64 %41, -1, !dbg !4999
  br i1 %42, label %43, label %55, !dbg !4999

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4999

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4999
  %46 = add i64 %45, 0, !dbg !4999
  %47 = icmp ult i64 0, %46, !dbg !4999
  br i1 %47, label %92, label %96, !dbg !4999

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4999
  %50 = icmp ult i64 0, %49, !dbg !4999
  br i1 %50, label %51, label %96, !dbg !4999

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4999
  %53 = sub i64 %52, 1, !dbg !4999
  %54 = icmp ult i64 -1, %53, !dbg !4999
  br i1 %54, label %92, label %96, !dbg !4999

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4999
  %57 = udiv i64 0, %56, !dbg !4999
  %58 = load i64, i64* %6, align 8, !dbg !4999
  %59 = icmp ult i64 %57, %58, !dbg !4999
  br i1 %59, label %92, label %96, !dbg !4999

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4999
  %62 = icmp eq i64 %61, 0, !dbg !4999
  br i1 %62, label %63, label %64, !dbg !4999

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4999

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4999
  %66 = icmp ult i64 %65, 0, !dbg !4999
  br i1 %66, label %67, label %87, !dbg !4999

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4999

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4999

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4999

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4999
  %72 = icmp eq i64 %71, -1, !dbg !4999
  br i1 %72, label %73, label %82, !dbg !4999

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4999

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4999
  %76 = add i64 %75, 0, !dbg !4999
  %77 = icmp ult i64 0, %76, !dbg !4999
  br i1 %77, label %92, label %96, !dbg !4999

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4999
  %80 = sub i64 %79, 1, !dbg !4999
  %81 = icmp ult i64 -1, %80, !dbg !4999
  br i1 %81, label %92, label %96, !dbg !4999

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4999
  %84 = udiv i64 0, %83, !dbg !4999
  %85 = load i64, i64* %7, align 8, !dbg !4999
  %86 = icmp ult i64 %84, %85, !dbg !4999
  br i1 %86, label %92, label %96, !dbg !4999

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4999
  %89 = udiv i64 -1, %88, !dbg !4999
  %90 = load i64, i64* %6, align 8, !dbg !4999
  %91 = icmp ult i64 %89, %90, !dbg !4999
  br i1 %91, label %92, label %96, !dbg !4999

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4999
  %94 = load i64, i64* %7, align 8, !dbg !4999
  %95 = mul i64 %93, %94, !dbg !4999
  store i64 %95, i64* %8, align 8, !dbg !4999
  br label %100, !dbg !4999

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4999
  %98 = load i64, i64* %7, align 8, !dbg !4999
  %99 = mul i64 %97, %98, !dbg !4999
  store i64 %99, i64* %8, align 8, !dbg !4999
  br label %100, !dbg !4999

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4999
  %102 = icmp ne i32 %101, 0, !dbg !4999
  br i1 %102, label %103, label %105, !dbg !5001

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !5002
  store i32 12, i32* %104, align 4, !dbg !5004
  store i8* null, i8** %4, align 8, !dbg !5005
  br label %109, !dbg !5005

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5006
  %107 = load i64, i64* %8, align 8, !dbg !5007
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5008
  store i8* %108, i8** %4, align 8, !dbg !5009
  br label %109, !dbg !5009

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5010
  ret i8* %110, !dbg !5010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dup_safer(i32 noundef %0) #4 !dbg !5011 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5012, metadata !DIExpression()), !dbg !5013
  %3 = load i32, i32* %2, align 4, !dbg !5014
  %4 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %3, i32 noundef 0, i32 noundef 3), !dbg !5015
  ret i32 %4, !dbg !5016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) #4 !dbg !5017 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !5024, metadata !DIExpression()), !dbg !5035
  %11 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !5036
  call void @llvm.va_start(i8* %11), !dbg !5036
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i32 -1, i32* %6, align 4, !dbg !5038
  %12 = load i32, i32* %4, align 4, !dbg !5039
  switch i32 %12, label %59 [
    i32 0, label %13
    i32 1030, label %36
  ], !dbg !5040

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5041, metadata !DIExpression()), !dbg !5044
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !5045
  %15 = load i32, i32* %14, align 8, !dbg !5045
  %16 = icmp sge i32 %15, 0, !dbg !5045
  br i1 %16, label %25, label %17, !dbg !5045

17:                                               ; preds = %13
  %18 = add i32 %15, 8, !dbg !5045
  store i32 %18, i32* %14, align 8, !dbg !5045
  %19 = icmp sle i32 %18, 0, !dbg !5045
  br i1 %19, label %20, label %25, !dbg !5045

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !5045
  %22 = load i8*, i8** %21, align 8, !dbg !5045
  %23 = getelementptr inbounds i8, i8* %22, i32 %15, !dbg !5045
  %24 = bitcast i8* %23 to i32*, !dbg !5045
  br label %30, !dbg !5045

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !5045
  %27 = load i8*, i8** %26, align 8, !dbg !5045
  %28 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !5045
  store i8* %28, i8** %26, align 8, !dbg !5045
  %29 = bitcast i8* %27 to i32*, !dbg !5045
  br label %30, !dbg !5045

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ], !dbg !5045
  %32 = load i32, i32* %31, align 8, !dbg !5045
  store i32 %32, i32* %7, align 4, !dbg !5044
  %33 = load i32, i32* %3, align 4, !dbg !5046
  %34 = load i32, i32* %7, align 4, !dbg !5047
  %35 = call i32 @rpl_fcntl_DUPFD(i32 noundef %33, i32 noundef %34), !dbg !5048
  store i32 %35, i32* %6, align 4, !dbg !5049
  br label %114, !dbg !5050

36:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5051, metadata !DIExpression()), !dbg !5053
  %37 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !5054
  %38 = load i32, i32* %37, align 8, !dbg !5054
  %39 = icmp sge i32 %38, 0, !dbg !5054
  br i1 %39, label %48, label %40, !dbg !5054

40:                                               ; preds = %36
  %41 = add i32 %38, 8, !dbg !5054
  store i32 %41, i32* %37, align 8, !dbg !5054
  %42 = icmp sle i32 %41, 0, !dbg !5054
  br i1 %42, label %43, label %48, !dbg !5054

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !5054
  %45 = load i8*, i8** %44, align 8, !dbg !5054
  %46 = getelementptr inbounds i8, i8* %45, i32 %38, !dbg !5054
  %47 = bitcast i8* %46 to i32*, !dbg !5054
  br label %53, !dbg !5054

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !5054
  %50 = load i8*, i8** %49, align 8, !dbg !5054
  %51 = getelementptr inbounds i8, i8* %50, i64 8, !dbg !5054
  store i8* %51, i8** %49, align 8, !dbg !5054
  %52 = bitcast i8* %50 to i32*, !dbg !5054
  br label %53, !dbg !5054

53:                                               ; preds = %48, %43
  %54 = phi i32* [ %47, %43 ], [ %52, %48 ], !dbg !5054
  %55 = load i32, i32* %54, align 8, !dbg !5054
  store i32 %55, i32* %8, align 4, !dbg !5053
  %56 = load i32, i32* %3, align 4, !dbg !5055
  %57 = load i32, i32* %8, align 4, !dbg !5056
  %58 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %56, i32 noundef %57), !dbg !5057
  store i32 %58, i32* %6, align 4, !dbg !5058
  br label %114, !dbg !5059

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4, !dbg !5060
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
  ], !dbg !5062

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %62 = load i32, i32* %3, align 4, !dbg !5063
  %63 = load i32, i32* %4, align 4, !dbg !5065
  %64 = call i32 (i32, i32, ...) @fcntl(i32 noundef %62, i32 noundef %63), !dbg !5066
  store i32 %64, i32* %6, align 4, !dbg !5067
  br label %113, !dbg !5068

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5069, metadata !DIExpression()), !dbg !5071
  %66 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !5072
  %67 = load i32, i32* %66, align 8, !dbg !5072
  %68 = icmp sge i32 %67, 0, !dbg !5072
  br i1 %68, label %77, label %69, !dbg !5072

69:                                               ; preds = %65
  %70 = add i32 %67, 8, !dbg !5072
  store i32 %70, i32* %66, align 8, !dbg !5072
  %71 = icmp sle i32 %70, 0, !dbg !5072
  br i1 %71, label %72, label %77, !dbg !5072

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !5072
  %74 = load i8*, i8** %73, align 8, !dbg !5072
  %75 = getelementptr inbounds i8, i8* %74, i32 %67, !dbg !5072
  %76 = bitcast i8* %75 to i32*, !dbg !5072
  br label %82, !dbg !5072

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !5072
  %79 = load i8*, i8** %78, align 8, !dbg !5072
  %80 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !5072
  store i8* %80, i8** %78, align 8, !dbg !5072
  %81 = bitcast i8* %79 to i32*, !dbg !5072
  br label %82, !dbg !5072

82:                                               ; preds = %77, %72
  %83 = phi i32* [ %76, %72 ], [ %81, %77 ], !dbg !5072
  %84 = load i32, i32* %83, align 8, !dbg !5072
  store i32 %84, i32* %9, align 4, !dbg !5071
  %85 = load i32, i32* %3, align 4, !dbg !5073
  %86 = load i32, i32* %4, align 4, !dbg !5074
  %87 = load i32, i32* %9, align 4, !dbg !5075
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef %86, i32 noundef %87), !dbg !5076
  store i32 %88, i32* %6, align 4, !dbg !5077
  br label %113, !dbg !5078

89:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5079, metadata !DIExpression()), !dbg !5081
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !5082
  %91 = load i32, i32* %90, align 8, !dbg !5082
  %92 = icmp sge i32 %91, 0, !dbg !5082
  br i1 %92, label %101, label %93, !dbg !5082

93:                                               ; preds = %89
  %94 = add i32 %91, 8, !dbg !5082
  store i32 %94, i32* %90, align 8, !dbg !5082
  %95 = icmp sle i32 %94, 0, !dbg !5082
  br i1 %95, label %96, label %101, !dbg !5082

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !5082
  %98 = load i8*, i8** %97, align 8, !dbg !5082
  %99 = getelementptr inbounds i8, i8* %98, i32 %91, !dbg !5082
  %100 = bitcast i8* %99 to i8**, !dbg !5082
  br label %106, !dbg !5082

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !5082
  %103 = load i8*, i8** %102, align 8, !dbg !5082
  %104 = getelementptr inbounds i8, i8* %103, i64 8, !dbg !5082
  store i8* %104, i8** %102, align 8, !dbg !5082
  %105 = bitcast i8* %103 to i8**, !dbg !5082
  br label %106, !dbg !5082

106:                                              ; preds = %101, %96
  %107 = phi i8** [ %100, %96 ], [ %105, %101 ], !dbg !5082
  %108 = load i8*, i8** %107, align 8, !dbg !5082
  store i8* %108, i8** %10, align 8, !dbg !5081
  %109 = load i32, i32* %3, align 4, !dbg !5083
  %110 = load i32, i32* %4, align 4, !dbg !5084
  %111 = load i8*, i8** %10, align 8, !dbg !5085
  %112 = call i32 (i32, i32, ...) @fcntl(i32 noundef %109, i32 noundef %110, i8* noundef %111), !dbg !5086
  store i32 %112, i32* %6, align 4, !dbg !5087
  br label %113, !dbg !5088

113:                                              ; preds = %106, %82, %61
  br label %114, !dbg !5089

114:                                              ; preds = %113, %53, %30
  %115 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !5090
  call void @llvm.va_end(i8* %115), !dbg !5090
  %116 = load i32, i32* %6, align 4, !dbg !5091
  ret i32 %116, !dbg !5092
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 noundef %0, i32 noundef %1) #4 !dbg !5093 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5094, metadata !DIExpression()), !dbg !5095
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5098, metadata !DIExpression()), !dbg !5099
  %6 = load i32, i32* %3, align 4, !dbg !5100
  %7 = load i32, i32* %4, align 4, !dbg !5101
  %8 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 0, i32 noundef %7), !dbg !5102
  store i32 %8, i32* %5, align 4, !dbg !5103
  %9 = load i32, i32* %5, align 4, !dbg !5104
  ret i32 %9, !dbg !5105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %0, i32 noundef %1) #4 !dbg !274 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5110, metadata !DIExpression()), !dbg !5111
  %8 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5112
  %9 = icmp sle i32 0, %8, !dbg !5114
  br i1 %9, label %10, label %30, !dbg !5115

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !5116
  %12 = load i32, i32* %4, align 4, !dbg !5118
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 1030, i32 noundef %12), !dbg !5119
  store i32 %13, i32* %5, align 4, !dbg !5120
  %14 = load i32, i32* %5, align 4, !dbg !5121
  %15 = icmp sle i32 0, %14, !dbg !5123
  br i1 %15, label %20, label %16, !dbg !5124

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #22, !dbg !5125
  %18 = load i32, i32* %17, align 4, !dbg !5125
  %19 = icmp ne i32 %18, 22, !dbg !5126
  br i1 %19, label %20, label %21, !dbg !5127

20:                                               ; preds = %16, %10
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5128
  br label %29, !dbg !5130

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4, !dbg !5131
  %23 = load i32, i32* %4, align 4, !dbg !5133
  %24 = call i32 @rpl_fcntl_DUPFD(i32 noundef %22, i32 noundef %23), !dbg !5134
  store i32 %24, i32* %5, align 4, !dbg !5135
  %25 = load i32, i32* %5, align 4, !dbg !5136
  %26 = icmp sge i32 %25, 0, !dbg !5138
  br i1 %26, label %27, label %28, !dbg !5139

27:                                               ; preds = %21
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5140
  br label %28, !dbg !5141

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  br label %34, !dbg !5142

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4, !dbg !5143
  %32 = load i32, i32* %4, align 4, !dbg !5144
  %33 = call i32 @rpl_fcntl_DUPFD(i32 noundef %31, i32 noundef %32), !dbg !5145
  store i32 %33, i32* %5, align 4, !dbg !5146
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4, !dbg !5147
  %36 = icmp sle i32 0, %35, !dbg !5149
  br i1 %36, label %37, label %59, !dbg !5150

37:                                               ; preds = %34
  %38 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5151
  %39 = icmp eq i32 %38, -1, !dbg !5152
  br i1 %39, label %40, label %59, !dbg !5153

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5154, metadata !DIExpression()), !dbg !5156
  %41 = load i32, i32* %5, align 4, !dbg !5157
  %42 = call i32 (i32, i32, ...) @fcntl(i32 noundef %41, i32 noundef 1), !dbg !5158
  store i32 %42, i32* %6, align 4, !dbg !5156
  %43 = load i32, i32* %6, align 4, !dbg !5159
  %44 = icmp slt i32 %43, 0, !dbg !5161
  br i1 %44, label %51, label %45, !dbg !5162

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4, !dbg !5163
  %47 = load i32, i32* %6, align 4, !dbg !5164
  %48 = or i32 %47, 1, !dbg !5165
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %46, i32 noundef 2, i32 noundef %48), !dbg !5166
  %50 = icmp eq i32 %49, -1, !dbg !5167
  br i1 %50, label %51, label %58, !dbg !5168

51:                                               ; preds = %45, %40
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5169, metadata !DIExpression()), !dbg !5171
  %52 = call i32* @__errno_location() #22, !dbg !5172
  %53 = load i32, i32* %52, align 4, !dbg !5172
  store i32 %53, i32* %7, align 4, !dbg !5171
  %54 = load i32, i32* %5, align 4, !dbg !5173
  %55 = call i32 @close(i32 noundef %54), !dbg !5174
  %56 = load i32, i32* %7, align 4, !dbg !5175
  %57 = call i32* @__errno_location() #22, !dbg !5176
  store i32 %56, i32* %57, align 4, !dbg !5177
  store i32 -1, i32* %5, align 4, !dbg !5178
  br label %58, !dbg !5179

58:                                               ; preds = %51, %45
  br label %59, !dbg !5180

59:                                               ; preds = %58, %37, %34
  %60 = load i32, i32* %5, align 4, !dbg !5181
  ret i32 %60, !dbg !5182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5183 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5184, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5186, metadata !DIExpression()), !dbg !5190
  %5 = load i32, i32* %3, align 4, !dbg !5191
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5193
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5194
  %8 = icmp ne i32 %7, 0, !dbg !5194
  br i1 %8, label %9, label %10, !dbg !5195

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5196
  br label %18, !dbg !5196

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5197
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.236, i64 0, i64 0)), !dbg !5199
  br i1 %12, label %17, label %13, !dbg !5200

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5201
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.237, i64 0, i64 0)), !dbg !5202
  br i1 %15, label %17, label %16, !dbg !5203

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5204
  br label %18, !dbg !5204

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5205
  br label %18, !dbg !5205

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5206
  ret i1 %19, !dbg !5206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5207 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5212, metadata !DIExpression()), !dbg !5213
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5214, metadata !DIExpression()), !dbg !5215
  %7 = load i32, i32* %4, align 4, !dbg !5216
  %8 = load i8*, i8** %5, align 8, !dbg !5217
  %9 = load i64, i64* %6, align 8, !dbg !5218
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5219
  ret i32 %10, !dbg !5220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5221 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5224, metadata !DIExpression()), !dbg !5225
  %3 = load i32, i32* %2, align 4, !dbg !5226
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5227
  ret i8* %4, !dbg !5228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5229 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5232, metadata !DIExpression()), !dbg !5233
  %4 = load i32, i32* %2, align 4, !dbg !5234
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !5235
  store i8* %5, i8** %3, align 8, !dbg !5233
  %6 = load i8*, i8** %3, align 8, !dbg !5236
  ret i8* %6, !dbg !5237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5238 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5239, metadata !DIExpression()), !dbg !5240
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5243, metadata !DIExpression()), !dbg !5244
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5245, metadata !DIExpression()), !dbg !5246
  %10 = load i32, i32* %5, align 4, !dbg !5247
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5248
  store i8* %11, i8** %8, align 8, !dbg !5246
  %12 = load i8*, i8** %8, align 8, !dbg !5249
  %13 = icmp eq i8* %12, null, !dbg !5251
  br i1 %13, label %14, label %21, !dbg !5252

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5253
  %16 = icmp ugt i64 %15, 0, !dbg !5256
  br i1 %16, label %17, label %20, !dbg !5257

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5258
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5258
  store i8 0, i8* %19, align 1, !dbg !5259
  br label %20, !dbg !5258

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5260
  br label %45, !dbg !5260

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5261, metadata !DIExpression()), !dbg !5263
  %22 = load i8*, i8** %8, align 8, !dbg !5264
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !5265
  store i64 %23, i64* %9, align 8, !dbg !5263
  %24 = load i64, i64* %9, align 8, !dbg !5266
  %25 = load i64, i64* %7, align 8, !dbg !5268
  %26 = icmp ult i64 %24, %25, !dbg !5269
  br i1 %26, label %27, label %32, !dbg !5270

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5271
  %29 = load i8*, i8** %8, align 8, !dbg !5273
  %30 = load i64, i64* %9, align 8, !dbg !5274
  %31 = add i64 %30, 1, !dbg !5275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5276
  store i32 0, i32* %4, align 4, !dbg !5277
  br label %45, !dbg !5277

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5278
  %34 = icmp ugt i64 %33, 0, !dbg !5281
  br i1 %34, label %35, label %44, !dbg !5282

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5283
  %37 = load i8*, i8** %8, align 8, !dbg !5285
  %38 = load i64, i64* %7, align 8, !dbg !5286
  %39 = sub i64 %38, 1, !dbg !5287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5288
  %40 = load i8*, i8** %6, align 8, !dbg !5289
  %41 = load i64, i64* %7, align 8, !dbg !5290
  %42 = sub i64 %41, 1, !dbg !5291
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5289
  store i8 0, i8* %43, align 1, !dbg !5292
  br label %44, !dbg !5293

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5294
  br label %45, !dbg !5294

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5295
  ret i32 %46, !dbg !5295
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
attributes #10 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { nofree nosync nounwind willreturn }
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
attributes #24 = { allocsize(0,1) }
attributes #25 = { cold }
attributes #26 = { allocsize(1) }
attributes #27 = { allocsize(0) }
attributes #28 = { allocsize(1,2) }

!llvm.dbg.cu = !{!2, !280, !107, !112, !124, !131, !248, !282, !285, !287, !289, !291, !162, !172, !179, !293, !295, !297, !240, !303, !323, !325, !327, !329, !331, !333, !335, !337, !339, !254, !341, !343, !345, !348, !278, !350, !352, !354}
!llvm.ident = !{!356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356}
!llvm.module.flags = !{!357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !64, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tee.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cec0a20486dbac1b82051156d303a2f2")
!4 = !{!5, !13, !28, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!9 = !DIEnumerator(name: "output_error_warn", value: 1)
!10 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!11 = !DIEnumerator(name: "output_error_exit", value: 3)
!12 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, baseType: !6, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 44, baseType: !6, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!32 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!33 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!34 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!35 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!36 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !38, line: 42, baseType: !6, size: 32, elements: !39)
!38 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!41 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!42 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!43 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!44 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!45 = !DIEnumerator(name: "c_quoting_style", value: 5)
!46 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!47 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!48 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!49 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!50 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!51 = !{!52, !54, !56, !57, !62, !63}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !{!65, !68, !70, !72, !0, !81, !87}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !67, isLocal: true, isDefinition: true)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !67, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !74, file: !75, line: 575, type: !62, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "oputs_", scope: !75, file: !75, line: 573, type: !76, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!75 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!80 = !{}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !85)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 320, elements: !91)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!91 = !{!92}
!92 = !DISubrange(count: 5)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 1536, elements: !103)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !96, line: 50, size: 256, elements: !97)
!96 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!97 = !{!98, !99, !100, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !96, line: 52, baseType: !78, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !95, file: !96, line: 55, baseType: !62, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !95, file: !96, line: 56, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !96, line: 57, baseType: !62, size: 32, offset: 192)
!103 = !{!104}
!104 = !DISubrange(count: 6)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "Version", scope: !107, file: !108, line: 3, type: !78, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !109, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!109 = !{!105}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !112, file: !113, line: 65, type: !117, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !115, globals: !116, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "lib/argmatch.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b147d258438e01421d766b453f353b54")
!114 = !{!37}
!115 = !{!56, !78}
!116 = !{!110}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !118, line: 69, baseType: !119)
!118 = !DIFile(filename: "./lib/argmatch.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !125, line: 45, type: !78, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !125, line: 55, type: !67, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !131, file: !132, line: 66, type: !119, isLocal: false, isDefinition: true)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, globals: !134, splitDebugInlining: false, nameTableKind: None)
!132 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!133 = !{!56}
!134 = !{!135, !154, !129, !156, !158}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "old_file_name", scope: !137, file: !132, line: 304, type: !78, isLocal: true, isDefinition: true)
!137 = distinct !DISubprogram(name: "verror_at_line", scope: !132, file: !132, line: 298, type: !138, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !131, retainedNodes: !80)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !62, !62, !78, !6, !78, !140}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !141, line: 52, baseType: !142)
!141 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !143, line: 32, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !145, baseType: !146)
!145 = !DIFile(filename: "lib/error.c", directory: "/src")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !147, size: 256, elements: !148)
!147 = !DINamespace(name: "std", scope: null)
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !146, file: !145, baseType: !56, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !146, file: !145, baseType: !56, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !146, file: !145, baseType: !56, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !146, file: !145, baseType: !62, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !146, file: !145, baseType: !62, size: 32, offset: 224)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "old_line_number", scope: !137, file: !132, line: 305, type: !6, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "error_message_count", scope: !131, file: !132, line: 69, type: !6, isLocal: false, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !131, file: !132, line: 295, type: !62, isLocal: false, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "program_name", scope: !162, file: !163, line: 31, type: !78, isLocal: false, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !164, globals: !165, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!164 = !{!54}
!165 = !{!160}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "utf07FF", scope: !168, file: !169, line: 46, type: !174, isLocal: true, isDefinition: true)
!168 = distinct !DISubprogram(name: "proper_name_lite", scope: !169, file: !169, line: 38, type: !170, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !172, retainedNodes: !80)
!169 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!170 = !DISubroutineType(types: !171)
!171 = !{!78, !78, !78}
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !173, splitDebugInlining: false, nameTableKind: None)
!173 = !{!166}
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !179, file: !180, line: 76, type: !235, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !181, retainedTypes: !187, globals: !191, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!181 = !{!37, !182, !13}
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !38, line: 254, baseType: !6, size: 32, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!185 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!186 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!187 = !{!62, !63, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !{!177, !192, !198, !210, !212, !217, !224, !231, !233}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !179, file: !180, line: 92, type: !194, isLocal: false, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 320, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!196 = !{!197}
!197 = !DISubrange(count: 10)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !179, file: !180, line: 1040, type: !200, isLocal: false, isDefinition: true)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !180, line: 56, size: 448, elements: !201)
!201 = !{!202, !203, !204, !208, !209}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !200, file: !180, line: 59, baseType: !37, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !180, line: 62, baseType: !62, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !200, file: !180, line: 66, baseType: !205, size: 256, offset: 64)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !200, file: !180, line: 69, baseType: !78, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !200, file: !180, line: 72, baseType: !78, size: 64, offset: 384)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !179, file: !180, line: 107, type: !200, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "slot0", scope: !179, file: !180, line: 831, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 256)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "quote", scope: !219, file: !180, line: 228, type: !222, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "gettext_quote", scope: !180, file: !180, line: 197, type: !220, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !179, retainedNodes: !80)
!220 = !DISubroutineType(types: !221)
!221 = !{!78, !78, !37}
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !223)
!223 = !{!176, !86}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "slotvec", scope: !179, file: !180, line: 834, type: !226, isLocal: true, isDefinition: true)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !180, line: 823, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !227, file: !180, line: 825, baseType: !188, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !180, line: 826, baseType: !54, size: 64, offset: 64)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "nslots", scope: !179, file: !180, line: 832, type: !62, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "slotvec0", scope: !179, file: !180, line: 833, type: !227, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 704, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !240, file: !241, line: 26, type: !243, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !242, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!242 = !{!238}
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 47)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "exit_failure", scope: !248, file: !249, line: 24, type: !251, isLocal: false, isDefinition: true)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !250, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!250 = !{!246}
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "internal_state", scope: !254, file: !255, line: 97, type: !259, isLocal: true, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !256, globals: !258, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!256 = !{!56, !188, !257}
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !{!252}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !261)
!260 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !263)
!262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !263, file: !262, line: 15, baseType: !62, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !263, file: !262, line: 20, baseType: !267, size: 32, offset: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 16, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !267, file: !262, line: 18, baseType: !6, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !267, file: !262, line: 19, baseType: !271, size: 32)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !85)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !274, file: !275, line: 506, type: !62, isLocal: true, isDefinition: true)
!274 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !275, file: !275, line: 485, type: !276, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !278, retainedNodes: !80)
!275 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!276 = !DISubroutineType(types: !277)
!277 = !{!62, !62, !62}
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !279, splitDebugInlining: false, nameTableKind: None)
!279 = !{!272}
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "src/iopoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "994e71aa1d7ebbae5028422474ffd3c4")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !284, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!284 = !{!28}
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!299 = !{!300}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 40, baseType: !6, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !305, retainedTypes: !322, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!305 = !{!306, !313}
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !307, file: !304, line: 188, baseType: !6, size: 32, elements: !311)
!307 = distinct !DISubprogram(name: "x2nrealloc", scope: !304, file: !304, line: 176, type: !308, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!308 = !DISubroutineType(types: !309)
!309 = !{!56, !56, !310, !188}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!311 = !{!312}
!312 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !314, file: !304, line: 228, baseType: !6, size: 32, elements: !311)
!314 = distinct !DISubprogram(name: "xpalloc", scope: !304, file: !304, line: 223, type: !315, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!315 = !DISubroutineType(types: !316)
!316 = !{!56, !56, !317, !318, !320, !318}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !319, line: 130, baseType: !320)
!319 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !189, line: 35, baseType: !321)
!321 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!322 = !{!54, !56, !67, !321, !190}
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/xbinary-io.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d09369486b71466bb3530af69665dc5")
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/binary-io.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5c2294e6cf12282d5d7373c381b1e99c")
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!332 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!335 = distinct !DICompileUnit(language: DW_LANG_C99, file: !336, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !347, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!347 = !{!67, !190, !56}
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!356 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!357 = !{i32 7, !"Dwarf Version", i32 5}
!358 = !{i32 2, !"Debug Info Version", i32 3}
!359 = !{i32 1, !"wchar_size", i32 4}
!360 = !{i32 1, !"branch-target-enforcement", i32 0}
!361 = !{i32 1, !"sign-return-address", i32 0}
!362 = !{i32 1, !"sign-return-address-all", i32 0}
!363 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"PIC Level", i32 2}
!365 = !{i32 7, !"PIE Level", i32 2}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 1}
!368 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !60, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!369 = !DILocalVariable(name: "status", arg: 1, scope: !368, file: !3, line: 81, type: !62)
!370 = !DILocation(line: 81, column: 12, scope: !368)
!371 = !DILocation(line: 83, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 83, column: 7)
!373 = !DILocation(line: 83, column: 14, scope: !372)
!374 = !DILocation(line: 83, column: 7, scope: !368)
!375 = !DILocation(line: 84, column: 5, scope: !372)
!376 = !DILocation(line: 84, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 84, column: 5)
!378 = !DILocation(line: 87, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !3, line: 86, column: 5)
!380 = !DILocation(line: 87, column: 55, scope: !379)
!381 = !DILocation(line: 87, column: 7, scope: !379)
!382 = !DILocation(line: 88, column: 7, scope: !379)
!383 = !DILocation(line: 92, column: 7, scope: !379)
!384 = !DILocation(line: 96, column: 7, scope: !379)
!385 = !DILocation(line: 100, column: 7, scope: !379)
!386 = !DILocation(line: 104, column: 7, scope: !379)
!387 = !DILocation(line: 108, column: 7, scope: !379)
!388 = !DILocation(line: 109, column: 7, scope: !379)
!389 = !DILocation(line: 110, column: 7, scope: !379)
!390 = !DILocation(line: 123, column: 7, scope: !379)
!391 = !DILocation(line: 125, column: 9, scope: !368)
!392 = !DILocation(line: 125, column: 3, scope: !368)
!393 = !DILocalVariable(name: "program", arg: 1, scope: !74, file: !75, line: 573, type: !78)
!394 = !DILocation(line: 573, column: 34, scope: !74)
!395 = !DILocalVariable(name: "option", arg: 2, scope: !74, file: !75, line: 573, type: !78)
!396 = !DILocation(line: 573, column: 55, scope: !74)
!397 = !DILocation(line: 581, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !74, file: !75, line: 581, column: 7)
!399 = !DILocation(line: 581, column: 19, scope: !398)
!400 = !DILocation(line: 581, column: 7, scope: !74)
!401 = !DILocalVariable(name: "term", scope: !402, file: !75, line: 585, type: !78)
!402 = distinct !DILexicalBlock(scope: !398, file: !75, line: 582, column: 5)
!403 = !DILocation(line: 585, column: 19, scope: !402)
!404 = !DILocation(line: 585, column: 26, scope: !402)
!405 = !DILocation(line: 586, column: 23, scope: !402)
!406 = !DILocation(line: 586, column: 28, scope: !402)
!407 = !DILocation(line: 586, column: 33, scope: !402)
!408 = !DILocation(line: 586, column: 32, scope: !402)
!409 = !DILocation(line: 586, column: 38, scope: !402)
!410 = !DILocation(line: 586, column: 48, scope: !402)
!411 = !DILocation(line: 586, column: 41, scope: !402)
!412 = !DILocation(line: 586, column: 19, scope: !402)
!413 = !DILocation(line: 587, column: 5, scope: !402)
!414 = !DILocation(line: 588, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !74, file: !75, line: 588, column: 7)
!416 = !DILocation(line: 588, column: 7, scope: !74)
!417 = !DILocation(line: 590, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !75, line: 589, column: 5)
!419 = !DILocation(line: 591, column: 7, scope: !418)
!420 = !DILocalVariable(name: "double_space", scope: !74, file: !75, line: 594, type: !67)
!421 = !DILocation(line: 594, column: 8, scope: !74)
!422 = !DILocalVariable(name: "first_word", scope: !74, file: !75, line: 595, type: !78)
!423 = !DILocation(line: 595, column: 15, scope: !74)
!424 = !DILocation(line: 595, column: 28, scope: !74)
!425 = !DILocation(line: 595, column: 45, scope: !74)
!426 = !DILocation(line: 595, column: 37, scope: !74)
!427 = !DILocation(line: 595, column: 35, scope: !74)
!428 = !DILocalVariable(name: "option_text", scope: !74, file: !75, line: 596, type: !78)
!429 = !DILocation(line: 596, column: 15, scope: !74)
!430 = !DILocation(line: 596, column: 37, scope: !74)
!431 = !DILocation(line: 596, column: 29, scope: !74)
!432 = !DILocation(line: 597, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !74, file: !75, line: 597, column: 7)
!434 = !DILocation(line: 597, column: 7, scope: !74)
!435 = !DILocation(line: 599, column: 21, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !75, line: 598, column: 5)
!437 = !DILocation(line: 599, column: 19, scope: !436)
!438 = !DILocation(line: 602, column: 20, scope: !436)
!439 = !DILocation(line: 603, column: 5, scope: !436)
!440 = !DILocation(line: 604, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !433, file: !75, line: 604, column: 12)
!442 = !DILocation(line: 604, column: 27, scope: !441)
!443 = !DILocation(line: 604, column: 24, scope: !441)
!444 = !DILocation(line: 604, column: 12, scope: !433)
!445 = !DILocalVariable(name: "s", scope: !446, file: !75, line: 608, type: !78)
!446 = distinct !DILexicalBlock(scope: !441, file: !75, line: 605, column: 5)
!447 = !DILocation(line: 608, column: 19, scope: !446)
!448 = !DILocation(line: 608, column: 23, scope: !446)
!449 = !DILocalVariable(name: "spaces", scope: !446, file: !75, line: 609, type: !188)
!450 = !DILocation(line: 609, column: 14, scope: !446)
!451 = !DILocation(line: 610, column: 7, scope: !446)
!452 = !DILocation(line: 610, column: 14, scope: !446)
!453 = !DILocation(line: 610, column: 18, scope: !446)
!454 = !DILocation(line: 610, column: 16, scope: !446)
!455 = !DILocation(line: 610, column: 30, scope: !446)
!456 = !DILocation(line: 610, column: 33, scope: !446)
!457 = !DILocation(line: 610, column: 40, scope: !446)
!458 = !DILocation(line: 0, scope: !446)
!459 = !DILocation(line: 611, column: 21, scope: !446)
!460 = !DILocation(line: 611, column: 20, scope: !446)
!461 = !DILocation(line: 611, column: 19, scope: !446)
!462 = !DILocation(line: 611, column: 16, scope: !446)
!463 = distinct !{!463, !451, !459, !464}
!464 = !{!"llvm.loop.mustprogress"}
!465 = !DILocation(line: 612, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !446, file: !75, line: 612, column: 11)
!467 = !DILocation(line: 612, column: 18, scope: !466)
!468 = !DILocation(line: 612, column: 11, scope: !446)
!469 = !DILocation(line: 615, column: 25, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !75, line: 613, column: 9)
!471 = !DILocation(line: 615, column: 23, scope: !470)
!472 = !DILocation(line: 616, column: 24, scope: !470)
!473 = !DILocation(line: 617, column: 9, scope: !470)
!474 = !DILocation(line: 618, column: 5, scope: !446)
!475 = !DILocalVariable(name: "anchor_len", scope: !74, file: !75, line: 620, type: !188)
!476 = !DILocation(line: 620, column: 10, scope: !74)
!477 = !DILocation(line: 620, column: 32, scope: !74)
!478 = !DILocation(line: 620, column: 23, scope: !74)
!479 = !DILocalVariable(name: "desc_text", scope: !74, file: !75, line: 625, type: !78)
!480 = !DILocation(line: 625, column: 15, scope: !74)
!481 = !DILocation(line: 625, column: 27, scope: !74)
!482 = !DILocation(line: 625, column: 41, scope: !74)
!483 = !DILocation(line: 625, column: 39, scope: !74)
!484 = !DILocation(line: 626, column: 3, scope: !74)
!485 = !DILocation(line: 626, column: 11, scope: !74)
!486 = !DILocation(line: 626, column: 10, scope: !74)
!487 = !DILocation(line: 626, column: 21, scope: !74)
!488 = !DILocation(line: 626, column: 25, scope: !74)
!489 = !DILocation(line: 626, column: 24, scope: !74)
!490 = !DILocation(line: 626, column: 35, scope: !74)
!491 = !DILocation(line: 0, scope: !74)
!492 = !DILocation(line: 628, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !75, line: 628, column: 11)
!494 = distinct !DILexicalBlock(scope: !74, file: !75, line: 627, column: 5)
!495 = !DILocation(line: 628, column: 11, scope: !493)
!496 = !DILocation(line: 628, column: 22, scope: !493)
!497 = !DILocation(line: 628, column: 29, scope: !493)
!498 = !DILocation(line: 628, column: 34, scope: !493)
!499 = !DILocation(line: 628, column: 44, scope: !493)
!500 = !DILocation(line: 628, column: 32, scope: !493)
!501 = !DILocation(line: 628, column: 49, scope: !493)
!502 = !DILocation(line: 628, column: 11, scope: !494)
!503 = !DILocation(line: 629, column: 22, scope: !493)
!504 = !DILocation(line: 629, column: 9, scope: !493)
!505 = !DILocation(line: 630, column: 11, scope: !506)
!506 = distinct !DILexicalBlock(scope: !494, file: !75, line: 630, column: 11)
!507 = !DILocation(line: 630, column: 11, scope: !494)
!508 = !DILocation(line: 632, column: 16, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !75, line: 632, column: 15)
!510 = distinct !DILexicalBlock(scope: !506, file: !75, line: 631, column: 9)
!511 = !DILocation(line: 632, column: 15, scope: !509)
!512 = !DILocation(line: 632, column: 26, scope: !509)
!513 = !DILocation(line: 632, column: 34, scope: !509)
!514 = !DILocation(line: 632, column: 37, scope: !509)
!515 = !DILocation(line: 632, column: 15, scope: !510)
!516 = !DILocation(line: 633, column: 13, scope: !509)
!517 = !DILocation(line: 636, column: 16, scope: !518)
!518 = distinct !DILexicalBlock(scope: !510, file: !75, line: 636, column: 15)
!519 = !DILocation(line: 636, column: 29, scope: !518)
!520 = !DILocation(line: 636, column: 34, scope: !518)
!521 = !DILocation(line: 636, column: 44, scope: !518)
!522 = !DILocation(line: 636, column: 32, scope: !518)
!523 = !DILocation(line: 636, column: 49, scope: !518)
!524 = !DILocation(line: 636, column: 15, scope: !510)
!525 = !DILocation(line: 637, column: 13, scope: !518)
!526 = !DILocation(line: 638, column: 9, scope: !510)
!527 = !DILocation(line: 640, column: 16, scope: !494)
!528 = distinct !{!528, !484, !529, !464}
!529 = !DILocation(line: 641, column: 5, scope: !74)
!530 = !DILocation(line: 644, column: 3, scope: !74)
!531 = !DILocalVariable(name: "url_program", scope: !74, file: !75, line: 648, type: !78)
!532 = !DILocation(line: 648, column: 15, scope: !74)
!533 = !DILocation(line: 648, column: 38, scope: !74)
!534 = !DILocation(line: 648, column: 31, scope: !74)
!535 = !DILocation(line: 649, column: 38, scope: !74)
!536 = !DILocation(line: 649, column: 31, scope: !74)
!537 = !DILocation(line: 650, column: 38, scope: !74)
!538 = !DILocation(line: 650, column: 31, scope: !74)
!539 = !DILocation(line: 651, column: 38, scope: !74)
!540 = !DILocation(line: 651, column: 31, scope: !74)
!541 = !DILocation(line: 652, column: 38, scope: !74)
!542 = !DILocation(line: 652, column: 31, scope: !74)
!543 = !DILocation(line: 653, column: 38, scope: !74)
!544 = !DILocation(line: 653, column: 31, scope: !74)
!545 = !DILocation(line: 654, column: 38, scope: !74)
!546 = !DILocation(line: 654, column: 31, scope: !74)
!547 = !DILocation(line: 655, column: 38, scope: !74)
!548 = !DILocation(line: 655, column: 31, scope: !74)
!549 = !DILocation(line: 656, column: 38, scope: !74)
!550 = !DILocation(line: 656, column: 31, scope: !74)
!551 = !DILocation(line: 657, column: 38, scope: !74)
!552 = !DILocation(line: 657, column: 31, scope: !74)
!553 = !DILocation(line: 658, column: 31, scope: !74)
!554 = !DILocation(line: 663, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !74, file: !75, line: 663, column: 7)
!556 = !DILocation(line: 664, column: 7, scope: !555)
!557 = !DILocation(line: 664, column: 10, scope: !555)
!558 = !DILocation(line: 663, column: 7, scope: !74)
!559 = !DILocation(line: 670, column: 15, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !75, line: 665, column: 5)
!561 = !DILocation(line: 670, column: 28, scope: !560)
!562 = !DILocation(line: 670, column: 47, scope: !560)
!563 = !DILocation(line: 670, column: 41, scope: !560)
!564 = !DILocation(line: 670, column: 59, scope: !560)
!565 = !DILocation(line: 669, column: 7, scope: !560)
!566 = !DILocation(line: 671, column: 5, scope: !560)
!567 = !DILocation(line: 676, column: 48, scope: !568)
!568 = distinct !DILexicalBlock(scope: !555, file: !75, line: 673, column: 5)
!569 = !DILocation(line: 677, column: 21, scope: !568)
!570 = !DILocation(line: 677, column: 15, scope: !568)
!571 = !DILocation(line: 677, column: 33, scope: !568)
!572 = !DILocation(line: 676, column: 7, scope: !568)
!573 = !DILocation(line: 679, column: 3, scope: !74)
!574 = !DILocation(line: 683, column: 3, scope: !74)
!575 = !DILocation(line: 686, column: 3, scope: !74)
!576 = !DILocation(line: 688, column: 3, scope: !74)
!577 = !DILocation(line: 691, column: 3, scope: !74)
!578 = !DILocation(line: 695, column: 3, scope: !74)
!579 = !DILocation(line: 696, column: 1, scope: !74)
!580 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !75, file: !75, line: 836, type: !581, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !78}
!583 = !DILocalVariable(name: "program", arg: 1, scope: !580, file: !75, line: 836, type: !78)
!584 = !DILocation(line: 836, column: 34, scope: !580)
!585 = !DILocalVariable(name: "infomap", scope: !580, file: !75, line: 838, type: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 896, elements: !592)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !580, file: !75, line: 838, size: 128, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !588, file: !75, line: 838, baseType: !78, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !75, line: 838, baseType: !78, size: 64, offset: 64)
!592 = !{!593}
!593 = !DISubrange(count: 7)
!594 = !DILocation(line: 838, column: 67, scope: !580)
!595 = !DILocalVariable(name: "node", scope: !580, file: !75, line: 848, type: !78)
!596 = !DILocation(line: 848, column: 15, scope: !580)
!597 = !DILocation(line: 848, column: 22, scope: !580)
!598 = !DILocalVariable(name: "map_prog", scope: !580, file: !75, line: 849, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!600 = !DILocation(line: 849, column: 25, scope: !580)
!601 = !DILocation(line: 849, column: 36, scope: !580)
!602 = !DILocation(line: 851, column: 3, scope: !580)
!603 = !DILocation(line: 851, column: 10, scope: !580)
!604 = !DILocation(line: 851, column: 20, scope: !580)
!605 = !DILocation(line: 851, column: 28, scope: !580)
!606 = !DILocation(line: 851, column: 40, scope: !580)
!607 = !DILocation(line: 851, column: 49, scope: !580)
!608 = !DILocation(line: 851, column: 59, scope: !580)
!609 = !DILocation(line: 851, column: 33, scope: !580)
!610 = !DILocation(line: 851, column: 31, scope: !580)
!611 = !DILocation(line: 0, scope: !580)
!612 = !DILocation(line: 852, column: 13, scope: !580)
!613 = distinct !{!613, !602, !612, !464}
!614 = !DILocation(line: 854, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !580, file: !75, line: 854, column: 7)
!616 = !DILocation(line: 854, column: 17, scope: !615)
!617 = !DILocation(line: 854, column: 7, scope: !580)
!618 = !DILocation(line: 855, column: 12, scope: !615)
!619 = !DILocation(line: 855, column: 22, scope: !615)
!620 = !DILocation(line: 855, column: 10, scope: !615)
!621 = !DILocation(line: 855, column: 5, scope: !615)
!622 = !DILocation(line: 857, column: 3, scope: !580)
!623 = !DILocalVariable(name: "lc_messages", scope: !580, file: !75, line: 861, type: !78)
!624 = !DILocation(line: 861, column: 15, scope: !580)
!625 = !DILocation(line: 861, column: 29, scope: !580)
!626 = !DILocation(line: 862, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !580, file: !75, line: 862, column: 7)
!628 = !DILocation(line: 862, column: 19, scope: !627)
!629 = !DILocation(line: 862, column: 22, scope: !627)
!630 = !DILocation(line: 862, column: 7, scope: !580)
!631 = !DILocation(line: 868, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !75, line: 863, column: 5)
!633 = !DILocation(line: 870, column: 5, scope: !632)
!634 = !DILocalVariable(name: "url_program", scope: !580, file: !75, line: 874, type: !78)
!635 = !DILocation(line: 874, column: 15, scope: !580)
!636 = !DILocation(line: 874, column: 36, scope: !580)
!637 = !DILocation(line: 874, column: 29, scope: !580)
!638 = !DILocation(line: 874, column: 61, scope: !580)
!639 = !DILocation(line: 875, column: 11, scope: !580)
!640 = !DILocation(line: 876, column: 24, scope: !580)
!641 = !DILocation(line: 875, column: 3, scope: !580)
!642 = !DILocation(line: 877, column: 11, scope: !580)
!643 = !DILocation(line: 878, column: 11, scope: !580)
!644 = !DILocation(line: 878, column: 17, scope: !580)
!645 = !DILocation(line: 878, column: 25, scope: !580)
!646 = !DILocation(line: 878, column: 22, scope: !580)
!647 = !DILocation(line: 877, column: 3, scope: !580)
!648 = !DILocation(line: 879, column: 1, scope: !580)
!649 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 129, type: !650, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!650 = !DISubroutineType(types: !651)
!651 = !{!62, !62, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!653 = !DILocalVariable(name: "argc", arg: 1, scope: !649, file: !3, line: 129, type: !62)
!654 = !DILocation(line: 129, column: 11, scope: !649)
!655 = !DILocalVariable(name: "argv", arg: 2, scope: !649, file: !3, line: 129, type: !652)
!656 = !DILocation(line: 129, column: 24, scope: !649)
!657 = !DILocation(line: 132, column: 21, scope: !649)
!658 = !DILocation(line: 132, column: 3, scope: !649)
!659 = !DILocation(line: 133, column: 3, scope: !649)
!660 = !DILocation(line: 134, column: 3, scope: !649)
!661 = !DILocation(line: 135, column: 3, scope: !649)
!662 = !DILocation(line: 137, column: 3, scope: !649)
!663 = !DILocalVariable(name: "optc", scope: !649, file: !3, line: 139, type: !62)
!664 = !DILocation(line: 139, column: 7, scope: !649)
!665 = !DILocation(line: 140, column: 3, scope: !649)
!666 = !DILocation(line: 140, column: 31, scope: !649)
!667 = !DILocation(line: 140, column: 37, scope: !649)
!668 = !DILocation(line: 140, column: 18, scope: !649)
!669 = !DILocation(line: 140, column: 16, scope: !649)
!670 = !DILocation(line: 140, column: 71, scope: !649)
!671 = !DILocation(line: 142, column: 15, scope: !672)
!672 = distinct !DILexicalBlock(scope: !649, file: !3, line: 141, column: 5)
!673 = !DILocation(line: 142, column: 7, scope: !672)
!674 = !DILocation(line: 145, column: 18, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 143, column: 9)
!676 = !DILocation(line: 146, column: 11, scope: !675)
!677 = !DILocation(line: 149, column: 29, scope: !675)
!678 = !DILocation(line: 150, column: 11, scope: !675)
!679 = !DILocation(line: 153, column: 15, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !3, line: 153, column: 15)
!681 = !DILocation(line: 153, column: 15, scope: !675)
!682 = !DILocation(line: 154, column: 28, scope: !680)
!683 = !DILocation(line: 154, column: 26, scope: !680)
!684 = !DILocation(line: 154, column: 13, scope: !680)
!685 = !DILocation(line: 157, column: 26, scope: !680)
!686 = !DILocation(line: 158, column: 11, scope: !675)
!687 = !DILocation(line: 160, column: 9, scope: !675)
!688 = !DILocation(line: 162, column: 9, scope: !675)
!689 = !DILocation(line: 165, column: 11, scope: !675)
!690 = distinct !{!690, !665, !691, !464}
!691 = !DILocation(line: 167, column: 5, scope: !649)
!692 = !DILocation(line: 169, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !649, file: !3, line: 169, column: 7)
!694 = !DILocation(line: 169, column: 7, scope: !649)
!695 = !DILocation(line: 170, column: 5, scope: !693)
!696 = !DILocation(line: 172, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !649, file: !3, line: 172, column: 7)
!698 = !DILocation(line: 172, column: 20, scope: !697)
!699 = !DILocation(line: 172, column: 7, scope: !649)
!700 = !DILocation(line: 173, column: 5, scope: !697)
!701 = !DILocalVariable(name: "pipe_check", scope: !649, file: !3, line: 177, type: !67)
!702 = !DILocation(line: 177, column: 8, scope: !649)
!703 = !DILocation(line: 177, column: 23, scope: !649)
!704 = !DILocation(line: 177, column: 36, scope: !649)
!705 = !DILocation(line: 178, column: 23, scope: !649)
!706 = !DILocation(line: 178, column: 26, scope: !649)
!707 = !DILocation(line: 178, column: 39, scope: !649)
!708 = !DILocation(line: 179, column: 22, scope: !649)
!709 = !DILocation(line: 179, column: 25, scope: !649)
!710 = !DILocation(line: 0, scope: !649)
!711 = !DILocalVariable(name: "ok", scope: !649, file: !3, line: 184, type: !67)
!712 = !DILocation(line: 184, column: 8, scope: !649)
!713 = !DILocation(line: 184, column: 24, scope: !649)
!714 = !DILocation(line: 184, column: 31, scope: !649)
!715 = !DILocation(line: 184, column: 29, scope: !649)
!716 = !DILocation(line: 184, column: 40, scope: !649)
!717 = !DILocation(line: 184, column: 45, scope: !649)
!718 = !DILocation(line: 184, column: 54, scope: !649)
!719 = !DILocation(line: 184, column: 13, scope: !649)
!720 = !DILocation(line: 185, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !649, file: !3, line: 185, column: 7)
!722 = !DILocation(line: 185, column: 28, scope: !721)
!723 = !DILocation(line: 185, column: 7, scope: !649)
!724 = !DILocation(line: 186, column: 5, scope: !721)
!725 = !DILocation(line: 188, column: 10, scope: !649)
!726 = !DILocation(line: 188, column: 3, scope: !649)
!727 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 231, type: !728, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!728 = !DISubroutineType(types: !729)
!729 = !{!67, !62, !652, !67}
!730 = !DILocalVariable(name: "nfiles", arg: 1, scope: !727, file: !3, line: 231, type: !62)
!731 = !DILocation(line: 231, column: 16, scope: !727)
!732 = !DILocalVariable(name: "files", arg: 2, scope: !727, file: !3, line: 231, type: !652)
!733 = !DILocation(line: 231, column: 31, scope: !727)
!734 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !727, file: !3, line: 231, type: !67)
!735 = !DILocation(line: 231, column: 43, scope: !727)
!736 = !DILocalVariable(name: "n_outputs", scope: !727, file: !3, line: 233, type: !188)
!737 = !DILocation(line: 233, column: 10, scope: !727)
!738 = !DILocalVariable(name: "descriptors", scope: !727, file: !3, line: 234, type: !101)
!739 = !DILocation(line: 234, column: 8, scope: !727)
!740 = !DILocalVariable(name: "out_pollable", scope: !727, file: !3, line: 235, type: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!742 = !DILocation(line: 235, column: 9, scope: !727)
!743 = !DILocalVariable(name: "buffer", scope: !727, file: !3, line: 236, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 65536, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 8192)
!747 = !DILocation(line: 236, column: 8, scope: !727)
!748 = !DILocalVariable(name: "bytes_read", scope: !727, file: !3, line: 237, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !750, line: 108, baseType: !751)
!750 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !752, line: 194, baseType: !321)
!752 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!753 = !DILocation(line: 237, column: 11, scope: !727)
!754 = !DILocalVariable(name: "first_out", scope: !727, file: !3, line: 238, type: !62)
!755 = !DILocation(line: 238, column: 7, scope: !727)
!756 = !DILocalVariable(name: "ok", scope: !727, file: !3, line: 239, type: !67)
!757 = !DILocation(line: 239, column: 8, scope: !727)
!758 = !DILocalVariable(name: "flags", scope: !727, file: !3, line: 240, type: !62)
!759 = !DILocation(line: 240, column: 7, scope: !727)
!760 = !DILocation(line: 240, column: 48, scope: !727)
!761 = !DILocation(line: 240, column: 45, scope: !727)
!762 = !DILocation(line: 242, column: 3, scope: !727)
!763 = !DILocation(line: 243, column: 3, scope: !727)
!764 = !DILocation(line: 244, column: 12, scope: !727)
!765 = !DILocation(line: 244, column: 3, scope: !727)
!766 = !DILocation(line: 249, column: 27, scope: !727)
!767 = !DILocation(line: 249, column: 34, scope: !727)
!768 = !DILocation(line: 249, column: 17, scope: !727)
!769 = !DILocation(line: 249, column: 15, scope: !727)
!770 = !DILocation(line: 250, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !727, file: !3, line: 250, column: 7)
!772 = !DILocation(line: 250, column: 7, scope: !727)
!773 = !DILocation(line: 251, column: 30, scope: !771)
!774 = !DILocation(line: 251, column: 37, scope: !771)
!775 = !DILocation(line: 251, column: 20, scope: !771)
!776 = !DILocation(line: 251, column: 18, scope: !771)
!777 = !DILocation(line: 251, column: 5, scope: !771)
!778 = !DILocation(line: 252, column: 8, scope: !727)
!779 = !DILocation(line: 253, column: 3, scope: !727)
!780 = !DILocation(line: 253, column: 18, scope: !727)
!781 = !DILocation(line: 254, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !727, file: !3, line: 254, column: 7)
!783 = !DILocation(line: 254, column: 7, scope: !727)
!784 = !DILocation(line: 255, column: 41, scope: !782)
!785 = !DILocation(line: 255, column: 23, scope: !782)
!786 = !DILocation(line: 255, column: 5, scope: !782)
!787 = !DILocation(line: 255, column: 21, scope: !782)
!788 = !DILocation(line: 256, column: 24, scope: !727)
!789 = !DILocation(line: 256, column: 14, scope: !727)
!790 = !DILocation(line: 256, column: 3, scope: !727)
!791 = !DILocation(line: 256, column: 12, scope: !727)
!792 = !DILocation(line: 257, column: 12, scope: !727)
!793 = !DILocalVariable(name: "i", scope: !794, file: !3, line: 259, type: !62)
!794 = distinct !DILexicalBlock(scope: !727, file: !3, line: 259, column: 3)
!795 = !DILocation(line: 259, column: 12, scope: !794)
!796 = !DILocation(line: 259, column: 8, scope: !794)
!797 = !DILocation(line: 259, column: 19, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !3, line: 259, column: 3)
!799 = !DILocation(line: 259, column: 24, scope: !798)
!800 = !DILocation(line: 259, column: 21, scope: !798)
!801 = !DILocation(line: 259, column: 3, scope: !794)
!802 = !DILocation(line: 262, column: 30, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !3, line: 260, column: 5)
!804 = !DILocation(line: 262, column: 36, scope: !803)
!805 = !DILocation(line: 262, column: 40, scope: !803)
!806 = !DILocation(line: 262, column: 24, scope: !803)
!807 = !DILocation(line: 262, column: 7, scope: !803)
!808 = !DILocation(line: 262, column: 19, scope: !803)
!809 = !DILocation(line: 262, column: 22, scope: !803)
!810 = !DILocation(line: 263, column: 11, scope: !811)
!811 = distinct !DILexicalBlock(scope: !803, file: !3, line: 263, column: 11)
!812 = !DILocation(line: 263, column: 23, scope: !811)
!813 = !DILocation(line: 263, column: 26, scope: !811)
!814 = !DILocation(line: 263, column: 11, scope: !803)
!815 = !DILocation(line: 265, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 265, column: 15)
!817 = distinct !DILexicalBlock(scope: !811, file: !3, line: 264, column: 9)
!818 = !DILocation(line: 265, column: 15, scope: !817)
!819 = !DILocation(line: 266, column: 13, scope: !816)
!820 = !DILocation(line: 266, column: 26, scope: !816)
!821 = !DILocation(line: 266, column: 29, scope: !816)
!822 = !DILocation(line: 267, column: 11, scope: !817)
!823 = !DILocalVariable(name: "__errstatus", scope: !824, file: !3, line: 267, type: !825)
!824 = distinct !DILexicalBlock(scope: !817, file: !3, line: 267, column: 11)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!826 = !DILocation(line: 267, column: 11, scope: !824)
!827 = !DILocation(line: 270, column: 14, scope: !817)
!828 = !DILocation(line: 271, column: 9, scope: !817)
!829 = !DILocation(line: 274, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 274, column: 15)
!831 = distinct !DILexicalBlock(scope: !811, file: !3, line: 273, column: 9)
!832 = !DILocation(line: 274, column: 15, scope: !831)
!833 = !DILocation(line: 275, column: 49, scope: !830)
!834 = !DILocation(line: 275, column: 61, scope: !830)
!835 = !DILocation(line: 275, column: 31, scope: !830)
!836 = !DILocation(line: 275, column: 13, scope: !830)
!837 = !DILocation(line: 275, column: 26, scope: !830)
!838 = !DILocation(line: 275, column: 29, scope: !830)
!839 = !DILocation(line: 276, column: 20, scope: !831)
!840 = !DILocation(line: 278, column: 5, scope: !803)
!841 = !DILocation(line: 259, column: 33, scope: !798)
!842 = !DILocation(line: 259, column: 3, scope: !798)
!843 = distinct !{!843, !801, !844, !464}
!844 = !DILocation(line: 278, column: 5, scope: !794)
!845 = !DILocation(line: 280, column: 3, scope: !727)
!846 = !DILocation(line: 280, column: 10, scope: !727)
!847 = !DILocation(line: 282, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 282, column: 11)
!849 = distinct !DILexicalBlock(scope: !727, file: !3, line: 281, column: 5)
!850 = !DILocation(line: 282, column: 22, scope: !848)
!851 = !DILocation(line: 282, column: 25, scope: !848)
!852 = !DILocation(line: 282, column: 38, scope: !848)
!853 = !DILocation(line: 282, column: 11, scope: !849)
!854 = !DILocalVariable(name: "err", scope: !855, file: !3, line: 285, type: !62)
!855 = distinct !DILexicalBlock(scope: !848, file: !3, line: 283, column: 9)
!856 = !DILocation(line: 285, column: 15, scope: !855)
!857 = !DILocation(line: 285, column: 43, scope: !855)
!858 = !DILocation(line: 285, column: 55, scope: !855)
!859 = !DILocation(line: 285, column: 21, scope: !855)
!860 = !DILocation(line: 288, column: 15, scope: !861)
!861 = distinct !DILexicalBlock(scope: !855, file: !3, line: 288, column: 15)
!862 = !DILocation(line: 288, column: 19, scope: !861)
!863 = !DILocation(line: 288, column: 15, scope: !855)
!864 = !DILocation(line: 290, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 289, column: 13)
!866 = !DILocation(line: 290, column: 21, scope: !865)
!867 = !DILocation(line: 291, column: 32, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 291, column: 19)
!869 = !DILocation(line: 291, column: 45, scope: !868)
!870 = !DILocation(line: 291, column: 52, scope: !868)
!871 = !DILocation(line: 291, column: 19, scope: !868)
!872 = !DILocation(line: 291, column: 19, scope: !865)
!873 = !DILocation(line: 292, column: 20, scope: !868)
!874 = !DILocation(line: 292, column: 17, scope: !868)
!875 = !DILocation(line: 293, column: 24, scope: !865)
!876 = !DILocation(line: 294, column: 41, scope: !865)
!877 = !DILocation(line: 294, column: 54, scope: !865)
!878 = !DILocation(line: 294, column: 62, scope: !865)
!879 = !DILocation(line: 294, column: 27, scope: !865)
!880 = !DILocation(line: 294, column: 25, scope: !865)
!881 = !DILocation(line: 295, column: 15, scope: !865)
!882 = distinct !{!882, !845, !883, !464}
!883 = !DILocation(line: 322, column: 5, scope: !727)
!884 = !DILocation(line: 297, column: 20, scope: !885)
!885 = distinct !DILexicalBlock(scope: !861, file: !3, line: 297, column: 20)
!886 = !DILocation(line: 297, column: 24, scope: !885)
!887 = !DILocation(line: 297, column: 20, scope: !861)
!888 = !DILocation(line: 299, column: 15, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 298, column: 13)
!890 = !DILocation(line: 300, column: 18, scope: !889)
!891 = !DILocation(line: 301, column: 13, scope: !889)
!892 = !DILocation(line: 302, column: 9, scope: !855)
!893 = !DILocation(line: 304, column: 40, scope: !849)
!894 = !DILocation(line: 304, column: 20, scope: !849)
!895 = !DILocation(line: 304, column: 18, scope: !849)
!896 = !DILocation(line: 305, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !849, file: !3, line: 305, column: 11)
!898 = !DILocation(line: 305, column: 22, scope: !897)
!899 = !DILocation(line: 305, column: 26, scope: !897)
!900 = !DILocation(line: 305, column: 29, scope: !897)
!901 = !DILocation(line: 305, column: 35, scope: !897)
!902 = !DILocation(line: 305, column: 11, scope: !849)
!903 = !DILocation(line: 306, column: 9, scope: !897)
!904 = !DILocation(line: 307, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !849, file: !3, line: 307, column: 11)
!906 = !DILocation(line: 307, column: 22, scope: !905)
!907 = !DILocation(line: 307, column: 11, scope: !849)
!908 = !DILocation(line: 308, column: 9, scope: !905)
!909 = !DILocalVariable(name: "i", scope: !910, file: !3, line: 312, type: !62)
!910 = distinct !DILexicalBlock(scope: !849, file: !3, line: 312, column: 7)
!911 = !DILocation(line: 312, column: 16, scope: !910)
!912 = !DILocation(line: 312, column: 12, scope: !910)
!913 = !DILocation(line: 312, column: 23, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 312, column: 7)
!915 = !DILocation(line: 312, column: 28, scope: !914)
!916 = !DILocation(line: 312, column: 25, scope: !914)
!917 = !DILocation(line: 312, column: 7, scope: !910)
!918 = !DILocation(line: 313, column: 18, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !3, line: 313, column: 13)
!920 = !DILocation(line: 313, column: 30, scope: !919)
!921 = !DILocation(line: 313, column: 15, scope: !919)
!922 = !DILocation(line: 314, column: 13, scope: !919)
!923 = !DILocation(line: 314, column: 30, scope: !919)
!924 = !DILocation(line: 314, column: 42, scope: !919)
!925 = !DILocation(line: 314, column: 46, scope: !919)
!926 = !DILocation(line: 314, column: 54, scope: !919)
!927 = !DILocation(line: 314, column: 18, scope: !919)
!928 = !DILocation(line: 313, column: 13, scope: !914)
!929 = !DILocation(line: 316, column: 30, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 316, column: 17)
!931 = distinct !DILexicalBlock(scope: !919, file: !3, line: 315, column: 11)
!932 = !DILocation(line: 316, column: 43, scope: !930)
!933 = !DILocation(line: 316, column: 50, scope: !930)
!934 = !DILocation(line: 316, column: 17, scope: !930)
!935 = !DILocation(line: 316, column: 17, scope: !931)
!936 = !DILocation(line: 317, column: 18, scope: !930)
!937 = !DILocation(line: 317, column: 15, scope: !930)
!938 = !DILocation(line: 318, column: 22, scope: !931)
!939 = !DILocation(line: 319, column: 17, scope: !940)
!940 = distinct !DILexicalBlock(scope: !931, file: !3, line: 319, column: 17)
!941 = !DILocation(line: 319, column: 22, scope: !940)
!942 = !DILocation(line: 319, column: 19, scope: !940)
!943 = !DILocation(line: 319, column: 17, scope: !931)
!944 = !DILocation(line: 320, column: 41, scope: !940)
!945 = !DILocation(line: 320, column: 54, scope: !940)
!946 = !DILocation(line: 320, column: 62, scope: !940)
!947 = !DILocation(line: 320, column: 27, scope: !940)
!948 = !DILocation(line: 320, column: 25, scope: !940)
!949 = !DILocation(line: 320, column: 15, scope: !940)
!950 = !DILocation(line: 321, column: 11, scope: !931)
!951 = !DILocation(line: 314, column: 64, scope: !919)
!952 = !DILocation(line: 312, column: 37, scope: !914)
!953 = !DILocation(line: 312, column: 7, scope: !914)
!954 = distinct !{!954, !917, !955, !464}
!955 = !DILocation(line: 321, column: 11, scope: !910)
!956 = !DILocation(line: 324, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !727, file: !3, line: 324, column: 7)
!958 = !DILocation(line: 324, column: 18, scope: !957)
!959 = !DILocation(line: 324, column: 7, scope: !727)
!960 = !DILocation(line: 326, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 325, column: 5)
!962 = !DILocation(line: 327, column: 10, scope: !961)
!963 = !DILocation(line: 328, column: 5, scope: !961)
!964 = !DILocalVariable(name: "i", scope: !965, file: !3, line: 331, type: !62)
!965 = distinct !DILexicalBlock(scope: !727, file: !3, line: 331, column: 3)
!966 = !DILocation(line: 331, column: 12, scope: !965)
!967 = !DILocation(line: 331, column: 8, scope: !965)
!968 = !DILocation(line: 331, column: 19, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 331, column: 3)
!970 = !DILocation(line: 331, column: 24, scope: !969)
!971 = !DILocation(line: 331, column: 21, scope: !969)
!972 = !DILocation(line: 331, column: 3, scope: !965)
!973 = !DILocation(line: 332, column: 14, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !3, line: 332, column: 9)
!975 = !DILocation(line: 332, column: 26, scope: !974)
!976 = !DILocation(line: 332, column: 11, scope: !974)
!977 = !DILocation(line: 332, column: 29, scope: !974)
!978 = !DILocation(line: 332, column: 46, scope: !974)
!979 = !DILocation(line: 332, column: 58, scope: !974)
!980 = !DILocation(line: 332, column: 34, scope: !974)
!981 = !DILocation(line: 332, column: 9, scope: !969)
!982 = !DILocation(line: 334, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !3, line: 333, column: 7)
!984 = !DILocation(line: 335, column: 12, scope: !983)
!985 = !DILocation(line: 336, column: 7, scope: !983)
!986 = !DILocation(line: 332, column: 60, scope: !974)
!987 = !DILocation(line: 331, column: 33, scope: !969)
!988 = !DILocation(line: 331, column: 3, scope: !969)
!989 = distinct !{!989, !972, !990, !464}
!990 = !DILocation(line: 336, column: 7, scope: !965)
!991 = !DILocation(line: 338, column: 9, scope: !727)
!992 = !DILocation(line: 338, column: 3, scope: !727)
!993 = !DILocation(line: 339, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !727, file: !3, line: 339, column: 7)
!995 = !DILocation(line: 339, column: 7, scope: !727)
!996 = !DILocation(line: 340, column: 11, scope: !994)
!997 = !DILocation(line: 340, column: 5, scope: !994)
!998 = !DILocation(line: 342, column: 10, scope: !727)
!999 = !DILocation(line: 342, column: 3, scope: !727)
!1000 = distinct !DISubprogram(name: "bad_cast", scope: !75, file: !75, line: 904, type: !1001, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!54, !78}
!1003 = !DILocalVariable(name: "s", arg: 1, scope: !1000, file: !75, line: 904, type: !78)
!1004 = !DILocation(line: 904, column: 23, scope: !1000)
!1005 = !DILocation(line: 906, column: 19, scope: !1000)
!1006 = !DILocation(line: 906, column: 3, scope: !1000)
!1007 = distinct !DISubprogram(name: "fail_output", scope: !3, file: !3, line: 209, type: !1008, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!67, !101, !652, !62}
!1010 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1007, file: !3, line: 209, type: !101)
!1011 = !DILocation(line: 209, column: 19, scope: !1007)
!1012 = !DILocalVariable(name: "files", arg: 2, scope: !1007, file: !3, line: 209, type: !652)
!1013 = !DILocation(line: 209, column: 39, scope: !1007)
!1014 = !DILocalVariable(name: "i", arg: 3, scope: !1007, file: !3, line: 209, type: !62)
!1015 = !DILocation(line: 209, column: 50, scope: !1007)
!1016 = !DILocalVariable(name: "w_errno", scope: !1007, file: !3, line: 211, type: !62)
!1017 = !DILocation(line: 211, column: 7, scope: !1007)
!1018 = !DILocation(line: 211, column: 17, scope: !1007)
!1019 = !DILocalVariable(name: "fail", scope: !1007, file: !3, line: 212, type: !67)
!1020 = !DILocation(line: 212, column: 8, scope: !1007)
!1021 = !DILocation(line: 212, column: 15, scope: !1007)
!1022 = !DILocation(line: 212, column: 21, scope: !1007)
!1023 = !DILocation(line: 213, column: 15, scope: !1007)
!1024 = !DILocation(line: 213, column: 18, scope: !1007)
!1025 = !DILocation(line: 213, column: 31, scope: !1007)
!1026 = !DILocation(line: 214, column: 15, scope: !1007)
!1027 = !DILocation(line: 214, column: 18, scope: !1007)
!1028 = !DILocation(line: 214, column: 31, scope: !1007)
!1029 = !DILocation(line: 215, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 215, column: 7)
!1031 = !DILocation(line: 215, column: 7, scope: !1007)
!1032 = !DILocation(line: 217, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 216, column: 5)
!1034 = !DILocalVariable(name: "__errstatus", scope: !1035, file: !3, line: 217, type: !825)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 217, column: 7)
!1036 = !DILocation(line: 217, column: 7, scope: !1035)
!1037 = !DILocation(line: 220, column: 5, scope: !1033)
!1038 = !DILocation(line: 221, column: 3, scope: !1007)
!1039 = !DILocation(line: 221, column: 15, scope: !1007)
!1040 = !DILocation(line: 221, column: 18, scope: !1007)
!1041 = !DILocation(line: 222, column: 10, scope: !1007)
!1042 = !DILocation(line: 222, column: 3, scope: !1007)
!1043 = distinct !DISubprogram(name: "get_next_out", scope: !3, file: !3, line: 197, type: !1044, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!62, !101, !62, !62}
!1046 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1043, file: !3, line: 197, type: !101)
!1047 = !DILocation(line: 197, column: 20, scope: !1043)
!1048 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1043, file: !3, line: 197, type: !62)
!1049 = !DILocation(line: 197, column: 37, scope: !1043)
!1050 = !DILocalVariable(name: "idx", arg: 3, scope: !1043, file: !3, line: 197, type: !62)
!1051 = !DILocation(line: 197, column: 49, scope: !1043)
!1052 = !DILocation(line: 199, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 199, column: 3)
!1054 = !DILocation(line: 199, column: 8, scope: !1053)
!1055 = !DILocation(line: 199, column: 15, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 199, column: 3)
!1057 = !DILocation(line: 199, column: 22, scope: !1056)
!1058 = !DILocation(line: 199, column: 19, scope: !1056)
!1059 = !DILocation(line: 199, column: 3, scope: !1053)
!1060 = !DILocation(line: 200, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 200, column: 9)
!1062 = !DILocation(line: 200, column: 26, scope: !1061)
!1063 = !DILocation(line: 200, column: 11, scope: !1061)
!1064 = !DILocation(line: 200, column: 9, scope: !1056)
!1065 = !DILocation(line: 201, column: 14, scope: !1061)
!1066 = !DILocation(line: 201, column: 7, scope: !1061)
!1067 = !DILocation(line: 200, column: 29, scope: !1061)
!1068 = !DILocation(line: 199, column: 33, scope: !1056)
!1069 = !DILocation(line: 199, column: 3, scope: !1056)
!1070 = distinct !{!1070, !1059, !1071, !464}
!1071 = !DILocation(line: 201, column: 14, scope: !1053)
!1072 = !DILocation(line: 202, column: 3, scope: !1043)
!1073 = !DILocation(line: 203, column: 1, scope: !1043)
!1074 = distinct !DISubprogram(name: "iopoll", scope: !281, file: !281, line: 139, type: !1075, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!62, !62, !62, !67}
!1077 = !DILocalVariable(name: "fdin", arg: 1, scope: !1074, file: !281, line: 139, type: !62)
!1078 = !DILocation(line: 139, column: 13, scope: !1074)
!1079 = !DILocalVariable(name: "fdout", arg: 2, scope: !1074, file: !281, line: 139, type: !62)
!1080 = !DILocation(line: 139, column: 23, scope: !1074)
!1081 = !DILocalVariable(name: "block", arg: 3, scope: !1074, file: !281, line: 139, type: !67)
!1082 = !DILocation(line: 139, column: 35, scope: !1074)
!1083 = !DILocation(line: 141, column: 27, scope: !1074)
!1084 = !DILocation(line: 141, column: 33, scope: !1074)
!1085 = !DILocation(line: 141, column: 40, scope: !1074)
!1086 = !DILocation(line: 141, column: 10, scope: !1074)
!1087 = !DILocation(line: 141, column: 3, scope: !1074)
!1088 = distinct !DISubprogram(name: "iopoll_internal", scope: !281, file: !281, line: 62, type: !1089, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!62, !62, !62, !67, !67}
!1091 = !DILocalVariable(name: "fdin", arg: 1, scope: !1088, file: !281, line: 62, type: !62)
!1092 = !DILocation(line: 62, column: 22, scope: !1088)
!1093 = !DILocalVariable(name: "fdout", arg: 2, scope: !1088, file: !281, line: 62, type: !62)
!1094 = !DILocation(line: 62, column: 32, scope: !1088)
!1095 = !DILocalVariable(name: "block", arg: 3, scope: !1088, file: !281, line: 62, type: !67)
!1096 = !DILocation(line: 62, column: 44, scope: !1088)
!1097 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1088, file: !281, line: 62, type: !67)
!1098 = !DILocation(line: 62, column: 56, scope: !1088)
!1099 = !DILocation(line: 64, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !281, line: 64, column: 3)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !281, line: 64, column: 3)
!1102 = !DILocation(line: 64, column: 3, scope: !1101)
!1103 = !DILocalVariable(name: "pfds", scope: !1088, file: !281, line: 67, type: !1104)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 128, elements: !175)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1106, line: 36, size: 64, elements: !1107)
!1106 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1107 = !{!1108, !1109, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1105, file: !1106, line: 38, baseType: !62, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1105, file: !1106, line: 39, baseType: !1110, size: 16, offset: 32)
!1110 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1105, file: !1106, line: 40, baseType: !1110, size: 16, offset: 48)
!1112 = !DILocation(line: 67, column: 17, scope: !1088)
!1113 = !DILocation(line: 67, column: 27, scope: !1088)
!1114 = !DILocation(line: 68, column: 5, scope: !1088)
!1115 = !DILocation(line: 68, column: 13, scope: !1088)
!1116 = !DILocation(line: 69, column: 5, scope: !1088)
!1117 = !DILocation(line: 69, column: 13, scope: !1088)
!1118 = !DILocalVariable(name: "check_out_events", scope: !1088, file: !281, line: 71, type: !62)
!1119 = !DILocation(line: 71, column: 7, scope: !1088)
!1120 = !DILocalVariable(name: "ret", scope: !1088, file: !281, line: 72, type: !62)
!1121 = !DILocation(line: 72, column: 7, scope: !1088)
!1122 = !DILocation(line: 74, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1088, file: !281, line: 74, column: 7)
!1124 = !DILocation(line: 74, column: 7, scope: !1088)
!1125 = !DILocation(line: 76, column: 24, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !281, line: 75, column: 5)
!1127 = !DILocation(line: 76, column: 32, scope: !1126)
!1128 = !DILocation(line: 76, column: 39, scope: !1126)
!1129 = !DILocation(line: 76, column: 7, scope: !1126)
!1130 = !DILocation(line: 76, column: 15, scope: !1126)
!1131 = !DILocation(line: 76, column: 22, scope: !1126)
!1132 = !DILocation(line: 77, column: 24, scope: !1126)
!1133 = !DILocation(line: 78, column: 5, scope: !1126)
!1134 = !DILocation(line: 80, column: 3, scope: !1088)
!1135 = !DILocation(line: 80, column: 15, scope: !1088)
!1136 = !DILocation(line: 80, column: 12, scope: !1088)
!1137 = !DILocation(line: 80, column: 19, scope: !1088)
!1138 = !DILocation(line: 80, column: 22, scope: !1088)
!1139 = !DILocation(line: 80, column: 28, scope: !1088)
!1140 = !DILocation(line: 82, column: 19, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1088, file: !281, line: 81, column: 5)
!1142 = !DILocation(line: 82, column: 28, scope: !1141)
!1143 = !DILocation(line: 82, column: 13, scope: !1141)
!1144 = !DILocation(line: 82, column: 11, scope: !1141)
!1145 = !DILocation(line: 84, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !281, line: 84, column: 11)
!1147 = !DILocation(line: 84, column: 15, scope: !1146)
!1148 = !DILocation(line: 84, column: 11, scope: !1141)
!1149 = !DILocation(line: 85, column: 9, scope: !1146)
!1150 = distinct !{!1150, !1134, !1151, !464}
!1151 = !DILocation(line: 93, column: 5, scope: !1088)
!1152 = !DILocation(line: 86, column: 11, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1141, file: !281, line: 86, column: 11)
!1154 = !DILocation(line: 86, column: 15, scope: !1153)
!1155 = !DILocation(line: 86, column: 20, scope: !1153)
!1156 = !DILocation(line: 86, column: 25, scope: !1153)
!1157 = !DILocation(line: 86, column: 11, scope: !1141)
!1158 = !DILocation(line: 87, column: 9, scope: !1153)
!1159 = !DILocation(line: 88, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !281, line: 88, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1141, file: !281, line: 88, column: 7)
!1162 = !DILocation(line: 88, column: 7, scope: !1161)
!1163 = !DILocation(line: 89, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1141, file: !281, line: 89, column: 11)
!1165 = !DILocation(line: 89, column: 19, scope: !1164)
!1166 = !DILocation(line: 89, column: 11, scope: !1141)
!1167 = !DILocation(line: 90, column: 9, scope: !1164)
!1168 = !DILocation(line: 91, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1141, file: !281, line: 91, column: 11)
!1170 = !DILocation(line: 91, column: 19, scope: !1169)
!1171 = !DILocation(line: 91, column: 29, scope: !1169)
!1172 = !DILocation(line: 91, column: 27, scope: !1169)
!1173 = !DILocation(line: 91, column: 11, scope: !1141)
!1174 = !DILocation(line: 92, column: 16, scope: !1169)
!1175 = !DILocation(line: 92, column: 9, scope: !1169)
!1176 = !DILocation(line: 135, column: 3, scope: !1088)
!1177 = !DILocation(line: 136, column: 1, scope: !1088)
!1178 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !281, file: !281, line: 151, type: !1179, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!67, !62}
!1181 = !DILocalVariable(name: "fdin", arg: 1, scope: !1178, file: !281, line: 151, type: !62)
!1182 = !DILocation(line: 151, column: 22, scope: !1178)
!1183 = !DILocalVariable(name: "st", scope: !1178, file: !281, line: 153, type: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1185, line: 44, size: 1024, elements: !1186)
!1185 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1186 = !{!1187, !1189, !1191, !1193, !1195, !1197, !1199, !1200, !1201, !1203, !1205, !1206, !1208, !1216, !1217, !1218}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1184, file: !1185, line: 46, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !752, line: 145, baseType: !190)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1184, file: !1185, line: 47, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !752, line: 148, baseType: !190)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1184, file: !1185, line: 48, baseType: !1192, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !752, line: 150, baseType: !6)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1184, file: !1185, line: 49, baseType: !1194, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !752, line: 151, baseType: !6)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1184, file: !1185, line: 50, baseType: !1196, size: 32, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !752, line: 146, baseType: !6)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1184, file: !1185, line: 51, baseType: !1198, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !752, line: 147, baseType: !6)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1184, file: !1185, line: 52, baseType: !1188, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1184, file: !1185, line: 53, baseType: !1188, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1184, file: !1185, line: 54, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !752, line: 152, baseType: !321)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1184, file: !1185, line: 55, baseType: !1204, size: 32, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !752, line: 175, baseType: !62)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1184, file: !1185, line: 56, baseType: !62, size: 32, offset: 480)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1184, file: !1185, line: 57, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !752, line: 180, baseType: !321)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1184, file: !1185, line: 65, baseType: !1209, size: 128, offset: 576)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1210, line: 11, size: 128, elements: !1211)
!1210 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1211 = !{!1212, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1209, file: !1210, line: 16, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !752, line: 160, baseType: !321)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1209, file: !1210, line: 21, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !752, line: 197, baseType: !321)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1184, file: !1185, line: 66, baseType: !1209, size: 128, offset: 704)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1184, file: !1185, line: 67, baseType: !1209, size: 128, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1184, file: !1185, line: 79, baseType: !1219, size: 64, offset: 960)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !175)
!1220 = !DILocation(line: 153, column: 15, scope: !1178)
!1221 = !DILocalVariable(name: "always_ready", scope: !1178, file: !281, line: 154, type: !67)
!1222 = !DILocation(line: 154, column: 8, scope: !1178)
!1223 = !DILocation(line: 154, column: 30, scope: !1178)
!1224 = !DILocation(line: 154, column: 23, scope: !1178)
!1225 = !DILocation(line: 154, column: 41, scope: !1178)
!1226 = !DILocation(line: 155, column: 23, scope: !1178)
!1227 = !DILocation(line: 155, column: 27, scope: !1178)
!1228 = !DILocation(line: 156, column: 27, scope: !1178)
!1229 = !DILocation(line: 156, column: 30, scope: !1178)
!1230 = !DILocation(line: 0, scope: !1178)
!1231 = !DILocation(line: 157, column: 12, scope: !1178)
!1232 = !DILocation(line: 157, column: 10, scope: !1178)
!1233 = !DILocation(line: 157, column: 3, scope: !1178)
!1234 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !281, file: !281, line: 164, type: !1179, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1235 = !DILocalVariable(name: "fdout", arg: 1, scope: !1234, file: !281, line: 164, type: !62)
!1236 = !DILocation(line: 164, column: 23, scope: !1234)
!1237 = !DILocation(line: 166, column: 19, scope: !1234)
!1238 = !DILocation(line: 166, column: 10, scope: !1234)
!1239 = !DILocation(line: 166, column: 26, scope: !1234)
!1240 = !DILocation(line: 166, column: 3, scope: !1234)
!1241 = distinct !DISubprogram(name: "close_wait", scope: !281, file: !281, line: 200, type: !1179, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1242 = !DILocalVariable(name: "fd", arg: 1, scope: !1241, file: !281, line: 200, type: !62)
!1243 = !DILocation(line: 200, column: 17, scope: !1241)
!1244 = !DILocation(line: 202, column: 3, scope: !1241)
!1245 = !DILocation(line: 202, column: 38, scope: !1241)
!1246 = !DILocation(line: 202, column: 10, scope: !1241)
!1247 = distinct !{!1247, !1244, !1248, !464}
!1248 = !DILocation(line: 203, column: 5, scope: !1241)
!1249 = !DILocation(line: 204, column: 17, scope: !1241)
!1250 = !DILocation(line: 204, column: 10, scope: !1241)
!1251 = !DILocation(line: 204, column: 21, scope: !1241)
!1252 = !DILocation(line: 204, column: 3, scope: !1241)
!1253 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !281, file: !281, line: 180, type: !1179, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1254 = !DILocalVariable(name: "fd", arg: 1, scope: !1253, file: !281, line: 180, type: !62)
!1255 = !DILocation(line: 180, column: 33, scope: !1253)
!1256 = !DILocation(line: 182, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !281, line: 182, column: 7)
!1258 = !DILocation(line: 182, column: 7, scope: !1253)
!1259 = !DILocation(line: 184, column: 5, scope: !1257)
!1260 = !DILocation(line: 187, column: 28, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !281, line: 187, column: 7)
!1262 = !DILocation(line: 187, column: 7, scope: !1261)
!1263 = !DILocation(line: 187, column: 45, scope: !1261)
!1264 = !DILocation(line: 187, column: 7, scope: !1253)
!1265 = !DILocation(line: 189, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !281, line: 188, column: 5)
!1267 = !DILocation(line: 189, column: 13, scope: !1266)
!1268 = !DILocation(line: 190, column: 7, scope: !1266)
!1269 = !DILocation(line: 194, column: 3, scope: !1253)
!1270 = !DILocation(line: 195, column: 1, scope: !1253)
!1271 = distinct !DISubprogram(name: "write_wait", scope: !281, file: !281, line: 211, type: !1272, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !80)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!67, !62, !52, !188}
!1274 = !DILocalVariable(name: "fd", arg: 1, scope: !1271, file: !281, line: 211, type: !62)
!1275 = !DILocation(line: 211, column: 17, scope: !1271)
!1276 = !DILocalVariable(name: "buffer", arg: 2, scope: !1271, file: !281, line: 211, type: !52)
!1277 = !DILocation(line: 211, column: 33, scope: !1271)
!1278 = !DILocalVariable(name: "size", arg: 3, scope: !1271, file: !281, line: 211, type: !188)
!1279 = !DILocation(line: 211, column: 48, scope: !1271)
!1280 = !DILocalVariable(name: "buf", scope: !1271, file: !281, line: 213, type: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!1283 = !DILocation(line: 213, column: 24, scope: !1271)
!1284 = !DILocation(line: 213, column: 30, scope: !1271)
!1285 = !DILocation(line: 215, column: 3, scope: !1271)
!1286 = !DILocalVariable(name: "written", scope: !1287, file: !281, line: 217, type: !749)
!1287 = distinct !DILexicalBlock(scope: !1271, file: !281, line: 216, column: 5)
!1288 = !DILocation(line: 217, column: 15, scope: !1287)
!1289 = !DILocation(line: 217, column: 32, scope: !1287)
!1290 = !DILocation(line: 217, column: 36, scope: !1287)
!1291 = !DILocation(line: 217, column: 41, scope: !1287)
!1292 = !DILocation(line: 217, column: 25, scope: !1287)
!1293 = !DILocation(line: 218, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1287, file: !281, line: 218, column: 11)
!1295 = !DILocation(line: 218, column: 19, scope: !1294)
!1296 = !DILocation(line: 218, column: 11, scope: !1287)
!1297 = !DILocation(line: 219, column: 17, scope: !1294)
!1298 = !DILocation(line: 219, column: 9, scope: !1294)
!1299 = !DILocation(line: 221, column: 15, scope: !1287)
!1300 = !DILocation(line: 221, column: 12, scope: !1287)
!1301 = !DILocation(line: 222, column: 11, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1287, file: !281, line: 222, column: 11)
!1303 = !DILocation(line: 222, column: 16, scope: !1302)
!1304 = !DILocation(line: 222, column: 11, scope: !1287)
!1305 = !DILocation(line: 223, column: 9, scope: !1302)
!1306 = !DILocation(line: 225, column: 41, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1287, file: !281, line: 225, column: 11)
!1308 = !DILocation(line: 225, column: 13, scope: !1307)
!1309 = !DILocation(line: 225, column: 11, scope: !1287)
!1310 = !DILocation(line: 226, column: 9, scope: !1307)
!1311 = !DILocation(line: 228, column: 14, scope: !1287)
!1312 = !DILocation(line: 228, column: 11, scope: !1287)
!1313 = distinct !{!1313, !1285, !1314}
!1314 = !DILocation(line: 229, column: 5, scope: !1271)
!1315 = !DILocation(line: 230, column: 1, scope: !1271)
!1316 = distinct !DISubprogram(name: "__argmatch_die", scope: !113, file: !113, line: 58, type: !120, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1317 = !DILocation(line: 60, column: 3, scope: !1316)
!1318 = !DILocation(line: 61, column: 1, scope: !1316)
!1319 = distinct !DISubprogram(name: "argmatch", scope: !113, file: !113, line: 80, type: !1320, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!320, !78, !1322, !52, !188}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1323 = !DILocalVariable(name: "arg", arg: 1, scope: !1319, file: !113, line: 80, type: !78)
!1324 = !DILocation(line: 80, column: 23, scope: !1319)
!1325 = !DILocalVariable(name: "arglist", arg: 2, scope: !1319, file: !113, line: 80, type: !1322)
!1326 = !DILocation(line: 80, column: 47, scope: !1319)
!1327 = !DILocalVariable(name: "vallist", arg: 3, scope: !1319, file: !113, line: 81, type: !52)
!1328 = !DILocation(line: 81, column: 23, scope: !1319)
!1329 = !DILocalVariable(name: "valsize", arg: 4, scope: !1319, file: !113, line: 81, type: !188)
!1330 = !DILocation(line: 81, column: 39, scope: !1319)
!1331 = !DILocalVariable(name: "arglen", scope: !1319, file: !113, line: 83, type: !188)
!1332 = !DILocation(line: 83, column: 10, scope: !1319)
!1333 = !DILocation(line: 83, column: 27, scope: !1319)
!1334 = !DILocation(line: 83, column: 19, scope: !1319)
!1335 = !DILocalVariable(name: "matchind", scope: !1319, file: !113, line: 85, type: !320)
!1336 = !DILocation(line: 85, column: 13, scope: !1319)
!1337 = !DILocalVariable(name: "ambiguous", scope: !1319, file: !113, line: 86, type: !67)
!1338 = !DILocation(line: 86, column: 8, scope: !1319)
!1339 = !DILocalVariable(name: "i", scope: !1340, file: !113, line: 89, type: !188)
!1340 = distinct !DILexicalBlock(scope: !1319, file: !113, line: 89, column: 3)
!1341 = !DILocation(line: 89, column: 15, scope: !1340)
!1342 = !DILocation(line: 89, column: 8, scope: !1340)
!1343 = !DILocation(line: 89, column: 22, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !113, line: 89, column: 3)
!1345 = !DILocation(line: 89, column: 30, scope: !1344)
!1346 = !DILocation(line: 89, column: 3, scope: !1340)
!1347 = !DILocation(line: 91, column: 21, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !113, line: 91, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !113, line: 90, column: 5)
!1350 = !DILocation(line: 91, column: 29, scope: !1348)
!1351 = !DILocation(line: 91, column: 33, scope: !1348)
!1352 = !DILocation(line: 91, column: 38, scope: !1348)
!1353 = !DILocation(line: 91, column: 12, scope: !1348)
!1354 = !DILocation(line: 91, column: 11, scope: !1349)
!1355 = !DILocation(line: 93, column: 23, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !113, line: 93, column: 15)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !113, line: 92, column: 9)
!1358 = !DILocation(line: 93, column: 31, scope: !1356)
!1359 = !DILocation(line: 93, column: 15, scope: !1356)
!1360 = !DILocation(line: 93, column: 38, scope: !1356)
!1361 = !DILocation(line: 93, column: 35, scope: !1356)
!1362 = !DILocation(line: 93, column: 15, scope: !1357)
!1363 = !DILocation(line: 95, column: 20, scope: !1356)
!1364 = !DILocation(line: 95, column: 13, scope: !1356)
!1365 = !DILocation(line: 96, column: 20, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1356, file: !113, line: 96, column: 20)
!1367 = !DILocation(line: 96, column: 29, scope: !1366)
!1368 = !DILocation(line: 96, column: 20, scope: !1356)
!1369 = !DILocation(line: 98, column: 24, scope: !1366)
!1370 = !DILocation(line: 98, column: 22, scope: !1366)
!1371 = !DILocation(line: 98, column: 13, scope: !1366)
!1372 = !DILocation(line: 102, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !113, line: 102, column: 19)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !113, line: 100, column: 13)
!1375 = !DILocation(line: 102, column: 27, scope: !1373)
!1376 = !DILocation(line: 103, column: 19, scope: !1373)
!1377 = !DILocation(line: 103, column: 45, scope: !1373)
!1378 = !DILocation(line: 103, column: 55, scope: !1373)
!1379 = !DILocation(line: 103, column: 65, scope: !1373)
!1380 = !DILocation(line: 103, column: 63, scope: !1373)
!1381 = !DILocation(line: 103, column: 53, scope: !1373)
!1382 = !DILocation(line: 104, column: 45, scope: !1373)
!1383 = !DILocation(line: 104, column: 55, scope: !1373)
!1384 = !DILocation(line: 104, column: 65, scope: !1373)
!1385 = !DILocation(line: 104, column: 63, scope: !1373)
!1386 = !DILocation(line: 104, column: 53, scope: !1373)
!1387 = !DILocation(line: 104, column: 68, scope: !1373)
!1388 = !DILocation(line: 103, column: 23, scope: !1373)
!1389 = !DILocation(line: 102, column: 19, scope: !1374)
!1390 = !DILocation(line: 108, column: 29, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1373, file: !113, line: 105, column: 17)
!1392 = !DILocation(line: 109, column: 17, scope: !1391)
!1393 = !DILocation(line: 111, column: 9, scope: !1357)
!1394 = !DILocation(line: 112, column: 5, scope: !1349)
!1395 = !DILocation(line: 89, column: 35, scope: !1344)
!1396 = !DILocation(line: 89, column: 3, scope: !1344)
!1397 = distinct !{!1397, !1346, !1398, !464}
!1398 = !DILocation(line: 112, column: 5, scope: !1340)
!1399 = !DILocation(line: 113, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1319, file: !113, line: 113, column: 7)
!1401 = !DILocation(line: 113, column: 7, scope: !1319)
!1402 = !DILocation(line: 114, column: 5, scope: !1400)
!1403 = !DILocation(line: 116, column: 12, scope: !1400)
!1404 = !DILocation(line: 116, column: 5, scope: !1400)
!1405 = !DILocation(line: 117, column: 1, scope: !1319)
!1406 = distinct !DISubprogram(name: "argmatch_exact", scope: !113, file: !113, line: 120, type: !1407, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!320, !78, !1322}
!1409 = !DILocalVariable(name: "arg", arg: 1, scope: !1406, file: !113, line: 120, type: !78)
!1410 = !DILocation(line: 120, column: 29, scope: !1406)
!1411 = !DILocalVariable(name: "arglist", arg: 2, scope: !1406, file: !113, line: 120, type: !1322)
!1412 = !DILocation(line: 120, column: 53, scope: !1406)
!1413 = !DILocalVariable(name: "i", scope: !1414, file: !113, line: 123, type: !188)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !113, line: 123, column: 3)
!1415 = !DILocation(line: 123, column: 15, scope: !1414)
!1416 = !DILocation(line: 123, column: 8, scope: !1414)
!1417 = !DILocation(line: 123, column: 22, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !113, line: 123, column: 3)
!1419 = !DILocation(line: 123, column: 30, scope: !1418)
!1420 = !DILocation(line: 123, column: 3, scope: !1414)
!1421 = !DILocation(line: 125, column: 18, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !113, line: 125, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !113, line: 124, column: 5)
!1424 = !DILocation(line: 125, column: 26, scope: !1422)
!1425 = !DILocation(line: 125, column: 30, scope: !1422)
!1426 = !DILocation(line: 125, column: 11, scope: !1422)
!1427 = !DILocation(line: 125, column: 11, scope: !1423)
!1428 = !DILocation(line: 126, column: 16, scope: !1422)
!1429 = !DILocation(line: 126, column: 9, scope: !1422)
!1430 = !DILocation(line: 127, column: 5, scope: !1423)
!1431 = !DILocation(line: 123, column: 35, scope: !1418)
!1432 = !DILocation(line: 123, column: 3, scope: !1418)
!1433 = distinct !{!1433, !1420, !1434, !464}
!1434 = !DILocation(line: 127, column: 5, scope: !1414)
!1435 = !DILocation(line: 129, column: 3, scope: !1406)
!1436 = !DILocation(line: 130, column: 1, scope: !1406)
!1437 = distinct !DISubprogram(name: "argmatch_invalid", scope: !113, file: !113, line: 138, type: !1438, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !78, !78, !320}
!1440 = !DILocalVariable(name: "context", arg: 1, scope: !1437, file: !113, line: 138, type: !78)
!1441 = !DILocation(line: 138, column: 31, scope: !1437)
!1442 = !DILocalVariable(name: "value", arg: 2, scope: !1437, file: !113, line: 138, type: !78)
!1443 = !DILocation(line: 138, column: 52, scope: !1437)
!1444 = !DILocalVariable(name: "problem", arg: 3, scope: !1437, file: !113, line: 138, type: !320)
!1445 = !DILocation(line: 138, column: 69, scope: !1437)
!1446 = !DILocalVariable(name: "format", scope: !1437, file: !113, line: 140, type: !78)
!1447 = !DILocation(line: 140, column: 15, scope: !1437)
!1448 = !DILocation(line: 140, column: 25, scope: !1437)
!1449 = !DILocation(line: 140, column: 33, scope: !1437)
!1450 = !DILocation(line: 141, column: 27, scope: !1437)
!1451 = !DILocation(line: 142, column: 27, scope: !1437)
!1452 = !DILocation(line: 144, column: 3, scope: !1437)
!1453 = !DILocation(line: 146, column: 1, scope: !1437)
!1454 = distinct !DISubprogram(name: "argmatch_valid", scope: !113, file: !113, line: 153, type: !1455, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1322, !52, !188}
!1457 = !DILocalVariable(name: "arglist", arg: 1, scope: !1454, file: !113, line: 153, type: !1322)
!1458 = !DILocation(line: 153, column: 36, scope: !1454)
!1459 = !DILocalVariable(name: "vallist", arg: 2, scope: !1454, file: !113, line: 154, type: !52)
!1460 = !DILocation(line: 154, column: 29, scope: !1454)
!1461 = !DILocalVariable(name: "valsize", arg: 3, scope: !1454, file: !113, line: 154, type: !188)
!1462 = !DILocation(line: 154, column: 45, scope: !1454)
!1463 = !DILocalVariable(name: "last_val", scope: !1454, file: !113, line: 156, type: !78)
!1464 = !DILocation(line: 156, column: 15, scope: !1454)
!1465 = !DILocation(line: 160, column: 3, scope: !1454)
!1466 = !DILocalVariable(name: "i", scope: !1467, file: !113, line: 161, type: !188)
!1467 = distinct !DILexicalBlock(scope: !1454, file: !113, line: 161, column: 3)
!1468 = !DILocation(line: 161, column: 15, scope: !1467)
!1469 = !DILocation(line: 161, column: 8, scope: !1467)
!1470 = !DILocation(line: 161, column: 22, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !113, line: 161, column: 3)
!1472 = !DILocation(line: 161, column: 30, scope: !1471)
!1473 = !DILocation(line: 161, column: 3, scope: !1467)
!1474 = !DILocation(line: 162, column: 10, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !113, line: 162, column: 9)
!1476 = !DILocation(line: 162, column: 12, scope: !1475)
!1477 = !DILocation(line: 163, column: 9, scope: !1475)
!1478 = !DILocation(line: 163, column: 20, scope: !1475)
!1479 = !DILocation(line: 163, column: 45, scope: !1475)
!1480 = !DILocation(line: 163, column: 55, scope: !1475)
!1481 = !DILocation(line: 163, column: 65, scope: !1475)
!1482 = !DILocation(line: 163, column: 63, scope: !1475)
!1483 = !DILocation(line: 163, column: 53, scope: !1475)
!1484 = !DILocation(line: 163, column: 68, scope: !1475)
!1485 = !DILocation(line: 163, column: 13, scope: !1475)
!1486 = !DILocation(line: 162, column: 9, scope: !1471)
!1487 = !DILocation(line: 165, column: 18, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1475, file: !113, line: 164, column: 7)
!1489 = !DILocation(line: 165, column: 45, scope: !1488)
!1490 = !DILocation(line: 165, column: 53, scope: !1488)
!1491 = !DILocation(line: 165, column: 38, scope: !1488)
!1492 = !DILocation(line: 165, column: 9, scope: !1488)
!1493 = !DILocation(line: 166, column: 35, scope: !1488)
!1494 = !DILocation(line: 166, column: 45, scope: !1488)
!1495 = !DILocation(line: 166, column: 55, scope: !1488)
!1496 = !DILocation(line: 166, column: 53, scope: !1488)
!1497 = !DILocation(line: 166, column: 43, scope: !1488)
!1498 = !DILocation(line: 166, column: 18, scope: !1488)
!1499 = !DILocation(line: 167, column: 7, scope: !1488)
!1500 = !DILocation(line: 170, column: 18, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1475, file: !113, line: 169, column: 7)
!1502 = !DILocation(line: 170, column: 41, scope: !1501)
!1503 = !DILocation(line: 170, column: 49, scope: !1501)
!1504 = !DILocation(line: 170, column: 34, scope: !1501)
!1505 = !DILocation(line: 170, column: 9, scope: !1501)
!1506 = !DILocation(line: 163, column: 75, scope: !1475)
!1507 = !DILocation(line: 161, column: 35, scope: !1471)
!1508 = !DILocation(line: 161, column: 3, scope: !1471)
!1509 = distinct !{!1509, !1473, !1510, !464}
!1510 = !DILocation(line: 171, column: 7, scope: !1467)
!1511 = !DILocation(line: 172, column: 3, scope: !1454)
!1512 = !DILocation(line: 173, column: 1, scope: !1454)
!1513 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !113, file: !113, line: 182, type: !1514, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!320, !78, !78, !1322, !52, !188, !117, !67}
!1516 = !DILocalVariable(name: "context", arg: 1, scope: !1513, file: !113, line: 182, type: !78)
!1517 = !DILocation(line: 182, column: 35, scope: !1513)
!1518 = !DILocalVariable(name: "arg", arg: 2, scope: !1513, file: !113, line: 183, type: !78)
!1519 = !DILocation(line: 183, column: 35, scope: !1513)
!1520 = !DILocalVariable(name: "arglist", arg: 3, scope: !1513, file: !113, line: 183, type: !1322)
!1521 = !DILocation(line: 183, column: 59, scope: !1513)
!1522 = !DILocalVariable(name: "vallist", arg: 4, scope: !1513, file: !113, line: 184, type: !52)
!1523 = !DILocation(line: 184, column: 35, scope: !1513)
!1524 = !DILocalVariable(name: "valsize", arg: 5, scope: !1513, file: !113, line: 184, type: !188)
!1525 = !DILocation(line: 184, column: 51, scope: !1513)
!1526 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1513, file: !113, line: 185, type: !117)
!1527 = !DILocation(line: 185, column: 40, scope: !1513)
!1528 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1513, file: !113, line: 186, type: !67)
!1529 = !DILocation(line: 186, column: 28, scope: !1513)
!1530 = !DILocalVariable(name: "res", scope: !1513, file: !113, line: 188, type: !320)
!1531 = !DILocation(line: 188, column: 13, scope: !1513)
!1532 = !DILocation(line: 189, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1513, file: !113, line: 189, column: 7)
!1534 = !DILocation(line: 189, column: 7, scope: !1513)
!1535 = !DILocation(line: 190, column: 21, scope: !1533)
!1536 = !DILocation(line: 190, column: 26, scope: !1533)
!1537 = !DILocation(line: 190, column: 35, scope: !1533)
!1538 = !DILocation(line: 190, column: 44, scope: !1533)
!1539 = !DILocation(line: 190, column: 11, scope: !1533)
!1540 = !DILocation(line: 190, column: 9, scope: !1533)
!1541 = !DILocation(line: 190, column: 5, scope: !1533)
!1542 = !DILocation(line: 192, column: 27, scope: !1533)
!1543 = !DILocation(line: 192, column: 32, scope: !1533)
!1544 = !DILocation(line: 192, column: 11, scope: !1533)
!1545 = !DILocation(line: 192, column: 9, scope: !1533)
!1546 = !DILocation(line: 194, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1513, file: !113, line: 194, column: 7)
!1548 = !DILocation(line: 194, column: 11, scope: !1547)
!1549 = !DILocation(line: 194, column: 7, scope: !1513)
!1550 = !DILocation(line: 196, column: 12, scope: !1547)
!1551 = !DILocation(line: 196, column: 5, scope: !1547)
!1552 = !DILocation(line: 199, column: 21, scope: !1513)
!1553 = !DILocation(line: 199, column: 30, scope: !1513)
!1554 = !DILocation(line: 199, column: 35, scope: !1513)
!1555 = !DILocation(line: 199, column: 3, scope: !1513)
!1556 = !DILocation(line: 200, column: 19, scope: !1513)
!1557 = !DILocation(line: 200, column: 28, scope: !1513)
!1558 = !DILocation(line: 200, column: 37, scope: !1513)
!1559 = !DILocation(line: 200, column: 3, scope: !1513)
!1560 = !DILocation(line: 201, column: 5, scope: !1513)
!1561 = !DILocation(line: 201, column: 3, scope: !1513)
!1562 = !DILocation(line: 203, column: 3, scope: !1513)
!1563 = !DILocation(line: 204, column: 1, scope: !1513)
!1564 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !113, file: !113, line: 209, type: !1565, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !80)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!78, !52, !1322, !52, !188}
!1567 = !DILocalVariable(name: "value", arg: 1, scope: !1564, file: !113, line: 209, type: !52)
!1568 = !DILocation(line: 209, column: 35, scope: !1564)
!1569 = !DILocalVariable(name: "arglist", arg: 2, scope: !1564, file: !113, line: 210, type: !1322)
!1570 = !DILocation(line: 210, column: 42, scope: !1564)
!1571 = !DILocalVariable(name: "vallist", arg: 3, scope: !1564, file: !113, line: 211, type: !52)
!1572 = !DILocation(line: 211, column: 35, scope: !1564)
!1573 = !DILocalVariable(name: "valsize", arg: 4, scope: !1564, file: !113, line: 211, type: !188)
!1574 = !DILocation(line: 211, column: 51, scope: !1564)
!1575 = !DILocalVariable(name: "i", scope: !1576, file: !113, line: 213, type: !188)
!1576 = distinct !DILexicalBlock(scope: !1564, file: !113, line: 213, column: 3)
!1577 = !DILocation(line: 213, column: 15, scope: !1576)
!1578 = !DILocation(line: 213, column: 8, scope: !1576)
!1579 = !DILocation(line: 213, column: 22, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !113, line: 213, column: 3)
!1581 = !DILocation(line: 213, column: 30, scope: !1580)
!1582 = !DILocation(line: 213, column: 3, scope: !1576)
!1583 = !DILocation(line: 214, column: 16, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !113, line: 214, column: 9)
!1585 = !DILocation(line: 214, column: 38, scope: !1584)
!1586 = !DILocation(line: 214, column: 48, scope: !1584)
!1587 = !DILocation(line: 214, column: 58, scope: !1584)
!1588 = !DILocation(line: 214, column: 56, scope: !1584)
!1589 = !DILocation(line: 214, column: 46, scope: !1584)
!1590 = !DILocation(line: 214, column: 61, scope: !1584)
!1591 = !DILocation(line: 214, column: 9, scope: !1584)
!1592 = !DILocation(line: 214, column: 9, scope: !1580)
!1593 = !DILocation(line: 215, column: 14, scope: !1584)
!1594 = !DILocation(line: 215, column: 22, scope: !1584)
!1595 = !DILocation(line: 215, column: 7, scope: !1584)
!1596 = !DILocation(line: 214, column: 68, scope: !1584)
!1597 = !DILocation(line: 213, column: 35, scope: !1580)
!1598 = !DILocation(line: 213, column: 3, scope: !1580)
!1599 = distinct !{!1599, !1582, !1600, !464}
!1600 = !DILocation(line: 215, column: 23, scope: !1576)
!1601 = !DILocation(line: 216, column: 3, scope: !1564)
!1602 = !DILocation(line: 217, column: 1, scope: !1564)
!1603 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !125, file: !125, line: 50, type: !581, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !80)
!1604 = !DILocalVariable(name: "file", arg: 1, scope: !1603, file: !125, line: 50, type: !78)
!1605 = !DILocation(line: 50, column: 41, scope: !1603)
!1606 = !DILocation(line: 52, column: 15, scope: !1603)
!1607 = !DILocation(line: 52, column: 13, scope: !1603)
!1608 = !DILocation(line: 53, column: 1, scope: !1603)
!1609 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !125, file: !125, line: 87, type: !1610, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !80)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !67}
!1612 = !DILocalVariable(name: "ignore", arg: 1, scope: !1609, file: !125, line: 87, type: !67)
!1613 = !DILocation(line: 87, column: 37, scope: !1609)
!1614 = !DILocation(line: 89, column: 18, scope: !1609)
!1615 = !DILocation(line: 89, column: 16, scope: !1609)
!1616 = !DILocation(line: 90, column: 1, scope: !1609)
!1617 = distinct !DISubprogram(name: "close_stdout", scope: !125, file: !125, line: 116, type: !120, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !80)
!1618 = !DILocation(line: 118, column: 21, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1617, file: !125, line: 118, column: 7)
!1620 = !DILocation(line: 118, column: 7, scope: !1619)
!1621 = !DILocation(line: 118, column: 29, scope: !1619)
!1622 = !DILocation(line: 119, column: 7, scope: !1619)
!1623 = !DILocation(line: 119, column: 12, scope: !1619)
!1624 = !DILocation(line: 119, column: 25, scope: !1619)
!1625 = !DILocation(line: 119, column: 28, scope: !1619)
!1626 = !DILocation(line: 119, column: 34, scope: !1619)
!1627 = !DILocation(line: 118, column: 7, scope: !1617)
!1628 = !DILocalVariable(name: "write_error", scope: !1629, file: !125, line: 121, type: !78)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !125, line: 120, column: 5)
!1630 = !DILocation(line: 121, column: 19, scope: !1629)
!1631 = !DILocation(line: 121, column: 33, scope: !1629)
!1632 = !DILocation(line: 122, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !125, line: 122, column: 11)
!1634 = !DILocation(line: 122, column: 11, scope: !1629)
!1635 = !DILocation(line: 123, column: 9, scope: !1633)
!1636 = !DILocation(line: 126, column: 9, scope: !1633)
!1637 = !DILocation(line: 128, column: 14, scope: !1629)
!1638 = !DILocation(line: 128, column: 7, scope: !1629)
!1639 = !DILocation(line: 133, column: 42, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1617, file: !125, line: 133, column: 7)
!1641 = !DILocation(line: 133, column: 28, scope: !1640)
!1642 = !DILocation(line: 133, column: 50, scope: !1640)
!1643 = !DILocation(line: 133, column: 7, scope: !1617)
!1644 = !DILocation(line: 134, column: 12, scope: !1640)
!1645 = !DILocation(line: 134, column: 5, scope: !1640)
!1646 = !DILocation(line: 135, column: 1, scope: !1617)
!1647 = distinct !DISubprogram(name: "verror", scope: !132, file: !132, line: 251, type: !1648, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !62, !62, !78, !140}
!1650 = !DILocalVariable(name: "status", arg: 1, scope: !1647, file: !132, line: 251, type: !62)
!1651 = !DILocation(line: 251, column: 1, scope: !1647)
!1652 = !DILocalVariable(name: "errnum", arg: 2, scope: !1647, file: !132, line: 251, type: !62)
!1653 = !DILocalVariable(name: "message", arg: 3, scope: !1647, file: !132, line: 251, type: !78)
!1654 = !DILocalVariable(name: "args", arg: 4, scope: !1647, file: !132, line: 251, type: !140)
!1655 = !DILocation(line: 261, column: 3, scope: !1647)
!1656 = !DILocation(line: 265, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1647, file: !132, line: 265, column: 7)
!1658 = !DILocation(line: 265, column: 7, scope: !1647)
!1659 = !DILocation(line: 266, column: 7, scope: !1657)
!1660 = !DILocation(line: 266, column: 5, scope: !1657)
!1661 = !DILocation(line: 272, column: 16, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !132, line: 268, column: 5)
!1663 = !DILocation(line: 272, column: 32, scope: !1662)
!1664 = !DILocation(line: 272, column: 7, scope: !1662)
!1665 = !DILocation(line: 276, column: 3, scope: !1647)
!1666 = !DILocation(line: 282, column: 1, scope: !1647)
!1667 = distinct !DISubprogram(name: "flush_stdout", scope: !132, file: !132, line: 163, type: !120, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1668 = !DILocalVariable(name: "stdout_fd", scope: !1667, file: !132, line: 166, type: !62)
!1669 = !DILocation(line: 166, column: 7, scope: !1667)
!1670 = !DILocation(line: 172, column: 13, scope: !1667)
!1671 = !DILocation(line: 182, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !132, line: 182, column: 7)
!1673 = !DILocation(line: 182, column: 9, scope: !1672)
!1674 = !DILocation(line: 182, column: 22, scope: !1672)
!1675 = !DILocation(line: 182, column: 34, scope: !1672)
!1676 = !DILocation(line: 182, column: 25, scope: !1672)
!1677 = !DILocation(line: 182, column: 7, scope: !1667)
!1678 = !DILocation(line: 184, column: 5, scope: !1672)
!1679 = !DILocation(line: 185, column: 1, scope: !1667)
!1680 = distinct !DISubprogram(name: "error_tail", scope: !132, file: !132, line: 219, type: !1648, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1681 = !DILocalVariable(name: "status", arg: 1, scope: !1680, file: !132, line: 219, type: !62)
!1682 = !DILocation(line: 219, column: 1, scope: !1680)
!1683 = !DILocalVariable(name: "errnum", arg: 2, scope: !1680, file: !132, line: 219, type: !62)
!1684 = !DILocalVariable(name: "message", arg: 3, scope: !1680, file: !132, line: 219, type: !78)
!1685 = !DILocalVariable(name: "args", arg: 4, scope: !1680, file: !132, line: 219, type: !140)
!1686 = !DILocation(line: 229, column: 13, scope: !1680)
!1687 = !DILocation(line: 229, column: 21, scope: !1680)
!1688 = !DILocation(line: 229, column: 3, scope: !1680)
!1689 = !DILocation(line: 232, column: 3, scope: !1680)
!1690 = !DILocation(line: 233, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !132, line: 233, column: 7)
!1692 = !DILocation(line: 233, column: 7, scope: !1680)
!1693 = !DILocation(line: 234, column: 26, scope: !1691)
!1694 = !DILocation(line: 234, column: 5, scope: !1691)
!1695 = !DILocation(line: 238, column: 3, scope: !1680)
!1696 = !DILocation(line: 240, column: 3, scope: !1680)
!1697 = !DILocation(line: 241, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1680, file: !132, line: 241, column: 7)
!1699 = !DILocation(line: 241, column: 7, scope: !1680)
!1700 = !DILocation(line: 242, column: 11, scope: !1698)
!1701 = !DILocation(line: 242, column: 5, scope: !1698)
!1702 = !DILocation(line: 243, column: 1, scope: !1680)
!1703 = distinct !DISubprogram(name: "print_errno_message", scope: !132, file: !132, line: 188, type: !60, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1704 = !DILocalVariable(name: "errnum", arg: 1, scope: !1703, file: !132, line: 188, type: !62)
!1705 = !DILocation(line: 188, column: 26, scope: !1703)
!1706 = !DILocalVariable(name: "s", scope: !1703, file: !132, line: 190, type: !78)
!1707 = !DILocation(line: 190, column: 15, scope: !1703)
!1708 = !DILocalVariable(name: "errbuf", scope: !1703, file: !132, line: 193, type: !1709)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8192, elements: !1710)
!1710 = !{!1711}
!1711 = !DISubrange(count: 1024)
!1712 = !DILocation(line: 193, column: 8, scope: !1703)
!1713 = !DILocation(line: 195, column: 21, scope: !1703)
!1714 = !DILocation(line: 195, column: 29, scope: !1703)
!1715 = !DILocation(line: 195, column: 7, scope: !1703)
!1716 = !DILocation(line: 195, column: 5, scope: !1703)
!1717 = !DILocation(line: 207, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1703, file: !132, line: 207, column: 7)
!1719 = !DILocation(line: 207, column: 7, scope: !1703)
!1720 = !DILocation(line: 208, column: 9, scope: !1718)
!1721 = !DILocation(line: 208, column: 7, scope: !1718)
!1722 = !DILocation(line: 208, column: 5, scope: !1718)
!1723 = !DILocation(line: 214, column: 12, scope: !1703)
!1724 = !DILocation(line: 214, column: 28, scope: !1703)
!1725 = !DILocation(line: 214, column: 3, scope: !1703)
!1726 = !DILocation(line: 216, column: 1, scope: !1703)
!1727 = distinct !DISubprogram(name: "is_open", scope: !132, file: !132, line: 145, type: !1728, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!62, !62}
!1730 = !DILocalVariable(name: "fd", arg: 1, scope: !1727, file: !132, line: 145, type: !62)
!1731 = !DILocation(line: 145, column: 14, scope: !1727)
!1732 = !DILocation(line: 157, column: 22, scope: !1727)
!1733 = !DILocation(line: 157, column: 15, scope: !1727)
!1734 = !DILocation(line: 157, column: 12, scope: !1727)
!1735 = !DILocation(line: 157, column: 3, scope: !1727)
!1736 = distinct !DISubprogram(name: "error", scope: !132, file: !132, line: 285, type: !1737, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !62, !62, !78, null}
!1739 = !DILocalVariable(name: "status", arg: 1, scope: !1736, file: !132, line: 285, type: !62)
!1740 = !DILocation(line: 285, column: 12, scope: !1736)
!1741 = !DILocalVariable(name: "errnum", arg: 2, scope: !1736, file: !132, line: 285, type: !62)
!1742 = !DILocation(line: 285, column: 24, scope: !1736)
!1743 = !DILocalVariable(name: "message", arg: 3, scope: !1736, file: !132, line: 285, type: !78)
!1744 = !DILocation(line: 285, column: 44, scope: !1736)
!1745 = !DILocalVariable(name: "ap", scope: !1736, file: !132, line: 287, type: !140)
!1746 = !DILocation(line: 287, column: 11, scope: !1736)
!1747 = !DILocation(line: 288, column: 3, scope: !1736)
!1748 = !DILocation(line: 289, column: 3, scope: !1736)
!1749 = !DILocation(line: 290, column: 3, scope: !1736)
!1750 = !DILocation(line: 291, column: 1, scope: !1736)
!1751 = !DILocalVariable(name: "status", arg: 1, scope: !137, file: !132, line: 298, type: !62)
!1752 = !DILocation(line: 298, column: 1, scope: !137)
!1753 = !DILocalVariable(name: "errnum", arg: 2, scope: !137, file: !132, line: 298, type: !62)
!1754 = !DILocalVariable(name: "file_name", arg: 3, scope: !137, file: !132, line: 298, type: !78)
!1755 = !DILocalVariable(name: "line_number", arg: 4, scope: !137, file: !132, line: 298, type: !6)
!1756 = !DILocalVariable(name: "message", arg: 5, scope: !137, file: !132, line: 298, type: !78)
!1757 = !DILocalVariable(name: "args", arg: 6, scope: !137, file: !132, line: 298, type: !140)
!1758 = !DILocation(line: 302, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !137, file: !132, line: 302, column: 7)
!1760 = !DILocation(line: 302, column: 7, scope: !137)
!1761 = !DILocation(line: 307, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !132, line: 307, column: 11)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !132, line: 303, column: 5)
!1764 = !DILocation(line: 307, column: 30, scope: !1762)
!1765 = !DILocation(line: 307, column: 27, scope: !1762)
!1766 = !DILocation(line: 308, column: 11, scope: !1762)
!1767 = !DILocation(line: 308, column: 15, scope: !1762)
!1768 = !DILocation(line: 308, column: 28, scope: !1762)
!1769 = !DILocation(line: 308, column: 25, scope: !1762)
!1770 = !DILocation(line: 309, column: 15, scope: !1762)
!1771 = !DILocation(line: 309, column: 19, scope: !1762)
!1772 = !DILocation(line: 309, column: 33, scope: !1762)
!1773 = !DILocation(line: 310, column: 19, scope: !1762)
!1774 = !DILocation(line: 310, column: 22, scope: !1762)
!1775 = !DILocation(line: 310, column: 32, scope: !1762)
!1776 = !DILocation(line: 311, column: 19, scope: !1762)
!1777 = !DILocation(line: 311, column: 30, scope: !1762)
!1778 = !DILocation(line: 311, column: 45, scope: !1762)
!1779 = !DILocation(line: 311, column: 22, scope: !1762)
!1780 = !DILocation(line: 311, column: 56, scope: !1762)
!1781 = !DILocation(line: 307, column: 11, scope: !1763)
!1782 = !DILocation(line: 314, column: 9, scope: !1762)
!1783 = !DILocation(line: 316, column: 23, scope: !1763)
!1784 = !DILocation(line: 316, column: 21, scope: !1763)
!1785 = !DILocation(line: 317, column: 25, scope: !1763)
!1786 = !DILocation(line: 317, column: 23, scope: !1763)
!1787 = !DILocation(line: 318, column: 5, scope: !1763)
!1788 = !DILocation(line: 327, column: 3, scope: !137)
!1789 = !DILocation(line: 331, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !137, file: !132, line: 331, column: 7)
!1791 = !DILocation(line: 331, column: 7, scope: !137)
!1792 = !DILocation(line: 332, column: 7, scope: !1790)
!1793 = !DILocation(line: 332, column: 5, scope: !1790)
!1794 = !DILocation(line: 338, column: 16, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !132, line: 334, column: 5)
!1796 = !DILocation(line: 338, column: 31, scope: !1795)
!1797 = !DILocation(line: 338, column: 7, scope: !1795)
!1798 = !DILocation(line: 346, column: 12, scope: !137)
!1799 = !DILocation(line: 346, column: 20, scope: !137)
!1800 = !DILocation(line: 346, column: 30, scope: !137)
!1801 = !DILocation(line: 347, column: 12, scope: !137)
!1802 = !DILocation(line: 347, column: 23, scope: !137)
!1803 = !DILocation(line: 346, column: 3, scope: !137)
!1804 = !DILocation(line: 350, column: 3, scope: !137)
!1805 = !DILocation(line: 356, column: 1, scope: !137)
!1806 = distinct !DISubprogram(name: "error_at_line", scope: !132, file: !132, line: 359, type: !1807, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !131, retainedNodes: !80)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !62, !62, !78, !6, !78, null}
!1809 = !DILocalVariable(name: "status", arg: 1, scope: !1806, file: !132, line: 359, type: !62)
!1810 = !DILocation(line: 359, column: 20, scope: !1806)
!1811 = !DILocalVariable(name: "errnum", arg: 2, scope: !1806, file: !132, line: 359, type: !62)
!1812 = !DILocation(line: 359, column: 32, scope: !1806)
!1813 = !DILocalVariable(name: "file_name", arg: 3, scope: !1806, file: !132, line: 359, type: !78)
!1814 = !DILocation(line: 359, column: 52, scope: !1806)
!1815 = !DILocalVariable(name: "line_number", arg: 4, scope: !1806, file: !132, line: 360, type: !6)
!1816 = !DILocation(line: 360, column: 29, scope: !1806)
!1817 = !DILocalVariable(name: "message", arg: 5, scope: !1806, file: !132, line: 360, type: !78)
!1818 = !DILocation(line: 360, column: 54, scope: !1806)
!1819 = !DILocalVariable(name: "ap", scope: !1806, file: !132, line: 362, type: !140)
!1820 = !DILocation(line: 362, column: 11, scope: !1806)
!1821 = !DILocation(line: 363, column: 3, scope: !1806)
!1822 = !DILocation(line: 364, column: 3, scope: !1806)
!1823 = !DILocation(line: 366, column: 3, scope: !1806)
!1824 = !DILocation(line: 367, column: 1, scope: !1806)
!1825 = distinct !DISubprogram(name: "fdadvise", scope: !283, file: !283, line: 25, type: !1826, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !80)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !62, !1828, !1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !141, line: 63, baseType: !1202)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !29, line: 51, baseType: !28)
!1830 = !DILocalVariable(name: "fd", arg: 1, scope: !1825, file: !283, line: 25, type: !62)
!1831 = !DILocation(line: 25, column: 15, scope: !1825)
!1832 = !DILocalVariable(name: "offset", arg: 2, scope: !1825, file: !283, line: 25, type: !1828)
!1833 = !DILocation(line: 25, column: 25, scope: !1825)
!1834 = !DILocalVariable(name: "len", arg: 3, scope: !1825, file: !283, line: 25, type: !1828)
!1835 = !DILocation(line: 25, column: 39, scope: !1825)
!1836 = !DILocalVariable(name: "advice", arg: 4, scope: !1825, file: !283, line: 25, type: !1829)
!1837 = !DILocation(line: 25, column: 54, scope: !1825)
!1838 = !DILocation(line: 28, column: 3, scope: !1825)
!1839 = !DILocation(line: 30, column: 1, scope: !1825)
!1840 = distinct !DISubprogram(name: "fadvise", scope: !283, file: !283, line: 33, type: !1841, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !80)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1843, !1829}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !1846)
!1845 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !1848)
!1847 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1864, !1866, !1867, !1868, !1869, !1870, !1872, !1876, !1879, !1881, !1884, !1887, !1888, !1889, !1890, !1891}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1846, file: !1847, line: 51, baseType: !62, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1846, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1846, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1846, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1846, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1846, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1846, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1846, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1846, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1846, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1846, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1846, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1846, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1847, line: 36, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1846, file: !1847, line: 70, baseType: !1865, size: 64, offset: 832)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1846, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1846, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1846, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1846, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1846, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!1871 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1846, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 1)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1846, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1847, line: 43, baseType: null)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1846, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !752, line: 153, baseType: !321)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1846, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1847, line: 37, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1846, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1847, line: 38, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1846, file: !1847, line: 93, baseType: !1865, size: 64, offset: 1344)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1846, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1846, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1846, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1846, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, elements: !1893)
!1893 = !{!1894}
!1894 = !DISubrange(count: 20)
!1895 = !DILocalVariable(name: "fp", arg: 1, scope: !1840, file: !283, line: 33, type: !1843)
!1896 = !DILocation(line: 33, column: 16, scope: !1840)
!1897 = !DILocalVariable(name: "advice", arg: 2, scope: !1840, file: !283, line: 33, type: !1829)
!1898 = !DILocation(line: 33, column: 30, scope: !1840)
!1899 = !DILocation(line: 35, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1840, file: !283, line: 35, column: 7)
!1901 = !DILocation(line: 35, column: 7, scope: !1840)
!1902 = !DILocation(line: 36, column: 23, scope: !1900)
!1903 = !DILocation(line: 36, column: 15, scope: !1900)
!1904 = !DILocation(line: 36, column: 34, scope: !1900)
!1905 = !DILocation(line: 36, column: 5, scope: !1900)
!1906 = !DILocation(line: 37, column: 1, scope: !1840)
!1907 = distinct !DISubprogram(name: "open_safer", scope: !286, file: !286, line: 29, type: !1908, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !80)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!62, !78, !62, null}
!1910 = !DILocalVariable(name: "file", arg: 1, scope: !1907, file: !286, line: 29, type: !78)
!1911 = !DILocation(line: 29, column: 25, scope: !1907)
!1912 = !DILocalVariable(name: "flags", arg: 2, scope: !1907, file: !286, line: 29, type: !62)
!1913 = !DILocation(line: 29, column: 35, scope: !1907)
!1914 = !DILocalVariable(name: "mode", scope: !1907, file: !286, line: 31, type: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !750, line: 69, baseType: !1192)
!1916 = !DILocation(line: 31, column: 10, scope: !1907)
!1917 = !DILocation(line: 33, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1907, file: !286, line: 33, column: 7)
!1919 = !DILocation(line: 33, column: 13, scope: !1918)
!1920 = !DILocation(line: 33, column: 7, scope: !1907)
!1921 = !DILocalVariable(name: "ap", scope: !1922, file: !286, line: 35, type: !1923)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !286, line: 34, column: 5)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 14, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1925, baseType: !1926)
!1925 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !147, size: 256, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1926, file: !1925, line: 35, baseType: !56, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1926, file: !1925, line: 35, baseType: !56, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1926, file: !1925, line: 35, baseType: !56, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1926, file: !1925, line: 35, baseType: !62, size: 32, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1926, file: !1925, line: 35, baseType: !62, size: 32, offset: 224)
!1933 = !DILocation(line: 35, column: 15, scope: !1922)
!1934 = !DILocation(line: 36, column: 7, scope: !1922)
!1935 = !DILocation(line: 40, column: 14, scope: !1922)
!1936 = !DILocation(line: 40, column: 12, scope: !1922)
!1937 = !DILocation(line: 42, column: 7, scope: !1922)
!1938 = !DILocation(line: 43, column: 5, scope: !1922)
!1939 = !DILocation(line: 45, column: 26, scope: !1907)
!1940 = !DILocation(line: 45, column: 32, scope: !1907)
!1941 = !DILocation(line: 45, column: 39, scope: !1907)
!1942 = !DILocation(line: 45, column: 20, scope: !1907)
!1943 = !DILocation(line: 45, column: 10, scope: !1907)
!1944 = !DILocation(line: 45, column: 3, scope: !1907)
!1945 = distinct !DISubprogram(name: "getprogname", scope: !288, file: !288, line: 54, type: !1946, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !80)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!78}
!1948 = !DILocation(line: 58, column: 10, scope: !1945)
!1949 = !DILocation(line: 58, column: 3, scope: !1945)
!1950 = distinct !DISubprogram(name: "isapipe", scope: !290, file: !290, line: 72, type: !1728, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !80)
!1951 = !DILocalVariable(name: "fd", arg: 1, scope: !1950, file: !290, line: 72, type: !62)
!1952 = !DILocation(line: 72, column: 14, scope: !1950)
!1953 = !DILocalVariable(name: "pipe_link_count_max", scope: !1950, file: !290, line: 74, type: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !750, line: 74, baseType: !1194)
!1955 = !DILocation(line: 74, column: 11, scope: !1950)
!1956 = !DILocalVariable(name: "check_for_fifo", scope: !1950, file: !290, line: 75, type: !67)
!1957 = !DILocation(line: 75, column: 8, scope: !1950)
!1958 = !DILocalVariable(name: "st", scope: !1950, file: !290, line: 77, type: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1185, line: 44, size: 1024, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1978, !1979, !1980}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1959, file: !1185, line: 46, baseType: !1188, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1959, file: !1185, line: 47, baseType: !1190, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1959, file: !1185, line: 48, baseType: !1192, size: 32, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1959, file: !1185, line: 49, baseType: !1194, size: 32, offset: 160)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1959, file: !1185, line: 50, baseType: !1196, size: 32, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1959, file: !1185, line: 51, baseType: !1198, size: 32, offset: 224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1959, file: !1185, line: 52, baseType: !1188, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1959, file: !1185, line: 53, baseType: !1188, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1959, file: !1185, line: 54, baseType: !1202, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1959, file: !1185, line: 55, baseType: !1204, size: 32, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1959, file: !1185, line: 56, baseType: !62, size: 32, offset: 480)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1959, file: !1185, line: 57, baseType: !1207, size: 64, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1959, file: !1185, line: 65, baseType: !1974, size: 128, offset: 576)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1210, line: 11, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1974, file: !1210, line: 16, baseType: !1213, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1974, file: !1210, line: 21, baseType: !1215, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1959, file: !1185, line: 66, baseType: !1974, size: 128, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1959, file: !1185, line: 67, baseType: !1974, size: 128, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1959, file: !1185, line: 79, baseType: !1219, size: 64, offset: 960)
!1981 = !DILocation(line: 77, column: 15, scope: !1950)
!1982 = !DILocalVariable(name: "fstat_result", scope: !1950, file: !290, line: 78, type: !62)
!1983 = !DILocation(line: 78, column: 7, scope: !1950)
!1984 = !DILocation(line: 78, column: 29, scope: !1950)
!1985 = !DILocation(line: 78, column: 22, scope: !1950)
!1986 = !DILocation(line: 79, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1950, file: !290, line: 79, column: 7)
!1988 = !DILocation(line: 79, column: 20, scope: !1987)
!1989 = !DILocation(line: 79, column: 7, scope: !1950)
!1990 = !DILocation(line: 80, column: 12, scope: !1987)
!1991 = !DILocation(line: 80, column: 5, scope: !1987)
!1992 = !DILocation(line: 118, column: 9, scope: !1950)
!1993 = !DILocation(line: 118, column: 21, scope: !1950)
!1994 = !DILocation(line: 118, column: 18, scope: !1950)
!1995 = !DILocation(line: 119, column: 6, scope: !1950)
!1996 = !DILocation(line: 119, column: 10, scope: !1950)
!1997 = !DILocation(line: 119, column: 27, scope: !1950)
!1998 = !DILocation(line: 119, column: 51, scope: !1950)
!1999 = !DILocation(line: 0, scope: !1950)
!2000 = !DILocation(line: 117, column: 3, scope: !1950)
!2001 = !DILocation(line: 120, column: 1, scope: !1950)
!2002 = distinct !DISubprogram(name: "memeq", scope: !2003, file: !2003, line: 974, type: !2004, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !80)
!2003 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!67, !52, !52, !188}
!2006 = !DILocalVariable(name: "__s1", arg: 1, scope: !2002, file: !2003, line: 974, type: !52)
!2007 = !DILocation(line: 974, column: 20, scope: !2002)
!2008 = !DILocalVariable(name: "__s2", arg: 2, scope: !2002, file: !2003, line: 974, type: !52)
!2009 = !DILocation(line: 974, column: 38, scope: !2002)
!2010 = !DILocalVariable(name: "__n", arg: 3, scope: !2002, file: !2003, line: 974, type: !188)
!2011 = !DILocation(line: 974, column: 51, scope: !2002)
!2012 = !DILocation(line: 976, column: 19, scope: !2002)
!2013 = !DILocation(line: 976, column: 25, scope: !2002)
!2014 = !DILocation(line: 976, column: 31, scope: !2002)
!2015 = !DILocation(line: 976, column: 11, scope: !2002)
!2016 = !DILocation(line: 976, column: 10, scope: !2002)
!2017 = !DILocation(line: 976, column: 3, scope: !2002)
!2018 = distinct !DISubprogram(name: "set_program_name", scope: !163, file: !163, line: 37, type: !581, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !80)
!2019 = !DILocalVariable(name: "argv0", arg: 1, scope: !2018, file: !163, line: 37, type: !78)
!2020 = !DILocation(line: 37, column: 31, scope: !2018)
!2021 = !DILocalVariable(name: "slash", scope: !2018, file: !163, line: 44, type: !78)
!2022 = !DILocation(line: 44, column: 15, scope: !2018)
!2023 = !DILocation(line: 44, column: 32, scope: !2018)
!2024 = !DILocation(line: 44, column: 23, scope: !2018)
!2025 = !DILocalVariable(name: "base", scope: !2018, file: !163, line: 45, type: !78)
!2026 = !DILocation(line: 45, column: 15, scope: !2018)
!2027 = !DILocation(line: 45, column: 22, scope: !2018)
!2028 = !DILocation(line: 45, column: 30, scope: !2018)
!2029 = !DILocation(line: 45, column: 36, scope: !2018)
!2030 = !DILocation(line: 45, column: 42, scope: !2018)
!2031 = !DILocation(line: 46, column: 12, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2018, file: !163, line: 46, column: 7)
!2033 = !DILocation(line: 46, column: 19, scope: !2032)
!2034 = !DILocation(line: 46, column: 17, scope: !2032)
!2035 = !DILocation(line: 46, column: 9, scope: !2032)
!2036 = !DILocation(line: 46, column: 25, scope: !2032)
!2037 = !DILocation(line: 46, column: 35, scope: !2032)
!2038 = !DILocation(line: 46, column: 40, scope: !2032)
!2039 = !DILocation(line: 46, column: 28, scope: !2032)
!2040 = !DILocation(line: 46, column: 7, scope: !2018)
!2041 = !DILocation(line: 48, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2032, file: !163, line: 47, column: 5)
!2043 = !DILocation(line: 48, column: 13, scope: !2042)
!2044 = !DILocation(line: 49, column: 20, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !163, line: 49, column: 11)
!2046 = !DILocation(line: 49, column: 11, scope: !2045)
!2047 = !DILocation(line: 49, column: 36, scope: !2045)
!2048 = !DILocation(line: 49, column: 11, scope: !2042)
!2049 = !DILocation(line: 51, column: 16, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !163, line: 50, column: 9)
!2051 = !DILocation(line: 52, column: 19, scope: !2050)
!2052 = !DILocation(line: 52, column: 17, scope: !2050)
!2053 = !DILocation(line: 53, column: 9, scope: !2050)
!2054 = !DILocation(line: 54, column: 5, scope: !2042)
!2055 = !DILocation(line: 65, column: 18, scope: !2018)
!2056 = !DILocation(line: 65, column: 16, scope: !2018)
!2057 = !DILocation(line: 71, column: 38, scope: !2018)
!2058 = !DILocation(line: 71, column: 27, scope: !2018)
!2059 = !DILocation(line: 74, column: 44, scope: !2018)
!2060 = !DILocation(line: 74, column: 33, scope: !2018)
!2061 = !DILocation(line: 76, column: 1, scope: !2018)
!2062 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !168, file: !169, line: 38, type: !78)
!2063 = !DILocation(line: 38, column: 31, scope: !168)
!2064 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !168, file: !169, line: 38, type: !78)
!2065 = !DILocation(line: 38, column: 66, scope: !168)
!2066 = !DILocalVariable(name: "translation", scope: !168, file: !169, line: 40, type: !78)
!2067 = !DILocation(line: 40, column: 15, scope: !168)
!2068 = !DILocation(line: 40, column: 38, scope: !168)
!2069 = !DILocation(line: 40, column: 29, scope: !168)
!2070 = !DILocation(line: 41, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !168, file: !169, line: 41, column: 7)
!2072 = !DILocation(line: 41, column: 22, scope: !2071)
!2073 = !DILocation(line: 41, column: 19, scope: !2071)
!2074 = !DILocation(line: 41, column: 7, scope: !168)
!2075 = !DILocation(line: 42, column: 12, scope: !2071)
!2076 = !DILocation(line: 42, column: 5, scope: !2071)
!2077 = !DILocalVariable(name: "w", scope: !168, file: !169, line: 47, type: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !2079, line: 37, baseType: !2080)
!2079 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !752, line: 57, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !752, line: 42, baseType: !6)
!2082 = !DILocation(line: 47, column: 12, scope: !168)
!2083 = !DILocalVariable(name: "mbs", scope: !168, file: !169, line: 48, type: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !2086)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2086, file: !262, line: 15, baseType: !62, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2086, file: !262, line: 20, baseType: !2090, size: 32, offset: 32)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2086, file: !262, line: 16, size: 32, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2090, file: !262, line: 18, baseType: !6, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2090, file: !262, line: 19, baseType: !271, size: 32)
!2094 = !DILocation(line: 48, column: 13, scope: !168)
!2095 = !DILocation(line: 48, column: 18, scope: !168)
!2096 = !DILocation(line: 49, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !168, file: !169, line: 49, column: 7)
!2098 = !DILocation(line: 49, column: 39, scope: !2097)
!2099 = !DILocation(line: 49, column: 44, scope: !2097)
!2100 = !DILocation(line: 49, column: 47, scope: !2097)
!2101 = !DILocation(line: 49, column: 49, scope: !2097)
!2102 = !DILocation(line: 49, column: 7, scope: !168)
!2103 = !DILocation(line: 50, column: 12, scope: !2097)
!2104 = !DILocation(line: 50, column: 5, scope: !2097)
!2105 = !DILocation(line: 53, column: 10, scope: !168)
!2106 = !DILocation(line: 53, column: 3, scope: !168)
!2107 = !DILocation(line: 54, column: 1, scope: !168)
!2108 = distinct !DISubprogram(name: "clone_quoting_options", scope: !180, file: !180, line: 113, type: !2109, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2111, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2112 = !DILocalVariable(name: "o", arg: 1, scope: !2108, file: !180, line: 113, type: !2111)
!2113 = !DILocation(line: 113, column: 48, scope: !2108)
!2114 = !DILocalVariable(name: "saved_errno", scope: !2108, file: !180, line: 115, type: !62)
!2115 = !DILocation(line: 115, column: 7, scope: !2108)
!2116 = !DILocation(line: 115, column: 21, scope: !2108)
!2117 = !DILocalVariable(name: "p", scope: !2108, file: !180, line: 116, type: !2111)
!2118 = !DILocation(line: 116, column: 27, scope: !2108)
!2119 = !DILocation(line: 116, column: 40, scope: !2108)
!2120 = !DILocation(line: 116, column: 44, scope: !2108)
!2121 = !DILocation(line: 116, column: 31, scope: !2108)
!2122 = !DILocation(line: 118, column: 11, scope: !2108)
!2123 = !DILocation(line: 118, column: 3, scope: !2108)
!2124 = !DILocation(line: 118, column: 9, scope: !2108)
!2125 = !DILocation(line: 119, column: 10, scope: !2108)
!2126 = !DILocation(line: 119, column: 3, scope: !2108)
!2127 = distinct !DISubprogram(name: "get_quoting_style", scope: !180, file: !180, line: 124, type: !2128, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!37, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!2132 = !DILocalVariable(name: "o", arg: 1, scope: !2127, file: !180, line: 124, type: !2130)
!2133 = !DILocation(line: 124, column: 50, scope: !2127)
!2134 = !DILocation(line: 126, column: 11, scope: !2127)
!2135 = !DILocation(line: 126, column: 15, scope: !2127)
!2136 = !DILocation(line: 126, column: 46, scope: !2127)
!2137 = !DILocation(line: 126, column: 3, scope: !2127)
!2138 = distinct !DISubprogram(name: "set_quoting_style", scope: !180, file: !180, line: 132, type: !2139, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2111, !37}
!2141 = !DILocalVariable(name: "o", arg: 1, scope: !2138, file: !180, line: 132, type: !2111)
!2142 = !DILocation(line: 132, column: 44, scope: !2138)
!2143 = !DILocalVariable(name: "s", arg: 2, scope: !2138, file: !180, line: 132, type: !37)
!2144 = !DILocation(line: 132, column: 66, scope: !2138)
!2145 = !DILocation(line: 134, column: 47, scope: !2138)
!2146 = !DILocation(line: 134, column: 4, scope: !2138)
!2147 = !DILocation(line: 134, column: 8, scope: !2138)
!2148 = !DILocation(line: 134, column: 39, scope: !2138)
!2149 = !DILocation(line: 134, column: 45, scope: !2138)
!2150 = !DILocation(line: 135, column: 1, scope: !2138)
!2151 = distinct !DISubprogram(name: "set_char_quoting", scope: !180, file: !180, line: 143, type: !2152, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!62, !2111, !55, !62}
!2154 = !DILocalVariable(name: "o", arg: 1, scope: !2151, file: !180, line: 143, type: !2111)
!2155 = !DILocation(line: 143, column: 43, scope: !2151)
!2156 = !DILocalVariable(name: "c", arg: 2, scope: !2151, file: !180, line: 143, type: !55)
!2157 = !DILocation(line: 143, column: 51, scope: !2151)
!2158 = !DILocalVariable(name: "i", arg: 3, scope: !2151, file: !180, line: 143, type: !62)
!2159 = !DILocation(line: 143, column: 58, scope: !2151)
!2160 = !DILocalVariable(name: "uc", scope: !2151, file: !180, line: 145, type: !257)
!2161 = !DILocation(line: 145, column: 17, scope: !2151)
!2162 = !DILocation(line: 145, column: 22, scope: !2151)
!2163 = !DILocalVariable(name: "p", scope: !2151, file: !180, line: 146, type: !2164)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2165 = !DILocation(line: 146, column: 17, scope: !2151)
!2166 = !DILocation(line: 147, column: 6, scope: !2151)
!2167 = !DILocation(line: 147, column: 10, scope: !2151)
!2168 = !DILocation(line: 147, column: 41, scope: !2151)
!2169 = !DILocation(line: 147, column: 5, scope: !2151)
!2170 = !DILocation(line: 147, column: 59, scope: !2151)
!2171 = !DILocation(line: 147, column: 62, scope: !2151)
!2172 = !DILocation(line: 147, column: 57, scope: !2151)
!2173 = !DILocalVariable(name: "shift", scope: !2151, file: !180, line: 148, type: !62)
!2174 = !DILocation(line: 148, column: 7, scope: !2151)
!2175 = !DILocation(line: 148, column: 15, scope: !2151)
!2176 = !DILocation(line: 148, column: 18, scope: !2151)
!2177 = !DILocalVariable(name: "r", scope: !2151, file: !180, line: 149, type: !6)
!2178 = !DILocation(line: 149, column: 16, scope: !2151)
!2179 = !DILocation(line: 149, column: 22, scope: !2151)
!2180 = !DILocation(line: 149, column: 21, scope: !2151)
!2181 = !DILocation(line: 149, column: 27, scope: !2151)
!2182 = !DILocation(line: 149, column: 24, scope: !2151)
!2183 = !DILocation(line: 149, column: 34, scope: !2151)
!2184 = !DILocation(line: 150, column: 11, scope: !2151)
!2185 = !DILocation(line: 150, column: 13, scope: !2151)
!2186 = !DILocation(line: 150, column: 21, scope: !2151)
!2187 = !DILocation(line: 150, column: 19, scope: !2151)
!2188 = !DILocation(line: 150, column: 27, scope: !2151)
!2189 = !DILocation(line: 150, column: 24, scope: !2151)
!2190 = !DILocation(line: 150, column: 4, scope: !2151)
!2191 = !DILocation(line: 150, column: 6, scope: !2151)
!2192 = !DILocation(line: 151, column: 10, scope: !2151)
!2193 = !DILocation(line: 151, column: 3, scope: !2151)
!2194 = distinct !DISubprogram(name: "set_quoting_flags", scope: !180, file: !180, line: 159, type: !2195, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!62, !2111, !62}
!2197 = !DILocalVariable(name: "o", arg: 1, scope: !2194, file: !180, line: 159, type: !2111)
!2198 = !DILocation(line: 159, column: 44, scope: !2194)
!2199 = !DILocalVariable(name: "i", arg: 2, scope: !2194, file: !180, line: 159, type: !62)
!2200 = !DILocation(line: 159, column: 51, scope: !2194)
!2201 = !DILocation(line: 161, column: 8, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !180, line: 161, column: 7)
!2203 = !DILocation(line: 161, column: 7, scope: !2194)
!2204 = !DILocation(line: 162, column: 7, scope: !2202)
!2205 = !DILocation(line: 162, column: 5, scope: !2202)
!2206 = !DILocalVariable(name: "r", scope: !2194, file: !180, line: 163, type: !62)
!2207 = !DILocation(line: 163, column: 7, scope: !2194)
!2208 = !DILocation(line: 163, column: 11, scope: !2194)
!2209 = !DILocation(line: 163, column: 14, scope: !2194)
!2210 = !DILocation(line: 164, column: 14, scope: !2194)
!2211 = !DILocation(line: 164, column: 3, scope: !2194)
!2212 = !DILocation(line: 164, column: 6, scope: !2194)
!2213 = !DILocation(line: 164, column: 12, scope: !2194)
!2214 = !DILocation(line: 165, column: 10, scope: !2194)
!2215 = !DILocation(line: 165, column: 3, scope: !2194)
!2216 = distinct !DISubprogram(name: "set_custom_quoting", scope: !180, file: !180, line: 169, type: !2217, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !2111, !78, !78}
!2219 = !DILocalVariable(name: "o", arg: 1, scope: !2216, file: !180, line: 169, type: !2111)
!2220 = !DILocation(line: 169, column: 45, scope: !2216)
!2221 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2216, file: !180, line: 170, type: !78)
!2222 = !DILocation(line: 170, column: 33, scope: !2216)
!2223 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2216, file: !180, line: 170, type: !78)
!2224 = !DILocation(line: 170, column: 57, scope: !2216)
!2225 = !DILocation(line: 172, column: 8, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2216, file: !180, line: 172, column: 7)
!2227 = !DILocation(line: 172, column: 7, scope: !2216)
!2228 = !DILocation(line: 173, column: 7, scope: !2226)
!2229 = !DILocation(line: 173, column: 5, scope: !2226)
!2230 = !DILocation(line: 174, column: 3, scope: !2216)
!2231 = !DILocation(line: 174, column: 6, scope: !2216)
!2232 = !DILocation(line: 174, column: 12, scope: !2216)
!2233 = !DILocation(line: 175, column: 8, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2216, file: !180, line: 175, column: 7)
!2235 = !DILocation(line: 175, column: 19, scope: !2234)
!2236 = !DILocation(line: 175, column: 23, scope: !2234)
!2237 = !DILocation(line: 175, column: 7, scope: !2216)
!2238 = !DILocation(line: 176, column: 5, scope: !2234)
!2239 = !DILocation(line: 177, column: 19, scope: !2216)
!2240 = !DILocation(line: 177, column: 3, scope: !2216)
!2241 = !DILocation(line: 177, column: 6, scope: !2216)
!2242 = !DILocation(line: 177, column: 17, scope: !2216)
!2243 = !DILocation(line: 178, column: 20, scope: !2216)
!2244 = !DILocation(line: 178, column: 3, scope: !2216)
!2245 = !DILocation(line: 178, column: 6, scope: !2216)
!2246 = !DILocation(line: 178, column: 18, scope: !2216)
!2247 = !DILocation(line: 179, column: 1, scope: !2216)
!2248 = distinct !DISubprogram(name: "quotearg_buffer", scope: !180, file: !180, line: 774, type: !2249, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!188, !54, !188, !78, !188, !2130}
!2251 = !DILocalVariable(name: "buffer", arg: 1, scope: !2248, file: !180, line: 774, type: !54)
!2252 = !DILocation(line: 774, column: 24, scope: !2248)
!2253 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2248, file: !180, line: 774, type: !188)
!2254 = !DILocation(line: 774, column: 39, scope: !2248)
!2255 = !DILocalVariable(name: "arg", arg: 3, scope: !2248, file: !180, line: 775, type: !78)
!2256 = !DILocation(line: 775, column: 30, scope: !2248)
!2257 = !DILocalVariable(name: "argsize", arg: 4, scope: !2248, file: !180, line: 775, type: !188)
!2258 = !DILocation(line: 775, column: 42, scope: !2248)
!2259 = !DILocalVariable(name: "o", arg: 5, scope: !2248, file: !180, line: 776, type: !2130)
!2260 = !DILocation(line: 776, column: 48, scope: !2248)
!2261 = !DILocalVariable(name: "p", scope: !2248, file: !180, line: 778, type: !2130)
!2262 = !DILocation(line: 778, column: 33, scope: !2248)
!2263 = !DILocation(line: 778, column: 37, scope: !2248)
!2264 = !DILocation(line: 778, column: 41, scope: !2248)
!2265 = !DILocalVariable(name: "saved_errno", scope: !2248, file: !180, line: 779, type: !62)
!2266 = !DILocation(line: 779, column: 7, scope: !2248)
!2267 = !DILocation(line: 779, column: 21, scope: !2248)
!2268 = !DILocalVariable(name: "r", scope: !2248, file: !180, line: 780, type: !188)
!2269 = !DILocation(line: 780, column: 10, scope: !2248)
!2270 = !DILocation(line: 780, column: 40, scope: !2248)
!2271 = !DILocation(line: 780, column: 48, scope: !2248)
!2272 = !DILocation(line: 780, column: 60, scope: !2248)
!2273 = !DILocation(line: 780, column: 65, scope: !2248)
!2274 = !DILocation(line: 781, column: 40, scope: !2248)
!2275 = !DILocation(line: 781, column: 43, scope: !2248)
!2276 = !DILocation(line: 781, column: 50, scope: !2248)
!2277 = !DILocation(line: 781, column: 53, scope: !2248)
!2278 = !DILocation(line: 781, column: 60, scope: !2248)
!2279 = !DILocation(line: 781, column: 63, scope: !2248)
!2280 = !DILocation(line: 782, column: 40, scope: !2248)
!2281 = !DILocation(line: 782, column: 43, scope: !2248)
!2282 = !DILocation(line: 782, column: 55, scope: !2248)
!2283 = !DILocation(line: 782, column: 58, scope: !2248)
!2284 = !DILocation(line: 780, column: 14, scope: !2248)
!2285 = !DILocation(line: 783, column: 11, scope: !2248)
!2286 = !DILocation(line: 783, column: 3, scope: !2248)
!2287 = !DILocation(line: 783, column: 9, scope: !2248)
!2288 = !DILocation(line: 784, column: 10, scope: !2248)
!2289 = !DILocation(line: 784, column: 3, scope: !2248)
!2290 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !180, file: !180, line: 251, type: !2291, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !179, retainedNodes: !80)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!188, !54, !188, !78, !188, !37, !62, !2293, !78, !78}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2295 = !DILocalVariable(name: "buffer", arg: 1, scope: !2290, file: !180, line: 251, type: !54)
!2296 = !DILocation(line: 251, column: 33, scope: !2290)
!2297 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2290, file: !180, line: 251, type: !188)
!2298 = !DILocation(line: 251, column: 48, scope: !2290)
!2299 = !DILocalVariable(name: "arg", arg: 3, scope: !2290, file: !180, line: 252, type: !78)
!2300 = !DILocation(line: 252, column: 39, scope: !2290)
!2301 = !DILocalVariable(name: "argsize", arg: 4, scope: !2290, file: !180, line: 252, type: !188)
!2302 = !DILocation(line: 252, column: 51, scope: !2290)
!2303 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2290, file: !180, line: 253, type: !37)
!2304 = !DILocation(line: 253, column: 46, scope: !2290)
!2305 = !DILocalVariable(name: "flags", arg: 6, scope: !2290, file: !180, line: 253, type: !62)
!2306 = !DILocation(line: 253, column: 65, scope: !2290)
!2307 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2290, file: !180, line: 254, type: !2293)
!2308 = !DILocation(line: 254, column: 47, scope: !2290)
!2309 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2290, file: !180, line: 255, type: !78)
!2310 = !DILocation(line: 255, column: 39, scope: !2290)
!2311 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2290, file: !180, line: 256, type: !78)
!2312 = !DILocation(line: 256, column: 39, scope: !2290)
!2313 = !DILocalVariable(name: "unibyte_locale", scope: !2290, file: !180, line: 258, type: !67)
!2314 = !DILocation(line: 258, column: 8, scope: !2290)
!2315 = !DILocation(line: 258, column: 25, scope: !2290)
!2316 = !DILocation(line: 258, column: 36, scope: !2290)
!2317 = !DILocalVariable(name: "len", scope: !2290, file: !180, line: 260, type: !188)
!2318 = !DILocation(line: 260, column: 10, scope: !2290)
!2319 = !DILocalVariable(name: "orig_buffersize", scope: !2290, file: !180, line: 261, type: !188)
!2320 = !DILocation(line: 261, column: 10, scope: !2290)
!2321 = !DILocalVariable(name: "quote_string", scope: !2290, file: !180, line: 262, type: !78)
!2322 = !DILocation(line: 262, column: 15, scope: !2290)
!2323 = !DILocalVariable(name: "quote_string_len", scope: !2290, file: !180, line: 263, type: !188)
!2324 = !DILocation(line: 263, column: 10, scope: !2290)
!2325 = !DILocalVariable(name: "backslash_escapes", scope: !2290, file: !180, line: 264, type: !67)
!2326 = !DILocation(line: 264, column: 8, scope: !2290)
!2327 = !DILocalVariable(name: "elide_outer_quotes", scope: !2290, file: !180, line: 265, type: !67)
!2328 = !DILocation(line: 265, column: 8, scope: !2290)
!2329 = !DILocation(line: 265, column: 30, scope: !2290)
!2330 = !DILocation(line: 265, column: 36, scope: !2290)
!2331 = !DILocation(line: 265, column: 61, scope: !2290)
!2332 = !DILocalVariable(name: "encountered_single_quote", scope: !2290, file: !180, line: 266, type: !67)
!2333 = !DILocation(line: 266, column: 8, scope: !2290)
!2334 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2290, file: !180, line: 267, type: !67)
!2335 = !DILocation(line: 267, column: 8, scope: !2290)
!2336 = !DILocation(line: 267, column: 3, scope: !2290)
!2337 = !DILabel(scope: !2290, name: "process_input", file: !180, line: 308)
!2338 = !DILocation(line: 308, column: 2, scope: !2290)
!2339 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2290, file: !180, line: 309, type: !67)
!2340 = !DILocation(line: 309, column: 8, scope: !2290)
!2341 = !DILocation(line: 311, column: 11, scope: !2290)
!2342 = !DILocation(line: 311, column: 3, scope: !2290)
!2343 = !DILocation(line: 314, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 312, column: 5)
!2345 = !DILocation(line: 315, column: 26, scope: !2344)
!2346 = !DILocation(line: 315, column: 7, scope: !2344)
!2347 = !DILocation(line: 318, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !180, line: 318, column: 11)
!2349 = !DILocation(line: 318, column: 11, scope: !2344)
!2350 = !DILocation(line: 319, column: 9, scope: !2348)
!2351 = !DILocation(line: 319, column: 9, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !180, line: 319, column: 9)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !180, line: 319, column: 9)
!2354 = !DILocation(line: 319, column: 9, scope: !2353)
!2355 = !DILocation(line: 320, column: 25, scope: !2344)
!2356 = !DILocation(line: 321, column: 20, scope: !2344)
!2357 = !DILocation(line: 322, column: 24, scope: !2344)
!2358 = !DILocation(line: 323, column: 7, scope: !2344)
!2359 = !DILocation(line: 326, column: 25, scope: !2344)
!2360 = !DILocation(line: 327, column: 26, scope: !2344)
!2361 = !DILocation(line: 328, column: 7, scope: !2344)
!2362 = !DILocation(line: 334, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !180, line: 334, column: 13)
!2364 = distinct !DILexicalBlock(scope: !2344, file: !180, line: 333, column: 7)
!2365 = !DILocation(line: 334, column: 27, scope: !2363)
!2366 = !DILocation(line: 334, column: 13, scope: !2364)
!2367 = !DILocation(line: 357, column: 50, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2363, file: !180, line: 335, column: 11)
!2369 = !DILocation(line: 357, column: 26, scope: !2368)
!2370 = !DILocation(line: 357, column: 24, scope: !2368)
!2371 = !DILocation(line: 358, column: 51, scope: !2368)
!2372 = !DILocation(line: 358, column: 27, scope: !2368)
!2373 = !DILocation(line: 358, column: 25, scope: !2368)
!2374 = !DILocation(line: 359, column: 11, scope: !2368)
!2375 = !DILocation(line: 360, column: 14, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2364, file: !180, line: 360, column: 13)
!2377 = !DILocation(line: 360, column: 13, scope: !2364)
!2378 = !DILocalVariable(name: "lq", scope: !2379, file: !180, line: 361, type: !78)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !180, line: 361, column: 11)
!2380 = !DILocation(line: 361, column: 28, scope: !2379)
!2381 = !DILocation(line: 361, column: 33, scope: !2379)
!2382 = !DILocation(line: 361, column: 16, scope: !2379)
!2383 = !DILocation(line: 361, column: 46, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2379, file: !180, line: 361, column: 11)
!2385 = !DILocation(line: 361, column: 45, scope: !2384)
!2386 = !DILocation(line: 361, column: 11, scope: !2379)
!2387 = !DILocation(line: 362, column: 13, scope: !2384)
!2388 = !DILocation(line: 362, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !180, line: 362, column: 13)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !180, line: 362, column: 13)
!2391 = !DILocation(line: 362, column: 13, scope: !2390)
!2392 = !DILocation(line: 361, column: 52, scope: !2384)
!2393 = !DILocation(line: 361, column: 11, scope: !2384)
!2394 = distinct !{!2394, !2386, !2395, !464}
!2395 = !DILocation(line: 362, column: 13, scope: !2379)
!2396 = !DILocation(line: 363, column: 27, scope: !2364)
!2397 = !DILocation(line: 364, column: 24, scope: !2364)
!2398 = !DILocation(line: 364, column: 22, scope: !2364)
!2399 = !DILocation(line: 365, column: 36, scope: !2364)
!2400 = !DILocation(line: 365, column: 28, scope: !2364)
!2401 = !DILocation(line: 365, column: 26, scope: !2364)
!2402 = !DILocation(line: 367, column: 7, scope: !2344)
!2403 = !DILocation(line: 370, column: 25, scope: !2344)
!2404 = !DILocation(line: 370, column: 7, scope: !2344)
!2405 = !DILocation(line: 373, column: 26, scope: !2344)
!2406 = !DILocation(line: 373, column: 7, scope: !2344)
!2407 = !DILocation(line: 376, column: 12, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2344, file: !180, line: 376, column: 11)
!2409 = !DILocation(line: 376, column: 11, scope: !2344)
!2410 = !DILocation(line: 377, column: 27, scope: !2408)
!2411 = !DILocation(line: 377, column: 9, scope: !2408)
!2412 = !DILocation(line: 380, column: 21, scope: !2344)
!2413 = !DILocation(line: 381, column: 12, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2344, file: !180, line: 381, column: 11)
!2415 = !DILocation(line: 381, column: 11, scope: !2344)
!2416 = !DILocation(line: 382, column: 9, scope: !2414)
!2417 = !DILocation(line: 382, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !180, line: 382, column: 9)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !180, line: 382, column: 9)
!2420 = !DILocation(line: 382, column: 9, scope: !2419)
!2421 = !DILocation(line: 383, column: 20, scope: !2344)
!2422 = !DILocation(line: 384, column: 24, scope: !2344)
!2423 = !DILocation(line: 385, column: 7, scope: !2344)
!2424 = !DILocation(line: 388, column: 26, scope: !2344)
!2425 = !DILocation(line: 389, column: 7, scope: !2344)
!2426 = !DILocation(line: 392, column: 7, scope: !2344)
!2427 = !DILocalVariable(name: "i", scope: !2428, file: !180, line: 395, type: !188)
!2428 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 395, column: 3)
!2429 = !DILocation(line: 395, column: 15, scope: !2428)
!2430 = !DILocation(line: 395, column: 8, scope: !2428)
!2431 = !DILocation(line: 395, column: 26, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !180, line: 395, column: 3)
!2433 = !DILocation(line: 395, column: 34, scope: !2432)
!2434 = !DILocation(line: 395, column: 48, scope: !2432)
!2435 = !DILocation(line: 395, column: 52, scope: !2432)
!2436 = !DILocation(line: 395, column: 55, scope: !2432)
!2437 = !DILocation(line: 395, column: 65, scope: !2432)
!2438 = !DILocation(line: 395, column: 70, scope: !2432)
!2439 = !DILocation(line: 395, column: 67, scope: !2432)
!2440 = !DILocation(line: 395, column: 23, scope: !2432)
!2441 = !DILocation(line: 395, column: 3, scope: !2428)
!2442 = !DILocalVariable(name: "is_right_quote", scope: !2443, file: !180, line: 397, type: !67)
!2443 = distinct !DILexicalBlock(scope: !2432, file: !180, line: 396, column: 5)
!2444 = !DILocation(line: 397, column: 12, scope: !2443)
!2445 = !DILocalVariable(name: "escaping", scope: !2443, file: !180, line: 398, type: !67)
!2446 = !DILocation(line: 398, column: 12, scope: !2443)
!2447 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2443, file: !180, line: 399, type: !67)
!2448 = !DILocation(line: 399, column: 12, scope: !2443)
!2449 = !DILocation(line: 401, column: 11, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 401, column: 11)
!2451 = !DILocation(line: 402, column: 11, scope: !2450)
!2452 = !DILocation(line: 402, column: 14, scope: !2450)
!2453 = !DILocation(line: 402, column: 28, scope: !2450)
!2454 = !DILocation(line: 403, column: 11, scope: !2450)
!2455 = !DILocation(line: 403, column: 14, scope: !2450)
!2456 = !DILocation(line: 404, column: 11, scope: !2450)
!2457 = !DILocation(line: 404, column: 15, scope: !2450)
!2458 = !DILocation(line: 404, column: 19, scope: !2450)
!2459 = !DILocation(line: 404, column: 17, scope: !2450)
!2460 = !DILocation(line: 405, column: 19, scope: !2450)
!2461 = !DILocation(line: 405, column: 27, scope: !2450)
!2462 = !DILocation(line: 405, column: 39, scope: !2450)
!2463 = !DILocation(line: 405, column: 46, scope: !2450)
!2464 = !DILocation(line: 405, column: 44, scope: !2450)
!2465 = !DILocation(line: 409, column: 40, scope: !2450)
!2466 = !DILocation(line: 409, column: 32, scope: !2450)
!2467 = !DILocation(line: 409, column: 30, scope: !2450)
!2468 = !DILocation(line: 409, column: 48, scope: !2450)
!2469 = !DILocation(line: 405, column: 15, scope: !2450)
!2470 = !DILocation(line: 410, column: 11, scope: !2450)
!2471 = !DILocation(line: 410, column: 21, scope: !2450)
!2472 = !DILocation(line: 410, column: 27, scope: !2450)
!2473 = !DILocation(line: 410, column: 25, scope: !2450)
!2474 = !DILocation(line: 410, column: 30, scope: !2450)
!2475 = !DILocation(line: 410, column: 44, scope: !2450)
!2476 = !DILocation(line: 410, column: 14, scope: !2450)
!2477 = !DILocation(line: 401, column: 11, scope: !2443)
!2478 = !DILocation(line: 412, column: 15, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !180, line: 412, column: 15)
!2480 = distinct !DILexicalBlock(scope: !2450, file: !180, line: 411, column: 9)
!2481 = !DILocation(line: 412, column: 15, scope: !2480)
!2482 = !DILocation(line: 413, column: 13, scope: !2479)
!2483 = !DILocation(line: 414, column: 26, scope: !2480)
!2484 = !DILocation(line: 415, column: 9, scope: !2480)
!2485 = !DILocalVariable(name: "c", scope: !2443, file: !180, line: 417, type: !257)
!2486 = !DILocation(line: 417, column: 21, scope: !2443)
!2487 = !DILocation(line: 417, column: 25, scope: !2443)
!2488 = !DILocation(line: 417, column: 29, scope: !2443)
!2489 = !DILocation(line: 418, column: 15, scope: !2443)
!2490 = !DILocation(line: 418, column: 7, scope: !2443)
!2491 = !DILocation(line: 421, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 421, column: 15)
!2493 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 419, column: 9)
!2494 = !DILocation(line: 421, column: 15, scope: !2493)
!2495 = !DILocation(line: 423, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !180, line: 422, column: 13)
!2497 = !DILocation(line: 423, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !180, line: 423, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !180, line: 423, column: 15)
!2500 = !DILocation(line: 423, column: 15, scope: !2499)
!2501 = !DILocation(line: 423, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !180, line: 423, column: 15)
!2503 = !DILocation(line: 423, column: 15, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !180, line: 423, column: 15)
!2505 = !DILocation(line: 423, column: 15, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !180, line: 423, column: 15)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !180, line: 423, column: 15)
!2508 = !DILocation(line: 423, column: 15, scope: !2507)
!2509 = !DILocation(line: 423, column: 15, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !180, line: 423, column: 15)
!2511 = distinct !DILexicalBlock(scope: !2504, file: !180, line: 423, column: 15)
!2512 = !DILocation(line: 423, column: 15, scope: !2511)
!2513 = !DILocation(line: 423, column: 15, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !180, line: 423, column: 15)
!2515 = distinct !DILexicalBlock(scope: !2504, file: !180, line: 423, column: 15)
!2516 = !DILocation(line: 423, column: 15, scope: !2515)
!2517 = !DILocation(line: 423, column: 15, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !180, line: 423, column: 15)
!2519 = distinct !DILexicalBlock(scope: !2499, file: !180, line: 423, column: 15)
!2520 = !DILocation(line: 423, column: 15, scope: !2519)
!2521 = !DILocation(line: 430, column: 19, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2496, file: !180, line: 430, column: 19)
!2523 = !DILocation(line: 430, column: 33, scope: !2522)
!2524 = !DILocation(line: 431, column: 19, scope: !2522)
!2525 = !DILocation(line: 431, column: 22, scope: !2522)
!2526 = !DILocation(line: 431, column: 24, scope: !2522)
!2527 = !DILocation(line: 431, column: 30, scope: !2522)
!2528 = !DILocation(line: 431, column: 28, scope: !2522)
!2529 = !DILocation(line: 431, column: 38, scope: !2522)
!2530 = !DILocation(line: 431, column: 48, scope: !2522)
!2531 = !DILocation(line: 431, column: 52, scope: !2522)
!2532 = !DILocation(line: 431, column: 54, scope: !2522)
!2533 = !DILocation(line: 431, column: 45, scope: !2522)
!2534 = !DILocation(line: 431, column: 59, scope: !2522)
!2535 = !DILocation(line: 431, column: 62, scope: !2522)
!2536 = !DILocation(line: 431, column: 66, scope: !2522)
!2537 = !DILocation(line: 431, column: 68, scope: !2522)
!2538 = !DILocation(line: 431, column: 73, scope: !2522)
!2539 = !DILocation(line: 430, column: 19, scope: !2496)
!2540 = !DILocation(line: 433, column: 19, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2522, file: !180, line: 432, column: 17)
!2542 = !DILocation(line: 433, column: 19, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !180, line: 433, column: 19)
!2544 = distinct !DILexicalBlock(scope: !2541, file: !180, line: 433, column: 19)
!2545 = !DILocation(line: 433, column: 19, scope: !2544)
!2546 = !DILocation(line: 434, column: 19, scope: !2541)
!2547 = !DILocation(line: 434, column: 19, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !180, line: 434, column: 19)
!2549 = distinct !DILexicalBlock(scope: !2541, file: !180, line: 434, column: 19)
!2550 = !DILocation(line: 434, column: 19, scope: !2549)
!2551 = !DILocation(line: 435, column: 17, scope: !2541)
!2552 = !DILocation(line: 436, column: 17, scope: !2496)
!2553 = !DILocation(line: 441, column: 13, scope: !2496)
!2554 = !DILocation(line: 442, column: 20, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2492, file: !180, line: 442, column: 20)
!2556 = !DILocation(line: 442, column: 26, scope: !2555)
!2557 = !DILocation(line: 442, column: 20, scope: !2492)
!2558 = !DILocation(line: 443, column: 13, scope: !2555)
!2559 = !DILocation(line: 444, column: 11, scope: !2493)
!2560 = !DILocation(line: 447, column: 20, scope: !2493)
!2561 = !DILocation(line: 447, column: 11, scope: !2493)
!2562 = !DILocation(line: 450, column: 19, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !180, line: 450, column: 19)
!2564 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 448, column: 13)
!2565 = !DILocation(line: 450, column: 19, scope: !2564)
!2566 = !DILocation(line: 451, column: 17, scope: !2563)
!2567 = !DILocation(line: 452, column: 15, scope: !2564)
!2568 = !DILocation(line: 455, column: 20, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !180, line: 455, column: 19)
!2570 = !DILocation(line: 455, column: 26, scope: !2569)
!2571 = !DILocation(line: 456, column: 19, scope: !2569)
!2572 = !DILocation(line: 456, column: 22, scope: !2569)
!2573 = !DILocation(line: 456, column: 24, scope: !2569)
!2574 = !DILocation(line: 456, column: 30, scope: !2569)
!2575 = !DILocation(line: 456, column: 28, scope: !2569)
!2576 = !DILocation(line: 456, column: 38, scope: !2569)
!2577 = !DILocation(line: 456, column: 41, scope: !2569)
!2578 = !DILocation(line: 456, column: 45, scope: !2569)
!2579 = !DILocation(line: 456, column: 47, scope: !2569)
!2580 = !DILocation(line: 456, column: 52, scope: !2569)
!2581 = !DILocation(line: 455, column: 19, scope: !2564)
!2582 = !DILocation(line: 457, column: 25, scope: !2569)
!2583 = !DILocation(line: 457, column: 29, scope: !2569)
!2584 = !DILocation(line: 457, column: 31, scope: !2569)
!2585 = !DILocation(line: 457, column: 17, scope: !2569)
!2586 = !DILocation(line: 464, column: 25, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !180, line: 464, column: 25)
!2588 = distinct !DILexicalBlock(scope: !2569, file: !180, line: 458, column: 19)
!2589 = !DILocation(line: 464, column: 25, scope: !2588)
!2590 = !DILocation(line: 465, column: 23, scope: !2587)
!2591 = !DILocation(line: 466, column: 25, scope: !2588)
!2592 = !DILocation(line: 466, column: 29, scope: !2588)
!2593 = !DILocation(line: 466, column: 31, scope: !2588)
!2594 = !DILocation(line: 466, column: 23, scope: !2588)
!2595 = !DILocation(line: 467, column: 23, scope: !2588)
!2596 = !DILocation(line: 468, column: 21, scope: !2588)
!2597 = !DILocation(line: 468, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !180, line: 468, column: 21)
!2599 = distinct !DILexicalBlock(scope: !2588, file: !180, line: 468, column: 21)
!2600 = !DILocation(line: 468, column: 21, scope: !2599)
!2601 = !DILocation(line: 469, column: 21, scope: !2588)
!2602 = !DILocation(line: 469, column: 21, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !180, line: 469, column: 21)
!2604 = distinct !DILexicalBlock(scope: !2588, file: !180, line: 469, column: 21)
!2605 = !DILocation(line: 469, column: 21, scope: !2604)
!2606 = !DILocation(line: 470, column: 21, scope: !2588)
!2607 = !DILocation(line: 470, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !180, line: 470, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2588, file: !180, line: 470, column: 21)
!2610 = !DILocation(line: 470, column: 21, scope: !2609)
!2611 = !DILocation(line: 471, column: 21, scope: !2588)
!2612 = !DILocation(line: 471, column: 21, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !180, line: 471, column: 21)
!2614 = distinct !DILexicalBlock(scope: !2588, file: !180, line: 471, column: 21)
!2615 = !DILocation(line: 471, column: 21, scope: !2614)
!2616 = !DILocation(line: 472, column: 21, scope: !2588)
!2617 = !DILocation(line: 473, column: 19, scope: !2588)
!2618 = !DILocation(line: 474, column: 15, scope: !2564)
!2619 = !DILocation(line: 476, column: 11, scope: !2493)
!2620 = !DILocation(line: 481, column: 26, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 478, column: 9)
!2622 = !DILocation(line: 481, column: 33, scope: !2621)
!2623 = !DILocation(line: 482, column: 26, scope: !2621)
!2624 = !DILocation(line: 482, column: 33, scope: !2621)
!2625 = !DILocation(line: 483, column: 26, scope: !2621)
!2626 = !DILocation(line: 483, column: 33, scope: !2621)
!2627 = !DILocation(line: 484, column: 26, scope: !2621)
!2628 = !DILocation(line: 484, column: 33, scope: !2621)
!2629 = !DILocation(line: 485, column: 26, scope: !2621)
!2630 = !DILocation(line: 485, column: 33, scope: !2621)
!2631 = !DILocation(line: 486, column: 26, scope: !2621)
!2632 = !DILocation(line: 486, column: 33, scope: !2621)
!2633 = !DILocation(line: 487, column: 26, scope: !2621)
!2634 = !DILocation(line: 487, column: 33, scope: !2621)
!2635 = !DILocation(line: 488, column: 28, scope: !2621)
!2636 = !DILocation(line: 488, column: 26, scope: !2621)
!2637 = !DILocation(line: 490, column: 17, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2621, file: !180, line: 490, column: 17)
!2639 = !DILocation(line: 490, column: 31, scope: !2638)
!2640 = !DILocation(line: 490, column: 17, scope: !2621)
!2641 = !DILocation(line: 492, column: 21, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !180, line: 492, column: 21)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !180, line: 491, column: 15)
!2644 = !DILocation(line: 492, column: 21, scope: !2643)
!2645 = !DILocation(line: 493, column: 19, scope: !2642)
!2646 = !DILocation(line: 494, column: 17, scope: !2643)
!2647 = !DILocation(line: 499, column: 17, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2621, file: !180, line: 499, column: 17)
!2649 = !DILocation(line: 499, column: 35, scope: !2648)
!2650 = !DILocation(line: 499, column: 38, scope: !2648)
!2651 = !DILocation(line: 499, column: 57, scope: !2648)
!2652 = !DILocation(line: 499, column: 60, scope: !2648)
!2653 = !DILocation(line: 499, column: 17, scope: !2621)
!2654 = !DILocation(line: 500, column: 15, scope: !2648)
!2655 = !DILabel(scope: !2621, name: "c_and_shell_escape", file: !180, line: 502)
!2656 = !DILocation(line: 502, column: 11, scope: !2621)
!2657 = !DILocation(line: 503, column: 17, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2621, file: !180, line: 503, column: 17)
!2659 = !DILocation(line: 503, column: 31, scope: !2658)
!2660 = !DILocation(line: 504, column: 17, scope: !2658)
!2661 = !DILocation(line: 504, column: 20, scope: !2658)
!2662 = !DILocation(line: 503, column: 17, scope: !2621)
!2663 = !DILocation(line: 505, column: 15, scope: !2658)
!2664 = !DILabel(scope: !2621, name: "c_escape", file: !180, line: 507)
!2665 = !DILocation(line: 507, column: 11, scope: !2621)
!2666 = !DILocation(line: 508, column: 17, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2621, file: !180, line: 508, column: 17)
!2668 = !DILocation(line: 508, column: 17, scope: !2621)
!2669 = !DILocation(line: 510, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !180, line: 509, column: 15)
!2671 = !DILocation(line: 510, column: 19, scope: !2670)
!2672 = !DILocation(line: 511, column: 17, scope: !2670)
!2673 = !DILocation(line: 513, column: 13, scope: !2621)
!2674 = !DILocation(line: 517, column: 18, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 517, column: 15)
!2676 = !DILocation(line: 517, column: 26, scope: !2675)
!2677 = !DILocation(line: 517, column: 15, scope: !2493)
!2678 = !DILocation(line: 517, column: 40, scope: !2675)
!2679 = !DILocation(line: 517, column: 47, scope: !2675)
!2680 = !DILocation(line: 517, column: 57, scope: !2675)
!2681 = !DILocation(line: 517, column: 65, scope: !2675)
!2682 = !DILocation(line: 518, column: 13, scope: !2675)
!2683 = !DILocation(line: 517, column: 69, scope: !2675)
!2684 = !DILocation(line: 521, column: 15, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 521, column: 15)
!2686 = !DILocation(line: 521, column: 17, scope: !2685)
!2687 = !DILocation(line: 521, column: 15, scope: !2493)
!2688 = !DILocation(line: 522, column: 13, scope: !2685)
!2689 = !DILocation(line: 521, column: 20, scope: !2685)
!2690 = !DILocation(line: 525, column: 36, scope: !2493)
!2691 = !DILocation(line: 525, column: 11, scope: !2493)
!2692 = !DILocation(line: 536, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 536, column: 15)
!2694 = !DILocation(line: 536, column: 29, scope: !2693)
!2695 = !DILocation(line: 537, column: 15, scope: !2693)
!2696 = !DILocation(line: 537, column: 18, scope: !2693)
!2697 = !DILocation(line: 536, column: 15, scope: !2493)
!2698 = !DILocation(line: 538, column: 13, scope: !2693)
!2699 = !DILocation(line: 539, column: 11, scope: !2493)
!2700 = !DILocation(line: 542, column: 36, scope: !2493)
!2701 = !DILocation(line: 543, column: 36, scope: !2493)
!2702 = !DILocation(line: 544, column: 15, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 544, column: 15)
!2704 = !DILocation(line: 544, column: 29, scope: !2703)
!2705 = !DILocation(line: 544, column: 15, scope: !2493)
!2706 = !DILocation(line: 546, column: 19, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 546, column: 19)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !180, line: 545, column: 13)
!2709 = !DILocation(line: 546, column: 19, scope: !2708)
!2710 = !DILocation(line: 547, column: 17, scope: !2707)
!2711 = !DILocation(line: 549, column: 19, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 549, column: 19)
!2713 = !DILocation(line: 549, column: 30, scope: !2712)
!2714 = !DILocation(line: 549, column: 35, scope: !2712)
!2715 = !DILocation(line: 549, column: 19, scope: !2708)
!2716 = !DILocation(line: 554, column: 37, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !180, line: 550, column: 17)
!2718 = !DILocation(line: 554, column: 35, scope: !2717)
!2719 = !DILocation(line: 555, column: 30, scope: !2717)
!2720 = !DILocation(line: 556, column: 17, scope: !2717)
!2721 = !DILocation(line: 558, column: 15, scope: !2708)
!2722 = !DILocation(line: 558, column: 15, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !180, line: 558, column: 15)
!2724 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 558, column: 15)
!2725 = !DILocation(line: 558, column: 15, scope: !2724)
!2726 = !DILocation(line: 559, column: 15, scope: !2708)
!2727 = !DILocation(line: 559, column: 15, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !180, line: 559, column: 15)
!2729 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 559, column: 15)
!2730 = !DILocation(line: 559, column: 15, scope: !2729)
!2731 = !DILocation(line: 560, column: 15, scope: !2708)
!2732 = !DILocation(line: 560, column: 15, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !180, line: 560, column: 15)
!2734 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 560, column: 15)
!2735 = !DILocation(line: 560, column: 15, scope: !2734)
!2736 = !DILocation(line: 561, column: 40, scope: !2708)
!2737 = !DILocation(line: 562, column: 13, scope: !2708)
!2738 = !DILocation(line: 563, column: 11, scope: !2493)
!2739 = !DILocation(line: 587, column: 36, scope: !2493)
!2740 = !DILocation(line: 588, column: 11, scope: !2493)
!2741 = !DILocalVariable(name: "m", scope: !2742, file: !180, line: 598, type: !188)
!2742 = distinct !DILexicalBlock(scope: !2493, file: !180, line: 596, column: 11)
!2743 = !DILocation(line: 598, column: 20, scope: !2742)
!2744 = !DILocalVariable(name: "printable", scope: !2742, file: !180, line: 600, type: !67)
!2745 = !DILocation(line: 600, column: 18, scope: !2742)
!2746 = !DILocation(line: 602, column: 17, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2742, file: !180, line: 602, column: 17)
!2748 = !DILocation(line: 602, column: 17, scope: !2742)
!2749 = !DILocation(line: 604, column: 19, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !180, line: 603, column: 15)
!2751 = !DILocation(line: 605, column: 29, scope: !2750)
!2752 = !DILocation(line: 605, column: 41, scope: !2750)
!2753 = !DILocation(line: 605, column: 27, scope: !2750)
!2754 = !DILocation(line: 606, column: 15, scope: !2750)
!2755 = !DILocalVariable(name: "mbs", scope: !2756, file: !180, line: 609, type: !2757)
!2756 = distinct !DILexicalBlock(scope: !2747, file: !180, line: 608, column: 15)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !2758)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2759, file: !262, line: 15, baseType: !62, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2759, file: !262, line: 20, baseType: !2763, size: 32, offset: 32)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2759, file: !262, line: 16, size: 32, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2763, file: !262, line: 18, baseType: !6, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2763, file: !262, line: 19, baseType: !271, size: 32)
!2767 = !DILocation(line: 609, column: 27, scope: !2756)
!2768 = !DILocation(line: 609, column: 32, scope: !2756)
!2769 = !DILocation(line: 611, column: 19, scope: !2756)
!2770 = !DILocation(line: 612, column: 27, scope: !2756)
!2771 = !DILocation(line: 613, column: 21, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2756, file: !180, line: 613, column: 21)
!2773 = !DILocation(line: 613, column: 29, scope: !2772)
!2774 = !DILocation(line: 613, column: 21, scope: !2756)
!2775 = !DILocation(line: 614, column: 37, scope: !2772)
!2776 = !DILocation(line: 614, column: 29, scope: !2772)
!2777 = !DILocation(line: 614, column: 27, scope: !2772)
!2778 = !DILocation(line: 614, column: 19, scope: !2772)
!2779 = !DILocation(line: 616, column: 17, scope: !2756)
!2780 = !DILocalVariable(name: "w", scope: !2781, file: !180, line: 618, type: !2078)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !180, line: 617, column: 19)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !180, line: 616, column: 17)
!2783 = distinct !DILexicalBlock(scope: !2756, file: !180, line: 616, column: 17)
!2784 = !DILocation(line: 618, column: 30, scope: !2781)
!2785 = !DILocalVariable(name: "bytes", scope: !2781, file: !180, line: 619, type: !188)
!2786 = !DILocation(line: 619, column: 28, scope: !2781)
!2787 = !DILocation(line: 619, column: 51, scope: !2781)
!2788 = !DILocation(line: 619, column: 55, scope: !2781)
!2789 = !DILocation(line: 619, column: 59, scope: !2781)
!2790 = !DILocation(line: 619, column: 57, scope: !2781)
!2791 = !DILocation(line: 620, column: 46, scope: !2781)
!2792 = !DILocation(line: 620, column: 57, scope: !2781)
!2793 = !DILocation(line: 620, column: 61, scope: !2781)
!2794 = !DILocation(line: 620, column: 59, scope: !2781)
!2795 = !DILocation(line: 620, column: 54, scope: !2781)
!2796 = !DILocation(line: 619, column: 36, scope: !2781)
!2797 = !DILocation(line: 621, column: 25, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2781, file: !180, line: 621, column: 25)
!2799 = !DILocation(line: 621, column: 31, scope: !2798)
!2800 = !DILocation(line: 621, column: 25, scope: !2781)
!2801 = !DILocation(line: 622, column: 23, scope: !2798)
!2802 = !DILocation(line: 623, column: 30, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2798, file: !180, line: 623, column: 30)
!2804 = !DILocation(line: 623, column: 36, scope: !2803)
!2805 = !DILocation(line: 623, column: 30, scope: !2798)
!2806 = !DILocation(line: 625, column: 35, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !180, line: 624, column: 23)
!2808 = !DILocation(line: 626, column: 25, scope: !2807)
!2809 = !DILocation(line: 628, column: 30, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2803, file: !180, line: 628, column: 30)
!2811 = !DILocation(line: 628, column: 36, scope: !2810)
!2812 = !DILocation(line: 628, column: 30, scope: !2803)
!2813 = !DILocation(line: 630, column: 35, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !180, line: 629, column: 23)
!2815 = !DILocation(line: 631, column: 25, scope: !2814)
!2816 = !DILocation(line: 631, column: 32, scope: !2814)
!2817 = !DILocation(line: 631, column: 36, scope: !2814)
!2818 = !DILocation(line: 631, column: 34, scope: !2814)
!2819 = !DILocation(line: 631, column: 40, scope: !2814)
!2820 = !DILocation(line: 631, column: 38, scope: !2814)
!2821 = !DILocation(line: 631, column: 48, scope: !2814)
!2822 = !DILocation(line: 631, column: 51, scope: !2814)
!2823 = !DILocation(line: 631, column: 55, scope: !2814)
!2824 = !DILocation(line: 631, column: 59, scope: !2814)
!2825 = !DILocation(line: 631, column: 57, scope: !2814)
!2826 = !DILocation(line: 0, scope: !2814)
!2827 = !DILocation(line: 632, column: 28, scope: !2814)
!2828 = distinct !{!2828, !2815, !2827, !464}
!2829 = !DILocation(line: 633, column: 25, scope: !2814)
!2830 = !DILocation(line: 645, column: 44, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !180, line: 645, column: 29)
!2832 = distinct !DILexicalBlock(scope: !2810, file: !180, line: 636, column: 23)
!2833 = !DILocation(line: 646, column: 29, scope: !2831)
!2834 = !DILocation(line: 646, column: 32, scope: !2831)
!2835 = !DILocation(line: 646, column: 46, scope: !2831)
!2836 = !DILocation(line: 645, column: 29, scope: !2832)
!2837 = !DILocalVariable(name: "j", scope: !2838, file: !180, line: 648, type: !188)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !180, line: 648, column: 29)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !180, line: 647, column: 27)
!2840 = !DILocation(line: 648, column: 41, scope: !2838)
!2841 = !DILocation(line: 648, column: 34, scope: !2838)
!2842 = !DILocation(line: 648, column: 48, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !180, line: 648, column: 29)
!2844 = !DILocation(line: 648, column: 52, scope: !2843)
!2845 = !DILocation(line: 648, column: 50, scope: !2843)
!2846 = !DILocation(line: 648, column: 29, scope: !2838)
!2847 = !DILocation(line: 649, column: 39, scope: !2843)
!2848 = !DILocation(line: 649, column: 43, scope: !2843)
!2849 = !DILocation(line: 649, column: 47, scope: !2843)
!2850 = !DILocation(line: 649, column: 45, scope: !2843)
!2851 = !DILocation(line: 649, column: 51, scope: !2843)
!2852 = !DILocation(line: 649, column: 49, scope: !2843)
!2853 = !DILocation(line: 649, column: 31, scope: !2843)
!2854 = !DILocation(line: 653, column: 35, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2843, file: !180, line: 650, column: 33)
!2856 = !DILocation(line: 654, column: 33, scope: !2855)
!2857 = !DILocation(line: 648, column: 60, scope: !2843)
!2858 = !DILocation(line: 648, column: 29, scope: !2843)
!2859 = distinct !{!2859, !2846, !2860, !464}
!2860 = !DILocation(line: 654, column: 33, scope: !2838)
!2861 = !DILocation(line: 655, column: 27, scope: !2839)
!2862 = !DILocation(line: 657, column: 43, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2832, file: !180, line: 657, column: 29)
!2864 = !DILocation(line: 657, column: 31, scope: !2863)
!2865 = !DILocation(line: 657, column: 29, scope: !2832)
!2866 = !DILocation(line: 658, column: 37, scope: !2863)
!2867 = !DILocation(line: 658, column: 27, scope: !2863)
!2868 = !DILocation(line: 659, column: 30, scope: !2832)
!2869 = !DILocation(line: 659, column: 27, scope: !2832)
!2870 = !DILocation(line: 664, column: 23, scope: !2781)
!2871 = !DILocation(line: 668, column: 40, scope: !2742)
!2872 = !DILocation(line: 668, column: 38, scope: !2742)
!2873 = !DILocation(line: 670, column: 21, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2742, file: !180, line: 670, column: 17)
!2875 = !DILocation(line: 670, column: 19, scope: !2874)
!2876 = !DILocation(line: 670, column: 23, scope: !2874)
!2877 = !DILocation(line: 670, column: 27, scope: !2874)
!2878 = !DILocation(line: 670, column: 45, scope: !2874)
!2879 = !DILocation(line: 670, column: 50, scope: !2874)
!2880 = !DILocation(line: 670, column: 17, scope: !2742)
!2881 = !DILocalVariable(name: "ilim", scope: !2882, file: !180, line: 674, type: !188)
!2882 = distinct !DILexicalBlock(scope: !2874, file: !180, line: 671, column: 15)
!2883 = !DILocation(line: 674, column: 24, scope: !2882)
!2884 = !DILocation(line: 674, column: 31, scope: !2882)
!2885 = !DILocation(line: 674, column: 35, scope: !2882)
!2886 = !DILocation(line: 674, column: 33, scope: !2882)
!2887 = !DILocation(line: 676, column: 17, scope: !2882)
!2888 = !DILocation(line: 678, column: 25, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !180, line: 678, column: 25)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !180, line: 677, column: 19)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !180, line: 676, column: 17)
!2892 = distinct !DILexicalBlock(scope: !2882, file: !180, line: 676, column: 17)
!2893 = !DILocation(line: 678, column: 43, scope: !2889)
!2894 = !DILocation(line: 678, column: 48, scope: !2889)
!2895 = !DILocation(line: 678, column: 25, scope: !2890)
!2896 = !DILocation(line: 680, column: 25, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2889, file: !180, line: 679, column: 23)
!2898 = !DILocation(line: 680, column: 25, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !180, line: 680, column: 25)
!2900 = distinct !DILexicalBlock(scope: !2897, file: !180, line: 680, column: 25)
!2901 = !DILocation(line: 680, column: 25, scope: !2900)
!2902 = !DILocation(line: 680, column: 25, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !180, line: 680, column: 25)
!2904 = !DILocation(line: 680, column: 25, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2903, file: !180, line: 680, column: 25)
!2906 = !DILocation(line: 680, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !180, line: 680, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !180, line: 680, column: 25)
!2909 = !DILocation(line: 680, column: 25, scope: !2908)
!2910 = !DILocation(line: 680, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !180, line: 680, column: 25)
!2912 = distinct !DILexicalBlock(scope: !2905, file: !180, line: 680, column: 25)
!2913 = !DILocation(line: 680, column: 25, scope: !2912)
!2914 = !DILocation(line: 680, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !180, line: 680, column: 25)
!2916 = distinct !DILexicalBlock(scope: !2905, file: !180, line: 680, column: 25)
!2917 = !DILocation(line: 680, column: 25, scope: !2916)
!2918 = !DILocation(line: 680, column: 25, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !180, line: 680, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2900, file: !180, line: 680, column: 25)
!2921 = !DILocation(line: 680, column: 25, scope: !2920)
!2922 = !DILocation(line: 681, column: 25, scope: !2897)
!2923 = !DILocation(line: 681, column: 25, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !180, line: 681, column: 25)
!2925 = distinct !DILexicalBlock(scope: !2897, file: !180, line: 681, column: 25)
!2926 = !DILocation(line: 681, column: 25, scope: !2925)
!2927 = !DILocation(line: 682, column: 25, scope: !2897)
!2928 = !DILocation(line: 682, column: 25, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !180, line: 682, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2897, file: !180, line: 682, column: 25)
!2931 = !DILocation(line: 682, column: 25, scope: !2930)
!2932 = !DILocation(line: 683, column: 36, scope: !2897)
!2933 = !DILocation(line: 683, column: 38, scope: !2897)
!2934 = !DILocation(line: 683, column: 33, scope: !2897)
!2935 = !DILocation(line: 683, column: 29, scope: !2897)
!2936 = !DILocation(line: 683, column: 27, scope: !2897)
!2937 = !DILocation(line: 684, column: 23, scope: !2897)
!2938 = !DILocation(line: 685, column: 30, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2889, file: !180, line: 685, column: 30)
!2940 = !DILocation(line: 685, column: 30, scope: !2889)
!2941 = !DILocation(line: 687, column: 25, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !180, line: 686, column: 23)
!2943 = !DILocation(line: 687, column: 25, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !180, line: 687, column: 25)
!2945 = distinct !DILexicalBlock(scope: !2942, file: !180, line: 687, column: 25)
!2946 = !DILocation(line: 687, column: 25, scope: !2945)
!2947 = !DILocation(line: 688, column: 40, scope: !2942)
!2948 = !DILocation(line: 689, column: 23, scope: !2942)
!2949 = !DILocation(line: 690, column: 25, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2890, file: !180, line: 690, column: 25)
!2951 = !DILocation(line: 690, column: 33, scope: !2950)
!2952 = !DILocation(line: 690, column: 35, scope: !2950)
!2953 = !DILocation(line: 690, column: 30, scope: !2950)
!2954 = !DILocation(line: 690, column: 25, scope: !2890)
!2955 = !DILocation(line: 691, column: 23, scope: !2950)
!2956 = !DILocation(line: 692, column: 21, scope: !2890)
!2957 = !DILocation(line: 692, column: 21, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !180, line: 692, column: 21)
!2959 = distinct !DILexicalBlock(scope: !2890, file: !180, line: 692, column: 21)
!2960 = !DILocation(line: 692, column: 21, scope: !2959)
!2961 = !DILocation(line: 692, column: 21, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !180, line: 692, column: 21)
!2963 = !DILocation(line: 692, column: 21, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !180, line: 692, column: 21)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !180, line: 692, column: 21)
!2966 = !DILocation(line: 692, column: 21, scope: !2965)
!2967 = !DILocation(line: 692, column: 21, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !180, line: 692, column: 21)
!2969 = distinct !DILexicalBlock(scope: !2962, file: !180, line: 692, column: 21)
!2970 = !DILocation(line: 692, column: 21, scope: !2969)
!2971 = !DILocation(line: 693, column: 21, scope: !2890)
!2972 = !DILocation(line: 693, column: 21, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !180, line: 693, column: 21)
!2974 = distinct !DILexicalBlock(scope: !2890, file: !180, line: 693, column: 21)
!2975 = !DILocation(line: 693, column: 21, scope: !2974)
!2976 = !DILocation(line: 694, column: 25, scope: !2890)
!2977 = !DILocation(line: 694, column: 29, scope: !2890)
!2978 = !DILocation(line: 694, column: 23, scope: !2890)
!2979 = !DILocation(line: 676, column: 17, scope: !2891)
!2980 = distinct !{!2980, !2981, !2982}
!2981 = !DILocation(line: 676, column: 17, scope: !2892)
!2982 = !DILocation(line: 695, column: 19, scope: !2892)
!2983 = !DILocation(line: 697, column: 17, scope: !2882)
!2984 = !DILocation(line: 700, column: 9, scope: !2493)
!2985 = !DILocation(line: 702, column: 16, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 702, column: 11)
!2987 = !DILocation(line: 702, column: 34, scope: !2986)
!2988 = !DILocation(line: 702, column: 37, scope: !2986)
!2989 = !DILocation(line: 702, column: 51, scope: !2986)
!2990 = !DILocation(line: 703, column: 15, scope: !2986)
!2991 = !DILocation(line: 703, column: 18, scope: !2986)
!2992 = !DILocation(line: 704, column: 14, scope: !2986)
!2993 = !DILocation(line: 704, column: 17, scope: !2986)
!2994 = !DILocation(line: 705, column: 14, scope: !2986)
!2995 = !DILocation(line: 705, column: 17, scope: !2986)
!2996 = !DILocation(line: 705, column: 33, scope: !2986)
!2997 = !DILocation(line: 705, column: 35, scope: !2986)
!2998 = !DILocation(line: 705, column: 51, scope: !2986)
!2999 = !DILocation(line: 705, column: 53, scope: !2986)
!3000 = !DILocation(line: 705, column: 47, scope: !2986)
!3001 = !DILocation(line: 705, column: 65, scope: !2986)
!3002 = !DILocation(line: 706, column: 11, scope: !2986)
!3003 = !DILocation(line: 706, column: 15, scope: !2986)
!3004 = !DILocation(line: 702, column: 11, scope: !2443)
!3005 = !DILocation(line: 707, column: 9, scope: !2986)
!3006 = !DILabel(scope: !2443, name: "store_escape", file: !180, line: 709)
!3007 = !DILocation(line: 709, column: 5, scope: !2443)
!3008 = !DILocation(line: 710, column: 7, scope: !2443)
!3009 = !DILocation(line: 710, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !180, line: 710, column: 7)
!3011 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 710, column: 7)
!3012 = !DILocation(line: 710, column: 7, scope: !3011)
!3013 = !DILocation(line: 710, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !180, line: 710, column: 7)
!3015 = !DILocation(line: 710, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3014, file: !180, line: 710, column: 7)
!3017 = !DILocation(line: 710, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !180, line: 710, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !180, line: 710, column: 7)
!3020 = !DILocation(line: 710, column: 7, scope: !3019)
!3021 = !DILocation(line: 710, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !180, line: 710, column: 7)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !180, line: 710, column: 7)
!3024 = !DILocation(line: 710, column: 7, scope: !3023)
!3025 = !DILocation(line: 710, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !180, line: 710, column: 7)
!3027 = distinct !DILexicalBlock(scope: !3016, file: !180, line: 710, column: 7)
!3028 = !DILocation(line: 710, column: 7, scope: !3027)
!3029 = !DILocation(line: 710, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !180, line: 710, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3011, file: !180, line: 710, column: 7)
!3032 = !DILocation(line: 710, column: 7, scope: !3031)
!3033 = !DILabel(scope: !2443, name: "store_c", file: !180, line: 712)
!3034 = !DILocation(line: 712, column: 5, scope: !2443)
!3035 = !DILocation(line: 713, column: 7, scope: !2443)
!3036 = !DILocation(line: 713, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !180, line: 713, column: 7)
!3038 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 713, column: 7)
!3039 = !DILocation(line: 713, column: 7, scope: !3038)
!3040 = !DILocation(line: 713, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !180, line: 713, column: 7)
!3042 = !DILocation(line: 713, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !180, line: 713, column: 7)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !180, line: 713, column: 7)
!3045 = !DILocation(line: 713, column: 7, scope: !3044)
!3046 = !DILocation(line: 713, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !180, line: 713, column: 7)
!3048 = distinct !DILexicalBlock(scope: !3041, file: !180, line: 713, column: 7)
!3049 = !DILocation(line: 713, column: 7, scope: !3048)
!3050 = !DILocation(line: 714, column: 7, scope: !2443)
!3051 = !DILocation(line: 714, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !180, line: 714, column: 7)
!3053 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 714, column: 7)
!3054 = !DILocation(line: 714, column: 7, scope: !3053)
!3055 = !DILocation(line: 716, column: 13, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2443, file: !180, line: 716, column: 11)
!3057 = !DILocation(line: 716, column: 11, scope: !2443)
!3058 = !DILocation(line: 717, column: 38, scope: !3056)
!3059 = !DILocation(line: 717, column: 9, scope: !3056)
!3060 = !DILocation(line: 718, column: 5, scope: !2443)
!3061 = !DILocation(line: 395, column: 82, scope: !2432)
!3062 = !DILocation(line: 395, column: 3, scope: !2432)
!3063 = distinct !{!3063, !2441, !3064, !464}
!3064 = !DILocation(line: 718, column: 5, scope: !2428)
!3065 = !DILocation(line: 720, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 720, column: 7)
!3067 = !DILocation(line: 720, column: 11, scope: !3066)
!3068 = !DILocation(line: 720, column: 16, scope: !3066)
!3069 = !DILocation(line: 720, column: 19, scope: !3066)
!3070 = !DILocation(line: 720, column: 33, scope: !3066)
!3071 = !DILocation(line: 721, column: 7, scope: !3066)
!3072 = !DILocation(line: 721, column: 10, scope: !3066)
!3073 = !DILocation(line: 720, column: 7, scope: !2290)
!3074 = !DILocation(line: 722, column: 5, scope: !3066)
!3075 = !DILocation(line: 728, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 728, column: 7)
!3077 = !DILocation(line: 728, column: 21, scope: !3076)
!3078 = !DILocation(line: 728, column: 51, scope: !3076)
!3079 = !DILocation(line: 728, column: 56, scope: !3076)
!3080 = !DILocation(line: 729, column: 7, scope: !3076)
!3081 = !DILocation(line: 729, column: 10, scope: !3076)
!3082 = !DILocation(line: 728, column: 7, scope: !2290)
!3083 = !DILocation(line: 731, column: 11, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !180, line: 731, column: 11)
!3085 = distinct !DILexicalBlock(scope: !3076, file: !180, line: 730, column: 5)
!3086 = !DILocation(line: 731, column: 11, scope: !3085)
!3087 = !DILocation(line: 732, column: 42, scope: !3084)
!3088 = !DILocation(line: 732, column: 50, scope: !3084)
!3089 = !DILocation(line: 732, column: 67, scope: !3084)
!3090 = !DILocation(line: 732, column: 72, scope: !3084)
!3091 = !DILocation(line: 734, column: 42, scope: !3084)
!3092 = !DILocation(line: 734, column: 49, scope: !3084)
!3093 = !DILocation(line: 735, column: 42, scope: !3084)
!3094 = !DILocation(line: 735, column: 54, scope: !3084)
!3095 = !DILocation(line: 732, column: 16, scope: !3084)
!3096 = !DILocation(line: 732, column: 9, scope: !3084)
!3097 = !DILocation(line: 736, column: 18, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3084, file: !180, line: 736, column: 16)
!3099 = !DILocation(line: 736, column: 29, scope: !3098)
!3100 = !DILocation(line: 736, column: 32, scope: !3098)
!3101 = !DILocation(line: 736, column: 16, scope: !3084)
!3102 = !DILocation(line: 739, column: 24, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !180, line: 737, column: 9)
!3104 = !DILocation(line: 739, column: 22, scope: !3103)
!3105 = !DILocation(line: 740, column: 15, scope: !3103)
!3106 = !DILocation(line: 741, column: 11, scope: !3103)
!3107 = !DILocation(line: 743, column: 5, scope: !3085)
!3108 = !DILocation(line: 745, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 745, column: 7)
!3110 = !DILocation(line: 745, column: 20, scope: !3109)
!3111 = !DILocation(line: 745, column: 24, scope: !3109)
!3112 = !DILocation(line: 745, column: 7, scope: !2290)
!3113 = !DILocation(line: 746, column: 5, scope: !3109)
!3114 = !DILocation(line: 746, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !180, line: 746, column: 5)
!3116 = distinct !DILexicalBlock(scope: !3109, file: !180, line: 746, column: 5)
!3117 = !DILocation(line: 746, column: 12, scope: !3115)
!3118 = !DILocation(line: 746, column: 5, scope: !3116)
!3119 = !DILocation(line: 747, column: 7, scope: !3115)
!3120 = !DILocation(line: 747, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !180, line: 747, column: 7)
!3122 = distinct !DILexicalBlock(scope: !3115, file: !180, line: 747, column: 7)
!3123 = !DILocation(line: 747, column: 7, scope: !3122)
!3124 = !DILocation(line: 746, column: 39, scope: !3115)
!3125 = !DILocation(line: 746, column: 5, scope: !3115)
!3126 = distinct !{!3126, !3118, !3127, !464}
!3127 = !DILocation(line: 747, column: 7, scope: !3116)
!3128 = !DILocation(line: 749, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 749, column: 7)
!3130 = !DILocation(line: 749, column: 13, scope: !3129)
!3131 = !DILocation(line: 749, column: 11, scope: !3129)
!3132 = !DILocation(line: 749, column: 7, scope: !2290)
!3133 = !DILocation(line: 750, column: 5, scope: !3129)
!3134 = !DILocation(line: 750, column: 12, scope: !3129)
!3135 = !DILocation(line: 750, column: 17, scope: !3129)
!3136 = !DILocation(line: 751, column: 10, scope: !2290)
!3137 = !DILocation(line: 751, column: 3, scope: !2290)
!3138 = !DILabel(scope: !2290, name: "force_outer_quoting_style", file: !180, line: 753)
!3139 = !DILocation(line: 753, column: 2, scope: !2290)
!3140 = !DILocation(line: 756, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2290, file: !180, line: 756, column: 7)
!3142 = !DILocation(line: 756, column: 21, scope: !3141)
!3143 = !DILocation(line: 756, column: 51, scope: !3141)
!3144 = !DILocation(line: 756, column: 54, scope: !3141)
!3145 = !DILocation(line: 756, column: 7, scope: !2290)
!3146 = !DILocation(line: 757, column: 19, scope: !3141)
!3147 = !DILocation(line: 757, column: 5, scope: !3141)
!3148 = !DILocation(line: 758, column: 36, scope: !2290)
!3149 = !DILocation(line: 758, column: 44, scope: !2290)
!3150 = !DILocation(line: 758, column: 56, scope: !2290)
!3151 = !DILocation(line: 758, column: 61, scope: !2290)
!3152 = !DILocation(line: 759, column: 36, scope: !2290)
!3153 = !DILocation(line: 760, column: 36, scope: !2290)
!3154 = !DILocation(line: 760, column: 42, scope: !2290)
!3155 = !DILocation(line: 761, column: 36, scope: !2290)
!3156 = !DILocation(line: 761, column: 48, scope: !2290)
!3157 = !DILocation(line: 758, column: 10, scope: !2290)
!3158 = !DILocation(line: 758, column: 3, scope: !2290)
!3159 = !DILocation(line: 762, column: 1, scope: !2290)
!3160 = !DILocalVariable(name: "msgid", arg: 1, scope: !219, file: !180, line: 197, type: !78)
!3161 = !DILocation(line: 197, column: 28, scope: !219)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !219, file: !180, line: 197, type: !37)
!3163 = !DILocation(line: 197, column: 54, scope: !219)
!3164 = !DILocalVariable(name: "translation", scope: !219, file: !180, line: 199, type: !78)
!3165 = !DILocation(line: 199, column: 15, scope: !219)
!3166 = !DILocation(line: 199, column: 29, scope: !219)
!3167 = !DILocation(line: 201, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !219, file: !180, line: 201, column: 7)
!3169 = !DILocation(line: 201, column: 22, scope: !3168)
!3170 = !DILocation(line: 201, column: 19, scope: !3168)
!3171 = !DILocation(line: 201, column: 7, scope: !219)
!3172 = !DILocation(line: 202, column: 12, scope: !3168)
!3173 = !DILocation(line: 202, column: 5, scope: !3168)
!3174 = !DILocalVariable(name: "w", scope: !219, file: !180, line: 229, type: !2078)
!3175 = !DILocation(line: 229, column: 12, scope: !219)
!3176 = !DILocalVariable(name: "mbs", scope: !219, file: !180, line: 230, type: !2757)
!3177 = !DILocation(line: 230, column: 13, scope: !219)
!3178 = !DILocation(line: 230, column: 18, scope: !219)
!3179 = !DILocation(line: 231, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !219, file: !180, line: 231, column: 7)
!3181 = !DILocation(line: 231, column: 40, scope: !3180)
!3182 = !DILocation(line: 231, column: 45, scope: !3180)
!3183 = !DILocation(line: 231, column: 48, scope: !3180)
!3184 = !DILocation(line: 231, column: 50, scope: !3180)
!3185 = !DILocation(line: 231, column: 7, scope: !219)
!3186 = !DILocation(line: 232, column: 18, scope: !3180)
!3187 = !DILocation(line: 232, column: 27, scope: !3180)
!3188 = !DILocation(line: 232, column: 12, scope: !3180)
!3189 = !DILocation(line: 232, column: 5, scope: !3180)
!3190 = !DILocation(line: 234, column: 11, scope: !219)
!3191 = !DILocation(line: 234, column: 13, scope: !219)
!3192 = !DILocation(line: 234, column: 3, scope: !219)
!3193 = !DILocation(line: 235, column: 1, scope: !219)
!3194 = distinct !DISubprogram(name: "quotearg_alloc", scope: !180, file: !180, line: 788, type: !3195, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!54, !78, !188, !2130}
!3197 = !DILocalVariable(name: "arg", arg: 1, scope: !3194, file: !180, line: 788, type: !78)
!3198 = !DILocation(line: 788, column: 29, scope: !3194)
!3199 = !DILocalVariable(name: "argsize", arg: 2, scope: !3194, file: !180, line: 788, type: !188)
!3200 = !DILocation(line: 788, column: 41, scope: !3194)
!3201 = !DILocalVariable(name: "o", arg: 3, scope: !3194, file: !180, line: 789, type: !2130)
!3202 = !DILocation(line: 789, column: 47, scope: !3194)
!3203 = !DILocation(line: 791, column: 30, scope: !3194)
!3204 = !DILocation(line: 791, column: 35, scope: !3194)
!3205 = !DILocation(line: 791, column: 50, scope: !3194)
!3206 = !DILocation(line: 791, column: 10, scope: !3194)
!3207 = !DILocation(line: 791, column: 3, scope: !3194)
!3208 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !180, file: !180, line: 801, type: !3209, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!54, !78, !188, !310, !2130}
!3211 = !DILocalVariable(name: "arg", arg: 1, scope: !3208, file: !180, line: 801, type: !78)
!3212 = !DILocation(line: 801, column: 33, scope: !3208)
!3213 = !DILocalVariable(name: "argsize", arg: 2, scope: !3208, file: !180, line: 801, type: !188)
!3214 = !DILocation(line: 801, column: 45, scope: !3208)
!3215 = !DILocalVariable(name: "size", arg: 3, scope: !3208, file: !180, line: 801, type: !310)
!3216 = !DILocation(line: 801, column: 62, scope: !3208)
!3217 = !DILocalVariable(name: "o", arg: 4, scope: !3208, file: !180, line: 802, type: !2130)
!3218 = !DILocation(line: 802, column: 51, scope: !3208)
!3219 = !DILocalVariable(name: "p", scope: !3208, file: !180, line: 804, type: !2130)
!3220 = !DILocation(line: 804, column: 33, scope: !3208)
!3221 = !DILocation(line: 804, column: 37, scope: !3208)
!3222 = !DILocation(line: 804, column: 41, scope: !3208)
!3223 = !DILocalVariable(name: "saved_errno", scope: !3208, file: !180, line: 805, type: !62)
!3224 = !DILocation(line: 805, column: 7, scope: !3208)
!3225 = !DILocation(line: 805, column: 21, scope: !3208)
!3226 = !DILocalVariable(name: "flags", scope: !3208, file: !180, line: 807, type: !62)
!3227 = !DILocation(line: 807, column: 7, scope: !3208)
!3228 = !DILocation(line: 807, column: 15, scope: !3208)
!3229 = !DILocation(line: 807, column: 18, scope: !3208)
!3230 = !DILocation(line: 807, column: 27, scope: !3208)
!3231 = !DILocation(line: 807, column: 24, scope: !3208)
!3232 = !DILocalVariable(name: "bufsize", scope: !3208, file: !180, line: 808, type: !188)
!3233 = !DILocation(line: 808, column: 10, scope: !3208)
!3234 = !DILocation(line: 808, column: 55, scope: !3208)
!3235 = !DILocation(line: 808, column: 60, scope: !3208)
!3236 = !DILocation(line: 808, column: 69, scope: !3208)
!3237 = !DILocation(line: 808, column: 72, scope: !3208)
!3238 = !DILocation(line: 809, column: 46, scope: !3208)
!3239 = !DILocation(line: 809, column: 53, scope: !3208)
!3240 = !DILocation(line: 809, column: 56, scope: !3208)
!3241 = !DILocation(line: 810, column: 46, scope: !3208)
!3242 = !DILocation(line: 810, column: 49, scope: !3208)
!3243 = !DILocation(line: 811, column: 46, scope: !3208)
!3244 = !DILocation(line: 811, column: 49, scope: !3208)
!3245 = !DILocation(line: 808, column: 20, scope: !3208)
!3246 = !DILocation(line: 811, column: 62, scope: !3208)
!3247 = !DILocalVariable(name: "buf", scope: !3208, file: !180, line: 812, type: !54)
!3248 = !DILocation(line: 812, column: 9, scope: !3208)
!3249 = !DILocation(line: 812, column: 27, scope: !3208)
!3250 = !DILocation(line: 812, column: 15, scope: !3208)
!3251 = !DILocation(line: 813, column: 29, scope: !3208)
!3252 = !DILocation(line: 813, column: 34, scope: !3208)
!3253 = !DILocation(line: 813, column: 43, scope: !3208)
!3254 = !DILocation(line: 813, column: 48, scope: !3208)
!3255 = !DILocation(line: 813, column: 57, scope: !3208)
!3256 = !DILocation(line: 813, column: 60, scope: !3208)
!3257 = !DILocation(line: 813, column: 67, scope: !3208)
!3258 = !DILocation(line: 814, column: 29, scope: !3208)
!3259 = !DILocation(line: 814, column: 32, scope: !3208)
!3260 = !DILocation(line: 815, column: 29, scope: !3208)
!3261 = !DILocation(line: 815, column: 32, scope: !3208)
!3262 = !DILocation(line: 815, column: 44, scope: !3208)
!3263 = !DILocation(line: 815, column: 47, scope: !3208)
!3264 = !DILocation(line: 813, column: 3, scope: !3208)
!3265 = !DILocation(line: 816, column: 11, scope: !3208)
!3266 = !DILocation(line: 816, column: 3, scope: !3208)
!3267 = !DILocation(line: 816, column: 9, scope: !3208)
!3268 = !DILocation(line: 817, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3208, file: !180, line: 817, column: 7)
!3270 = !DILocation(line: 817, column: 7, scope: !3208)
!3271 = !DILocation(line: 818, column: 13, scope: !3269)
!3272 = !DILocation(line: 818, column: 21, scope: !3269)
!3273 = !DILocation(line: 818, column: 6, scope: !3269)
!3274 = !DILocation(line: 818, column: 11, scope: !3269)
!3275 = !DILocation(line: 818, column: 5, scope: !3269)
!3276 = !DILocation(line: 819, column: 10, scope: !3208)
!3277 = !DILocation(line: 819, column: 3, scope: !3208)
!3278 = distinct !DISubprogram(name: "quotearg_free", scope: !180, file: !180, line: 837, type: !120, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3279 = !DILocalVariable(name: "sv", scope: !3278, file: !180, line: 839, type: !226)
!3280 = !DILocation(line: 839, column: 19, scope: !3278)
!3281 = !DILocation(line: 839, column: 24, scope: !3278)
!3282 = !DILocalVariable(name: "i", scope: !3283, file: !180, line: 840, type: !62)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !180, line: 840, column: 3)
!3284 = !DILocation(line: 840, column: 12, scope: !3283)
!3285 = !DILocation(line: 840, column: 8, scope: !3283)
!3286 = !DILocation(line: 840, column: 19, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !180, line: 840, column: 3)
!3288 = !DILocation(line: 840, column: 23, scope: !3287)
!3289 = !DILocation(line: 840, column: 21, scope: !3287)
!3290 = !DILocation(line: 840, column: 3, scope: !3283)
!3291 = !DILocation(line: 841, column: 11, scope: !3287)
!3292 = !DILocation(line: 841, column: 14, scope: !3287)
!3293 = !DILocation(line: 841, column: 17, scope: !3287)
!3294 = !DILocation(line: 841, column: 5, scope: !3287)
!3295 = !DILocation(line: 840, column: 32, scope: !3287)
!3296 = !DILocation(line: 840, column: 3, scope: !3287)
!3297 = distinct !{!3297, !3290, !3298, !464}
!3298 = !DILocation(line: 841, column: 20, scope: !3283)
!3299 = !DILocation(line: 842, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3278, file: !180, line: 842, column: 7)
!3301 = !DILocation(line: 842, column: 13, scope: !3300)
!3302 = !DILocation(line: 842, column: 17, scope: !3300)
!3303 = !DILocation(line: 842, column: 7, scope: !3278)
!3304 = !DILocation(line: 844, column: 13, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !180, line: 843, column: 5)
!3306 = !DILocation(line: 844, column: 19, scope: !3305)
!3307 = !DILocation(line: 844, column: 7, scope: !3305)
!3308 = !DILocation(line: 845, column: 21, scope: !3305)
!3309 = !DILocation(line: 846, column: 20, scope: !3305)
!3310 = !DILocation(line: 847, column: 5, scope: !3305)
!3311 = !DILocation(line: 848, column: 7, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3278, file: !180, line: 848, column: 7)
!3313 = !DILocation(line: 848, column: 10, scope: !3312)
!3314 = !DILocation(line: 848, column: 7, scope: !3278)
!3315 = !DILocation(line: 850, column: 13, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !180, line: 849, column: 5)
!3317 = !DILocation(line: 850, column: 7, scope: !3316)
!3318 = !DILocation(line: 851, column: 15, scope: !3316)
!3319 = !DILocation(line: 852, column: 5, scope: !3316)
!3320 = !DILocation(line: 853, column: 10, scope: !3278)
!3321 = !DILocation(line: 854, column: 1, scope: !3278)
!3322 = distinct !DISubprogram(name: "quotearg_n", scope: !180, file: !180, line: 919, type: !3323, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!54, !62, !78}
!3325 = !DILocalVariable(name: "n", arg: 1, scope: !3322, file: !180, line: 919, type: !62)
!3326 = !DILocation(line: 919, column: 17, scope: !3322)
!3327 = !DILocalVariable(name: "arg", arg: 2, scope: !3322, file: !180, line: 919, type: !78)
!3328 = !DILocation(line: 919, column: 32, scope: !3322)
!3329 = !DILocation(line: 921, column: 30, scope: !3322)
!3330 = !DILocation(line: 921, column: 33, scope: !3322)
!3331 = !DILocation(line: 921, column: 10, scope: !3322)
!3332 = !DILocation(line: 921, column: 3, scope: !3322)
!3333 = distinct !DISubprogram(name: "quotearg_n_options", scope: !180, file: !180, line: 866, type: !3334, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!54, !62, !78, !188, !2130}
!3336 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !180, line: 866, type: !62)
!3337 = !DILocation(line: 866, column: 25, scope: !3333)
!3338 = !DILocalVariable(name: "arg", arg: 2, scope: !3333, file: !180, line: 866, type: !78)
!3339 = !DILocation(line: 866, column: 40, scope: !3333)
!3340 = !DILocalVariable(name: "argsize", arg: 3, scope: !3333, file: !180, line: 866, type: !188)
!3341 = !DILocation(line: 866, column: 52, scope: !3333)
!3342 = !DILocalVariable(name: "options", arg: 4, scope: !3333, file: !180, line: 867, type: !2130)
!3343 = !DILocation(line: 867, column: 51, scope: !3333)
!3344 = !DILocalVariable(name: "saved_errno", scope: !3333, file: !180, line: 869, type: !62)
!3345 = !DILocation(line: 869, column: 7, scope: !3333)
!3346 = !DILocation(line: 869, column: 21, scope: !3333)
!3347 = !DILocalVariable(name: "sv", scope: !3333, file: !180, line: 871, type: !226)
!3348 = !DILocation(line: 871, column: 19, scope: !3333)
!3349 = !DILocation(line: 871, column: 24, scope: !3333)
!3350 = !DILocalVariable(name: "nslots_max", scope: !3333, file: !180, line: 873, type: !62)
!3351 = !DILocation(line: 873, column: 7, scope: !3333)
!3352 = !DILocation(line: 874, column: 15, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3333, file: !180, line: 874, column: 7)
!3354 = !DILocation(line: 874, column: 12, scope: !3353)
!3355 = !DILocation(line: 874, column: 17, scope: !3353)
!3356 = !DILocation(line: 874, column: 20, scope: !3353)
!3357 = !DILocation(line: 874, column: 24, scope: !3353)
!3358 = !DILocation(line: 874, column: 22, scope: !3353)
!3359 = !DILocation(line: 874, column: 7, scope: !3333)
!3360 = !DILocation(line: 875, column: 5, scope: !3353)
!3361 = !DILocation(line: 877, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3333, file: !180, line: 877, column: 7)
!3363 = !DILocation(line: 877, column: 17, scope: !3362)
!3364 = !DILocation(line: 877, column: 14, scope: !3362)
!3365 = !DILocation(line: 877, column: 7, scope: !3333)
!3366 = !DILocalVariable(name: "preallocated", scope: !3367, file: !180, line: 879, type: !67)
!3367 = distinct !DILexicalBlock(scope: !3362, file: !180, line: 878, column: 5)
!3368 = !DILocation(line: 879, column: 12, scope: !3367)
!3369 = !DILocation(line: 879, column: 28, scope: !3367)
!3370 = !DILocation(line: 879, column: 31, scope: !3367)
!3371 = !DILocalVariable(name: "new_nslots", scope: !3367, file: !180, line: 880, type: !318)
!3372 = !DILocation(line: 880, column: 13, scope: !3367)
!3373 = !DILocation(line: 880, column: 26, scope: !3367)
!3374 = !DILocation(line: 882, column: 31, scope: !3367)
!3375 = !DILocation(line: 882, column: 53, scope: !3367)
!3376 = !DILocation(line: 883, column: 31, scope: !3367)
!3377 = !DILocation(line: 883, column: 35, scope: !3367)
!3378 = !DILocation(line: 883, column: 33, scope: !3367)
!3379 = !DILocation(line: 883, column: 42, scope: !3367)
!3380 = !DILocation(line: 883, column: 47, scope: !3367)
!3381 = !DILocation(line: 882, column: 22, scope: !3367)
!3382 = !DILocation(line: 882, column: 20, scope: !3367)
!3383 = !DILocation(line: 882, column: 15, scope: !3367)
!3384 = !DILocation(line: 884, column: 11, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3367, file: !180, line: 884, column: 11)
!3386 = !DILocation(line: 884, column: 11, scope: !3367)
!3387 = !DILocation(line: 885, column: 10, scope: !3385)
!3388 = !DILocation(line: 885, column: 15, scope: !3385)
!3389 = !DILocation(line: 885, column: 9, scope: !3385)
!3390 = !DILocation(line: 886, column: 15, scope: !3367)
!3391 = !DILocation(line: 886, column: 20, scope: !3367)
!3392 = !DILocation(line: 886, column: 18, scope: !3367)
!3393 = !DILocation(line: 886, column: 7, scope: !3367)
!3394 = !DILocation(line: 886, column: 32, scope: !3367)
!3395 = !DILocation(line: 886, column: 45, scope: !3367)
!3396 = !DILocation(line: 886, column: 43, scope: !3367)
!3397 = !DILocation(line: 886, column: 53, scope: !3367)
!3398 = !DILocation(line: 887, column: 16, scope: !3367)
!3399 = !DILocation(line: 887, column: 14, scope: !3367)
!3400 = !DILocation(line: 888, column: 5, scope: !3367)
!3401 = !DILocalVariable(name: "size", scope: !3402, file: !180, line: 891, type: !188)
!3402 = distinct !DILexicalBlock(scope: !3333, file: !180, line: 890, column: 3)
!3403 = !DILocation(line: 891, column: 12, scope: !3402)
!3404 = !DILocation(line: 891, column: 19, scope: !3402)
!3405 = !DILocation(line: 891, column: 22, scope: !3402)
!3406 = !DILocation(line: 891, column: 25, scope: !3402)
!3407 = !DILocalVariable(name: "val", scope: !3402, file: !180, line: 892, type: !54)
!3408 = !DILocation(line: 892, column: 11, scope: !3402)
!3409 = !DILocation(line: 892, column: 17, scope: !3402)
!3410 = !DILocation(line: 892, column: 20, scope: !3402)
!3411 = !DILocation(line: 892, column: 23, scope: !3402)
!3412 = !DILocalVariable(name: "flags", scope: !3402, file: !180, line: 894, type: !62)
!3413 = !DILocation(line: 894, column: 9, scope: !3402)
!3414 = !DILocation(line: 894, column: 17, scope: !3402)
!3415 = !DILocation(line: 894, column: 26, scope: !3402)
!3416 = !DILocation(line: 894, column: 32, scope: !3402)
!3417 = !DILocalVariable(name: "qsize", scope: !3402, file: !180, line: 895, type: !188)
!3418 = !DILocation(line: 895, column: 12, scope: !3402)
!3419 = !DILocation(line: 895, column: 46, scope: !3402)
!3420 = !DILocation(line: 895, column: 51, scope: !3402)
!3421 = !DILocation(line: 895, column: 57, scope: !3402)
!3422 = !DILocation(line: 895, column: 62, scope: !3402)
!3423 = !DILocation(line: 896, column: 46, scope: !3402)
!3424 = !DILocation(line: 896, column: 55, scope: !3402)
!3425 = !DILocation(line: 896, column: 62, scope: !3402)
!3426 = !DILocation(line: 897, column: 46, scope: !3402)
!3427 = !DILocation(line: 897, column: 55, scope: !3402)
!3428 = !DILocation(line: 898, column: 46, scope: !3402)
!3429 = !DILocation(line: 898, column: 55, scope: !3402)
!3430 = !DILocation(line: 899, column: 46, scope: !3402)
!3431 = !DILocation(line: 899, column: 55, scope: !3402)
!3432 = !DILocation(line: 895, column: 20, scope: !3402)
!3433 = !DILocation(line: 901, column: 9, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3402, file: !180, line: 901, column: 9)
!3435 = !DILocation(line: 901, column: 17, scope: !3434)
!3436 = !DILocation(line: 901, column: 14, scope: !3434)
!3437 = !DILocation(line: 901, column: 9, scope: !3402)
!3438 = !DILocation(line: 903, column: 29, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3434, file: !180, line: 902, column: 7)
!3440 = !DILocation(line: 903, column: 35, scope: !3439)
!3441 = !DILocation(line: 903, column: 27, scope: !3439)
!3442 = !DILocation(line: 903, column: 9, scope: !3439)
!3443 = !DILocation(line: 903, column: 12, scope: !3439)
!3444 = !DILocation(line: 903, column: 15, scope: !3439)
!3445 = !DILocation(line: 903, column: 20, scope: !3439)
!3446 = !DILocation(line: 904, column: 13, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3439, file: !180, line: 904, column: 13)
!3448 = !DILocation(line: 904, column: 17, scope: !3447)
!3449 = !DILocation(line: 904, column: 13, scope: !3439)
!3450 = !DILocation(line: 905, column: 17, scope: !3447)
!3451 = !DILocation(line: 905, column: 11, scope: !3447)
!3452 = !DILocation(line: 906, column: 39, scope: !3439)
!3453 = !DILocation(line: 906, column: 27, scope: !3439)
!3454 = !DILocation(line: 906, column: 25, scope: !3439)
!3455 = !DILocation(line: 906, column: 9, scope: !3439)
!3456 = !DILocation(line: 906, column: 12, scope: !3439)
!3457 = !DILocation(line: 906, column: 15, scope: !3439)
!3458 = !DILocation(line: 906, column: 19, scope: !3439)
!3459 = !DILocation(line: 907, column: 35, scope: !3439)
!3460 = !DILocation(line: 907, column: 40, scope: !3439)
!3461 = !DILocation(line: 907, column: 46, scope: !3439)
!3462 = !DILocation(line: 907, column: 51, scope: !3439)
!3463 = !DILocation(line: 907, column: 60, scope: !3439)
!3464 = !DILocation(line: 907, column: 69, scope: !3439)
!3465 = !DILocation(line: 908, column: 35, scope: !3439)
!3466 = !DILocation(line: 908, column: 42, scope: !3439)
!3467 = !DILocation(line: 908, column: 51, scope: !3439)
!3468 = !DILocation(line: 909, column: 35, scope: !3439)
!3469 = !DILocation(line: 909, column: 44, scope: !3439)
!3470 = !DILocation(line: 910, column: 35, scope: !3439)
!3471 = !DILocation(line: 910, column: 44, scope: !3439)
!3472 = !DILocation(line: 907, column: 9, scope: !3439)
!3473 = !DILocation(line: 911, column: 7, scope: !3439)
!3474 = !DILocation(line: 913, column: 13, scope: !3402)
!3475 = !DILocation(line: 913, column: 5, scope: !3402)
!3476 = !DILocation(line: 913, column: 11, scope: !3402)
!3477 = !DILocation(line: 914, column: 12, scope: !3402)
!3478 = !DILocation(line: 914, column: 5, scope: !3402)
!3479 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !180, file: !180, line: 925, type: !3480, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!54, !62, !78, !188}
!3482 = !DILocalVariable(name: "n", arg: 1, scope: !3479, file: !180, line: 925, type: !62)
!3483 = !DILocation(line: 925, column: 21, scope: !3479)
!3484 = !DILocalVariable(name: "arg", arg: 2, scope: !3479, file: !180, line: 925, type: !78)
!3485 = !DILocation(line: 925, column: 36, scope: !3479)
!3486 = !DILocalVariable(name: "argsize", arg: 3, scope: !3479, file: !180, line: 925, type: !188)
!3487 = !DILocation(line: 925, column: 48, scope: !3479)
!3488 = !DILocation(line: 927, column: 30, scope: !3479)
!3489 = !DILocation(line: 927, column: 33, scope: !3479)
!3490 = !DILocation(line: 927, column: 38, scope: !3479)
!3491 = !DILocation(line: 927, column: 10, scope: !3479)
!3492 = !DILocation(line: 927, column: 3, scope: !3479)
!3493 = distinct !DISubprogram(name: "quotearg", scope: !180, file: !180, line: 931, type: !1001, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3493, file: !180, line: 931, type: !78)
!3495 = !DILocation(line: 931, column: 23, scope: !3493)
!3496 = !DILocation(line: 933, column: 25, scope: !3493)
!3497 = !DILocation(line: 933, column: 10, scope: !3493)
!3498 = !DILocation(line: 933, column: 3, scope: !3493)
!3499 = distinct !DISubprogram(name: "quotearg_mem", scope: !180, file: !180, line: 937, type: !3500, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!54, !78, !188}
!3502 = !DILocalVariable(name: "arg", arg: 1, scope: !3499, file: !180, line: 937, type: !78)
!3503 = !DILocation(line: 937, column: 27, scope: !3499)
!3504 = !DILocalVariable(name: "argsize", arg: 2, scope: !3499, file: !180, line: 937, type: !188)
!3505 = !DILocation(line: 937, column: 39, scope: !3499)
!3506 = !DILocation(line: 939, column: 29, scope: !3499)
!3507 = !DILocation(line: 939, column: 34, scope: !3499)
!3508 = !DILocation(line: 939, column: 10, scope: !3499)
!3509 = !DILocation(line: 939, column: 3, scope: !3499)
!3510 = distinct !DISubprogram(name: "quotearg_n_style", scope: !180, file: !180, line: 943, type: !3511, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!54, !62, !37, !78}
!3513 = !DILocalVariable(name: "n", arg: 1, scope: !3510, file: !180, line: 943, type: !62)
!3514 = !DILocation(line: 943, column: 23, scope: !3510)
!3515 = !DILocalVariable(name: "s", arg: 2, scope: !3510, file: !180, line: 943, type: !37)
!3516 = !DILocation(line: 943, column: 45, scope: !3510)
!3517 = !DILocalVariable(name: "arg", arg: 3, scope: !3510, file: !180, line: 943, type: !78)
!3518 = !DILocation(line: 943, column: 60, scope: !3510)
!3519 = !DILocalVariable(name: "o", scope: !3510, file: !180, line: 945, type: !2131)
!3520 = !DILocation(line: 945, column: 32, scope: !3510)
!3521 = !DILocation(line: 945, column: 64, scope: !3510)
!3522 = !DILocation(line: 945, column: 36, scope: !3510)
!3523 = !DILocation(line: 946, column: 30, scope: !3510)
!3524 = !DILocation(line: 946, column: 33, scope: !3510)
!3525 = !DILocation(line: 946, column: 10, scope: !3510)
!3526 = !DILocation(line: 946, column: 3, scope: !3510)
!3527 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !180, file: !180, line: 183, type: !3528, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!200, !37}
!3530 = !DILocalVariable(name: "style", arg: 1, scope: !3527, file: !180, line: 183, type: !37)
!3531 = !DILocation(line: 183, column: 48, scope: !3527)
!3532 = !DILocalVariable(name: "o", scope: !3527, file: !180, line: 185, type: !200)
!3533 = !DILocation(line: 185, column: 26, scope: !3527)
!3534 = !DILocation(line: 186, column: 7, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3527, file: !180, line: 186, column: 7)
!3536 = !DILocation(line: 186, column: 13, scope: !3535)
!3537 = !DILocation(line: 186, column: 7, scope: !3527)
!3538 = !DILocation(line: 187, column: 5, scope: !3535)
!3539 = !DILocation(line: 188, column: 13, scope: !3527)
!3540 = !DILocation(line: 188, column: 5, scope: !3527)
!3541 = !DILocation(line: 188, column: 11, scope: !3527)
!3542 = !DILocation(line: 189, column: 3, scope: !3527)
!3543 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !180, file: !180, line: 950, type: !3544, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!54, !62, !37, !78, !188}
!3546 = !DILocalVariable(name: "n", arg: 1, scope: !3543, file: !180, line: 950, type: !62)
!3547 = !DILocation(line: 950, column: 27, scope: !3543)
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3543, file: !180, line: 950, type: !37)
!3549 = !DILocation(line: 950, column: 49, scope: !3543)
!3550 = !DILocalVariable(name: "arg", arg: 3, scope: !3543, file: !180, line: 951, type: !78)
!3551 = !DILocation(line: 951, column: 35, scope: !3543)
!3552 = !DILocalVariable(name: "argsize", arg: 4, scope: !3543, file: !180, line: 951, type: !188)
!3553 = !DILocation(line: 951, column: 47, scope: !3543)
!3554 = !DILocalVariable(name: "o", scope: !3543, file: !180, line: 953, type: !2131)
!3555 = !DILocation(line: 953, column: 32, scope: !3543)
!3556 = !DILocation(line: 953, column: 64, scope: !3543)
!3557 = !DILocation(line: 953, column: 36, scope: !3543)
!3558 = !DILocation(line: 954, column: 30, scope: !3543)
!3559 = !DILocation(line: 954, column: 33, scope: !3543)
!3560 = !DILocation(line: 954, column: 38, scope: !3543)
!3561 = !DILocation(line: 954, column: 10, scope: !3543)
!3562 = !DILocation(line: 954, column: 3, scope: !3543)
!3563 = distinct !DISubprogram(name: "quotearg_style", scope: !180, file: !180, line: 958, type: !3564, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!54, !37, !78}
!3566 = !DILocalVariable(name: "s", arg: 1, scope: !3563, file: !180, line: 958, type: !37)
!3567 = !DILocation(line: 958, column: 36, scope: !3563)
!3568 = !DILocalVariable(name: "arg", arg: 2, scope: !3563, file: !180, line: 958, type: !78)
!3569 = !DILocation(line: 958, column: 51, scope: !3563)
!3570 = !DILocation(line: 960, column: 31, scope: !3563)
!3571 = !DILocation(line: 960, column: 34, scope: !3563)
!3572 = !DILocation(line: 960, column: 10, scope: !3563)
!3573 = !DILocation(line: 960, column: 3, scope: !3563)
!3574 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !180, file: !180, line: 964, type: !3575, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!54, !37, !78, !188}
!3577 = !DILocalVariable(name: "s", arg: 1, scope: !3574, file: !180, line: 964, type: !37)
!3578 = !DILocation(line: 964, column: 40, scope: !3574)
!3579 = !DILocalVariable(name: "arg", arg: 2, scope: !3574, file: !180, line: 964, type: !78)
!3580 = !DILocation(line: 964, column: 55, scope: !3574)
!3581 = !DILocalVariable(name: "argsize", arg: 3, scope: !3574, file: !180, line: 964, type: !188)
!3582 = !DILocation(line: 964, column: 67, scope: !3574)
!3583 = !DILocation(line: 966, column: 35, scope: !3574)
!3584 = !DILocation(line: 966, column: 38, scope: !3574)
!3585 = !DILocation(line: 966, column: 43, scope: !3574)
!3586 = !DILocation(line: 966, column: 10, scope: !3574)
!3587 = !DILocation(line: 966, column: 3, scope: !3574)
!3588 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !180, file: !180, line: 970, type: !3589, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!54, !78, !188, !55}
!3591 = !DILocalVariable(name: "arg", arg: 1, scope: !3588, file: !180, line: 970, type: !78)
!3592 = !DILocation(line: 970, column: 32, scope: !3588)
!3593 = !DILocalVariable(name: "argsize", arg: 2, scope: !3588, file: !180, line: 970, type: !188)
!3594 = !DILocation(line: 970, column: 44, scope: !3588)
!3595 = !DILocalVariable(name: "ch", arg: 3, scope: !3588, file: !180, line: 970, type: !55)
!3596 = !DILocation(line: 970, column: 58, scope: !3588)
!3597 = !DILocalVariable(name: "options", scope: !3588, file: !180, line: 972, type: !200)
!3598 = !DILocation(line: 972, column: 26, scope: !3588)
!3599 = !DILocation(line: 973, column: 13, scope: !3588)
!3600 = !DILocation(line: 974, column: 31, scope: !3588)
!3601 = !DILocation(line: 974, column: 3, scope: !3588)
!3602 = !DILocation(line: 975, column: 33, scope: !3588)
!3603 = !DILocation(line: 975, column: 38, scope: !3588)
!3604 = !DILocation(line: 975, column: 10, scope: !3588)
!3605 = !DILocation(line: 975, column: 3, scope: !3588)
!3606 = distinct !DISubprogram(name: "quotearg_char", scope: !180, file: !180, line: 979, type: !3607, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!54, !78, !55}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3606, file: !180, line: 979, type: !78)
!3610 = !DILocation(line: 979, column: 28, scope: !3606)
!3611 = !DILocalVariable(name: "ch", arg: 2, scope: !3606, file: !180, line: 979, type: !55)
!3612 = !DILocation(line: 979, column: 38, scope: !3606)
!3613 = !DILocation(line: 981, column: 29, scope: !3606)
!3614 = !DILocation(line: 981, column: 44, scope: !3606)
!3615 = !DILocation(line: 981, column: 10, scope: !3606)
!3616 = !DILocation(line: 981, column: 3, scope: !3606)
!3617 = distinct !DISubprogram(name: "quotearg_colon", scope: !180, file: !180, line: 985, type: !1001, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3618 = !DILocalVariable(name: "arg", arg: 1, scope: !3617, file: !180, line: 985, type: !78)
!3619 = !DILocation(line: 985, column: 29, scope: !3617)
!3620 = !DILocation(line: 987, column: 25, scope: !3617)
!3621 = !DILocation(line: 987, column: 10, scope: !3617)
!3622 = !DILocation(line: 987, column: 3, scope: !3617)
!3623 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !180, file: !180, line: 991, type: !3500, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3624 = !DILocalVariable(name: "arg", arg: 1, scope: !3623, file: !180, line: 991, type: !78)
!3625 = !DILocation(line: 991, column: 33, scope: !3623)
!3626 = !DILocalVariable(name: "argsize", arg: 2, scope: !3623, file: !180, line: 991, type: !188)
!3627 = !DILocation(line: 991, column: 45, scope: !3623)
!3628 = !DILocation(line: 993, column: 29, scope: !3623)
!3629 = !DILocation(line: 993, column: 34, scope: !3623)
!3630 = !DILocation(line: 993, column: 10, scope: !3623)
!3631 = !DILocation(line: 993, column: 3, scope: !3623)
!3632 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !180, file: !180, line: 997, type: !3511, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3633 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !180, line: 997, type: !62)
!3634 = !DILocation(line: 997, column: 29, scope: !3632)
!3635 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !180, line: 997, type: !37)
!3636 = !DILocation(line: 997, column: 51, scope: !3632)
!3637 = !DILocalVariable(name: "arg", arg: 3, scope: !3632, file: !180, line: 997, type: !78)
!3638 = !DILocation(line: 997, column: 66, scope: !3632)
!3639 = !DILocalVariable(name: "options", scope: !3632, file: !180, line: 999, type: !200)
!3640 = !DILocation(line: 999, column: 26, scope: !3632)
!3641 = !DILocation(line: 1000, column: 41, scope: !3632)
!3642 = !DILocation(line: 1000, column: 13, scope: !3632)
!3643 = !DILocation(line: 1001, column: 3, scope: !3632)
!3644 = !DILocation(line: 1002, column: 30, scope: !3632)
!3645 = !DILocation(line: 1002, column: 33, scope: !3632)
!3646 = !DILocation(line: 1002, column: 10, scope: !3632)
!3647 = !DILocation(line: 1002, column: 3, scope: !3632)
!3648 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !180, file: !180, line: 1006, type: !3649, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!54, !62, !78, !78, !78}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3648, file: !180, line: 1006, type: !62)
!3652 = !DILocation(line: 1006, column: 24, scope: !3648)
!3653 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3648, file: !180, line: 1006, type: !78)
!3654 = !DILocation(line: 1006, column: 39, scope: !3648)
!3655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3648, file: !180, line: 1007, type: !78)
!3656 = !DILocation(line: 1007, column: 32, scope: !3648)
!3657 = !DILocalVariable(name: "arg", arg: 4, scope: !3648, file: !180, line: 1007, type: !78)
!3658 = !DILocation(line: 1007, column: 57, scope: !3648)
!3659 = !DILocation(line: 1009, column: 33, scope: !3648)
!3660 = !DILocation(line: 1009, column: 36, scope: !3648)
!3661 = !DILocation(line: 1009, column: 48, scope: !3648)
!3662 = !DILocation(line: 1009, column: 61, scope: !3648)
!3663 = !DILocation(line: 1009, column: 10, scope: !3648)
!3664 = !DILocation(line: 1009, column: 3, scope: !3648)
!3665 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !180, file: !180, line: 1014, type: !3666, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!54, !62, !78, !78, !78, !188}
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !180, line: 1014, type: !62)
!3669 = !DILocation(line: 1014, column: 28, scope: !3665)
!3670 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3665, file: !180, line: 1014, type: !78)
!3671 = !DILocation(line: 1014, column: 43, scope: !3665)
!3672 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3665, file: !180, line: 1015, type: !78)
!3673 = !DILocation(line: 1015, column: 36, scope: !3665)
!3674 = !DILocalVariable(name: "arg", arg: 4, scope: !3665, file: !180, line: 1016, type: !78)
!3675 = !DILocation(line: 1016, column: 36, scope: !3665)
!3676 = !DILocalVariable(name: "argsize", arg: 5, scope: !3665, file: !180, line: 1016, type: !188)
!3677 = !DILocation(line: 1016, column: 48, scope: !3665)
!3678 = !DILocalVariable(name: "o", scope: !3665, file: !180, line: 1018, type: !200)
!3679 = !DILocation(line: 1018, column: 26, scope: !3665)
!3680 = !DILocation(line: 1018, column: 30, scope: !3665)
!3681 = !DILocation(line: 1019, column: 27, scope: !3665)
!3682 = !DILocation(line: 1019, column: 39, scope: !3665)
!3683 = !DILocation(line: 1019, column: 3, scope: !3665)
!3684 = !DILocation(line: 1020, column: 30, scope: !3665)
!3685 = !DILocation(line: 1020, column: 33, scope: !3665)
!3686 = !DILocation(line: 1020, column: 38, scope: !3665)
!3687 = !DILocation(line: 1020, column: 10, scope: !3665)
!3688 = !DILocation(line: 1020, column: 3, scope: !3665)
!3689 = distinct !DISubprogram(name: "quotearg_custom", scope: !180, file: !180, line: 1024, type: !3690, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!54, !78, !78, !78}
!3692 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3689, file: !180, line: 1024, type: !78)
!3693 = !DILocation(line: 1024, column: 30, scope: !3689)
!3694 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3689, file: !180, line: 1024, type: !78)
!3695 = !DILocation(line: 1024, column: 54, scope: !3689)
!3696 = !DILocalVariable(name: "arg", arg: 3, scope: !3689, file: !180, line: 1025, type: !78)
!3697 = !DILocation(line: 1025, column: 30, scope: !3689)
!3698 = !DILocation(line: 1027, column: 32, scope: !3689)
!3699 = !DILocation(line: 1027, column: 44, scope: !3689)
!3700 = !DILocation(line: 1027, column: 57, scope: !3689)
!3701 = !DILocation(line: 1027, column: 10, scope: !3689)
!3702 = !DILocation(line: 1027, column: 3, scope: !3689)
!3703 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !180, file: !180, line: 1031, type: !3704, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!54, !78, !78, !78, !188}
!3706 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3703, file: !180, line: 1031, type: !78)
!3707 = !DILocation(line: 1031, column: 34, scope: !3703)
!3708 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3703, file: !180, line: 1031, type: !78)
!3709 = !DILocation(line: 1031, column: 58, scope: !3703)
!3710 = !DILocalVariable(name: "arg", arg: 3, scope: !3703, file: !180, line: 1032, type: !78)
!3711 = !DILocation(line: 1032, column: 34, scope: !3703)
!3712 = !DILocalVariable(name: "argsize", arg: 4, scope: !3703, file: !180, line: 1032, type: !188)
!3713 = !DILocation(line: 1032, column: 46, scope: !3703)
!3714 = !DILocation(line: 1034, column: 36, scope: !3703)
!3715 = !DILocation(line: 1034, column: 48, scope: !3703)
!3716 = !DILocation(line: 1034, column: 61, scope: !3703)
!3717 = !DILocation(line: 1035, column: 33, scope: !3703)
!3718 = !DILocation(line: 1034, column: 10, scope: !3703)
!3719 = !DILocation(line: 1034, column: 3, scope: !3703)
!3720 = distinct !DISubprogram(name: "quote_n_mem", scope: !180, file: !180, line: 1049, type: !3721, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!78, !62, !78, !188}
!3723 = !DILocalVariable(name: "n", arg: 1, scope: !3720, file: !180, line: 1049, type: !62)
!3724 = !DILocation(line: 1049, column: 18, scope: !3720)
!3725 = !DILocalVariable(name: "arg", arg: 2, scope: !3720, file: !180, line: 1049, type: !78)
!3726 = !DILocation(line: 1049, column: 33, scope: !3720)
!3727 = !DILocalVariable(name: "argsize", arg: 3, scope: !3720, file: !180, line: 1049, type: !188)
!3728 = !DILocation(line: 1049, column: 45, scope: !3720)
!3729 = !DILocation(line: 1051, column: 30, scope: !3720)
!3730 = !DILocation(line: 1051, column: 33, scope: !3720)
!3731 = !DILocation(line: 1051, column: 38, scope: !3720)
!3732 = !DILocation(line: 1051, column: 10, scope: !3720)
!3733 = !DILocation(line: 1051, column: 3, scope: !3720)
!3734 = distinct !DISubprogram(name: "quote_mem", scope: !180, file: !180, line: 1055, type: !3735, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!78, !78, !188}
!3737 = !DILocalVariable(name: "arg", arg: 1, scope: !3734, file: !180, line: 1055, type: !78)
!3738 = !DILocation(line: 1055, column: 24, scope: !3734)
!3739 = !DILocalVariable(name: "argsize", arg: 2, scope: !3734, file: !180, line: 1055, type: !188)
!3740 = !DILocation(line: 1055, column: 36, scope: !3734)
!3741 = !DILocation(line: 1057, column: 26, scope: !3734)
!3742 = !DILocation(line: 1057, column: 31, scope: !3734)
!3743 = !DILocation(line: 1057, column: 10, scope: !3734)
!3744 = !DILocation(line: 1057, column: 3, scope: !3734)
!3745 = distinct !DISubprogram(name: "quote_n", scope: !180, file: !180, line: 1061, type: !3746, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!78, !62, !78}
!3748 = !DILocalVariable(name: "n", arg: 1, scope: !3745, file: !180, line: 1061, type: !62)
!3749 = !DILocation(line: 1061, column: 14, scope: !3745)
!3750 = !DILocalVariable(name: "arg", arg: 2, scope: !3745, file: !180, line: 1061, type: !78)
!3751 = !DILocation(line: 1061, column: 29, scope: !3745)
!3752 = !DILocation(line: 1063, column: 23, scope: !3745)
!3753 = !DILocation(line: 1063, column: 26, scope: !3745)
!3754 = !DILocation(line: 1063, column: 10, scope: !3745)
!3755 = !DILocation(line: 1063, column: 3, scope: !3745)
!3756 = distinct !DISubprogram(name: "quote", scope: !180, file: !180, line: 1067, type: !3757, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !179, retainedNodes: !80)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!78, !78}
!3759 = !DILocalVariable(name: "arg", arg: 1, scope: !3756, file: !180, line: 1067, type: !78)
!3760 = !DILocation(line: 1067, column: 20, scope: !3756)
!3761 = !DILocation(line: 1069, column: 22, scope: !3756)
!3762 = !DILocation(line: 1069, column: 10, scope: !3756)
!3763 = !DILocation(line: 1069, column: 3, scope: !3756)
!3764 = distinct !DISubprogram(name: "streq", scope: !2003, file: !2003, line: 1359, type: !3765, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !80)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!67, !78, !78}
!3767 = !DILocalVariable(name: "__s1", arg: 1, scope: !3764, file: !2003, line: 1359, type: !78)
!3768 = !DILocation(line: 1359, column: 20, scope: !3764)
!3769 = !DILocalVariable(name: "__s2", arg: 2, scope: !3764, file: !2003, line: 1359, type: !78)
!3770 = !DILocation(line: 1359, column: 38, scope: !3764)
!3771 = !DILocation(line: 1361, column: 19, scope: !3764)
!3772 = !DILocation(line: 1361, column: 25, scope: !3764)
!3773 = !DILocation(line: 1361, column: 11, scope: !3764)
!3774 = !DILocation(line: 1361, column: 10, scope: !3764)
!3775 = !DILocation(line: 1361, column: 3, scope: !3764)
!3776 = distinct !DISubprogram(name: "fd_safer", scope: !296, file: !296, line: 37, type: !1728, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !80)
!3777 = !DILocalVariable(name: "fd", arg: 1, scope: !3776, file: !296, line: 37, type: !62)
!3778 = !DILocation(line: 37, column: 15, scope: !3776)
!3779 = !DILocation(line: 39, column: 23, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3776, file: !296, line: 39, column: 7)
!3781 = !DILocation(line: 39, column: 20, scope: !3780)
!3782 = !DILocation(line: 39, column: 26, scope: !3780)
!3783 = !DILocation(line: 39, column: 29, scope: !3780)
!3784 = !DILocation(line: 39, column: 32, scope: !3780)
!3785 = !DILocation(line: 39, column: 7, scope: !3776)
!3786 = !DILocalVariable(name: "f", scope: !3787, file: !296, line: 41, type: !62)
!3787 = distinct !DILexicalBlock(scope: !3780, file: !296, line: 40, column: 5)
!3788 = !DILocation(line: 41, column: 11, scope: !3787)
!3789 = !DILocation(line: 41, column: 26, scope: !3787)
!3790 = !DILocation(line: 41, column: 15, scope: !3787)
!3791 = !DILocalVariable(name: "saved_errno", scope: !3787, file: !296, line: 42, type: !62)
!3792 = !DILocation(line: 42, column: 11, scope: !3787)
!3793 = !DILocation(line: 42, column: 25, scope: !3787)
!3794 = !DILocation(line: 43, column: 14, scope: !3787)
!3795 = !DILocation(line: 43, column: 7, scope: !3787)
!3796 = !DILocation(line: 44, column: 15, scope: !3787)
!3797 = !DILocation(line: 44, column: 7, scope: !3787)
!3798 = !DILocation(line: 44, column: 13, scope: !3787)
!3799 = !DILocation(line: 45, column: 12, scope: !3787)
!3800 = !DILocation(line: 45, column: 10, scope: !3787)
!3801 = !DILocation(line: 46, column: 5, scope: !3787)
!3802 = !DILocation(line: 48, column: 10, scope: !3776)
!3803 = !DILocation(line: 48, column: 3, scope: !3776)
!3804 = distinct !DISubprogram(name: "version_etc_arn", scope: !298, file: !298, line: 61, type: !3805, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !80)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3807, !78, !78, !78, !1322, !188}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3809, file: !1847, line: 51, baseType: !62, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3809, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3809, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3809, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3809, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3809, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3809, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3809, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3809, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3809, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3809, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3809, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3809, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3809, file: !1847, line: 70, baseType: !3825, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3809, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3809, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3809, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3809, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3809, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3809, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3809, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3809, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3809, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3809, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3809, file: !1847, line: 93, baseType: !3825, size: 64, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3809, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3809, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3809, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3809, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!3841 = !DILocalVariable(name: "stream", arg: 1, scope: !3804, file: !298, line: 61, type: !3807)
!3842 = !DILocation(line: 61, column: 24, scope: !3804)
!3843 = !DILocalVariable(name: "command_name", arg: 2, scope: !3804, file: !298, line: 62, type: !78)
!3844 = !DILocation(line: 62, column: 30, scope: !3804)
!3845 = !DILocalVariable(name: "package", arg: 3, scope: !3804, file: !298, line: 62, type: !78)
!3846 = !DILocation(line: 62, column: 56, scope: !3804)
!3847 = !DILocalVariable(name: "version", arg: 4, scope: !3804, file: !298, line: 63, type: !78)
!3848 = !DILocation(line: 63, column: 30, scope: !3804)
!3849 = !DILocalVariable(name: "authors", arg: 5, scope: !3804, file: !298, line: 64, type: !1322)
!3850 = !DILocation(line: 64, column: 39, scope: !3804)
!3851 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3804, file: !298, line: 64, type: !188)
!3852 = !DILocation(line: 64, column: 55, scope: !3804)
!3853 = !DILocation(line: 66, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3804, file: !298, line: 66, column: 7)
!3855 = !DILocation(line: 66, column: 7, scope: !3804)
!3856 = !DILocation(line: 67, column: 14, scope: !3854)
!3857 = !DILocation(line: 67, column: 38, scope: !3854)
!3858 = !DILocation(line: 67, column: 52, scope: !3854)
!3859 = !DILocation(line: 67, column: 61, scope: !3854)
!3860 = !DILocation(line: 67, column: 5, scope: !3854)
!3861 = !DILocation(line: 69, column: 14, scope: !3854)
!3862 = !DILocation(line: 69, column: 33, scope: !3854)
!3863 = !DILocation(line: 69, column: 42, scope: !3854)
!3864 = !DILocation(line: 69, column: 5, scope: !3854)
!3865 = !DILocation(line: 83, column: 12, scope: !3804)
!3866 = !DILocation(line: 83, column: 43, scope: !3804)
!3867 = !DILocation(line: 83, column: 3, scope: !3804)
!3868 = !DILocation(line: 85, column: 3, scope: !3804)
!3869 = !DILocation(line: 88, column: 12, scope: !3804)
!3870 = !DILocation(line: 88, column: 20, scope: !3804)
!3871 = !DILocation(line: 88, column: 3, scope: !3804)
!3872 = !DILocation(line: 95, column: 3, scope: !3804)
!3873 = !DILocation(line: 97, column: 11, scope: !3804)
!3874 = !DILocation(line: 97, column: 3, scope: !3804)
!3875 = !DILocation(line: 102, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3804, file: !298, line: 98, column: 5)
!3877 = !DILocation(line: 105, column: 16, scope: !3876)
!3878 = !DILocation(line: 105, column: 24, scope: !3876)
!3879 = !DILocation(line: 105, column: 47, scope: !3876)
!3880 = !DILocation(line: 105, column: 7, scope: !3876)
!3881 = !DILocation(line: 106, column: 7, scope: !3876)
!3882 = !DILocation(line: 109, column: 16, scope: !3876)
!3883 = !DILocation(line: 109, column: 24, scope: !3876)
!3884 = !DILocation(line: 109, column: 54, scope: !3876)
!3885 = !DILocation(line: 109, column: 66, scope: !3876)
!3886 = !DILocation(line: 109, column: 7, scope: !3876)
!3887 = !DILocation(line: 110, column: 7, scope: !3876)
!3888 = !DILocation(line: 113, column: 16, scope: !3876)
!3889 = !DILocation(line: 113, column: 24, scope: !3876)
!3890 = !DILocation(line: 114, column: 16, scope: !3876)
!3891 = !DILocation(line: 114, column: 28, scope: !3876)
!3892 = !DILocation(line: 114, column: 40, scope: !3876)
!3893 = !DILocation(line: 113, column: 7, scope: !3876)
!3894 = !DILocation(line: 115, column: 7, scope: !3876)
!3895 = !DILocation(line: 120, column: 16, scope: !3876)
!3896 = !DILocation(line: 120, column: 24, scope: !3876)
!3897 = !DILocation(line: 121, column: 16, scope: !3876)
!3898 = !DILocation(line: 121, column: 28, scope: !3876)
!3899 = !DILocation(line: 121, column: 40, scope: !3876)
!3900 = !DILocation(line: 121, column: 52, scope: !3876)
!3901 = !DILocation(line: 120, column: 7, scope: !3876)
!3902 = !DILocation(line: 122, column: 7, scope: !3876)
!3903 = !DILocation(line: 127, column: 16, scope: !3876)
!3904 = !DILocation(line: 127, column: 24, scope: !3876)
!3905 = !DILocation(line: 128, column: 16, scope: !3876)
!3906 = !DILocation(line: 128, column: 28, scope: !3876)
!3907 = !DILocation(line: 128, column: 40, scope: !3876)
!3908 = !DILocation(line: 128, column: 52, scope: !3876)
!3909 = !DILocation(line: 128, column: 64, scope: !3876)
!3910 = !DILocation(line: 127, column: 7, scope: !3876)
!3911 = !DILocation(line: 129, column: 7, scope: !3876)
!3912 = !DILocation(line: 134, column: 16, scope: !3876)
!3913 = !DILocation(line: 134, column: 24, scope: !3876)
!3914 = !DILocation(line: 135, column: 16, scope: !3876)
!3915 = !DILocation(line: 135, column: 28, scope: !3876)
!3916 = !DILocation(line: 135, column: 40, scope: !3876)
!3917 = !DILocation(line: 135, column: 52, scope: !3876)
!3918 = !DILocation(line: 135, column: 64, scope: !3876)
!3919 = !DILocation(line: 136, column: 16, scope: !3876)
!3920 = !DILocation(line: 134, column: 7, scope: !3876)
!3921 = !DILocation(line: 137, column: 7, scope: !3876)
!3922 = !DILocation(line: 142, column: 16, scope: !3876)
!3923 = !DILocation(line: 142, column: 24, scope: !3876)
!3924 = !DILocation(line: 143, column: 16, scope: !3876)
!3925 = !DILocation(line: 143, column: 28, scope: !3876)
!3926 = !DILocation(line: 143, column: 40, scope: !3876)
!3927 = !DILocation(line: 143, column: 52, scope: !3876)
!3928 = !DILocation(line: 143, column: 64, scope: !3876)
!3929 = !DILocation(line: 144, column: 16, scope: !3876)
!3930 = !DILocation(line: 144, column: 28, scope: !3876)
!3931 = !DILocation(line: 142, column: 7, scope: !3876)
!3932 = !DILocation(line: 145, column: 7, scope: !3876)
!3933 = !DILocation(line: 150, column: 16, scope: !3876)
!3934 = !DILocation(line: 150, column: 24, scope: !3876)
!3935 = !DILocation(line: 152, column: 17, scope: !3876)
!3936 = !DILocation(line: 152, column: 29, scope: !3876)
!3937 = !DILocation(line: 152, column: 41, scope: !3876)
!3938 = !DILocation(line: 152, column: 53, scope: !3876)
!3939 = !DILocation(line: 152, column: 65, scope: !3876)
!3940 = !DILocation(line: 153, column: 17, scope: !3876)
!3941 = !DILocation(line: 153, column: 29, scope: !3876)
!3942 = !DILocation(line: 153, column: 41, scope: !3876)
!3943 = !DILocation(line: 150, column: 7, scope: !3876)
!3944 = !DILocation(line: 154, column: 7, scope: !3876)
!3945 = !DILocation(line: 159, column: 16, scope: !3876)
!3946 = !DILocation(line: 159, column: 24, scope: !3876)
!3947 = !DILocation(line: 161, column: 16, scope: !3876)
!3948 = !DILocation(line: 161, column: 28, scope: !3876)
!3949 = !DILocation(line: 161, column: 40, scope: !3876)
!3950 = !DILocation(line: 161, column: 52, scope: !3876)
!3951 = !DILocation(line: 161, column: 64, scope: !3876)
!3952 = !DILocation(line: 162, column: 16, scope: !3876)
!3953 = !DILocation(line: 162, column: 28, scope: !3876)
!3954 = !DILocation(line: 162, column: 40, scope: !3876)
!3955 = !DILocation(line: 162, column: 52, scope: !3876)
!3956 = !DILocation(line: 159, column: 7, scope: !3876)
!3957 = !DILocation(line: 163, column: 7, scope: !3876)
!3958 = !DILocation(line: 170, column: 16, scope: !3876)
!3959 = !DILocation(line: 170, column: 24, scope: !3876)
!3960 = !DILocation(line: 172, column: 17, scope: !3876)
!3961 = !DILocation(line: 172, column: 29, scope: !3876)
!3962 = !DILocation(line: 172, column: 41, scope: !3876)
!3963 = !DILocation(line: 172, column: 53, scope: !3876)
!3964 = !DILocation(line: 172, column: 65, scope: !3876)
!3965 = !DILocation(line: 173, column: 17, scope: !3876)
!3966 = !DILocation(line: 173, column: 29, scope: !3876)
!3967 = !DILocation(line: 173, column: 41, scope: !3876)
!3968 = !DILocation(line: 173, column: 53, scope: !3876)
!3969 = !DILocation(line: 170, column: 7, scope: !3876)
!3970 = !DILocation(line: 174, column: 7, scope: !3876)
!3971 = !DILocation(line: 176, column: 1, scope: !3804)
!3972 = distinct !DISubprogram(name: "version_etc_ar", scope: !298, file: !298, line: 183, type: !3973, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !80)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3807, !78, !78, !78, !1322}
!3975 = !DILocalVariable(name: "stream", arg: 1, scope: !3972, file: !298, line: 183, type: !3807)
!3976 = !DILocation(line: 183, column: 23, scope: !3972)
!3977 = !DILocalVariable(name: "command_name", arg: 2, scope: !3972, file: !298, line: 184, type: !78)
!3978 = !DILocation(line: 184, column: 29, scope: !3972)
!3979 = !DILocalVariable(name: "package", arg: 3, scope: !3972, file: !298, line: 184, type: !78)
!3980 = !DILocation(line: 184, column: 55, scope: !3972)
!3981 = !DILocalVariable(name: "version", arg: 4, scope: !3972, file: !298, line: 185, type: !78)
!3982 = !DILocation(line: 185, column: 29, scope: !3972)
!3983 = !DILocalVariable(name: "authors", arg: 5, scope: !3972, file: !298, line: 185, type: !1322)
!3984 = !DILocation(line: 185, column: 59, scope: !3972)
!3985 = !DILocalVariable(name: "n_authors", scope: !3972, file: !298, line: 187, type: !188)
!3986 = !DILocation(line: 187, column: 10, scope: !3972)
!3987 = !DILocation(line: 189, column: 18, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3972, file: !298, line: 189, column: 3)
!3989 = !DILocation(line: 189, column: 8, scope: !3988)
!3990 = !DILocation(line: 189, column: 23, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !298, line: 189, column: 3)
!3992 = !DILocation(line: 189, column: 31, scope: !3991)
!3993 = !DILocation(line: 189, column: 3, scope: !3988)
!3994 = !DILocation(line: 189, column: 52, scope: !3991)
!3995 = !DILocation(line: 189, column: 3, scope: !3991)
!3996 = distinct !{!3996, !3993, !3997, !464}
!3997 = !DILocation(line: 190, column: 5, scope: !3988)
!3998 = !DILocation(line: 191, column: 20, scope: !3972)
!3999 = !DILocation(line: 191, column: 28, scope: !3972)
!4000 = !DILocation(line: 191, column: 42, scope: !3972)
!4001 = !DILocation(line: 191, column: 51, scope: !3972)
!4002 = !DILocation(line: 191, column: 60, scope: !3972)
!4003 = !DILocation(line: 191, column: 69, scope: !3972)
!4004 = !DILocation(line: 191, column: 3, scope: !3972)
!4005 = !DILocation(line: 192, column: 1, scope: !3972)
!4006 = distinct !DISubprogram(name: "version_etc_va", scope: !298, file: !298, line: 199, type: !4007, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !80)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{null, !3807, !78, !78, !78, !4009}
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !141, line: 52, baseType: !4010)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !143, line: 32, baseType: !4011)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4012, baseType: !4013)
!4012 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !147, size: 256, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4013, file: !4012, line: 192, baseType: !56, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4013, file: !4012, line: 192, baseType: !56, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4013, file: !4012, line: 192, baseType: !56, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4013, file: !4012, line: 192, baseType: !62, size: 32, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4013, file: !4012, line: 192, baseType: !62, size: 32, offset: 224)
!4020 = !DILocalVariable(name: "stream", arg: 1, scope: !4006, file: !298, line: 199, type: !3807)
!4021 = !DILocation(line: 199, column: 23, scope: !4006)
!4022 = !DILocalVariable(name: "command_name", arg: 2, scope: !4006, file: !298, line: 200, type: !78)
!4023 = !DILocation(line: 200, column: 29, scope: !4006)
!4024 = !DILocalVariable(name: "package", arg: 3, scope: !4006, file: !298, line: 200, type: !78)
!4025 = !DILocation(line: 200, column: 55, scope: !4006)
!4026 = !DILocalVariable(name: "version", arg: 4, scope: !4006, file: !298, line: 201, type: !78)
!4027 = !DILocation(line: 201, column: 29, scope: !4006)
!4028 = !DILocalVariable(name: "authors", arg: 5, scope: !4006, file: !298, line: 201, type: !4009)
!4029 = !DILocation(line: 201, column: 46, scope: !4006)
!4030 = !DILocalVariable(name: "n_authors", scope: !4006, file: !298, line: 203, type: !188)
!4031 = !DILocation(line: 203, column: 10, scope: !4006)
!4032 = !DILocalVariable(name: "authtab", scope: !4006, file: !298, line: 204, type: !4033)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !196)
!4034 = !DILocation(line: 204, column: 15, scope: !4006)
!4035 = !DILocation(line: 206, column: 18, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4006, file: !298, line: 206, column: 3)
!4037 = !DILocation(line: 206, column: 8, scope: !4036)
!4038 = !DILocation(line: 207, column: 8, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4036, file: !298, line: 206, column: 3)
!4040 = !DILocation(line: 207, column: 18, scope: !4039)
!4041 = !DILocation(line: 208, column: 10, scope: !4039)
!4042 = !DILocation(line: 208, column: 35, scope: !4039)
!4043 = !DILocation(line: 208, column: 22, scope: !4039)
!4044 = !DILocation(line: 208, column: 14, scope: !4039)
!4045 = !DILocation(line: 208, column: 33, scope: !4039)
!4046 = !DILocation(line: 208, column: 67, scope: !4039)
!4047 = !DILocation(line: 0, scope: !4039)
!4048 = !DILocation(line: 206, column: 3, scope: !4036)
!4049 = !DILocation(line: 209, column: 17, scope: !4039)
!4050 = !DILocation(line: 206, column: 3, scope: !4039)
!4051 = distinct !{!4051, !4048, !4052, !464}
!4052 = !DILocation(line: 210, column: 5, scope: !4036)
!4053 = !DILocation(line: 211, column: 20, scope: !4006)
!4054 = !DILocation(line: 211, column: 28, scope: !4006)
!4055 = !DILocation(line: 211, column: 42, scope: !4006)
!4056 = !DILocation(line: 211, column: 51, scope: !4006)
!4057 = !DILocation(line: 212, column: 20, scope: !4006)
!4058 = !DILocation(line: 212, column: 29, scope: !4006)
!4059 = !DILocation(line: 211, column: 3, scope: !4006)
!4060 = !DILocation(line: 213, column: 1, scope: !4006)
!4061 = distinct !DISubprogram(name: "version_etc", scope: !298, file: !298, line: 230, type: !4062, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !80)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !3807, !78, !78, !78, null}
!4064 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !298, line: 230, type: !3807)
!4065 = !DILocation(line: 230, column: 20, scope: !4061)
!4066 = !DILocalVariable(name: "command_name", arg: 2, scope: !4061, file: !298, line: 231, type: !78)
!4067 = !DILocation(line: 231, column: 26, scope: !4061)
!4068 = !DILocalVariable(name: "package", arg: 3, scope: !4061, file: !298, line: 231, type: !78)
!4069 = !DILocation(line: 231, column: 52, scope: !4061)
!4070 = !DILocalVariable(name: "version", arg: 4, scope: !4061, file: !298, line: 232, type: !78)
!4071 = !DILocation(line: 232, column: 26, scope: !4061)
!4072 = !DILocalVariable(name: "authors", scope: !4061, file: !298, line: 234, type: !4009)
!4073 = !DILocation(line: 234, column: 11, scope: !4061)
!4074 = !DILocation(line: 235, column: 3, scope: !4061)
!4075 = !DILocation(line: 236, column: 19, scope: !4061)
!4076 = !DILocation(line: 236, column: 27, scope: !4061)
!4077 = !DILocation(line: 236, column: 41, scope: !4061)
!4078 = !DILocation(line: 236, column: 50, scope: !4061)
!4079 = !DILocation(line: 236, column: 3, scope: !4061)
!4080 = !DILocation(line: 237, column: 3, scope: !4061)
!4081 = !DILocation(line: 238, column: 1, scope: !4061)
!4082 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !298, file: !298, line: 241, type: !120, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !80)
!4083 = !DILocation(line: 243, column: 3, scope: !4082)
!4084 = !DILocation(line: 248, column: 11, scope: !4082)
!4085 = !DILocation(line: 248, column: 3, scope: !4082)
!4086 = !DILocation(line: 254, column: 11, scope: !4082)
!4087 = !DILocation(line: 254, column: 3, scope: !4082)
!4088 = !DILocation(line: 259, column: 11, scope: !4082)
!4089 = !DILocation(line: 259, column: 3, scope: !4082)
!4090 = !DILocation(line: 261, column: 1, scope: !4082)
!4091 = distinct !DISubprogram(name: "xnrealloc", scope: !4092, file: !4092, line: 147, type: !4093, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4092 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!56, !56, !188, !188}
!4095 = !DILocalVariable(name: "p", arg: 1, scope: !4091, file: !4092, line: 147, type: !56)
!4096 = !DILocation(line: 147, column: 18, scope: !4091)
!4097 = !DILocalVariable(name: "n", arg: 2, scope: !4091, file: !4092, line: 147, type: !188)
!4098 = !DILocation(line: 147, column: 28, scope: !4091)
!4099 = !DILocalVariable(name: "s", arg: 3, scope: !4091, file: !4092, line: 147, type: !188)
!4100 = !DILocation(line: 147, column: 38, scope: !4091)
!4101 = !DILocation(line: 149, column: 25, scope: !4091)
!4102 = !DILocation(line: 149, column: 28, scope: !4091)
!4103 = !DILocation(line: 149, column: 31, scope: !4091)
!4104 = !DILocation(line: 149, column: 10, scope: !4091)
!4105 = !DILocation(line: 149, column: 3, scope: !4091)
!4106 = distinct !DISubprogram(name: "xreallocarray", scope: !304, file: !304, line: 83, type: !4093, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4107 = !DILocalVariable(name: "p", arg: 1, scope: !4106, file: !304, line: 83, type: !56)
!4108 = !DILocation(line: 83, column: 22, scope: !4106)
!4109 = !DILocalVariable(name: "n", arg: 2, scope: !4106, file: !304, line: 83, type: !188)
!4110 = !DILocation(line: 83, column: 32, scope: !4106)
!4111 = !DILocalVariable(name: "s", arg: 3, scope: !4106, file: !304, line: 83, type: !188)
!4112 = !DILocation(line: 83, column: 42, scope: !4106)
!4113 = !DILocation(line: 85, column: 39, scope: !4106)
!4114 = !DILocation(line: 85, column: 42, scope: !4106)
!4115 = !DILocation(line: 85, column: 45, scope: !4106)
!4116 = !DILocation(line: 85, column: 25, scope: !4106)
!4117 = !DILocation(line: 85, column: 10, scope: !4106)
!4118 = !DILocation(line: 85, column: 3, scope: !4106)
!4119 = distinct !DISubprogram(name: "check_nonnull", scope: !304, file: !304, line: 37, type: !4120, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!56, !56}
!4122 = !DILocalVariable(name: "p", arg: 1, scope: !4119, file: !304, line: 37, type: !56)
!4123 = !DILocation(line: 37, column: 22, scope: !4119)
!4124 = !DILocation(line: 39, column: 8, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4119, file: !304, line: 39, column: 7)
!4126 = !DILocation(line: 39, column: 7, scope: !4119)
!4127 = !DILocation(line: 40, column: 5, scope: !4125)
!4128 = !DILocation(line: 41, column: 10, scope: !4119)
!4129 = !DILocation(line: 41, column: 3, scope: !4119)
!4130 = distinct !DISubprogram(name: "xmalloc", scope: !304, file: !304, line: 47, type: !4131, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!56, !188}
!4133 = !DILocalVariable(name: "s", arg: 1, scope: !4130, file: !304, line: 47, type: !188)
!4134 = !DILocation(line: 47, column: 17, scope: !4130)
!4135 = !DILocation(line: 49, column: 33, scope: !4130)
!4136 = !DILocation(line: 49, column: 25, scope: !4130)
!4137 = !DILocation(line: 49, column: 10, scope: !4130)
!4138 = !DILocation(line: 49, column: 3, scope: !4130)
!4139 = distinct !DISubprogram(name: "ximalloc", scope: !304, file: !304, line: 53, type: !4140, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!56, !318}
!4142 = !DILocalVariable(name: "s", arg: 1, scope: !4139, file: !304, line: 53, type: !318)
!4143 = !DILocation(line: 53, column: 17, scope: !4139)
!4144 = !DILocation(line: 55, column: 34, scope: !4139)
!4145 = !DILocation(line: 55, column: 25, scope: !4139)
!4146 = !DILocation(line: 55, column: 10, scope: !4139)
!4147 = !DILocation(line: 55, column: 3, scope: !4139)
!4148 = distinct !DISubprogram(name: "xcharalloc", scope: !304, file: !304, line: 59, type: !4149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!54, !188}
!4151 = !DILocalVariable(name: "n", arg: 1, scope: !4148, file: !304, line: 59, type: !188)
!4152 = !DILocation(line: 59, column: 20, scope: !4148)
!4153 = !DILocation(line: 61, column: 10, scope: !4148)
!4154 = !DILocation(line: 61, column: 3, scope: !4148)
!4155 = distinct !DISubprogram(name: "xrealloc", scope: !304, file: !304, line: 68, type: !4156, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!56, !56, !188}
!4158 = !DILocalVariable(name: "p", arg: 1, scope: !4155, file: !304, line: 68, type: !56)
!4159 = !DILocation(line: 68, column: 17, scope: !4155)
!4160 = !DILocalVariable(name: "s", arg: 2, scope: !4155, file: !304, line: 68, type: !188)
!4161 = !DILocation(line: 68, column: 27, scope: !4155)
!4162 = !DILocation(line: 70, column: 34, scope: !4155)
!4163 = !DILocation(line: 70, column: 37, scope: !4155)
!4164 = !DILocation(line: 70, column: 25, scope: !4155)
!4165 = !DILocation(line: 70, column: 10, scope: !4155)
!4166 = !DILocation(line: 70, column: 3, scope: !4155)
!4167 = distinct !DISubprogram(name: "xirealloc", scope: !304, file: !304, line: 74, type: !4168, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!56, !56, !318}
!4170 = !DILocalVariable(name: "p", arg: 1, scope: !4167, file: !304, line: 74, type: !56)
!4171 = !DILocation(line: 74, column: 18, scope: !4167)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !304, line: 74, type: !318)
!4173 = !DILocation(line: 74, column: 27, scope: !4167)
!4174 = !DILocation(line: 76, column: 35, scope: !4167)
!4175 = !DILocation(line: 76, column: 38, scope: !4167)
!4176 = !DILocation(line: 76, column: 25, scope: !4167)
!4177 = !DILocation(line: 76, column: 10, scope: !4167)
!4178 = !DILocation(line: 76, column: 3, scope: !4167)
!4179 = distinct !DISubprogram(name: "xireallocarray", scope: !304, file: !304, line: 89, type: !4180, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!56, !56, !318, !318}
!4182 = !DILocalVariable(name: "p", arg: 1, scope: !4179, file: !304, line: 89, type: !56)
!4183 = !DILocation(line: 89, column: 23, scope: !4179)
!4184 = !DILocalVariable(name: "n", arg: 2, scope: !4179, file: !304, line: 89, type: !318)
!4185 = !DILocation(line: 89, column: 32, scope: !4179)
!4186 = !DILocalVariable(name: "s", arg: 3, scope: !4179, file: !304, line: 89, type: !318)
!4187 = !DILocation(line: 89, column: 41, scope: !4179)
!4188 = !DILocation(line: 91, column: 40, scope: !4179)
!4189 = !DILocation(line: 91, column: 43, scope: !4179)
!4190 = !DILocation(line: 91, column: 46, scope: !4179)
!4191 = !DILocation(line: 91, column: 25, scope: !4179)
!4192 = !DILocation(line: 91, column: 10, scope: !4179)
!4193 = !DILocation(line: 91, column: 3, scope: !4179)
!4194 = distinct !DISubprogram(name: "xnmalloc", scope: !304, file: !304, line: 98, type: !4195, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!56, !188, !188}
!4197 = !DILocalVariable(name: "n", arg: 1, scope: !4194, file: !304, line: 98, type: !188)
!4198 = !DILocation(line: 98, column: 18, scope: !4194)
!4199 = !DILocalVariable(name: "s", arg: 2, scope: !4194, file: !304, line: 98, type: !188)
!4200 = !DILocation(line: 98, column: 28, scope: !4194)
!4201 = !DILocation(line: 100, column: 31, scope: !4194)
!4202 = !DILocation(line: 100, column: 34, scope: !4194)
!4203 = !DILocation(line: 100, column: 10, scope: !4194)
!4204 = !DILocation(line: 100, column: 3, scope: !4194)
!4205 = distinct !DISubprogram(name: "xinmalloc", scope: !304, file: !304, line: 104, type: !4206, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!56, !318, !318}
!4208 = !DILocalVariable(name: "n", arg: 1, scope: !4205, file: !304, line: 104, type: !318)
!4209 = !DILocation(line: 104, column: 18, scope: !4205)
!4210 = !DILocalVariable(name: "s", arg: 2, scope: !4205, file: !304, line: 104, type: !318)
!4211 = !DILocation(line: 104, column: 27, scope: !4205)
!4212 = !DILocation(line: 106, column: 32, scope: !4205)
!4213 = !DILocation(line: 106, column: 35, scope: !4205)
!4214 = !DILocation(line: 106, column: 10, scope: !4205)
!4215 = !DILocation(line: 106, column: 3, scope: !4205)
!4216 = distinct !DISubprogram(name: "x2realloc", scope: !304, file: !304, line: 116, type: !4217, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!56, !56, !310}
!4219 = !DILocalVariable(name: "p", arg: 1, scope: !4216, file: !304, line: 116, type: !56)
!4220 = !DILocation(line: 116, column: 18, scope: !4216)
!4221 = !DILocalVariable(name: "ps", arg: 2, scope: !4216, file: !304, line: 116, type: !310)
!4222 = !DILocation(line: 116, column: 29, scope: !4216)
!4223 = !DILocation(line: 118, column: 22, scope: !4216)
!4224 = !DILocation(line: 118, column: 25, scope: !4216)
!4225 = !DILocation(line: 118, column: 10, scope: !4216)
!4226 = !DILocation(line: 118, column: 3, scope: !4216)
!4227 = !DILocalVariable(name: "p", arg: 1, scope: !307, file: !304, line: 176, type: !56)
!4228 = !DILocation(line: 176, column: 19, scope: !307)
!4229 = !DILocalVariable(name: "pn", arg: 2, scope: !307, file: !304, line: 176, type: !310)
!4230 = !DILocation(line: 176, column: 30, scope: !307)
!4231 = !DILocalVariable(name: "s", arg: 3, scope: !307, file: !304, line: 176, type: !188)
!4232 = !DILocation(line: 176, column: 41, scope: !307)
!4233 = !DILocalVariable(name: "n", scope: !307, file: !304, line: 178, type: !188)
!4234 = !DILocation(line: 178, column: 10, scope: !307)
!4235 = !DILocation(line: 178, column: 15, scope: !307)
!4236 = !DILocation(line: 178, column: 14, scope: !307)
!4237 = !DILocation(line: 180, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !307, file: !304, line: 180, column: 7)
!4239 = !DILocation(line: 180, column: 7, scope: !307)
!4240 = !DILocation(line: 182, column: 13, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !304, line: 182, column: 11)
!4242 = distinct !DILexicalBlock(scope: !4238, file: !304, line: 181, column: 5)
!4243 = !DILocation(line: 182, column: 11, scope: !4242)
!4244 = !DILocation(line: 190, column: 32, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4241, file: !304, line: 183, column: 9)
!4246 = !DILocation(line: 190, column: 30, scope: !4245)
!4247 = !DILocation(line: 190, column: 13, scope: !4245)
!4248 = !DILocation(line: 191, column: 17, scope: !4245)
!4249 = !DILocation(line: 191, column: 16, scope: !4245)
!4250 = !DILocation(line: 191, column: 13, scope: !4245)
!4251 = !DILocation(line: 192, column: 9, scope: !4245)
!4252 = !DILocation(line: 193, column: 5, scope: !4242)
!4253 = !DILocation(line: 197, column: 11, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !304, line: 197, column: 11)
!4255 = distinct !DILexicalBlock(scope: !4238, file: !304, line: 195, column: 5)
!4256 = !DILocation(line: 197, column: 11, scope: !4255)
!4257 = !DILocation(line: 198, column: 9, scope: !4254)
!4258 = !DILocation(line: 201, column: 22, scope: !307)
!4259 = !DILocation(line: 201, column: 25, scope: !307)
!4260 = !DILocation(line: 201, column: 28, scope: !307)
!4261 = !DILocation(line: 201, column: 7, scope: !307)
!4262 = !DILocation(line: 201, column: 5, scope: !307)
!4263 = !DILocation(line: 202, column: 9, scope: !307)
!4264 = !DILocation(line: 202, column: 4, scope: !307)
!4265 = !DILocation(line: 202, column: 7, scope: !307)
!4266 = !DILocation(line: 203, column: 10, scope: !307)
!4267 = !DILocation(line: 203, column: 3, scope: !307)
!4268 = !DILocalVariable(name: "pa", arg: 1, scope: !314, file: !304, line: 223, type: !56)
!4269 = !DILocation(line: 223, column: 16, scope: !314)
!4270 = !DILocalVariable(name: "pn", arg: 2, scope: !314, file: !304, line: 223, type: !317)
!4271 = !DILocation(line: 223, column: 27, scope: !314)
!4272 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !314, file: !304, line: 223, type: !318)
!4273 = !DILocation(line: 223, column: 37, scope: !314)
!4274 = !DILocalVariable(name: "n_max", arg: 4, scope: !314, file: !304, line: 223, type: !320)
!4275 = !DILocation(line: 223, column: 59, scope: !314)
!4276 = !DILocalVariable(name: "s", arg: 5, scope: !314, file: !304, line: 223, type: !318)
!4277 = !DILocation(line: 223, column: 72, scope: !314)
!4278 = !DILocalVariable(name: "n0", scope: !314, file: !304, line: 230, type: !318)
!4279 = !DILocation(line: 230, column: 9, scope: !314)
!4280 = !DILocation(line: 230, column: 15, scope: !314)
!4281 = !DILocation(line: 230, column: 14, scope: !314)
!4282 = !DILocalVariable(name: "n", scope: !314, file: !304, line: 237, type: !318)
!4283 = !DILocation(line: 237, column: 9, scope: !314)
!4284 = !DILocation(line: 238, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !314, file: !304, line: 238, column: 7)
!4286 = !DILocation(line: 238, column: 7, scope: !314)
!4287 = !DILocation(line: 239, column: 7, scope: !4285)
!4288 = !DILocation(line: 239, column: 5, scope: !4285)
!4289 = !DILocation(line: 240, column: 12, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !314, file: !304, line: 240, column: 7)
!4291 = !DILocation(line: 240, column: 9, scope: !4290)
!4292 = !DILocation(line: 240, column: 18, scope: !4290)
!4293 = !DILocation(line: 240, column: 21, scope: !4290)
!4294 = !DILocation(line: 240, column: 29, scope: !4290)
!4295 = !DILocation(line: 240, column: 27, scope: !4290)
!4296 = !DILocation(line: 240, column: 7, scope: !314)
!4297 = !DILocation(line: 241, column: 9, scope: !4290)
!4298 = !DILocation(line: 241, column: 7, scope: !4290)
!4299 = !DILocation(line: 241, column: 5, scope: !4290)
!4300 = !DILocalVariable(name: "nbytes", scope: !314, file: !304, line: 248, type: !318)
!4301 = !DILocation(line: 248, column: 9, scope: !314)
!4302 = !DILocalVariable(name: "adjusted_nbytes", scope: !314, file: !304, line: 252, type: !318)
!4303 = !DILocation(line: 252, column: 9, scope: !314)
!4304 = !DILocation(line: 253, column: 8, scope: !314)
!4305 = !DILocation(line: 255, column: 10, scope: !314)
!4306 = !DILocation(line: 255, column: 17, scope: !314)
!4307 = !DILocation(line: 256, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !314, file: !304, line: 256, column: 7)
!4309 = !DILocation(line: 256, column: 7, scope: !314)
!4310 = !DILocation(line: 258, column: 11, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4308, file: !304, line: 257, column: 5)
!4312 = !DILocation(line: 258, column: 29, scope: !4311)
!4313 = !DILocation(line: 258, column: 27, scope: !4311)
!4314 = !DILocation(line: 258, column: 9, scope: !4311)
!4315 = !DILocation(line: 259, column: 16, scope: !4311)
!4316 = !DILocation(line: 259, column: 34, scope: !4311)
!4317 = !DILocation(line: 259, column: 52, scope: !4311)
!4318 = !DILocation(line: 259, column: 50, scope: !4311)
!4319 = !DILocation(line: 259, column: 32, scope: !4311)
!4320 = !DILocation(line: 259, column: 14, scope: !4311)
!4321 = !DILocation(line: 260, column: 5, scope: !4311)
!4322 = !DILocation(line: 262, column: 9, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !314, file: !304, line: 262, column: 7)
!4324 = !DILocation(line: 262, column: 7, scope: !314)
!4325 = !DILocation(line: 263, column: 6, scope: !4323)
!4326 = !DILocation(line: 263, column: 9, scope: !4323)
!4327 = !DILocation(line: 263, column: 5, scope: !4323)
!4328 = !DILocation(line: 264, column: 7, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !314, file: !304, line: 264, column: 7)
!4330 = !DILocation(line: 264, column: 11, scope: !4329)
!4331 = !DILocation(line: 264, column: 9, scope: !4329)
!4332 = !DILocation(line: 264, column: 16, scope: !4329)
!4333 = !DILocation(line: 264, column: 14, scope: !4329)
!4334 = !DILocation(line: 265, column: 7, scope: !4329)
!4335 = !DILocation(line: 265, column: 11, scope: !4329)
!4336 = !DILocation(line: 266, column: 11, scope: !4329)
!4337 = !DILocation(line: 266, column: 20, scope: !4329)
!4338 = !DILocation(line: 266, column: 17, scope: !4329)
!4339 = !DILocation(line: 266, column: 26, scope: !4329)
!4340 = !DILocation(line: 266, column: 29, scope: !4329)
!4341 = !DILocation(line: 266, column: 37, scope: !4329)
!4342 = !DILocation(line: 266, column: 35, scope: !4329)
!4343 = !DILocation(line: 267, column: 11, scope: !4329)
!4344 = !DILocation(line: 267, column: 14, scope: !4329)
!4345 = !DILocation(line: 264, column: 7, scope: !314)
!4346 = !DILocation(line: 268, column: 5, scope: !4329)
!4347 = !DILocation(line: 269, column: 18, scope: !314)
!4348 = !DILocation(line: 269, column: 22, scope: !314)
!4349 = !DILocation(line: 269, column: 8, scope: !314)
!4350 = !DILocation(line: 269, column: 6, scope: !314)
!4351 = !DILocation(line: 270, column: 9, scope: !314)
!4352 = !DILocation(line: 270, column: 4, scope: !314)
!4353 = !DILocation(line: 270, column: 7, scope: !314)
!4354 = !DILocation(line: 271, column: 10, scope: !314)
!4355 = !DILocation(line: 271, column: 3, scope: !314)
!4356 = distinct !DISubprogram(name: "xzalloc", scope: !304, file: !304, line: 279, type: !4131, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4357 = !DILocalVariable(name: "s", arg: 1, scope: !4356, file: !304, line: 279, type: !188)
!4358 = !DILocation(line: 279, column: 17, scope: !4356)
!4359 = !DILocation(line: 281, column: 19, scope: !4356)
!4360 = !DILocation(line: 281, column: 10, scope: !4356)
!4361 = !DILocation(line: 281, column: 3, scope: !4356)
!4362 = distinct !DISubprogram(name: "xcalloc", scope: !304, file: !304, line: 294, type: !4195, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4363 = !DILocalVariable(name: "n", arg: 1, scope: !4362, file: !304, line: 294, type: !188)
!4364 = !DILocation(line: 294, column: 17, scope: !4362)
!4365 = !DILocalVariable(name: "s", arg: 2, scope: !4362, file: !304, line: 294, type: !188)
!4366 = !DILocation(line: 294, column: 27, scope: !4362)
!4367 = !DILocation(line: 296, column: 33, scope: !4362)
!4368 = !DILocation(line: 296, column: 36, scope: !4362)
!4369 = !DILocation(line: 296, column: 25, scope: !4362)
!4370 = !DILocation(line: 296, column: 10, scope: !4362)
!4371 = !DILocation(line: 296, column: 3, scope: !4362)
!4372 = distinct !DISubprogram(name: "xizalloc", scope: !304, file: !304, line: 285, type: !4140, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4373 = !DILocalVariable(name: "s", arg: 1, scope: !4372, file: !304, line: 285, type: !318)
!4374 = !DILocation(line: 285, column: 17, scope: !4372)
!4375 = !DILocation(line: 287, column: 20, scope: !4372)
!4376 = !DILocation(line: 287, column: 10, scope: !4372)
!4377 = !DILocation(line: 287, column: 3, scope: !4372)
!4378 = distinct !DISubprogram(name: "xicalloc", scope: !304, file: !304, line: 300, type: !4206, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4379 = !DILocalVariable(name: "n", arg: 1, scope: !4378, file: !304, line: 300, type: !318)
!4380 = !DILocation(line: 300, column: 17, scope: !4378)
!4381 = !DILocalVariable(name: "s", arg: 2, scope: !4378, file: !304, line: 300, type: !318)
!4382 = !DILocation(line: 300, column: 26, scope: !4378)
!4383 = !DILocation(line: 302, column: 34, scope: !4378)
!4384 = !DILocation(line: 302, column: 37, scope: !4378)
!4385 = !DILocation(line: 302, column: 25, scope: !4378)
!4386 = !DILocation(line: 302, column: 10, scope: !4378)
!4387 = !DILocation(line: 302, column: 3, scope: !4378)
!4388 = distinct !DISubprogram(name: "xmemdup", scope: !304, file: !304, line: 310, type: !4389, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!56, !52, !188}
!4391 = !DILocalVariable(name: "p", arg: 1, scope: !4388, file: !304, line: 310, type: !52)
!4392 = !DILocation(line: 310, column: 22, scope: !4388)
!4393 = !DILocalVariable(name: "s", arg: 2, scope: !4388, file: !304, line: 310, type: !188)
!4394 = !DILocation(line: 310, column: 32, scope: !4388)
!4395 = !DILocation(line: 312, column: 27, scope: !4388)
!4396 = !DILocation(line: 312, column: 18, scope: !4388)
!4397 = !DILocation(line: 312, column: 31, scope: !4388)
!4398 = !DILocation(line: 312, column: 34, scope: !4388)
!4399 = !DILocation(line: 312, column: 10, scope: !4388)
!4400 = !DILocation(line: 312, column: 3, scope: !4388)
!4401 = distinct !DISubprogram(name: "ximemdup", scope: !304, file: !304, line: 316, type: !4402, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!56, !52, !318}
!4404 = !DILocalVariable(name: "p", arg: 1, scope: !4401, file: !304, line: 316, type: !52)
!4405 = !DILocation(line: 316, column: 23, scope: !4401)
!4406 = !DILocalVariable(name: "s", arg: 2, scope: !4401, file: !304, line: 316, type: !318)
!4407 = !DILocation(line: 316, column: 32, scope: !4401)
!4408 = !DILocation(line: 318, column: 28, scope: !4401)
!4409 = !DILocation(line: 318, column: 18, scope: !4401)
!4410 = !DILocation(line: 318, column: 32, scope: !4401)
!4411 = !DILocation(line: 318, column: 35, scope: !4401)
!4412 = !DILocation(line: 318, column: 10, scope: !4401)
!4413 = !DILocation(line: 318, column: 3, scope: !4401)
!4414 = distinct !DISubprogram(name: "ximemdup0", scope: !304, file: !304, line: 325, type: !4415, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!54, !52, !318}
!4417 = !DILocalVariable(name: "p", arg: 1, scope: !4414, file: !304, line: 325, type: !52)
!4418 = !DILocation(line: 325, column: 24, scope: !4414)
!4419 = !DILocalVariable(name: "s", arg: 2, scope: !4414, file: !304, line: 325, type: !318)
!4420 = !DILocation(line: 325, column: 33, scope: !4414)
!4421 = !DILocalVariable(name: "result", scope: !4414, file: !304, line: 327, type: !54)
!4422 = !DILocation(line: 327, column: 9, scope: !4414)
!4423 = !DILocation(line: 327, column: 28, scope: !4414)
!4424 = !DILocation(line: 327, column: 30, scope: !4414)
!4425 = !DILocation(line: 327, column: 18, scope: !4414)
!4426 = !DILocation(line: 328, column: 3, scope: !4414)
!4427 = !DILocation(line: 328, column: 10, scope: !4414)
!4428 = !DILocation(line: 328, column: 13, scope: !4414)
!4429 = !DILocation(line: 329, column: 18, scope: !4414)
!4430 = !DILocation(line: 329, column: 26, scope: !4414)
!4431 = !DILocation(line: 329, column: 29, scope: !4414)
!4432 = !DILocation(line: 329, column: 10, scope: !4414)
!4433 = !DILocation(line: 329, column: 3, scope: !4414)
!4434 = distinct !DISubprogram(name: "xstrdup", scope: !304, file: !304, line: 335, type: !1001, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !80)
!4435 = !DILocalVariable(name: "string", arg: 1, scope: !4434, file: !304, line: 335, type: !78)
!4436 = !DILocation(line: 335, column: 22, scope: !4434)
!4437 = !DILocation(line: 337, column: 19, scope: !4434)
!4438 = !DILocation(line: 337, column: 35, scope: !4434)
!4439 = !DILocation(line: 337, column: 27, scope: !4434)
!4440 = !DILocation(line: 337, column: 43, scope: !4434)
!4441 = !DILocation(line: 337, column: 10, scope: !4434)
!4442 = !DILocation(line: 337, column: 3, scope: !4434)
!4443 = distinct !DISubprogram(name: "xalloc_die", scope: !324, file: !324, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !323, retainedNodes: !80)
!4444 = !DILocalVariable(name: "__errstatus", scope: !4445, file: !324, line: 34, type: !825)
!4445 = distinct !DILexicalBlock(scope: !4443, file: !324, line: 34, column: 3)
!4446 = !DILocation(line: 34, column: 3, scope: !4445)
!4447 = !DILocation(line: 40, column: 3, scope: !4443)
!4448 = distinct !DISubprogram(name: "xset_binary_mode_error", scope: !4449, file: !4449, line: 40, type: !120, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !325, retainedNodes: !80)
!4449 = !DIFile(filename: "./lib/xbinary-io.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d574dfff4780a1b50e960b190b3a4320")
!4450 = !DILocation(line: 40, column: 55, scope: !4448)
!4451 = distinct !DISubprogram(name: "xset_binary_mode", scope: !4449, file: !4449, line: 47, type: !4452, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !325, retainedNodes: !80)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !62, !62}
!4454 = !DILocalVariable(name: "fd", arg: 1, scope: !4451, file: !4449, line: 47, type: !62)
!4455 = !DILocation(line: 47, column: 23, scope: !4451)
!4456 = !DILocalVariable(name: "mode", arg: 2, scope: !4451, file: !4449, line: 47, type: !62)
!4457 = !DILocation(line: 47, column: 31, scope: !4451)
!4458 = !DILocation(line: 49, column: 24, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4451, file: !4449, line: 49, column: 7)
!4460 = !DILocation(line: 49, column: 28, scope: !4459)
!4461 = !DILocation(line: 49, column: 7, scope: !4459)
!4462 = !DILocation(line: 49, column: 34, scope: !4459)
!4463 = !DILocation(line: 49, column: 7, scope: !4451)
!4464 = !DILocation(line: 50, column: 5, scope: !4459)
!4465 = !DILocation(line: 51, column: 1, scope: !4451)
!4466 = distinct !DISubprogram(name: "_gl_set_fd_mode", scope: !4467, file: !4467, line: 52, type: !276, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !80)
!4467 = !DIFile(filename: "./lib/binary-io.h", directory: "/src", checksumkind: CSK_MD5, checksum: "84fc70284081fbacaa08dbfff98af5d0")
!4468 = !DILocalVariable(name: "fd", arg: 1, scope: !4466, file: !4467, line: 52, type: !62)
!4469 = !DILocation(line: 52, column: 33, scope: !4466)
!4470 = !DILocalVariable(name: "mode", arg: 2, scope: !4466, file: !4467, line: 52, type: !62)
!4471 = !DILocation(line: 52, column: 52, scope: !4466)
!4472 = !DILocation(line: 54, column: 3, scope: !4466)
!4473 = distinct !DISubprogram(name: "set_binary_mode", scope: !4467, file: !4467, line: 73, type: !276, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !80)
!4474 = !DILocalVariable(name: "fd", arg: 1, scope: !4473, file: !4467, line: 73, type: !62)
!4475 = !DILocation(line: 73, column: 22, scope: !4473)
!4476 = !DILocalVariable(name: "mode", arg: 2, scope: !4473, file: !4467, line: 73, type: !62)
!4477 = !DILocation(line: 73, column: 30, scope: !4473)
!4478 = !DILocation(line: 75, column: 27, scope: !4473)
!4479 = !DILocation(line: 75, column: 31, scope: !4473)
!4480 = !DILocation(line: 75, column: 10, scope: !4473)
!4481 = !DILocation(line: 75, column: 3, scope: !4473)
!4482 = distinct !DISubprogram(name: "c32isprint", scope: !4483, file: !4483, line: 41, type: !4484, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !329, retainedNodes: !80)
!4483 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!62, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4487, line: 20, baseType: !6)
!4487 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4488 = !DILocalVariable(name: "wc", arg: 1, scope: !4482, file: !4483, line: 41, type: !4486)
!4489 = !DILocation(line: 41, column: 14, scope: !4482)
!4490 = !DILocation(line: 66, column: 22, scope: !4482)
!4491 = !DILocation(line: 66, column: 10, scope: !4482)
!4492 = !DILocation(line: 66, column: 3, scope: !4482)
!4493 = distinct !DISubprogram(name: "close_stream", scope: !332, file: !332, line: 55, type: !4494, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !331, retainedNodes: !80)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!62, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4498, file: !1847, line: 51, baseType: !62, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4498, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4498, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4498, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4498, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4498, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4498, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4498, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4498, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4498, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4498, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4498, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4498, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4498, file: !1847, line: 70, baseType: !4514, size: 64, offset: 832)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4498, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4498, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4498, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4498, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4498, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4498, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4498, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4498, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4498, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4498, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4498, file: !1847, line: 93, baseType: !4514, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4498, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4498, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4498, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4498, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!4530 = !DILocalVariable(name: "stream", arg: 1, scope: !4493, file: !332, line: 55, type: !4496)
!4531 = !DILocation(line: 55, column: 21, scope: !4493)
!4532 = !DILocalVariable(name: "some_pending", scope: !4493, file: !332, line: 57, type: !4533)
!4533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!4534 = !DILocation(line: 57, column: 14, scope: !4493)
!4535 = !DILocation(line: 57, column: 42, scope: !4493)
!4536 = !DILocation(line: 57, column: 30, scope: !4493)
!4537 = !DILocation(line: 57, column: 50, scope: !4493)
!4538 = !DILocalVariable(name: "prev_fail", scope: !4493, file: !332, line: 58, type: !4533)
!4539 = !DILocation(line: 58, column: 14, scope: !4493)
!4540 = !DILocation(line: 58, column: 27, scope: !4493)
!4541 = !DILocation(line: 58, column: 43, scope: !4493)
!4542 = !DILocalVariable(name: "fclose_fail", scope: !4493, file: !332, line: 59, type: !4533)
!4543 = !DILocation(line: 59, column: 14, scope: !4493)
!4544 = !DILocation(line: 59, column: 37, scope: !4493)
!4545 = !DILocation(line: 59, column: 29, scope: !4493)
!4546 = !DILocation(line: 59, column: 45, scope: !4493)
!4547 = !DILocation(line: 69, column: 7, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4493, file: !332, line: 69, column: 7)
!4549 = !DILocation(line: 69, column: 17, scope: !4548)
!4550 = !DILocation(line: 69, column: 21, scope: !4548)
!4551 = !DILocation(line: 69, column: 33, scope: !4548)
!4552 = !DILocation(line: 69, column: 37, scope: !4548)
!4553 = !DILocation(line: 69, column: 50, scope: !4548)
!4554 = !DILocation(line: 69, column: 53, scope: !4548)
!4555 = !DILocation(line: 69, column: 59, scope: !4548)
!4556 = !DILocation(line: 69, column: 7, scope: !4493)
!4557 = !DILocation(line: 71, column: 13, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !332, line: 71, column: 11)
!4559 = distinct !DILexicalBlock(scope: !4548, file: !332, line: 70, column: 5)
!4560 = !DILocation(line: 71, column: 11, scope: !4559)
!4561 = !DILocation(line: 72, column: 9, scope: !4558)
!4562 = !DILocation(line: 72, column: 15, scope: !4558)
!4563 = !DILocation(line: 73, column: 7, scope: !4559)
!4564 = !DILocation(line: 76, column: 3, scope: !4493)
!4565 = !DILocation(line: 77, column: 1, scope: !4493)
!4566 = distinct !DISubprogram(name: "rpl_fclose", scope: !334, file: !334, line: 58, type: !4567, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !333, retainedNodes: !80)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!62, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4571, file: !1847, line: 51, baseType: !62, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4571, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4571, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4571, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4571, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4571, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4571, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4571, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4571, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4571, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4571, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4571, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4571, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4571, file: !1847, line: 70, baseType: !4587, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4571, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4571, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4571, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4571, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4571, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4571, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4571, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4571, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4571, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4571, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4571, file: !1847, line: 93, baseType: !4587, size: 64, offset: 1344)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4571, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4571, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4571, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4571, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!4603 = !DILocalVariable(name: "fp", arg: 1, scope: !4566, file: !334, line: 58, type: !4569)
!4604 = !DILocation(line: 58, column: 19, scope: !4566)
!4605 = !DILocalVariable(name: "saved_errno", scope: !4566, file: !334, line: 60, type: !62)
!4606 = !DILocation(line: 60, column: 7, scope: !4566)
!4607 = !DILocalVariable(name: "fd", scope: !4566, file: !334, line: 63, type: !62)
!4608 = !DILocation(line: 63, column: 7, scope: !4566)
!4609 = !DILocation(line: 63, column: 20, scope: !4566)
!4610 = !DILocation(line: 63, column: 12, scope: !4566)
!4611 = !DILocation(line: 64, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4566, file: !334, line: 64, column: 7)
!4613 = !DILocation(line: 64, column: 10, scope: !4612)
!4614 = !DILocation(line: 64, column: 7, scope: !4566)
!4615 = !DILocation(line: 65, column: 28, scope: !4612)
!4616 = !DILocation(line: 65, column: 12, scope: !4612)
!4617 = !DILocation(line: 65, column: 5, scope: !4612)
!4618 = !DILocation(line: 70, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4566, file: !334, line: 70, column: 7)
!4620 = !DILocation(line: 70, column: 23, scope: !4619)
!4621 = !DILocation(line: 70, column: 41, scope: !4619)
!4622 = !DILocation(line: 70, column: 33, scope: !4619)
!4623 = !DILocation(line: 70, column: 26, scope: !4619)
!4624 = !DILocation(line: 70, column: 59, scope: !4619)
!4625 = !DILocation(line: 71, column: 7, scope: !4619)
!4626 = !DILocation(line: 71, column: 18, scope: !4619)
!4627 = !DILocation(line: 71, column: 10, scope: !4619)
!4628 = !DILocation(line: 70, column: 7, scope: !4566)
!4629 = !DILocation(line: 72, column: 19, scope: !4619)
!4630 = !DILocation(line: 72, column: 17, scope: !4619)
!4631 = !DILocation(line: 72, column: 5, scope: !4619)
!4632 = !DILocalVariable(name: "result", scope: !4566, file: !334, line: 74, type: !62)
!4633 = !DILocation(line: 74, column: 7, scope: !4566)
!4634 = !DILocation(line: 100, column: 28, scope: !4566)
!4635 = !DILocation(line: 100, column: 12, scope: !4566)
!4636 = !DILocation(line: 100, column: 10, scope: !4566)
!4637 = !DILocation(line: 105, column: 7, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4566, file: !334, line: 105, column: 7)
!4639 = !DILocation(line: 105, column: 19, scope: !4638)
!4640 = !DILocation(line: 105, column: 7, scope: !4566)
!4641 = !DILocation(line: 107, column: 15, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4638, file: !334, line: 106, column: 5)
!4643 = !DILocation(line: 107, column: 7, scope: !4642)
!4644 = !DILocation(line: 107, column: 13, scope: !4642)
!4645 = !DILocation(line: 108, column: 14, scope: !4642)
!4646 = !DILocation(line: 109, column: 5, scope: !4642)
!4647 = !DILocation(line: 111, column: 10, scope: !4566)
!4648 = !DILocation(line: 111, column: 3, scope: !4566)
!4649 = !DILocation(line: 112, column: 1, scope: !4566)
!4650 = distinct !DISubprogram(name: "rpl_fflush", scope: !336, file: !336, line: 130, type: !4651, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !335, retainedNodes: !80)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!62, !4653}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !4655)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4655, file: !1847, line: 51, baseType: !62, size: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4655, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4655, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4655, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4655, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4655, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4655, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4655, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4655, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4655, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4655, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4655, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4655, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4655, file: !1847, line: 70, baseType: !4671, size: 64, offset: 832)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4655, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4655, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4655, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4655, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4655, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4655, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4655, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4655, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4655, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4655, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4655, file: !1847, line: 93, baseType: !4671, size: 64, offset: 1344)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4655, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4655, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4655, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4655, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!4687 = !DILocalVariable(name: "stream", arg: 1, scope: !4650, file: !336, line: 130, type: !4653)
!4688 = !DILocation(line: 130, column: 19, scope: !4650)
!4689 = !DILocation(line: 151, column: 7, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4650, file: !336, line: 151, column: 7)
!4691 = !DILocation(line: 151, column: 14, scope: !4690)
!4692 = !DILocation(line: 151, column: 22, scope: !4690)
!4693 = !DILocation(line: 151, column: 27, scope: !4690)
!4694 = !DILocation(line: 151, column: 7, scope: !4650)
!4695 = !DILocation(line: 152, column: 20, scope: !4690)
!4696 = !DILocation(line: 152, column: 12, scope: !4690)
!4697 = !DILocation(line: 152, column: 5, scope: !4690)
!4698 = !DILocation(line: 157, column: 44, scope: !4650)
!4699 = !DILocation(line: 157, column: 3, scope: !4650)
!4700 = !DILocation(line: 159, column: 18, scope: !4650)
!4701 = !DILocation(line: 159, column: 10, scope: !4650)
!4702 = !DILocation(line: 159, column: 3, scope: !4650)
!4703 = !DILocation(line: 236, column: 1, scope: !4650)
!4704 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !336, file: !336, line: 42, type: !4705, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !335, retainedNodes: !80)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4653}
!4707 = !DILocalVariable(name: "fp", arg: 1, scope: !4704, file: !336, line: 42, type: !4653)
!4708 = !DILocation(line: 42, column: 48, scope: !4704)
!4709 = !DILocation(line: 44, column: 7, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4704, file: !336, line: 44, column: 7)
!4711 = !DILocation(line: 44, column: 12, scope: !4710)
!4712 = !DILocation(line: 44, column: 19, scope: !4710)
!4713 = !DILocation(line: 44, column: 7, scope: !4704)
!4714 = !DILocation(line: 46, column: 13, scope: !4710)
!4715 = !DILocation(line: 46, column: 5, scope: !4710)
!4716 = !DILocation(line: 47, column: 1, scope: !4704)
!4717 = distinct !DISubprogram(name: "rpl_fseeko", scope: !338, file: !338, line: 28, type: !4718, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !337, retainedNodes: !80)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!62, !4720, !1828, !62}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1845, line: 7, baseType: !4722)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1847, line: 49, size: 1728, elements: !4723)
!4723 = !{!4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4722, file: !1847, line: 51, baseType: !62, size: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4722, file: !1847, line: 54, baseType: !54, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4722, file: !1847, line: 55, baseType: !54, size: 64, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4722, file: !1847, line: 56, baseType: !54, size: 64, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4722, file: !1847, line: 57, baseType: !54, size: 64, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4722, file: !1847, line: 58, baseType: !54, size: 64, offset: 320)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4722, file: !1847, line: 59, baseType: !54, size: 64, offset: 384)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4722, file: !1847, line: 60, baseType: !54, size: 64, offset: 448)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4722, file: !1847, line: 61, baseType: !54, size: 64, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4722, file: !1847, line: 64, baseType: !54, size: 64, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4722, file: !1847, line: 65, baseType: !54, size: 64, offset: 640)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4722, file: !1847, line: 66, baseType: !54, size: 64, offset: 704)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4722, file: !1847, line: 68, baseType: !1862, size: 64, offset: 768)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4722, file: !1847, line: 70, baseType: !4738, size: 64, offset: 832)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4722, file: !1847, line: 72, baseType: !62, size: 32, offset: 896)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4722, file: !1847, line: 73, baseType: !62, size: 32, offset: 928)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4722, file: !1847, line: 74, baseType: !1202, size: 64, offset: 960)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4722, file: !1847, line: 77, baseType: !63, size: 16, offset: 1024)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4722, file: !1847, line: 78, baseType: !1871, size: 8, offset: 1040)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4722, file: !1847, line: 79, baseType: !1873, size: 8, offset: 1048)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4722, file: !1847, line: 81, baseType: !1877, size: 64, offset: 1088)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4722, file: !1847, line: 89, baseType: !1880, size: 64, offset: 1152)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4722, file: !1847, line: 91, baseType: !1882, size: 64, offset: 1216)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4722, file: !1847, line: 92, baseType: !1885, size: 64, offset: 1280)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4722, file: !1847, line: 93, baseType: !4738, size: 64, offset: 1344)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4722, file: !1847, line: 94, baseType: !56, size: 64, offset: 1408)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4722, file: !1847, line: 95, baseType: !188, size: 64, offset: 1472)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4722, file: !1847, line: 96, baseType: !62, size: 32, offset: 1536)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4722, file: !1847, line: 98, baseType: !1892, size: 160, offset: 1568)
!4754 = !DILocalVariable(name: "fp", arg: 1, scope: !4717, file: !338, line: 28, type: !4720)
!4755 = !DILocation(line: 28, column: 15, scope: !4717)
!4756 = !DILocalVariable(name: "offset", arg: 2, scope: !4717, file: !338, line: 28, type: !1828)
!4757 = !DILocation(line: 28, column: 25, scope: !4717)
!4758 = !DILocalVariable(name: "whence", arg: 3, scope: !4717, file: !338, line: 28, type: !62)
!4759 = !DILocation(line: 28, column: 37, scope: !4717)
!4760 = !DILocation(line: 55, column: 7, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4717, file: !338, line: 55, column: 7)
!4762 = !DILocation(line: 55, column: 12, scope: !4761)
!4763 = !DILocation(line: 55, column: 28, scope: !4761)
!4764 = !DILocation(line: 55, column: 33, scope: !4761)
!4765 = !DILocation(line: 55, column: 25, scope: !4761)
!4766 = !DILocation(line: 56, column: 7, scope: !4761)
!4767 = !DILocation(line: 56, column: 10, scope: !4761)
!4768 = !DILocation(line: 56, column: 15, scope: !4761)
!4769 = !DILocation(line: 56, column: 32, scope: !4761)
!4770 = !DILocation(line: 56, column: 37, scope: !4761)
!4771 = !DILocation(line: 56, column: 29, scope: !4761)
!4772 = !DILocation(line: 57, column: 7, scope: !4761)
!4773 = !DILocation(line: 57, column: 10, scope: !4761)
!4774 = !DILocation(line: 57, column: 15, scope: !4761)
!4775 = !DILocation(line: 57, column: 29, scope: !4761)
!4776 = !DILocation(line: 55, column: 7, scope: !4717)
!4777 = !DILocalVariable(name: "pos", scope: !4778, file: !338, line: 123, type: !1828)
!4778 = distinct !DILexicalBlock(scope: !4761, file: !338, line: 119, column: 5)
!4779 = !DILocation(line: 123, column: 13, scope: !4778)
!4780 = !DILocation(line: 123, column: 34, scope: !4778)
!4781 = !DILocation(line: 123, column: 26, scope: !4778)
!4782 = !DILocation(line: 123, column: 39, scope: !4778)
!4783 = !DILocation(line: 123, column: 47, scope: !4778)
!4784 = !DILocation(line: 123, column: 19, scope: !4778)
!4785 = !DILocation(line: 124, column: 11, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4778, file: !338, line: 124, column: 11)
!4787 = !DILocation(line: 124, column: 15, scope: !4786)
!4788 = !DILocation(line: 124, column: 11, scope: !4778)
!4789 = !DILocation(line: 130, column: 11, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4786, file: !338, line: 125, column: 9)
!4791 = !DILocation(line: 135, column: 7, scope: !4778)
!4792 = !DILocation(line: 135, column: 12, scope: !4778)
!4793 = !DILocation(line: 135, column: 19, scope: !4778)
!4794 = !DILocation(line: 136, column: 22, scope: !4778)
!4795 = !DILocation(line: 136, column: 7, scope: !4778)
!4796 = !DILocation(line: 136, column: 12, scope: !4778)
!4797 = !DILocation(line: 136, column: 20, scope: !4778)
!4798 = !DILocation(line: 167, column: 7, scope: !4778)
!4799 = !DILocation(line: 169, column: 18, scope: !4717)
!4800 = !DILocation(line: 169, column: 22, scope: !4717)
!4801 = !DILocation(line: 169, column: 30, scope: !4717)
!4802 = !DILocation(line: 169, column: 10, scope: !4717)
!4803 = !DILocation(line: 169, column: 3, scope: !4717)
!4804 = !DILocation(line: 170, column: 1, scope: !4717)
!4805 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4806, file: !4806, line: 43, type: !4807, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !80)
!4806 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4807 = !DISubroutineType(types: !133)
!4808 = !DILocation(line: 45, column: 3, scope: !4805)
!4809 = !DILocation(line: 45, column: 9, scope: !4805)
!4810 = !DILocation(line: 46, column: 3, scope: !4805)
!4811 = distinct !DISubprogram(name: "imalloc", scope: !4806, file: !4806, line: 55, type: !4140, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !80)
!4812 = !DILocalVariable(name: "s", arg: 1, scope: !4811, file: !4806, line: 55, type: !318)
!4813 = !DILocation(line: 55, column: 16, scope: !4811)
!4814 = !DILocation(line: 57, column: 10, scope: !4811)
!4815 = !DILocation(line: 57, column: 12, scope: !4811)
!4816 = !DILocation(line: 57, column: 34, scope: !4811)
!4817 = !DILocation(line: 57, column: 26, scope: !4811)
!4818 = !DILocation(line: 57, column: 39, scope: !4811)
!4819 = !DILocation(line: 57, column: 3, scope: !4811)
!4820 = distinct !DISubprogram(name: "irealloc", scope: !4806, file: !4806, line: 66, type: !4168, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !80)
!4821 = !DILocalVariable(name: "p", arg: 1, scope: !4820, file: !4806, line: 66, type: !56)
!4822 = !DILocation(line: 66, column: 17, scope: !4820)
!4823 = !DILocalVariable(name: "s", arg: 2, scope: !4820, file: !4806, line: 66, type: !318)
!4824 = !DILocation(line: 66, column: 26, scope: !4820)
!4825 = !DILocation(line: 68, column: 10, scope: !4820)
!4826 = !DILocation(line: 68, column: 12, scope: !4820)
!4827 = !DILocation(line: 68, column: 35, scope: !4820)
!4828 = !DILocation(line: 68, column: 38, scope: !4820)
!4829 = !DILocation(line: 68, column: 26, scope: !4820)
!4830 = !DILocation(line: 68, column: 43, scope: !4820)
!4831 = !DILocation(line: 68, column: 3, scope: !4820)
!4832 = distinct !DISubprogram(name: "icalloc", scope: !4806, file: !4806, line: 77, type: !4206, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !80)
!4833 = !DILocalVariable(name: "n", arg: 1, scope: !4832, file: !4806, line: 77, type: !318)
!4834 = !DILocation(line: 77, column: 16, scope: !4832)
!4835 = !DILocalVariable(name: "s", arg: 2, scope: !4832, file: !4806, line: 77, type: !318)
!4836 = !DILocation(line: 77, column: 25, scope: !4832)
!4837 = !DILocation(line: 79, column: 18, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4832, file: !4806, line: 79, column: 7)
!4839 = !DILocation(line: 79, column: 16, scope: !4838)
!4840 = !DILocation(line: 79, column: 7, scope: !4832)
!4841 = !DILocation(line: 81, column: 11, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !4806, line: 81, column: 11)
!4843 = distinct !DILexicalBlock(scope: !4838, file: !4806, line: 80, column: 5)
!4844 = !DILocation(line: 81, column: 13, scope: !4842)
!4845 = !DILocation(line: 81, column: 11, scope: !4843)
!4846 = !DILocation(line: 82, column: 16, scope: !4842)
!4847 = !DILocation(line: 82, column: 9, scope: !4842)
!4848 = !DILocation(line: 83, column: 9, scope: !4843)
!4849 = !DILocation(line: 84, column: 5, scope: !4843)
!4850 = !DILocation(line: 85, column: 18, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4832, file: !4806, line: 85, column: 7)
!4852 = !DILocation(line: 85, column: 16, scope: !4851)
!4853 = !DILocation(line: 85, column: 7, scope: !4832)
!4854 = !DILocation(line: 87, column: 11, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !4806, line: 87, column: 11)
!4856 = distinct !DILexicalBlock(scope: !4851, file: !4806, line: 86, column: 5)
!4857 = !DILocation(line: 87, column: 13, scope: !4855)
!4858 = !DILocation(line: 87, column: 11, scope: !4856)
!4859 = !DILocation(line: 88, column: 16, scope: !4855)
!4860 = !DILocation(line: 88, column: 9, scope: !4855)
!4861 = !DILocation(line: 89, column: 9, scope: !4856)
!4862 = !DILocation(line: 90, column: 5, scope: !4856)
!4863 = !DILocation(line: 91, column: 18, scope: !4832)
!4864 = !DILocation(line: 91, column: 21, scope: !4832)
!4865 = !DILocation(line: 91, column: 10, scope: !4832)
!4866 = !DILocation(line: 91, column: 3, scope: !4832)
!4867 = !DILocation(line: 92, column: 1, scope: !4832)
!4868 = distinct !DISubprogram(name: "ireallocarray", scope: !4806, file: !4806, line: 98, type: !4180, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !339, retainedNodes: !80)
!4869 = !DILocalVariable(name: "p", arg: 1, scope: !4868, file: !4806, line: 98, type: !56)
!4870 = !DILocation(line: 98, column: 22, scope: !4868)
!4871 = !DILocalVariable(name: "n", arg: 2, scope: !4868, file: !4806, line: 98, type: !318)
!4872 = !DILocation(line: 98, column: 31, scope: !4868)
!4873 = !DILocalVariable(name: "s", arg: 3, scope: !4868, file: !4806, line: 98, type: !318)
!4874 = !DILocation(line: 98, column: 40, scope: !4868)
!4875 = !DILocation(line: 100, column: 11, scope: !4868)
!4876 = !DILocation(line: 100, column: 13, scope: !4868)
!4877 = !DILocation(line: 100, column: 25, scope: !4868)
!4878 = !DILocation(line: 100, column: 28, scope: !4868)
!4879 = !DILocation(line: 100, column: 30, scope: !4868)
!4880 = !DILocation(line: 101, column: 27, scope: !4868)
!4881 = !DILocation(line: 101, column: 30, scope: !4868)
!4882 = !DILocation(line: 101, column: 33, scope: !4868)
!4883 = !DILocation(line: 101, column: 13, scope: !4868)
!4884 = !DILocation(line: 102, column: 13, scope: !4868)
!4885 = !DILocation(line: 100, column: 3, scope: !4868)
!4886 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !255, file: !255, line: 100, type: !4887, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !254, retainedNodes: !80)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!188, !4889, !78, !188, !4890}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!4891 = !DILocalVariable(name: "pwc", arg: 1, scope: !4886, file: !255, line: 100, type: !4889)
!4892 = !DILocation(line: 100, column: 21, scope: !4886)
!4893 = !DILocalVariable(name: "s", arg: 2, scope: !4886, file: !255, line: 100, type: !78)
!4894 = !DILocation(line: 100, column: 38, scope: !4886)
!4895 = !DILocalVariable(name: "n", arg: 3, scope: !4886, file: !255, line: 100, type: !188)
!4896 = !DILocation(line: 100, column: 48, scope: !4886)
!4897 = !DILocalVariable(name: "ps", arg: 4, scope: !4886, file: !255, line: 100, type: !4890)
!4898 = !DILocation(line: 100, column: 62, scope: !4886)
!4899 = !DILocation(line: 105, column: 7, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4886, file: !255, line: 105, column: 7)
!4901 = !DILocation(line: 105, column: 9, scope: !4900)
!4902 = !DILocation(line: 105, column: 7, scope: !4886)
!4903 = !DILocation(line: 107, column: 11, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !255, line: 106, column: 5)
!4905 = !DILocation(line: 108, column: 9, scope: !4904)
!4906 = !DILocation(line: 109, column: 9, scope: !4904)
!4907 = !DILocation(line: 110, column: 5, scope: !4904)
!4908 = !DILocation(line: 117, column: 7, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4886, file: !255, line: 117, column: 7)
!4910 = !DILocation(line: 117, column: 10, scope: !4909)
!4911 = !DILocation(line: 117, column: 7, scope: !4886)
!4912 = !DILocation(line: 118, column: 8, scope: !4909)
!4913 = !DILocation(line: 118, column: 5, scope: !4909)
!4914 = !DILocalVariable(name: "ret", scope: !4886, file: !255, line: 130, type: !188)
!4915 = !DILocation(line: 130, column: 10, scope: !4886)
!4916 = !DILocation(line: 130, column: 26, scope: !4886)
!4917 = !DILocation(line: 130, column: 31, scope: !4886)
!4918 = !DILocation(line: 130, column: 34, scope: !4886)
!4919 = !DILocation(line: 130, column: 37, scope: !4886)
!4920 = !DILocation(line: 130, column: 16, scope: !4886)
!4921 = !DILocation(line: 135, column: 7, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4886, file: !255, line: 135, column: 7)
!4923 = !DILocation(line: 135, column: 11, scope: !4922)
!4924 = !DILocation(line: 135, column: 25, scope: !4922)
!4925 = !DILocation(line: 135, column: 39, scope: !4922)
!4926 = !DILocation(line: 135, column: 30, scope: !4922)
!4927 = !DILocation(line: 135, column: 7, scope: !4886)
!4928 = !DILocation(line: 137, column: 14, scope: !4922)
!4929 = !DILocation(line: 137, column: 5, scope: !4922)
!4930 = !DILocation(line: 138, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4886, file: !255, line: 138, column: 7)
!4932 = !DILocation(line: 138, column: 11, scope: !4931)
!4933 = !DILocation(line: 138, column: 7, scope: !4886)
!4934 = !DILocation(line: 139, column: 5, scope: !4931)
!4935 = !DILocation(line: 143, column: 22, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4886, file: !255, line: 143, column: 7)
!4937 = !DILocation(line: 143, column: 19, scope: !4936)
!4938 = !DILocation(line: 143, column: 26, scope: !4936)
!4939 = !DILocation(line: 143, column: 29, scope: !4936)
!4940 = !DILocation(line: 143, column: 31, scope: !4936)
!4941 = !DILocation(line: 143, column: 36, scope: !4936)
!4942 = !DILocation(line: 143, column: 41, scope: !4936)
!4943 = !DILocation(line: 143, column: 7, scope: !4886)
!4944 = !DILocation(line: 145, column: 11, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !255, line: 145, column: 11)
!4946 = distinct !DILexicalBlock(scope: !4936, file: !255, line: 144, column: 5)
!4947 = !DILocation(line: 145, column: 15, scope: !4945)
!4948 = !DILocation(line: 145, column: 11, scope: !4946)
!4949 = !DILocation(line: 146, column: 33, scope: !4945)
!4950 = !DILocation(line: 146, column: 32, scope: !4945)
!4951 = !DILocation(line: 146, column: 16, scope: !4945)
!4952 = !DILocation(line: 146, column: 10, scope: !4945)
!4953 = !DILocation(line: 146, column: 14, scope: !4945)
!4954 = !DILocation(line: 146, column: 9, scope: !4945)
!4955 = !DILocation(line: 147, column: 7, scope: !4946)
!4956 = !DILocation(line: 151, column: 10, scope: !4886)
!4957 = !DILocation(line: 151, column: 3, scope: !4886)
!4958 = !DILocation(line: 286, column: 1, scope: !4886)
!4959 = distinct !DISubprogram(name: "mbszero", scope: !4960, file: !4960, line: 1135, type: !4961, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !341, retainedNodes: !80)
!4960 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !4963}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !4965)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !4966)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !4967)
!4967 = !{!4968, !4969}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4966, file: !262, line: 15, baseType: !62, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4966, file: !262, line: 20, baseType: !4970, size: 32, offset: 32)
!4970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4966, file: !262, line: 16, size: 32, elements: !4971)
!4971 = !{!4972, !4973}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4970, file: !262, line: 18, baseType: !6, size: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4970, file: !262, line: 19, baseType: !271, size: 32)
!4974 = !DILocalVariable(name: "ps", arg: 1, scope: !4959, file: !4960, line: 1135, type: !4963)
!4975 = !DILocation(line: 1135, column: 21, scope: !4959)
!4976 = !DILocation(line: 1137, column: 11, scope: !4959)
!4977 = !DILocation(line: 1137, column: 3, scope: !4959)
!4978 = !DILocation(line: 1138, column: 1, scope: !4959)
!4979 = distinct !DISubprogram(name: "rpl_realloc", scope: !4980, file: !4980, line: 2057, type: !4156, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !80)
!4980 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4981 = !DILocalVariable(name: "ptr", arg: 1, scope: !4979, file: !4980, line: 2057, type: !56)
!4982 = !DILocation(line: 2057, column: 20, scope: !4979)
!4983 = !DILocalVariable(name: "size", arg: 2, scope: !4979, file: !4980, line: 2057, type: !188)
!4984 = !DILocation(line: 2057, column: 32, scope: !4979)
!4985 = !DILocation(line: 2059, column: 19, scope: !4979)
!4986 = !DILocation(line: 2059, column: 24, scope: !4979)
!4987 = !DILocation(line: 2059, column: 31, scope: !4979)
!4988 = !DILocation(line: 2059, column: 10, scope: !4979)
!4989 = !DILocation(line: 2059, column: 3, scope: !4979)
!4990 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !346, file: !346, line: 27, type: !4093, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !345, retainedNodes: !80)
!4991 = !DILocalVariable(name: "ptr", arg: 1, scope: !4990, file: !346, line: 27, type: !56)
!4992 = !DILocation(line: 27, column: 21, scope: !4990)
!4993 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4990, file: !346, line: 27, type: !188)
!4994 = !DILocation(line: 27, column: 33, scope: !4990)
!4995 = !DILocalVariable(name: "size", arg: 3, scope: !4990, file: !346, line: 27, type: !188)
!4996 = !DILocation(line: 27, column: 47, scope: !4990)
!4997 = !DILocalVariable(name: "nbytes", scope: !4990, file: !346, line: 29, type: !188)
!4998 = !DILocation(line: 29, column: 10, scope: !4990)
!4999 = !DILocation(line: 30, column: 7, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4990, file: !346, line: 30, column: 7)
!5001 = !DILocation(line: 30, column: 7, scope: !4990)
!5002 = !DILocation(line: 32, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !346, line: 31, column: 5)
!5004 = !DILocation(line: 32, column: 13, scope: !5003)
!5005 = !DILocation(line: 33, column: 7, scope: !5003)
!5006 = !DILocation(line: 37, column: 19, scope: !4990)
!5007 = !DILocation(line: 37, column: 24, scope: !4990)
!5008 = !DILocation(line: 37, column: 10, scope: !4990)
!5009 = !DILocation(line: 37, column: 3, scope: !4990)
!5010 = !DILocation(line: 38, column: 1, scope: !4990)
!5011 = distinct !DISubprogram(name: "dup_safer", scope: !349, file: !349, line: 31, type: !1728, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !80)
!5012 = !DILocalVariable(name: "fd", arg: 1, scope: !5011, file: !349, line: 31, type: !62)
!5013 = !DILocation(line: 31, column: 16, scope: !5011)
!5014 = !DILocation(line: 33, column: 17, scope: !5011)
!5015 = !DILocation(line: 33, column: 10, scope: !5011)
!5016 = !DILocation(line: 33, column: 3, scope: !5011)
!5017 = distinct !DISubprogram(name: "rpl_fcntl", scope: !275, file: !275, line: 202, type: !5018, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !80)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!62, !62, !62, null}
!5020 = !DILocalVariable(name: "fd", arg: 1, scope: !5017, file: !275, line: 202, type: !62)
!5021 = !DILocation(line: 202, column: 12, scope: !5017)
!5022 = !DILocalVariable(name: "action", arg: 2, scope: !5017, file: !275, line: 202, type: !62)
!5023 = !DILocation(line: 202, column: 20, scope: !5017)
!5024 = !DILocalVariable(name: "arg", scope: !5017, file: !275, line: 208, type: !5025)
!5025 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 14, baseType: !5026)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !5027, baseType: !5028)
!5027 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !147, size: 256, elements: !5029)
!5029 = !{!5030, !5031, !5032, !5033, !5034}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !5028, file: !5027, line: 208, baseType: !56, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !5028, file: !5027, line: 208, baseType: !56, size: 64, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !5028, file: !5027, line: 208, baseType: !56, size: 64, offset: 128)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !5028, file: !5027, line: 208, baseType: !62, size: 32, offset: 192)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !5028, file: !5027, line: 208, baseType: !62, size: 32, offset: 224)
!5035 = !DILocation(line: 208, column: 11, scope: !5017)
!5036 = !DILocation(line: 209, column: 3, scope: !5017)
!5037 = !DILocalVariable(name: "result", scope: !5017, file: !275, line: 211, type: !62)
!5038 = !DILocation(line: 211, column: 7, scope: !5017)
!5039 = !DILocation(line: 212, column: 11, scope: !5017)
!5040 = !DILocation(line: 212, column: 3, scope: !5017)
!5041 = !DILocalVariable(name: "target", scope: !5042, file: !275, line: 216, type: !62)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !275, line: 215, column: 7)
!5043 = distinct !DILexicalBlock(scope: !5017, file: !275, line: 213, column: 5)
!5044 = !DILocation(line: 216, column: 13, scope: !5042)
!5045 = !DILocation(line: 216, column: 22, scope: !5042)
!5046 = !DILocation(line: 217, column: 35, scope: !5042)
!5047 = !DILocation(line: 217, column: 39, scope: !5042)
!5048 = !DILocation(line: 217, column: 18, scope: !5042)
!5049 = !DILocation(line: 217, column: 16, scope: !5042)
!5050 = !DILocation(line: 218, column: 9, scope: !5042)
!5051 = !DILocalVariable(name: "target", scope: !5052, file: !275, line: 223, type: !62)
!5052 = distinct !DILexicalBlock(scope: !5043, file: !275, line: 222, column: 7)
!5053 = !DILocation(line: 223, column: 13, scope: !5052)
!5054 = !DILocation(line: 223, column: 22, scope: !5052)
!5055 = !DILocation(line: 224, column: 43, scope: !5052)
!5056 = !DILocation(line: 224, column: 47, scope: !5052)
!5057 = !DILocation(line: 224, column: 18, scope: !5052)
!5058 = !DILocation(line: 224, column: 16, scope: !5052)
!5059 = !DILocation(line: 225, column: 9, scope: !5052)
!5060 = !DILocation(line: 260, column: 17, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5043, file: !275, line: 258, column: 7)
!5062 = !DILocation(line: 260, column: 9, scope: !5061)
!5063 = !DILocation(line: 329, column: 29, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !275, line: 261, column: 11)
!5065 = !DILocation(line: 329, column: 33, scope: !5064)
!5066 = !DILocation(line: 329, column: 22, scope: !5064)
!5067 = !DILocation(line: 329, column: 20, scope: !5064)
!5068 = !DILocation(line: 330, column: 13, scope: !5064)
!5069 = !DILocalVariable(name: "x", scope: !5070, file: !275, line: 418, type: !62)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !275, line: 417, column: 13)
!5071 = !DILocation(line: 418, column: 19, scope: !5070)
!5072 = !DILocation(line: 418, column: 23, scope: !5070)
!5073 = !DILocation(line: 419, column: 31, scope: !5070)
!5074 = !DILocation(line: 419, column: 35, scope: !5070)
!5075 = !DILocation(line: 419, column: 43, scope: !5070)
!5076 = !DILocation(line: 419, column: 24, scope: !5070)
!5077 = !DILocation(line: 419, column: 22, scope: !5070)
!5078 = !DILocation(line: 421, column: 13, scope: !5064)
!5079 = !DILocalVariable(name: "p", scope: !5080, file: !275, line: 426, type: !56)
!5080 = distinct !DILexicalBlock(scope: !5064, file: !275, line: 425, column: 13)
!5081 = !DILocation(line: 426, column: 21, scope: !5080)
!5082 = !DILocation(line: 426, column: 25, scope: !5080)
!5083 = !DILocation(line: 427, column: 31, scope: !5080)
!5084 = !DILocation(line: 427, column: 35, scope: !5080)
!5085 = !DILocation(line: 427, column: 43, scope: !5080)
!5086 = !DILocation(line: 427, column: 24, scope: !5080)
!5087 = !DILocation(line: 427, column: 22, scope: !5080)
!5088 = !DILocation(line: 429, column: 13, scope: !5064)
!5089 = !DILocation(line: 434, column: 9, scope: !5061)
!5090 = !DILocation(line: 438, column: 3, scope: !5017)
!5091 = !DILocation(line: 440, column: 10, scope: !5017)
!5092 = !DILocation(line: 440, column: 3, scope: !5017)
!5093 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !275, file: !275, line: 444, type: !276, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !278, retainedNodes: !80)
!5094 = !DILocalVariable(name: "fd", arg: 1, scope: !5093, file: !275, line: 444, type: !62)
!5095 = !DILocation(line: 444, column: 22, scope: !5093)
!5096 = !DILocalVariable(name: "target", arg: 2, scope: !5093, file: !275, line: 444, type: !62)
!5097 = !DILocation(line: 444, column: 30, scope: !5093)
!5098 = !DILocalVariable(name: "result", scope: !5093, file: !275, line: 446, type: !62)
!5099 = !DILocation(line: 446, column: 7, scope: !5093)
!5100 = !DILocation(line: 479, column: 19, scope: !5093)
!5101 = !DILocation(line: 479, column: 32, scope: !5093)
!5102 = !DILocation(line: 479, column: 12, scope: !5093)
!5103 = !DILocation(line: 479, column: 10, scope: !5093)
!5104 = !DILocation(line: 481, column: 10, scope: !5093)
!5105 = !DILocation(line: 481, column: 3, scope: !5093)
!5106 = !DILocalVariable(name: "fd", arg: 1, scope: !274, file: !275, line: 485, type: !62)
!5107 = !DILocation(line: 485, column: 30, scope: !274)
!5108 = !DILocalVariable(name: "target", arg: 2, scope: !274, file: !275, line: 485, type: !62)
!5109 = !DILocation(line: 485, column: 38, scope: !274)
!5110 = !DILocalVariable(name: "result", scope: !274, file: !275, line: 487, type: !62)
!5111 = !DILocation(line: 487, column: 7, scope: !274)
!5112 = !DILocation(line: 507, column: 12, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !274, file: !275, line: 507, column: 7)
!5114 = !DILocation(line: 507, column: 9, scope: !5113)
!5115 = !DILocation(line: 507, column: 7, scope: !274)
!5116 = !DILocation(line: 509, column: 23, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !275, line: 508, column: 5)
!5118 = !DILocation(line: 509, column: 44, scope: !5117)
!5119 = !DILocation(line: 509, column: 16, scope: !5117)
!5120 = !DILocation(line: 509, column: 14, scope: !5117)
!5121 = !DILocation(line: 510, column: 16, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !275, line: 510, column: 11)
!5123 = !DILocation(line: 510, column: 13, scope: !5122)
!5124 = !DILocation(line: 510, column: 23, scope: !5122)
!5125 = !DILocation(line: 510, column: 26, scope: !5122)
!5126 = !DILocation(line: 510, column: 32, scope: !5122)
!5127 = !DILocation(line: 510, column: 11, scope: !5117)
!5128 = !DILocation(line: 512, column: 30, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5122, file: !275, line: 511, column: 9)
!5130 = !DILocation(line: 517, column: 9, scope: !5129)
!5131 = !DILocation(line: 520, column: 37, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5122, file: !275, line: 519, column: 9)
!5133 = !DILocation(line: 520, column: 41, scope: !5132)
!5134 = !DILocation(line: 520, column: 20, scope: !5132)
!5135 = !DILocation(line: 520, column: 18, scope: !5132)
!5136 = !DILocation(line: 521, column: 15, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !275, line: 521, column: 15)
!5138 = !DILocation(line: 521, column: 22, scope: !5137)
!5139 = !DILocation(line: 521, column: 15, scope: !5132)
!5140 = !DILocation(line: 522, column: 32, scope: !5137)
!5141 = !DILocation(line: 522, column: 13, scope: !5137)
!5142 = !DILocation(line: 524, column: 5, scope: !5117)
!5143 = !DILocation(line: 527, column: 31, scope: !5113)
!5144 = !DILocation(line: 527, column: 35, scope: !5113)
!5145 = !DILocation(line: 527, column: 14, scope: !5113)
!5146 = !DILocation(line: 527, column: 12, scope: !5113)
!5147 = !DILocation(line: 528, column: 12, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !274, file: !275, line: 528, column: 7)
!5149 = !DILocation(line: 528, column: 9, scope: !5148)
!5150 = !DILocation(line: 528, column: 19, scope: !5148)
!5151 = !DILocation(line: 528, column: 22, scope: !5148)
!5152 = !DILocation(line: 528, column: 41, scope: !5148)
!5153 = !DILocation(line: 528, column: 7, scope: !274)
!5154 = !DILocalVariable(name: "flags", scope: !5155, file: !275, line: 530, type: !62)
!5155 = distinct !DILexicalBlock(scope: !5148, file: !275, line: 529, column: 5)
!5156 = !DILocation(line: 530, column: 11, scope: !5155)
!5157 = !DILocation(line: 530, column: 26, scope: !5155)
!5158 = !DILocation(line: 530, column: 19, scope: !5155)
!5159 = !DILocation(line: 531, column: 11, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5155, file: !275, line: 531, column: 11)
!5161 = !DILocation(line: 531, column: 17, scope: !5160)
!5162 = !DILocation(line: 531, column: 21, scope: !5160)
!5163 = !DILocation(line: 531, column: 31, scope: !5160)
!5164 = !DILocation(line: 531, column: 48, scope: !5160)
!5165 = !DILocation(line: 531, column: 54, scope: !5160)
!5166 = !DILocation(line: 531, column: 24, scope: !5160)
!5167 = !DILocation(line: 531, column: 68, scope: !5160)
!5168 = !DILocation(line: 531, column: 11, scope: !5155)
!5169 = !DILocalVariable(name: "saved_errno", scope: !5170, file: !275, line: 533, type: !62)
!5170 = distinct !DILexicalBlock(scope: !5160, file: !275, line: 532, column: 9)
!5171 = !DILocation(line: 533, column: 15, scope: !5170)
!5172 = !DILocation(line: 533, column: 29, scope: !5170)
!5173 = !DILocation(line: 534, column: 18, scope: !5170)
!5174 = !DILocation(line: 534, column: 11, scope: !5170)
!5175 = !DILocation(line: 535, column: 19, scope: !5170)
!5176 = !DILocation(line: 535, column: 11, scope: !5170)
!5177 = !DILocation(line: 535, column: 17, scope: !5170)
!5178 = !DILocation(line: 536, column: 18, scope: !5170)
!5179 = !DILocation(line: 537, column: 9, scope: !5170)
!5180 = !DILocation(line: 538, column: 5, scope: !5155)
!5181 = !DILocation(line: 540, column: 10, scope: !274)
!5182 = !DILocation(line: 540, column: 3, scope: !274)
!5183 = distinct !DISubprogram(name: "hard_locale", scope: !351, file: !351, line: 28, type: !1179, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !350, retainedNodes: !80)
!5184 = !DILocalVariable(name: "category", arg: 1, scope: !5183, file: !351, line: 28, type: !62)
!5185 = !DILocation(line: 28, column: 18, scope: !5183)
!5186 = !DILocalVariable(name: "locale", scope: !5183, file: !351, line: 30, type: !5187)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2056, elements: !5188)
!5188 = !{!5189}
!5189 = !DISubrange(count: 257)
!5190 = !DILocation(line: 30, column: 8, scope: !5183)
!5191 = !DILocation(line: 32, column: 25, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5183, file: !351, line: 32, column: 7)
!5193 = !DILocation(line: 32, column: 35, scope: !5192)
!5194 = !DILocation(line: 32, column: 7, scope: !5192)
!5195 = !DILocation(line: 32, column: 7, scope: !5183)
!5196 = !DILocation(line: 33, column: 5, scope: !5192)
!5197 = !DILocation(line: 35, column: 16, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5183, file: !351, line: 35, column: 7)
!5199 = !DILocation(line: 35, column: 9, scope: !5198)
!5200 = !DILocation(line: 35, column: 29, scope: !5198)
!5201 = !DILocation(line: 35, column: 39, scope: !5198)
!5202 = !DILocation(line: 35, column: 32, scope: !5198)
!5203 = !DILocation(line: 35, column: 7, scope: !5183)
!5204 = !DILocation(line: 36, column: 5, scope: !5198)
!5205 = !DILocation(line: 46, column: 3, scope: !5183)
!5206 = !DILocation(line: 47, column: 1, scope: !5183)
!5207 = distinct !DISubprogram(name: "setlocale_null_r", scope: !353, file: !353, line: 154, type: !5208, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !352, retainedNodes: !80)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!62, !62, !54, !188}
!5210 = !DILocalVariable(name: "category", arg: 1, scope: !5207, file: !353, line: 154, type: !62)
!5211 = !DILocation(line: 154, column: 23, scope: !5207)
!5212 = !DILocalVariable(name: "buf", arg: 2, scope: !5207, file: !353, line: 154, type: !54)
!5213 = !DILocation(line: 154, column: 39, scope: !5207)
!5214 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5207, file: !353, line: 154, type: !188)
!5215 = !DILocation(line: 154, column: 51, scope: !5207)
!5216 = !DILocation(line: 159, column: 37, scope: !5207)
!5217 = !DILocation(line: 159, column: 47, scope: !5207)
!5218 = !DILocation(line: 159, column: 52, scope: !5207)
!5219 = !DILocation(line: 159, column: 10, scope: !5207)
!5220 = !DILocation(line: 159, column: 3, scope: !5207)
!5221 = distinct !DISubprogram(name: "setlocale_null", scope: !353, file: !353, line: 186, type: !5222, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !352, retainedNodes: !80)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!78, !62}
!5224 = !DILocalVariable(name: "category", arg: 1, scope: !5221, file: !353, line: 186, type: !62)
!5225 = !DILocation(line: 186, column: 21, scope: !5221)
!5226 = !DILocation(line: 189, column: 35, scope: !5221)
!5227 = !DILocation(line: 189, column: 10, scope: !5221)
!5228 = !DILocation(line: 189, column: 3, scope: !5221)
!5229 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !355, file: !355, line: 35, type: !5222, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !354, retainedNodes: !80)
!5230 = !DILocalVariable(name: "category", arg: 1, scope: !5229, file: !355, line: 35, type: !62)
!5231 = !DILocation(line: 35, column: 30, scope: !5229)
!5232 = !DILocalVariable(name: "result", scope: !5229, file: !355, line: 37, type: !78)
!5233 = !DILocation(line: 37, column: 15, scope: !5229)
!5234 = !DILocation(line: 37, column: 35, scope: !5229)
!5235 = !DILocation(line: 37, column: 24, scope: !5229)
!5236 = !DILocation(line: 62, column: 10, scope: !5229)
!5237 = !DILocation(line: 62, column: 3, scope: !5229)
!5238 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !355, file: !355, line: 66, type: !5208, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !354, retainedNodes: !80)
!5239 = !DILocalVariable(name: "category", arg: 1, scope: !5238, file: !355, line: 66, type: !62)
!5240 = !DILocation(line: 66, column: 32, scope: !5238)
!5241 = !DILocalVariable(name: "buf", arg: 2, scope: !5238, file: !355, line: 66, type: !54)
!5242 = !DILocation(line: 66, column: 48, scope: !5238)
!5243 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5238, file: !355, line: 66, type: !188)
!5244 = !DILocation(line: 66, column: 60, scope: !5238)
!5245 = !DILocalVariable(name: "result", scope: !5238, file: !355, line: 111, type: !78)
!5246 = !DILocation(line: 111, column: 15, scope: !5238)
!5247 = !DILocation(line: 111, column: 49, scope: !5238)
!5248 = !DILocation(line: 111, column: 24, scope: !5238)
!5249 = !DILocation(line: 113, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5238, file: !355, line: 113, column: 7)
!5251 = !DILocation(line: 113, column: 14, scope: !5250)
!5252 = !DILocation(line: 113, column: 7, scope: !5238)
!5253 = !DILocation(line: 116, column: 11, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !355, line: 116, column: 11)
!5255 = distinct !DILexicalBlock(scope: !5250, file: !355, line: 114, column: 5)
!5256 = !DILocation(line: 116, column: 19, scope: !5254)
!5257 = !DILocation(line: 116, column: 11, scope: !5255)
!5258 = !DILocation(line: 120, column: 9, scope: !5254)
!5259 = !DILocation(line: 120, column: 16, scope: !5254)
!5260 = !DILocation(line: 121, column: 7, scope: !5255)
!5261 = !DILocalVariable(name: "length", scope: !5262, file: !355, line: 125, type: !188)
!5262 = distinct !DILexicalBlock(scope: !5250, file: !355, line: 124, column: 5)
!5263 = !DILocation(line: 125, column: 14, scope: !5262)
!5264 = !DILocation(line: 125, column: 31, scope: !5262)
!5265 = !DILocation(line: 125, column: 23, scope: !5262)
!5266 = !DILocation(line: 126, column: 11, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5262, file: !355, line: 126, column: 11)
!5268 = !DILocation(line: 126, column: 20, scope: !5267)
!5269 = !DILocation(line: 126, column: 18, scope: !5267)
!5270 = !DILocation(line: 126, column: 11, scope: !5262)
!5271 = !DILocation(line: 128, column: 19, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5267, file: !355, line: 127, column: 9)
!5273 = !DILocation(line: 128, column: 24, scope: !5272)
!5274 = !DILocation(line: 128, column: 32, scope: !5272)
!5275 = !DILocation(line: 128, column: 39, scope: !5272)
!5276 = !DILocation(line: 128, column: 11, scope: !5272)
!5277 = !DILocation(line: 129, column: 11, scope: !5272)
!5278 = !DILocation(line: 133, column: 15, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !355, line: 133, column: 15)
!5280 = distinct !DILexicalBlock(scope: !5267, file: !355, line: 132, column: 9)
!5281 = !DILocation(line: 133, column: 23, scope: !5279)
!5282 = !DILocation(line: 133, column: 15, scope: !5280)
!5283 = !DILocation(line: 138, column: 23, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5279, file: !355, line: 134, column: 13)
!5285 = !DILocation(line: 138, column: 28, scope: !5284)
!5286 = !DILocation(line: 138, column: 36, scope: !5284)
!5287 = !DILocation(line: 138, column: 44, scope: !5284)
!5288 = !DILocation(line: 138, column: 15, scope: !5284)
!5289 = !DILocation(line: 139, column: 15, scope: !5284)
!5290 = !DILocation(line: 139, column: 19, scope: !5284)
!5291 = !DILocation(line: 139, column: 27, scope: !5284)
!5292 = !DILocation(line: 139, column: 32, scope: !5284)
!5293 = !DILocation(line: 140, column: 13, scope: !5284)
!5294 = !DILocation(line: 141, column: 11, scope: !5280)
!5295 = !DILocation(line: 145, column: 1, scope: !5238)
