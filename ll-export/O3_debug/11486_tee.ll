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
@append = internal unnamed_addr global i1 false, align 1, !dbg !188
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !189
@optarg = external local_unnamed_addr global i8*, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4, !dbg !164
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null], align 8, !dbg !170
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !76
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !78
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"fdin != -1 || fdout != -1\00", align 1
@.str.1.28 = private unnamed_addr constant [13 x i8] c"src/iopoll.c\00", align 1
@__PRETTY_FUNCTION__.iopoll_internal = private unnamed_addr constant [44 x i8] c"int iopoll_internal(int, int, _Bool, _Bool)\00", align 1
@.str.2.29 = private unnamed_addr constant [8 x i8] c"0 < ret\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), align 8, !dbg !190
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !195
@.str.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.72 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.73 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.75 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.76 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.77 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !207
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !212
@.str.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !214
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !250
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !220
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !246
@.str.1.92 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.94 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !248
@.str.4.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.88 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.89 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !252
@.str.109 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.110 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !258
@.str.113 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.115 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.116 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.117 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.118 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.119 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.120 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.121 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.122 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.116, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.122, i32 0, i32 0), i8* null], align 8, !dbg !292
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !304
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !322
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !352
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !359
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !324
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !361
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !310
@.str.10.125 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.123 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.126 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !329
@.str.139 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.141 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.142 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.143 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.144 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.145 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.146 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.147 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.148 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.149 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.150 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.151 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.152 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.153 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.154 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.155 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.160 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.161 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.162 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.163 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.164 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.165 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.166 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !366
@exit_failure = dso_local global i32 1, align 4, !dbg !374
@.str.181 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.179 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.180 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.192 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !380
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !396
@.str.201 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.202 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !501 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !503, metadata !DIExpression()), !dbg !504
  %3 = icmp eq i32 %0, 0, !dbg !505
  br i1 %3, label %9, label %4, !dbg !507

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !508, !tbaa !510
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !508
  %7 = load i8*, i8** @program_name, align 8, !dbg !508, !tbaa !510
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !508
  br label %59, !dbg !508

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !514
  %11 = load i8*, i8** @program_name, align 8, !dbg !514, !tbaa !510
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !514
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !516
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !516, !tbaa !510
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !516
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !517
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !517
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !518
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !518
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !519
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !519
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !520
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !520
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !521
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !521
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !522
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !522
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([586 x i8], [586 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !523
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !523, !tbaa !510
  %24 = tail call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23), !dbg !523
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !524, metadata !DIExpression()) #35, !dbg !543
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #35, !dbg !545
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !529, metadata !DIExpression()) #35, !dbg !546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !538, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !539, metadata !DIExpression()) #35, !dbg !543
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !547
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !539, metadata !DIExpression()) #35, !dbg !543
  br label %27, !dbg !548

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !539, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !556
  call void @llvm.dbg.value(metadata i8* %28, metadata !555, metadata !DIExpression()) #35, !dbg !556
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #36, !dbg !558
  %31 = icmp eq i32 %30, 0, !dbg !559
  br i1 %31, label %37, label %32, !dbg !548

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !560
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !539, metadata !DIExpression()) #35, !dbg !543
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !561
  %35 = load i8*, i8** %34, align 8, !dbg !561, !tbaa !562
  %36 = icmp eq i8* %35, null, !dbg !564
  br i1 %36, label %37, label %27, !dbg !565, !llvm.loop !566

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !568
  %40 = load i8*, i8** %39, align 8, !dbg !568, !tbaa !570
  %41 = icmp eq i8* %40, null, !dbg !571
  %42 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !572
  call void @llvm.dbg.value(metadata i8* %42, metadata !538, metadata !DIExpression()) #35, !dbg !543
  tail call void @emit_bug_reporting_address() #35, !dbg !573
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !574
  call void @llvm.dbg.value(metadata i8* %43, metadata !541, metadata !DIExpression()) #35, !dbg !543
  %44 = icmp eq i8* %43, null, !dbg !575
  br i1 %44, label %52, label %45, !dbg !577

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #36, !dbg !578
  %47 = icmp eq i32 %46, 0, !dbg !578
  br i1 %47, label %52, label %48, !dbg !579

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0), i32 noundef 5) #35, !dbg !580
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !510
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #35, !dbg !580
  br label %52, !dbg !582

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !542, metadata !DIExpression()) #35, !dbg !543
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #35, !dbg !585
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !585
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #35, !dbg !586
  %56 = icmp eq i8* %42, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !586
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !586
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #35, !dbg !586
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #35, !dbg !587
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !588
  unreachable, !dbg !588
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !589 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !594 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !80 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !599
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !600, !tbaa !601
  %3 = icmp eq i32 %2, -1, !dbg !603
  br i1 %3, label %4, label %16, !dbg !604

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !605
  call void @llvm.dbg.value(metadata i8* %5, metadata !87, metadata !DIExpression()), !dbg !606
  %6 = icmp eq i8* %5, null, !dbg !607
  br i1 %6, label %14, label %7, !dbg !608

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !609, !tbaa !610
  %9 = icmp eq i8 %8, 0, !dbg !609
  br i1 %9, label %14, label %10, !dbg !611

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !549, metadata !DIExpression()) #35, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !612
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #36, !dbg !614
  %12 = icmp eq i32 %11, 0, !dbg !615
  %13 = zext i1 %12 to i32, !dbg !611
  br label %14, !dbg !611

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !616, !tbaa !601
  br label %16, !dbg !617

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !618
  %18 = icmp eq i32 %17, 0, !dbg !618
  br i1 %18, label %22, label %19, !dbg !620

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !510
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !621
  br label %121, !dbg !623

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !599
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #36, !dbg !624
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !625
  call void @llvm.dbg.value(metadata i8* %24, metadata !91, metadata !DIExpression()), !dbg !599
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !626
  call void @llvm.dbg.value(metadata i8* %25, metadata !92, metadata !DIExpression()), !dbg !599
  %26 = icmp eq i8* %25, null, !dbg !627
  br i1 %26, label %53, label %27, !dbg !628

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !629
  br i1 %28, label %53, label %29, !dbg !630

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !93, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !631
  %30 = icmp ult i8* %24, %25, !dbg !632
  br i1 %30, label %31, label %53, !dbg !633

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !599
  %33 = load i16*, i16** %32, align 8, !tbaa !510
  br label %34, !dbg !633

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !93, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 %36, metadata !97, metadata !DIExpression()), !dbg !631
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !634
  call void @llvm.dbg.value(metadata i8* %37, metadata !93, metadata !DIExpression()), !dbg !631
  %38 = load i8, i8* %35, align 1, !dbg !634, !tbaa !610
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !634
  %41 = load i16, i16* %40, align 2, !dbg !634, !tbaa !635
  %42 = lshr i16 %41, 13, !dbg !637
  %43 = and i16 %42, 1, !dbg !637
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !638
  call void @llvm.dbg.value(metadata i64 %45, metadata !97, metadata !DIExpression()), !dbg !631
  %46 = icmp ult i8* %37, %25, !dbg !632
  %47 = icmp ult i64 %45, 2, !dbg !639
  %48 = select i1 %46, i1 %47, i1 false, !dbg !639
  br i1 %48, label %34, label %49, !dbg !633, !llvm.loop !640

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !641
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !643
  %52 = xor i1 %50, true, !dbg !643
  br label %53, !dbg !643

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !599
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %54, metadata !92, metadata !DIExpression()), !dbg !599
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #36, !dbg !644
  call void @llvm.dbg.value(metadata i64 %56, metadata !98, metadata !DIExpression()), !dbg !599
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !645
  call void @llvm.dbg.value(metadata i8* %57, metadata !99, metadata !DIExpression()), !dbg !599
  br label %58, !dbg !646

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !599
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %59, metadata !99, metadata !DIExpression()), !dbg !599
  %61 = load i8, i8* %59, align 1, !dbg !647, !tbaa !610
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !648

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !649
  %64 = load i8, i8* %63, align 1, !dbg !652, !tbaa !610
  %65 = icmp ne i8 %64, 45, !dbg !653
  %66 = select i1 %65, i1 %60, i1 false, !dbg !654
  br label %67, !dbg !654

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !655
  %70 = load i16*, i16** %69, align 8, !dbg !655, !tbaa !510
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !655
  %73 = load i16, i16* %72, align 2, !dbg !655, !tbaa !635
  %74 = and i16 %73, 8192, !dbg !655
  %75 = icmp eq i16 %74, 0, !dbg !655
  br i1 %75, label %89, label %76, !dbg !657

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !658
  br i1 %77, label %91, label %78, !dbg !661

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !662
  %80 = load i8, i8* %79, align 1, !dbg !662, !tbaa !610
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !662
  %83 = load i16, i16* %82, align 2, !dbg !662, !tbaa !635
  %84 = and i16 %83, 8192, !dbg !662
  %85 = icmp eq i16 %84, 0, !dbg !662
  br i1 %85, label %86, label %91, !dbg !663

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !664
  br i1 %88, label %89, label %91, !dbg !664

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata i8* %90, metadata !99, metadata !DIExpression()), !dbg !599
  br label %58, !dbg !646, !llvm.loop !667

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !669
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !510
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !669
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !678
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !159, metadata !DIExpression()), !dbg !599
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 noundef 6) #36, !dbg !690
  %96 = icmp eq i32 %95, 0, !dbg !690
  br i1 %96, label %100, label %97, !dbg !692

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64 noundef 9) #36, !dbg !693
  %99 = icmp eq i32 %98, 0, !dbg !693
  br i1 %99, label %100, label %103, !dbg !694

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !695
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !695
  br label %106, !dbg !697

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !698
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !698
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !510
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !700
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !510
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !701
  %111 = ptrtoint i8* %59 to i64, !dbg !702
  %112 = sub i64 %111, %92, !dbg !702
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !510
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !702
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !510
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !703
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !510
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !704
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !510
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !705
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !706
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
declare !dbg !707 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !711 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !715 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !719 {
  %3 = alloca [8192 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !724, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8** %1, metadata !725, metadata !DIExpression()), !dbg !729
  %4 = load i8*, i8** %1, align 8, !dbg !730, !tbaa !510
  tail call void @set_program_name(i8* noundef %4) #35, !dbg !731
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #35, !dbg !732
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #35, !dbg !733
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #35, !dbg !734
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !735
  br label %9, !dbg !736

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !737
  call void @llvm.dbg.value(metadata i32 %10, metadata !726, metadata !DIExpression()), !dbg !729
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !736

11:                                               ; preds = %9
  store i1 true, i1* @append, align 1, !dbg !738
  br label %21, !dbg !741

12:                                               ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1, !dbg !742
  br label %21, !dbg !743

13:                                               ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !744, !tbaa !510
  %15 = icmp eq i8* %14, null, !dbg !744
  br i1 %15, label %22, label %16, !dbg !746

16:                                               ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !747, !tbaa !510
  %18 = tail call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %14, i8** noundef getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* noundef bitcast ([4 x i32]* @output_error_types to i8*), i64 noundef 4, void ()* noundef %17, i1 noundef true) #35, !dbg !747
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !747
  %20 = load i32, i32* %19, align 4, !dbg !747, !tbaa !610
  store i32 %20, i32* @output_error, align 4, !dbg !748, !tbaa !610
  br label %21, !dbg !749

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !737, !llvm.loop !750

22:                                               ; preds = %13
  store i32 2, i32* @output_error, align 4, !dbg !752, !tbaa !610
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #39, !dbg !753
  unreachable, !dbg !753

24:                                               ; preds = %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !510
  %26 = load i8*, i8** @Version, align 8, !dbg !754, !tbaa !510
  %27 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !754
  %28 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !754
  %29 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !754
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29, i8* noundef null) #35, !dbg !754
  tail call void @exit(i32 noundef 0) #37, !dbg !754
  unreachable, !dbg !754

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #39, !dbg !755
  unreachable, !dbg !755

31:                                               ; preds = %9
  %32 = load i1, i1* @ignore_interrupts, align 1, !dbg !756
  br i1 %32, label %33, label %35, !dbg !758

33:                                               ; preds = %31
  %34 = tail call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !759
  br label %35, !dbg !759

35:                                               ; preds = %33, %31
  %36 = load i32, i32* @output_error, align 4, !dbg !760, !tbaa !610
  %37 = icmp eq i32 %36, 0, !dbg !762
  br i1 %37, label %43, label %38, !dbg !763

38:                                               ; preds = %35
  %39 = tail call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !764
  %40 = load i32, i32* @output_error, align 4, !dbg !765, !tbaa !610
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !766

41:                                               ; preds = %38, %38
  %42 = tail call i1 @iopoll_input_ok(i32 noundef 0) #35, !dbg !767
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !729
  call void @llvm.dbg.value(metadata i1 %44, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !729
  %45 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !601
  %46 = sub nsw i32 %0, %45, !dbg !769
  %47 = sext i32 %45 to i64, !dbg !770
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !770
  call void @llvm.dbg.value(metadata i32 %46, metadata !771, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i1 %44, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !778, metadata !DIExpression()) #35, !dbg !810
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %49) #35, !dbg !812
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !782, metadata !DIExpression()) #35, !dbg !813
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 1, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %50 = load i1, i1* @append, align 1, !dbg !814
  %51 = select i1 %50, i32 1089, i32 577, !dbg !815
  call void @llvm.dbg.value(metadata i32 %51, metadata !792, metadata !DIExpression()) #35, !dbg !810
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !816, !tbaa !510
  tail call void @fadvise(%struct._IO_FILE* noundef %52, i32 noundef 2) #35, !dbg !817
  %53 = add i32 %46, 1, !dbg !818
  %54 = sext i32 %53 to i64, !dbg !819
  %55 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %54, i64 noundef 4) #40, !dbg !820
  %56 = bitcast i8* %55 to i32*, !dbg !820
  call void @llvm.dbg.value(metadata i32* %56, metadata !779, metadata !DIExpression()) #35, !dbg !810
  br i1 %44, label %58, label %57, !dbg !821

57:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* undef, metadata !780, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !810
  store i32 1, i32* %56, align 4, !dbg !822, !tbaa !601
  br label %62

58:                                               ; preds = %43
  %59 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %54, i64 noundef 1) #40, !dbg !823
  call void @llvm.dbg.value(metadata i8* undef, metadata !780, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !810
  store i32 1, i32* %56, align 4, !dbg !822, !tbaa !601
  %60 = tail call i1 @iopoll_output_ok(i32 noundef 1) #35, !dbg !825
  %61 = zext i1 %60 to i8, !dbg !827
  store i8 %61, i8* %59, align 1, !dbg !827, !tbaa !828
  br label %62, !dbg !830

62:                                               ; preds = %58, %57
  %63 = phi i8* [ %59, %58 ], [ undef, %57 ]
  %64 = getelementptr inbounds i8*, i8** %48, i64 -1, !dbg !831
  %65 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !832
  store i8* %65, i8** %64, align 8, !dbg !833, !tbaa !510
  call void @llvm.dbg.value(metadata i64 1, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 1, metadata !793, metadata !DIExpression()) #35, !dbg !834
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %66 = icmp slt i32 %46, 1, !dbg !835
  %67 = zext i32 %53 to i64
  br i1 %66, label %70, label %74, !dbg !836

68:                                               ; preds = %103
  call void @llvm.dbg.value(metadata i64 %105, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %69 = icmp eq i64 %105, 0, !dbg !837
  br i1 %69, label %233, label %70, !dbg !837

70:                                               ; preds = %62, %68
  %71 = phi i64 [ %105, %68 ], [ 1, %62 ]
  %72 = phi i1 [ %104, %68 ], [ true, %62 ]
  %73 = icmp slt i32 %46, 0
  br label %108, !dbg !837

74:                                               ; preds = %62, %103
  %75 = phi i64 [ %106, %103 ], [ 1, %62 ]
  %76 = phi i64 [ %105, %103 ], [ 1, %62 ]
  %77 = phi i1 [ %104, %103 ], [ true, %62 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %75, metadata !793, metadata !DIExpression()) #35, !dbg !834
  %78 = getelementptr inbounds i8*, i8** %64, i64 %75, !dbg !838
  %79 = load i8*, i8** %78, align 8, !dbg !838, !tbaa !510
  %80 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %79, i32 noundef %51, i32 noundef 438) #35, !dbg !839
  %81 = getelementptr inbounds i32, i32* %56, i64 %75, !dbg !840
  store i32 %80, i32* %81, align 4, !dbg !841, !tbaa !601
  %82 = icmp slt i32 %80, 0, !dbg !842
  br i1 %82, label %83, label %96, !dbg !843

83:                                               ; preds = %74
  br i1 %44, label %84, label %86, !dbg !844

84:                                               ; preds = %83
  %85 = getelementptr inbounds i8, i8* %63, i64 %75, !dbg !845
  store i8 0, i8* %85, align 1, !dbg !847, !tbaa !828
  br label %86, !dbg !845

86:                                               ; preds = %84, %83
  %87 = load i32, i32* @output_error, align 4, !dbg !848, !tbaa !610
  %88 = add i32 %87, -3, !dbg !848
  %89 = icmp ult i32 %88, 2, !dbg !848
  %90 = zext i1 %89 to i32, !dbg !848
  %91 = tail call i32* @__errno_location() #38, !dbg !849
  %92 = load i32, i32* %91, align 4, !dbg !849, !tbaa !601
  %93 = load i8*, i8** %78, align 8, !dbg !849, !tbaa !510
  %94 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %93) #35, !dbg !849
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %90, i32 noundef %92, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %94) #35, !dbg !849
  call void @llvm.dbg.value(metadata i32 %90, metadata !795, metadata !DIExpression()) #35, !dbg !850
  %95 = xor i1 %89, true, !dbg !851
  tail call void @llvm.assume(i1 %95) #35, !dbg !851
  br label %103, !dbg !848

96:                                               ; preds = %74
  br i1 %44, label %97, label %101, !dbg !852

97:                                               ; preds = %96
  %98 = tail call i1 @iopoll_output_ok(i32 noundef %80) #35, !dbg !854
  %99 = getelementptr inbounds i8, i8* %63, i64 %75, !dbg !856
  %100 = zext i1 %98 to i8, !dbg !857
  store i8 %100, i8* %99, align 1, !dbg !857, !tbaa !828
  br label %101, !dbg !856

101:                                              ; preds = %97, %96
  %102 = add i64 %76, 1, !dbg !858
  call void @llvm.dbg.value(metadata i64 %102, metadata !778, metadata !DIExpression()) #35, !dbg !810
  br label %103

103:                                              ; preds = %101, %86
  %104 = phi i1 [ %77, %101 ], [ false, %86 ]
  %105 = phi i64 [ %102, %101 ], [ %76, %86 ], !dbg !810
  call void @llvm.dbg.value(metadata i64 %105, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %106 = add nuw nsw i64 %75, 1, !dbg !859
  call void @llvm.dbg.value(metadata i64 %106, metadata !793, metadata !DIExpression()) #35, !dbg !834
  %107 = icmp eq i64 %106, %67, !dbg !835
  br i1 %107, label %68, label %74, !dbg !836, !llvm.loop !860

108:                                              ; preds = %162, %70
  %109 = phi i64 [ %71, %70 ], [ %166, %162 ]
  %110 = phi i1 [ %72, %70 ], [ %165, %162 ]
  %111 = phi i32 [ 0, %70 ], [ %164, %162 ]
  %112 = phi i64 [ 0, %70 ], [ %163, %162 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %112, metadata !786, metadata !DIExpression()) #35, !dbg !810
  br i1 %44, label %113, label %154, !dbg !862

113:                                              ; preds = %108
  %114 = sext i32 %111 to i64, !dbg !863
  %115 = getelementptr inbounds i8, i8* %63, i64 %114, !dbg !863
  %116 = load i8, i8* %115, align 1, !dbg !863, !tbaa !828, !range !864
  %117 = icmp eq i8 %116, 0, !dbg !863
  br i1 %117, label %154, label %118, !dbg !865

118:                                              ; preds = %113
  %119 = getelementptr inbounds i32, i32* %56, i64 %114, !dbg !866
  %120 = load i32, i32* %119, align 4, !dbg !866, !tbaa !601
  %121 = call i32 @iopoll(i32 noundef 0, i32 noundef %120, i1 noundef true) #35, !dbg !867
  call void @llvm.dbg.value(metadata i32 %121, metadata !802, metadata !DIExpression()) #35, !dbg !868
  switch i32 %121, label %154 [
    i32 -2, label %122
    i32 -3, label %150
  ], !dbg !869

122:                                              ; preds = %118
  %123 = tail call i32* @__errno_location() #38, !dbg !870
  store i32 32, i32* %123, align 4, !dbg !873, !tbaa !601
  call void @llvm.dbg.value(metadata i32* %56, metadata !874, metadata !DIExpression()) #35, !dbg !887
  call void @llvm.dbg.value(metadata i8** %48, metadata !879, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !887
  call void @llvm.dbg.value(metadata i32 %111, metadata !880, metadata !DIExpression()) #35, !dbg !887
  call void @llvm.dbg.value(metadata i32 32, metadata !881, metadata !DIExpression()) #35, !dbg !887
  %124 = load i32, i32* @output_error, align 4
  call void @llvm.dbg.value(metadata i1 undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !887
  switch i32 %124, label %133 [
    i32 3, label %125
    i32 1, label %125
  ], !dbg !890

125:                                              ; preds = %122, %122
  %126 = add nsw i32 %124, -3, !dbg !891
  %127 = icmp ult i32 %126, 2, !dbg !891
  %128 = zext i1 %127 to i32, !dbg !891
  %129 = getelementptr inbounds i8*, i8** %64, i64 %114, !dbg !892
  %130 = load i8*, i8** %129, align 8, !dbg !892, !tbaa !510
  %131 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %130) #35, !dbg !892
  call void (i32, i32, i8*, ...) @error(i32 noundef %128, i32 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %131) #35, !dbg !892
  call void @llvm.dbg.value(metadata i32 %128, metadata !883, metadata !DIExpression()) #35, !dbg !893
  %132 = xor i1 %127, true, !dbg !894
  call void @llvm.assume(i1 %132) #35, !dbg !892
  br label %133, !dbg !895

133:                                              ; preds = %125, %122
  %134 = and i32 %124, -3, !dbg !895
  %135 = icmp ne i32 %134, 1, !dbg !895
  call void @llvm.dbg.value(metadata i1 %135, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !887
  store i32 -1, i32* %119, align 4, !dbg !896, !tbaa !601
  %136 = select i1 %135, i1 %110, i1 false, !dbg !897
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %137 = add i64 %109, -1, !dbg !898
  call void @llvm.dbg.value(metadata i64 %137, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32* %56, metadata !899, metadata !DIExpression()) #35, !dbg !906
  call void @llvm.dbg.value(metadata i32 %46, metadata !904, metadata !DIExpression()) #35, !dbg !906
  call void @llvm.dbg.value(metadata i32 %111, metadata !905, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #35, !dbg !906
  %138 = call i32 @llvm.smax.i32(i32 %111, i32 %46) #35, !dbg !908
  %139 = sext i32 %138 to i64, !dbg !910
  br label %140, !dbg !908

140:                                              ; preds = %144, %133
  %141 = phi i64 [ %142, %144 ], [ %114, %133 ]
  %142 = add nsw i64 %141, 1, !dbg !912
  call void @llvm.dbg.value(metadata i64 %142, metadata !905, metadata !DIExpression()) #35, !dbg !906
  %143 = icmp eq i64 %141, %139, !dbg !910
  br i1 %143, label %162, label %144, !dbg !913, !llvm.loop !914

144:                                              ; preds = %140
  %145 = getelementptr inbounds i32, i32* %56, i64 %142, !dbg !916
  %146 = load i32, i32* %145, align 4, !dbg !916, !tbaa !601
  %147 = icmp sgt i32 %146, -1, !dbg !918
  br i1 %147, label %148, label %140, !dbg !919, !llvm.loop !920

148:                                              ; preds = %144
  %149 = trunc i64 %142 to i32, !dbg !919
  br label %162, !dbg !922, !llvm.loop !923

150:                                              ; preds = %118
  %151 = tail call i32* @__errno_location() #38, !dbg !924
  %152 = load i32, i32* %151, align 4, !dbg !924, !tbaa !601
  %153 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %152, i8* noundef %153) #35, !dbg !924
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %154, !dbg !927

154:                                              ; preds = %150, %118, %113, %108
  %155 = phi i1 [ %110, %113 ], [ %110, %108 ], [ %110, %118 ], [ false, %150 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %156 = call i64 @read(i32 noundef 0, i8* noundef nonnull %49, i64 noundef 8192) #35, !dbg !928
  call void @llvm.dbg.value(metadata i64 %156, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %157 = icmp slt i64 %156, 0, !dbg !929
  br i1 %157, label %158, label %168, !dbg !931

158:                                              ; preds = %154
  %159 = tail call i32* @__errno_location() #38, !dbg !932
  %160 = load i32, i32* %159, align 4, !dbg !932, !tbaa !601
  %161 = icmp eq i32 %160, 4, !dbg !933
  br i1 %161, label %162, label %225, !dbg !934

162:                                              ; preds = %140, %219, %170, %158, %148
  %163 = phi i64 [ %156, %158 ], [ %156, %170 ], [ %112, %148 ], [ %156, %219 ], [ %112, %140 ]
  %164 = phi i32 [ %111, %158 ], [ %111, %170 ], [ %149, %148 ], [ %220, %219 ], [ -1, %140 ]
  %165 = phi i1 [ %155, %158 ], [ %155, %170 ], [ %136, %148 ], [ %221, %219 ], [ %136, %140 ]
  %166 = phi i64 [ %109, %158 ], [ %109, %170 ], [ %137, %148 ], [ %222, %219 ], [ %137, %140 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %164, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %163, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %167 = icmp eq i64 %166, 0, !dbg !837
  br i1 %167, label %225, label %108, !dbg !837, !llvm.loop !935

168:                                              ; preds = %154
  %169 = icmp eq i64 %156, 0, !dbg !936
  br i1 %169, label %233, label %170, !dbg !938

170:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i32 0, metadata !806, metadata !DIExpression()) #35, !dbg !939
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  br i1 %73, label %162, label %171, !dbg !940, !llvm.loop !941

171:                                              ; preds = %170, %219
  %172 = phi i64 [ %223, %219 ], [ 0, %170 ]
  %173 = phi i64 [ %222, %219 ], [ %109, %170 ]
  %174 = phi i1 [ %221, %219 ], [ %155, %170 ]
  %175 = phi i32 [ %220, %219 ], [ %111, %170 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !806, metadata !DIExpression()) #35, !dbg !939
  call void @llvm.dbg.value(metadata i64 %173, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %175, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %176 = getelementptr inbounds i32, i32* %56, i64 %172, !dbg !942
  %177 = load i32, i32* %176, align 4, !dbg !942, !tbaa !601
  %178 = icmp sgt i32 %177, -1, !dbg !945
  br i1 %178, label %179, label %219, !dbg !946

179:                                              ; preds = %171
  %180 = call i1 @write_wait(i32 noundef %177, i8* noundef nonnull %49, i64 noundef %156) #35, !dbg !947
  br i1 %180, label %219, label %181, !dbg !948

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32* %56, metadata !874, metadata !DIExpression()) #35, !dbg !949
  call void @llvm.dbg.value(metadata i8** %48, metadata !879, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !949
  call void @llvm.dbg.value(metadata i64 %172, metadata !880, metadata !DIExpression()) #35, !dbg !949
  %182 = tail call i32* @__errno_location() #38, !dbg !953
  %183 = load i32, i32* %182, align 4, !dbg !953, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %183, metadata !881, metadata !DIExpression()) #35, !dbg !949
  %184 = freeze i32 %183
  %185 = icmp eq i32 %184, 32, !dbg !954
  %186 = load i32, i32* @output_error, align 4
  call void @llvm.dbg.value(metadata i1 undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !949
  br i1 %185, label %187, label %188, !dbg !955

187:                                              ; preds = %181
  switch i32 %186, label %196 [
    i32 3, label %188
    i32 1, label %188
  ], !dbg !955

188:                                              ; preds = %187, %187, %181
  %189 = add i32 %186, -3, !dbg !956
  %190 = icmp ult i32 %189, 2, !dbg !956
  %191 = zext i1 %190 to i32, !dbg !956
  %192 = getelementptr inbounds i8*, i8** %64, i64 %172, !dbg !957
  %193 = load i8*, i8** %192, align 8, !dbg !957, !tbaa !510
  %194 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %193) #35, !dbg !957
  call void (i32, i32, i8*, ...) @error(i32 noundef %191, i32 noundef %184, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %194) #35, !dbg !957
  call void @llvm.dbg.value(metadata i32 %191, metadata !883, metadata !DIExpression()) #35, !dbg !958
  %195 = xor i1 %190, true, !dbg !959
  call void @llvm.assume(i1 %195) #35, !dbg !957
  br label %196

196:                                              ; preds = %188, %187
  %197 = icmp ne i32 %186, 3
  %198 = select i1 %185, i1 %197, i1 false, !dbg !960
  %199 = icmp ne i32 %186, 1
  %200 = select i1 %198, i1 %199, i1 false, !dbg !960
  call void @llvm.dbg.value(metadata i1 %200, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !949
  store i32 -1, i32* %176, align 4, !dbg !961, !tbaa !601
  %201 = select i1 %200, i1 %174, i1 false, !dbg !962
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %202 = add i64 %173, -1, !dbg !963
  call void @llvm.dbg.value(metadata i64 %202, metadata !778, metadata !DIExpression()) #35, !dbg !810
  %203 = zext i32 %175 to i64, !dbg !964
  %204 = icmp eq i64 %172, %203, !dbg !964
  br i1 %204, label %205, label %219, !dbg !966

205:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32* %56, metadata !899, metadata !DIExpression()) #35, !dbg !967
  call void @llvm.dbg.value(metadata i32 %46, metadata !904, metadata !DIExpression()) #35, !dbg !967
  call void @llvm.dbg.value(metadata i32 %175, metadata !905, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #35, !dbg !967
  %206 = sext i32 %175 to i64, !dbg !969
  %207 = call i32 @llvm.smax.i32(i32 %175, i32 %46) #35, !dbg !969
  %208 = sext i32 %207 to i64, !dbg !970
  br label %209, !dbg !969

209:                                              ; preds = %213, %205
  %210 = phi i64 [ %211, %213 ], [ %206, %205 ]
  %211 = add nsw i64 %210, 1, !dbg !971
  call void @llvm.dbg.value(metadata i64 %211, metadata !905, metadata !DIExpression()) #35, !dbg !967
  %212 = icmp eq i64 %210, %208, !dbg !970
  br i1 %212, label %219, label %213, !dbg !972

213:                                              ; preds = %209
  %214 = getelementptr inbounds i32, i32* %56, i64 %211, !dbg !973
  %215 = load i32, i32* %214, align 4, !dbg !973, !tbaa !601
  %216 = icmp sgt i32 %215, -1, !dbg !974
  br i1 %216, label %217, label %209, !dbg !975, !llvm.loop !976

217:                                              ; preds = %213
  %218 = trunc i64 %211 to i32, !dbg !975
  br label %219, !dbg !978

219:                                              ; preds = %209, %217, %196, %179, %171
  %220 = phi i32 [ %175, %179 ], [ %175, %196 ], [ %175, %171 ], [ %218, %217 ], [ -1, %209 ], !dbg !979
  %221 = phi i1 [ %174, %179 ], [ %201, %196 ], [ %174, %171 ], [ %201, %217 ], [ %201, %209 ]
  %222 = phi i64 [ %173, %179 ], [ %202, %196 ], [ %173, %171 ], [ %202, %217 ], [ %202, %209 ], !dbg !979
  call void @llvm.dbg.value(metadata i64 %222, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %220, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %223 = add nuw nsw i64 %172, 1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %223, metadata !806, metadata !DIExpression()) #35, !dbg !939
  %224 = icmp eq i64 %223, %67, !dbg !981
  br i1 %224, label %162, label %171, !dbg !940, !llvm.loop !982

225:                                              ; preds = %162, %158
  %226 = phi i64 [ %163, %162 ], [ %156, %158 ], !dbg !810
  %227 = phi i1 [ %165, %162 ], [ %155, %158 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %226, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %228 = icmp eq i64 %226, -1, !dbg !984
  br i1 %228, label %229, label %233, !dbg !986

229:                                              ; preds = %225
  %230 = tail call i32* @__errno_location() #38, !dbg !987
  %231 = load i32, i32* %230, align 4, !dbg !987, !tbaa !601
  %232 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #35, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %231, i8* noundef %232) #35, !dbg !987
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %233, !dbg !989

233:                                              ; preds = %168, %229, %225, %68
  %234 = phi i1 [ false, %229 ], [ %227, %225 ], [ %104, %68 ], [ %155, %168 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 1, metadata !808, metadata !DIExpression()) #35, !dbg !990
  br i1 %66, label %237, label %235, !dbg !991

235:                                              ; preds = %233
  %236 = zext i32 %53 to i64, !dbg !992
  br label %239, !dbg !991

237:                                              ; preds = %253, %233
  %238 = phi i1 [ %234, %233 ], [ %254, %253 ]
  call void @free(i8* noundef nonnull %55) #35, !dbg !994
  br i1 %44, label %257, label %258, !dbg !995

239:                                              ; preds = %253, %235
  %240 = phi i64 [ 1, %235 ], [ %255, %253 ]
  %241 = phi i1 [ %234, %235 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i64 %240, metadata !808, metadata !DIExpression()) #35, !dbg !990
  %242 = getelementptr inbounds i32, i32* %56, i64 %240, !dbg !996
  %243 = load i32, i32* %242, align 4, !dbg !996, !tbaa !601
  %244 = icmp sgt i32 %243, -1, !dbg !998
  br i1 %244, label %245, label %253, !dbg !999

245:                                              ; preds = %239
  %246 = call i1 @close_wait(i32 noundef %243) #35, !dbg !1000
  br i1 %246, label %253, label %247, !dbg !1001

247:                                              ; preds = %245
  %248 = tail call i32* @__errno_location() #38, !dbg !1002
  %249 = load i32, i32* %248, align 4, !dbg !1002, !tbaa !601
  %250 = getelementptr inbounds i8*, i8** %64, i64 %240, !dbg !1002
  %251 = load i8*, i8** %250, align 8, !dbg !1002, !tbaa !510
  %252 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %251) #35, !dbg !1002
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %249, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %252) #35, !dbg !1002
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %253, !dbg !1004

253:                                              ; preds = %247, %245, %239
  %254 = phi i1 [ %241, %245 ], [ false, %247 ], [ %241, %239 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %255 = add nuw nsw i64 %240, 1, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %255, metadata !808, metadata !DIExpression()) #35, !dbg !990
  %256 = icmp eq i64 %255, %236, !dbg !992
  br i1 %256, label %237, label %239, !dbg !991, !llvm.loop !1006

257:                                              ; preds = %237
  call void @free(i8* noundef %63) #35, !dbg !1008
  br label %258, !dbg !1008

258:                                              ; preds = %237, %257
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %49) #35, !dbg !1010
  call void @llvm.dbg.value(metadata i1 %238, metadata !728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !729
  %259 = call i32 @close(i32 noundef 0) #35, !dbg !1011
  %260 = icmp eq i32 %259, 0, !dbg !1013
  br i1 %260, label %265, label %261, !dbg !1014

261:                                              ; preds = %258
  %262 = tail call i32* @__errno_location() #38, !dbg !1015
  %263 = load i32, i32* %262, align 4, !dbg !1015, !tbaa !601
  %264 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %263, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %264) #35, !dbg !1015
  unreachable, !dbg !1015

265:                                              ; preds = %258
  %266 = xor i1 %238, true, !dbg !1016
  %267 = zext i1 %266 to i32, !dbg !1016
  ret i32 %267, !dbg !1017
}

; Function Attrs: nounwind
declare !dbg !1018 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1021 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1022 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1025 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1031 void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

declare !dbg !1034 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef %2) local_unnamed_addr #12 !dbg !1038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1042, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %1, metadata !1043, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i1 %2, metadata !1044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1045
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef true), !dbg !1046
  ret i32 %4, !dbg !1047
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef %3) unnamed_addr #12 !dbg !1048 {
  %5 = alloca [2 x %struct.pollfd], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1052, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %1, metadata !1053, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %2, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %3, metadata !1055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  %6 = and i32 %1, %0, !dbg !1068
  %7 = icmp eq i32 %6, -1, !dbg !1068
  br i1 %7, label %8, label %9, !dbg !1068

8:                                                ; preds = %4
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #37, !dbg !1068
  unreachable, !dbg !1068

9:                                                ; preds = %4
  %10 = bitcast [2 x %struct.pollfd]* %5 to i8*, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #35, !dbg !1071
  call void @llvm.dbg.declare(metadata [2 x %struct.pollfd]* %5, metadata !1056, metadata !DIExpression()), !dbg !1072
  %11 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, !dbg !1073
  %12 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 0, !dbg !1074
  store i32 %0, i32* %12, align 4, !dbg !1074, !tbaa !1075
  %13 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 1, !dbg !1074
  store i16 129, i16* %13, align 4, !dbg !1074, !tbaa !1077
  %14 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 2, !dbg !1074
  store i16 0, i16* %14, align 2, !dbg !1074, !tbaa !1078
  %15 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 0, !dbg !1079
  store i32 %1, i32* %15, align 4, !dbg !1079, !tbaa !1075
  %16 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 1, !dbg !1079
  store i16 128, i16* %16, align 4, !dbg !1079, !tbaa !1077
  %17 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 2, !dbg !1079
  store i16 0, i16* %17, align 2, !dbg !1079, !tbaa !1078
  call void @llvm.dbg.value(metadata i32 56, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 0, metadata !1066, metadata !DIExpression()), !dbg !1067
  br i1 %3, label %19, label %18, !dbg !1080

18:                                               ; preds = %9
  store i16 4, i16* %16, align 4, !dbg !1081, !tbaa !1077
  store i16 4, i16* %13, align 4, !dbg !1084, !tbaa !1077
  call void @llvm.dbg.value(metadata i32 4, metadata !1065, metadata !DIExpression()), !dbg !1067
  br label %19, !dbg !1085

19:                                               ; preds = %18, %9
  %20 = phi i32 [ 56, %9 ], [ 4, %18 ], !dbg !1067
  call void @llvm.dbg.value(metadata i32 %20, metadata !1065, metadata !DIExpression()), !dbg !1067
  %21 = sext i1 %2 to i32
  br i1 %2, label %22, label %43

22:                                               ; preds = %19, %42
  %23 = phi i32 [ %30, %42 ], [ 0, %19 ], !dbg !1067
  call void @llvm.dbg.value(metadata i32 %23, metadata !1066, metadata !DIExpression()), !dbg !1067
  %24 = icmp sgt i32 %23, -1, !dbg !1086
  br i1 %24, label %29, label %25, !dbg !1087

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #38, !dbg !1088
  %27 = load i32, i32* %26, align 4, !dbg !1088, !tbaa !601
  %28 = icmp eq i32 %27, 4, !dbg !1089
  br i1 %28, label %29, label %67, !dbg !1090

29:                                               ; preds = %25, %22
  %30 = call i32 @poll(%struct.pollfd* noundef nonnull %11, i64 noundef 2, i32 noundef %21) #35, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %30, metadata !1066, metadata !DIExpression()), !dbg !1067
  %31 = icmp slt i32 %30, 0, !dbg !1093
  br i1 %31, label %42, label %32, !dbg !1095

32:                                               ; preds = %29
  %33 = icmp eq i32 %30, 0, !dbg !1096
  br i1 %33, label %59, label %34, !dbg !1099

34:                                               ; preds = %32
  %35 = load i16, i16* %14, align 2, !dbg !1100, !tbaa !1078
  %36 = icmp eq i16 %35, 0, !dbg !1102
  br i1 %36, label %37, label %67, !dbg !1103

37:                                               ; preds = %34
  %38 = load i16, i16* %17, align 2, !dbg !1104, !tbaa !1078
  %39 = zext i16 %38 to i32, !dbg !1106
  %40 = and i32 %20, %39, !dbg !1107
  %41 = icmp eq i32 %40, 0, !dbg !1107
  br i1 %41, label %42, label %65, !dbg !1108

42:                                               ; preds = %37, %29
  br label %22, !dbg !1067, !llvm.loop !1109

43:                                               ; preds = %19, %53
  %44 = phi i32 [ %51, %53 ], [ 0, %19 ], !dbg !1067
  call void @llvm.dbg.value(metadata i32 %44, metadata !1066, metadata !DIExpression()), !dbg !1067
  %45 = icmp sgt i32 %44, -1, !dbg !1086
  br i1 %45, label %50, label %46, !dbg !1087

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #38, !dbg !1088
  %48 = load i32, i32* %47, align 4, !dbg !1088, !tbaa !601
  %49 = icmp eq i32 %48, 4, !dbg !1089
  br i1 %49, label %50, label %67, !dbg !1090

50:                                               ; preds = %43, %46
  %51 = call i32 @poll(%struct.pollfd* noundef nonnull %11, i64 noundef 2, i32 noundef %21) #35, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %51, metadata !1066, metadata !DIExpression()), !dbg !1067
  %52 = icmp slt i32 %51, 0, !dbg !1093
  br i1 %52, label %53, label %54, !dbg !1095

53:                                               ; preds = %50, %60
  br label %43, !dbg !1067, !llvm.loop !1109

54:                                               ; preds = %50
  %55 = icmp ne i32 %51, 0, !dbg !1111
  %56 = load i16, i16* %14, align 2
  %57 = icmp eq i16 %56, 0
  %58 = select i1 %55, i1 %57, i1 false, !dbg !1113
  br i1 %58, label %60, label %67, !dbg !1113

59:                                               ; preds = %32
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #37, !dbg !1096
  unreachable, !dbg !1096

60:                                               ; preds = %54
  %61 = load i16, i16* %17, align 2, !dbg !1104, !tbaa !1078
  %62 = zext i16 %61 to i32, !dbg !1106
  %63 = and i32 %20, %62, !dbg !1107
  %64 = icmp eq i32 %63, 0, !dbg !1107
  br i1 %64, label %53, label %65, !dbg !1108

65:                                               ; preds = %60, %37
  %66 = select i1 %3, i32 -2, i32 0, !dbg !1114
  br label %67, !dbg !1115

67:                                               ; preds = %54, %46, %34, %25, %65
  %68 = phi i32 [ %66, %65 ], [ -3, %25 ], [ 0, %34 ], [ -3, %46 ], [ 0, %54 ], !dbg !1067
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #35, !dbg !1116
  ret i32 %68, !dbg !1116
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

declare i32 @poll(%struct.pollfd* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #16 !dbg !1117 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1121, metadata !DIExpression()), !dbg !1159
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1160
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1122, metadata !DIExpression()), !dbg !1161
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #35, !dbg !1162
  %5 = icmp eq i32 %4, 0, !dbg !1163
  br i1 %5, label %6, label %13, !dbg !1164

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1165
  %8 = load i32, i32* %7, align 8, !dbg !1165, !tbaa !1166
  %9 = and i32 %8, 61440, !dbg !1165
  %10 = icmp ne i32 %9, 32768, !dbg !1165
  %11 = icmp ne i32 %9, 24576, !dbg !1170
  %12 = and i1 %10, %11, !dbg !1170
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ true, %1 ], [ %12, %6 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !1158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1171
  ret i1 %14, !dbg !1172
}

; Function Attrs: nofree nounwind
declare !dbg !1173 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #12 !dbg !1178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1180, metadata !DIExpression()), !dbg !1181
  %2 = tail call i32 @isapipe(i32 noundef %0) #35, !dbg !1182
  %3 = icmp sgt i32 %2, 0, !dbg !1183
  ret i1 %3, !dbg !1184
}

; Function Attrs: nounwind uwtable
define dso_local i1 @close_wait(i32 noundef %0) local_unnamed_addr #12 !dbg !1185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1188
  %2 = tail call i32* @__errno_location() #38, !dbg !1188
  br label %3, !dbg !1189

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1190, metadata !DIExpression()) #35, !dbg !1193
  %4 = load i32, i32* %2, align 4, !dbg !1195, !tbaa !601
  %5 = icmp eq i32 %4, 11, !dbg !1195
  br i1 %5, label %6, label %10, !dbg !1195

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false) #35, !dbg !1197
  %8 = icmp eq i32 %7, 0, !dbg !1199
  br i1 %8, label %3, label %9, !dbg !1200, !llvm.loop !1201

9:                                                ; preds = %6
  store i32 11, i32* %2, align 4, !dbg !1203, !tbaa !601
  br label %10, !dbg !1205

10:                                               ; preds = %3, %9
  %11 = tail call i32 @close(i32 noundef %0) #35, !dbg !1206
  %12 = icmp eq i32 %11, 0, !dbg !1207
  ret i1 %12, !dbg !1208
}

; Function Attrs: nounwind uwtable
define dso_local i1 @write_wait(i32 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1214, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %2, metadata !1215, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()), !dbg !1221
  %4 = tail call i64 @write(i32 noundef %0, i8* noundef %1, i64 noundef %2) #35, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %4, metadata !1219, metadata !DIExpression()), !dbg !1223
  %5 = icmp sgt i64 %4, 0, !dbg !1224
  %6 = select i1 %5, i64 %4, i64 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %6, metadata !1219, metadata !DIExpression()), !dbg !1223
  %7 = sub i64 %2, %6, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %7, metadata !1215, metadata !DIExpression()), !dbg !1221
  %8 = icmp eq i64 %7, 0, !dbg !1226
  br i1 %8, label %28, label %9, !dbg !1228

9:                                                ; preds = %3
  %10 = tail call i32* @__errno_location() #38, !dbg !1221
  br label %11, !dbg !1228

11:                                               ; preds = %9, %21
  %12 = phi i64 [ %7, %9 ], [ %26, %21 ]
  %13 = phi i64 [ %6, %9 ], [ %25, %21 ]
  %14 = phi i8* [ %1, %9 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %0, metadata !1190, metadata !DIExpression()) #35, !dbg !1229
  %15 = load i32, i32* %10, align 4, !dbg !1232, !tbaa !601
  %16 = icmp eq i32 %15, 11, !dbg !1232
  br i1 %16, label %17, label %28, !dbg !1232

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false) #35, !dbg !1233
  %19 = icmp eq i32 %18, 0, !dbg !1234
  br i1 %19, label %21, label %20, !dbg !1235

20:                                               ; preds = %17
  store i32 11, i32* %10, align 4, !dbg !1236, !tbaa !601
  br label %28, !dbg !1237

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %22, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %12, metadata !1215, metadata !DIExpression()), !dbg !1221
  %23 = tail call i64 @write(i32 noundef %0, i8* noundef %22, i64 noundef %12) #35, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %23, metadata !1219, metadata !DIExpression()), !dbg !1223
  %24 = icmp sgt i64 %23, 0, !dbg !1224
  %25 = select i1 %24, i64 %23, i64 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %25, metadata !1219, metadata !DIExpression()), !dbg !1223
  %26 = sub i64 %12, %25, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %26, metadata !1215, metadata !DIExpression()), !dbg !1221
  %27 = icmp eq i64 %26, 0, !dbg !1226
  br i1 %27, label %28, label %11, !dbg !1228, !llvm.loop !1239

28:                                               ; preds = %21, %11, %3, %20
  %29 = phi i1 [ false, %20 ], [ true, %3 ], [ %16, %11 ], [ %16, %21 ]
  call void @llvm.dbg.value(metadata i8* %22, metadata !1216, metadata !DIExpression()), !dbg !1221
  ret i1 %29, !dbg !1242
}

; Function Attrs: nofree
declare !dbg !1243 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #12 !dbg !1246 {
  tail call void @usage(i32 noundef 1) #35, !dbg !1247
  ret void, !dbg !1248
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* noundef readonly %2, i64 noundef %3) local_unnamed_addr #17 !dbg !1249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1254, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8** %1, metadata !1255, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %2, metadata !1256, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %3, metadata !1257, metadata !DIExpression()), !dbg !1263
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %5, metadata !1258, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 -1, metadata !1259, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 0, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1263
  %6 = load i8*, i8** %1, align 8, !dbg !1266, !tbaa !510
  %7 = icmp eq i8* %6, null, !dbg !1268
  br i1 %7, label %63, label %8, !dbg !1268

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br i1 %9, label %10, label %32, !dbg !1269

10:                                               ; preds = %8, %25
  %11 = phi i8* [ %30, %25 ], [ %6, %8 ]
  %12 = phi i64 [ %28, %25 ], [ 0, %8 ]
  %13 = phi i1 [ %27, %25 ], [ false, %8 ]
  %14 = phi i64 [ %26, %25 ], [ -1, %8 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %14, metadata !1259, metadata !DIExpression()), !dbg !1263
  %15 = tail call i32 @strncmp(i8* noundef nonnull %11, i8* noundef %0, i64 noundef %5) #36, !dbg !1277
  %16 = icmp eq i32 %15, 0, !dbg !1277
  br i1 %16, label %17, label %25, !dbg !1278

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* noundef nonnull %11) #36, !dbg !1279
  %19 = icmp eq i64 %18, %5, !dbg !1280
  br i1 %19, label %63, label %20, !dbg !1281

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1, !dbg !1282
  %22 = select i1 %21, i64 %12, i64 %14, !dbg !1283
  %23 = xor i1 %21, true, !dbg !1283
  %24 = select i1 %23, i1 true, i1 %13, !dbg !1283
  br label %25, !dbg !1283

25:                                               ; preds = %20, %10
  %26 = phi i64 [ %14, %10 ], [ %22, %20 ], !dbg !1263
  %27 = phi i1 [ %13, %10 ], [ %24, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %26, metadata !1259, metadata !DIExpression()), !dbg !1263
  %28 = add i64 %12, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %28, metadata !1261, metadata !DIExpression()), !dbg !1265
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !1266
  %30 = load i8*, i8** %29, align 8, !dbg !1266, !tbaa !510
  %31 = icmp eq i8* %30, null, !dbg !1268
  br i1 %31, label %59, label %10, !dbg !1268, !llvm.loop !1285

32:                                               ; preds = %8, %52
  %33 = phi i8* [ %57, %52 ], [ %6, %8 ]
  %34 = phi i64 [ %55, %52 ], [ 0, %8 ]
  %35 = phi i1 [ %54, %52 ], [ false, %8 ]
  %36 = phi i64 [ %53, %52 ], [ -1, %8 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %36, metadata !1259, metadata !DIExpression()), !dbg !1263
  %37 = tail call i32 @strncmp(i8* noundef nonnull %33, i8* noundef %0, i64 noundef %5) #36, !dbg !1277
  %38 = icmp eq i32 %37, 0, !dbg !1277
  br i1 %38, label %39, label %52, !dbg !1278

39:                                               ; preds = %32
  %40 = tail call i64 @strlen(i8* noundef nonnull %33) #36, !dbg !1279
  %41 = icmp eq i64 %40, %5, !dbg !1280
  br i1 %41, label %63, label %42, !dbg !1281

42:                                               ; preds = %39
  %43 = icmp eq i64 %36, -1, !dbg !1282
  br i1 %43, label %52, label %44, !dbg !1283

44:                                               ; preds = %42
  %45 = mul i64 %36, %3, !dbg !1287
  %46 = getelementptr inbounds i8, i8* %2, i64 %45, !dbg !1288
  %47 = mul i64 %34, %3, !dbg !1289
  %48 = getelementptr inbounds i8, i8* %2, i64 %47, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %46, metadata !1291, metadata !DIExpression()) #35, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %48, metadata !1296, metadata !DIExpression()) #35, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %3, metadata !1297, metadata !DIExpression()) #35, !dbg !1298
  %49 = tail call i32 @bcmp(i8* nonnull %46, i8* nonnull %48, i64 %3) #35, !dbg !1300
  %50 = icmp ne i32 %49, 0, !dbg !1301
  %51 = select i1 %50, i1 true, i1 %35, !dbg !1302
  br label %52, !dbg !1302

52:                                               ; preds = %44, %42, %32
  %53 = phi i64 [ %36, %32 ], [ %34, %42 ], [ %36, %44 ], !dbg !1263
  %54 = phi i1 [ %35, %32 ], [ %35, %42 ], [ %51, %44 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %53, metadata !1259, metadata !DIExpression()), !dbg !1263
  %55 = add i64 %34, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %55, metadata !1261, metadata !DIExpression()), !dbg !1265
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1266
  %57 = load i8*, i8** %56, align 8, !dbg !1266, !tbaa !510
  %58 = icmp eq i8* %57, null, !dbg !1268
  br i1 %58, label %59, label %32, !dbg !1268, !llvm.loop !1285

59:                                               ; preds = %52, %25
  %60 = phi i64 [ %26, %25 ], [ %53, %52 ], !dbg !1303
  %61 = phi i1 [ %27, %25 ], [ %54, %52 ]
  %62 = select i1 %61, i64 -2, i64 %60, !dbg !1304
  br label %63, !dbg !1304

63:                                               ; preds = %39, %17, %59, %4
  %64 = phi i64 [ -1, %4 ], [ %62, %59 ], [ %12, %17 ], [ %34, %39 ], !dbg !1263
  ret i64 %64, !dbg !1306
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1) local_unnamed_addr #17 !dbg !1307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1311, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8** %1, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1313, metadata !DIExpression()), !dbg !1316
  %3 = load i8*, i8** %1, align 8, !dbg !1317, !tbaa !510
  %4 = icmp eq i8* %3, null, !dbg !1319
  br i1 %4, label %15, label %5, !dbg !1319

5:                                                ; preds = %2, %10
  %6 = phi i8* [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1313, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %6, metadata !1320, metadata !DIExpression()) #35, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %0, metadata !1323, metadata !DIExpression()) #35, !dbg !1324
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !1328
  %9 = icmp eq i32 %8, 0, !dbg !1329
  br i1 %9, label %15, label %10, !dbg !1330

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %11, metadata !1313, metadata !DIExpression()), !dbg !1316
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1317
  %13 = load i8*, i8** %12, align 8, !dbg !1317, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1319
  br i1 %14, label %15, label %5, !dbg !1319, !llvm.loop !1332

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16, !dbg !1334
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i8* %1, metadata !1340, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %2, metadata !1341, metadata !DIExpression()), !dbg !1343
  %4 = icmp eq i64 %2, -1, !dbg !1344
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.72, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), !dbg !1345
  %6 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef %5, i32 noundef 5) #35, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %6, metadata !1342, metadata !DIExpression()), !dbg !1343
  %7 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #35, !dbg !1346
  %8 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #35, !dbg !1346
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %6, i8* noundef %7, i8* noundef %8) #35, !dbg !1346
  ret void, !dbg !1347
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(i8** nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1348 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1352, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %1, metadata !1353, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %2, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* null, metadata !1355, metadata !DIExpression()), !dbg !1358
  %4 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.75, i64 0, i64 0), i32 noundef 5) #35, !dbg !1359
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !510
  %6 = tail call i32 @fputs_unlocked(i8* noundef %4, %struct._IO_FILE* noundef %5), !dbg !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8* null, metadata !1355, metadata !DIExpression()), !dbg !1358
  %7 = load i8*, i8** %0, align 8, !dbg !1361, !tbaa !510
  %8 = icmp eq i8* %7, null, !dbg !1363
  br i1 %8, label %9, label %21, !dbg !1363

9:                                                ; preds = %41, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1364, !tbaa !510
  call void @llvm.dbg.value(metadata i32 10, metadata !1365, metadata !DIExpression()) #35, !dbg !1406
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1405, metadata !DIExpression()) #35, !dbg !1406
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 5, !dbg !1408
  %12 = load i8*, i8** %11, align 8, !dbg !1408, !tbaa !1409
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 6, !dbg !1408
  %14 = load i8*, i8** %13, align 8, !dbg !1408, !tbaa !1411
  %15 = icmp ult i8* %12, %14, !dbg !1408
  br i1 %15, label %18, label %16, !dbg !1408, !prof !1412

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %10, i32 noundef 10) #35, !dbg !1408
  br label %20, !dbg !1408

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1408
  store i8* %19, i8** %11, align 8, !dbg !1408, !tbaa !1409
  store i8 10, i8* %12, align 1, !dbg !1408, !tbaa !610
  br label %20, !dbg !1408

20:                                               ; preds = %16, %18
  ret void, !dbg !1413

21:                                               ; preds = %3, %41
  %22 = phi i8* [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi i8* [ %42, %41 ], [ null, %3 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1356, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %24, metadata !1355, metadata !DIExpression()), !dbg !1358
  %25 = icmp eq i64 %23, 0, !dbg !1414
  br i1 %25, label %31, label %26, !dbg !1416

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1417
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %24, metadata !1291, metadata !DIExpression()) #35, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %28, metadata !1296, metadata !DIExpression()) #35, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %2, metadata !1297, metadata !DIExpression()) #35, !dbg !1419
  %29 = tail call i32 @bcmp(i8* %24, i8* %28, i64 %2) #35, !dbg !1421
  %30 = icmp eq i32 %29, 0, !dbg !1422
  br i1 %30, label %37, label %31, !dbg !1423

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1424
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1426, !tbaa !510
  %34 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1426
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.76, i64 0, i64 0), i8* noundef %34) #35, !dbg !1426
  %36 = getelementptr inbounds i8, i8* %1, i64 %32, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %36, metadata !1355, metadata !DIExpression()), !dbg !1358
  br label %41, !dbg !1428

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1429, !tbaa !510
  %39 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1429
  %40 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.77, i64 0, i64 0), i8* noundef %39) #35, !dbg !1429
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi i8* [ %36, %31 ], [ %24, %37 ], !dbg !1358
  call void @llvm.dbg.value(metadata i8* %42, metadata !1355, metadata !DIExpression()), !dbg !1358
  %43 = add i64 %23, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %43, metadata !1356, metadata !DIExpression()), !dbg !1360
  %44 = getelementptr inbounds i8*, i8** %0, i64 %43, !dbg !1361
  %45 = load i8*, i8** %44, align 8, !dbg !1361, !tbaa !510
  %46 = icmp eq i8* %45, null, !dbg !1363
  br i1 %46, label %9, label %21, !dbg !1363, !llvm.loop !1432
}

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** nocapture noundef readonly %2, i8* noundef readonly %3, i64 noundef %4, void ()* nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #12 !dbg !1434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1438, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %1, metadata !1439, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8** %2, metadata !1440, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %3, metadata !1441, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %4, metadata !1442, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i1 %6, metadata !1444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  br i1 %6, label %8, label %10, !dbg !1447

8:                                                ; preds = %7
  %9 = tail call i64 @argmatch(i8* noundef %1, i8** noundef %2, i8* noundef %3, i64 noundef %4) #36, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %9, metadata !1445, metadata !DIExpression()), !dbg !1446
  br label %23, !dbg !1450

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %1, metadata !1311, metadata !DIExpression()) #35, !dbg !1451
  call void @llvm.dbg.value(metadata i8** %2, metadata !1312, metadata !DIExpression()) #35, !dbg !1451
  call void @llvm.dbg.value(metadata i64 0, metadata !1313, metadata !DIExpression()) #35, !dbg !1453
  %11 = load i8*, i8** %2, align 8, !dbg !1454, !tbaa !510
  %12 = icmp eq i8* %11, null, !dbg !1455
  br i1 %12, label %28, label %13, !dbg !1455

13:                                               ; preds = %10, %18
  %14 = phi i8* [ %21, %18 ], [ %11, %10 ]
  %15 = phi i64 [ %19, %18 ], [ 0, %10 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !1313, metadata !DIExpression()) #35, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %14, metadata !1320, metadata !DIExpression()) #35, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %1, metadata !1323, metadata !DIExpression()) #35, !dbg !1456
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %1) #36, !dbg !1458
  %17 = icmp eq i32 %16, 0, !dbg !1459
  br i1 %17, label %23, label %18, !dbg !1460

18:                                               ; preds = %13
  %19 = add i64 %15, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %19, metadata !1313, metadata !DIExpression()) #35, !dbg !1453
  %20 = getelementptr inbounds i8*, i8** %2, i64 %19, !dbg !1454
  %21 = load i8*, i8** %20, align 8, !dbg !1454, !tbaa !510
  %22 = icmp eq i8* %21, null, !dbg !1455
  br i1 %22, label %28, label %13, !dbg !1455, !llvm.loop !1462

23:                                               ; preds = %13, %8
  %24 = phi i64 [ %9, %8 ], [ %15, %13 ], !dbg !1464
  call void @llvm.dbg.value(metadata i64 %24, metadata !1445, metadata !DIExpression()), !dbg !1446
  %25 = icmp sgt i64 %24, -1, !dbg !1465
  br i1 %25, label %34, label %26, !dbg !1467

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %1, metadata !1340, metadata !DIExpression()) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %24, metadata !1341, metadata !DIExpression()) #35, !dbg !1468
  %27 = icmp eq i64 %24, -1, !dbg !1470
  br i1 %27, label %28, label %29, !dbg !1471

28:                                               ; preds = %18, %10, %26
  br label %29, !dbg !1471

29:                                               ; preds = %26, %28
  %30 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.72, i64 0, i64 0), %28 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), %26 ]
  %31 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %30, i32 noundef 5) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %31, metadata !1342, metadata !DIExpression()) #35, !dbg !1468
  %32 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #35, !dbg !1472
  %33 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #35, !dbg !1472
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %31, i8* noundef %32, i8* noundef %33) #35, !dbg !1472
  tail call void @argmatch_valid(i8** noundef %2, i8* noundef %3, i64 noundef %4), !dbg !1473
  tail call void %5() #35, !dbg !1474
  br label %34, !dbg !1475

34:                                               ; preds = %23, %29
  %35 = phi i64 [ -1, %29 ], [ %24, %23 ], !dbg !1446
  ret i64 %35, !dbg !1476
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #17 !dbg !1477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8** %1, metadata !1482, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %3, metadata !1484, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 0, metadata !1485, metadata !DIExpression()), !dbg !1488
  %5 = load i8*, i8** %1, align 8, !dbg !1489, !tbaa !510
  %6 = icmp eq i8* %5, null, !dbg !1491
  br i1 %6, label %21, label %7, !dbg !1491

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1485, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %0, metadata !1291, metadata !DIExpression()) #35, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %2, metadata !1296, metadata !DIExpression()) #35, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %3, metadata !1297, metadata !DIExpression()) #35, !dbg !1492
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3) #35, !dbg !1495
  %9 = icmp eq i32 %8, 0, !dbg !1496
  call void @llvm.dbg.value(metadata i64 1, metadata !1485, metadata !DIExpression()), !dbg !1488
  br i1 %9, label %21, label %10, !dbg !1497

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1485, metadata !DIExpression()), !dbg !1488
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1489
  %13 = load i8*, i8** %12, align 8, !dbg !1489, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1491
  br i1 %14, label %21, label %15, !dbg !1491, !llvm.loop !1498

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1485, metadata !DIExpression()), !dbg !1488
  %16 = mul i64 %11, %3, !dbg !1500
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %0, metadata !1291, metadata !DIExpression()) #35, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %17, metadata !1296, metadata !DIExpression()) #35, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %3, metadata !1297, metadata !DIExpression()) #35, !dbg !1492
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3) #35, !dbg !1495
  %19 = icmp eq i32 %18, 0, !dbg !1496
  %20 = add i64 %11, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %20, metadata !1485, metadata !DIExpression()), !dbg !1488
  br i1 %19, label %21, label %10, !dbg !1497, !llvm.loop !1498

21:                                               ; preds = %15, %10, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %13, %15 ], !dbg !1489
  ret i8* %22, !dbg !1503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #19 !dbg !1504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i8* %0, i8** @file_name, align 8, !dbg !1508, !tbaa !510
  ret void, !dbg !1509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !1510 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1514, metadata !DIExpression()), !dbg !1515
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1516, !tbaa !828
  ret void, !dbg !1517
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1518 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1523, !tbaa !510
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1524
  %3 = icmp eq i32 %2, 0, !dbg !1525
  br i1 %3, label %22, label %4, !dbg !1526

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1527, !tbaa !828, !range !864
  %6 = icmp eq i8 %5, 0, !dbg !1527
  br i1 %6, label %11, label %7, !dbg !1528

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1529
  %9 = load i32, i32* %8, align 4, !dbg !1529, !tbaa !601
  %10 = icmp eq i32 %9, 32, !dbg !1530
  br i1 %10, label %22, label %11, !dbg !1531

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.83, i64 0, i64 0), i32 noundef 5) #35, !dbg !1532
  call void @llvm.dbg.value(metadata i8* %12, metadata !1520, metadata !DIExpression()), !dbg !1533
  %13 = load i8*, i8** @file_name, align 8, !dbg !1534, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1534
  %15 = tail call i32* @__errno_location() #38, !dbg !1536
  %16 = load i32, i32* %15, align 4, !dbg !1536, !tbaa !601
  br i1 %14, label %19, label %17, !dbg !1537

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1538
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1538
  br label %20, !dbg !1538

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.85, i64 0, i64 0), i8* noundef %12) #35, !dbg !1539
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1540, !tbaa !601
  tail call void @_exit(i32 noundef %21) #37, !dbg !1541
  unreachable, !dbg !1541

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1542, !tbaa !510
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1544
  %25 = icmp eq i32 %24, 0, !dbg !1545
  br i1 %25, label %28, label %26, !dbg !1546

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1547, !tbaa !601
  tail call void @_exit(i32 noundef %27) #37, !dbg !1548
  unreachable, !dbg !1548

28:                                               ; preds = %22
  ret void, !dbg !1549
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !1550 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i8* %2, metadata !1556, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1557, metadata !DIExpression()), !dbg !1559
  tail call fastcc void @flush_stdout(), !dbg !1560
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1561, !tbaa !510
  %7 = icmp eq void ()* %6, null, !dbg !1561
  br i1 %7, label %9, label %8, !dbg !1563

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1564
  br label %13, !dbg !1564

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1565, !tbaa !510
  %11 = tail call i8* @getprogname() #36, !dbg !1565
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef %11) #35, !dbg !1565
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1567
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1567
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1567, !tbaa.struct !1568
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1567
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1567
  ret void, !dbg !1569
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1570 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 1, metadata !1574, metadata !DIExpression()) #35, !dbg !1577
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1580
  %2 = icmp slt i32 %1, 0, !dbg !1581
  br i1 %2, label %6, label %3, !dbg !1582

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1583, !tbaa !510
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1583
  br label %6, !dbg !1583

6:                                                ; preds = %3, %0
  ret void, !dbg !1584
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1585 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1590, metadata !DIExpression()), !dbg !1592
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1593, !tbaa !510
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1594
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1595, metadata !DIExpression()) #35, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !1636, metadata !DIExpression()) #35, !dbg !1638
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1640
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1640, !noalias !1641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1640
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1640
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1640, !noalias !1641
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1645, !tbaa !601
  %12 = add i32 %11, 1, !dbg !1645
  store i32 %12, i32* @error_message_count, align 4, !dbg !1645, !tbaa !601
  %13 = icmp eq i32 %1, 0, !dbg !1646
  br i1 %13, label %24, label %14, !dbg !1648

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1649, metadata !DIExpression()) #35, !dbg !1657
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1659
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1659
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1653, metadata !DIExpression()) #35, !dbg !1660
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %16, metadata !1652, metadata !DIExpression()) #35, !dbg !1657
  %17 = icmp eq i8* %16, null, !dbg !1662
  br i1 %17, label %18, label %20, !dbg !1664

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.88, i64 0, i64 0), i32 noundef 5) #35, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %19, metadata !1652, metadata !DIExpression()) #35, !dbg !1657
  br label %20, !dbg !1666

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8* %21, metadata !1652, metadata !DIExpression()) #35, !dbg !1657
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1667, !tbaa !510
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.89, i64 0, i64 0), i8* noundef %21) #35, !dbg !1667
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1668
  br label %24, !dbg !1669

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1670, !tbaa !510
  call void @llvm.dbg.value(metadata i32 10, metadata !1671, metadata !DIExpression()) #35, !dbg !1677
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1676, metadata !DIExpression()) #35, !dbg !1677
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1679
  %27 = load i8*, i8** %26, align 8, !dbg !1679, !tbaa !1409
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1679
  %29 = load i8*, i8** %28, align 8, !dbg !1679, !tbaa !1411
  %30 = icmp ult i8* %27, %29, !dbg !1679
  br i1 %30, label %33, label %31, !dbg !1679, !prof !1412

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1679
  br label %35, !dbg !1679

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1679
  store i8* %34, i8** %26, align 8, !dbg !1679, !tbaa !1409
  store i8 10, i8* %27, align 1, !dbg !1679, !tbaa !610
  br label %35, !dbg !1679

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1680, !tbaa !510
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1680
  %38 = icmp eq i32 %0, 0, !dbg !1681
  br i1 %38, label %40, label %39, !dbg !1683

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1684
  unreachable, !dbg !1684

40:                                               ; preds = %35
  ret void, !dbg !1685
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1686 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1690 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1693 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1697 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1701, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %1, metadata !1702, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %2, metadata !1703, metadata !DIExpression()), !dbg !1705
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1706
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1706
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1704, metadata !DIExpression()), !dbg !1707
  call void @llvm.va_start(i8* nonnull %6), !dbg !1708
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1709
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1709
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1709, !tbaa.struct !1568
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1709
  call void @llvm.va_end(i8* nonnull %6), !dbg !1710
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1711
  ret void, !dbg !1711
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !222 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !240, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %2, metadata !242, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %3, metadata !243, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %4, metadata !244, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !245, metadata !DIExpression()), !dbg !1713
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1714, !tbaa !601
  %9 = icmp eq i32 %8, 0, !dbg !1714
  br i1 %9, label %24, label %10, !dbg !1716

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1717, !tbaa !601
  %12 = icmp eq i32 %11, %3, !dbg !1720
  br i1 %12, label %13, label %23, !dbg !1721

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1722, !tbaa !510
  %15 = icmp eq i8* %14, %2, !dbg !1723
  br i1 %15, label %39, label %16, !dbg !1724

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1725
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1726
  br i1 %19, label %20, label %23, !dbg !1726

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1727
  %22 = icmp eq i32 %21, 0, !dbg !1728
  br i1 %22, label %39, label %23, !dbg !1729

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1730, !tbaa !510
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1731, !tbaa !601
  br label %24, !dbg !1732

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1733
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1734, !tbaa !510
  %26 = icmp eq void ()* %25, null, !dbg !1734
  br i1 %26, label %28, label %27, !dbg !1736

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1737
  br label %32, !dbg !1737

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1738, !tbaa !510
  %30 = tail call i8* @getprogname() #36, !dbg !1738
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.92, i64 0, i64 0), i8* noundef %30) #35, !dbg !1738
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1740, !tbaa !510
  %34 = icmp eq i8* %2, null, !dbg !1740
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.94, i64 0, i64 0), !dbg !1740
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1740
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1741
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1741
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1741
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1741, !tbaa.struct !1568
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1741
  br label %39, !dbg !1742

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1742
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1743 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1747, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32 %1, metadata !1748, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %2, metadata !1749, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32 %3, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %4, metadata !1751, metadata !DIExpression()), !dbg !1753
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1754
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1754
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.va_start(i8* nonnull %8), !dbg !1756
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1757
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1757, !tbaa.struct !1568
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !1757
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1757
  call void @llvm.va_end(i8* nonnull %8), !dbg !1758
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1759
  ret void, !dbg !1759
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1766, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %1, metadata !1767, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %2, metadata !1768, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %3, metadata !1769, metadata !DIExpression()), !dbg !1770
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #35, !dbg !1771
  ret void, !dbg !1772
}

; Function Attrs: nounwind
declare !dbg !1773 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1776 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1, metadata !1815, metadata !DIExpression()), !dbg !1816
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1817
  br i1 %3, label %7, label %4, !dbg !1819

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1766, metadata !DIExpression()) #35, !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()) #35, !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()) #35, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1, metadata !1769, metadata !DIExpression()) #35, !dbg !1821
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #35, !dbg !1823
  br label %7, !dbg !1824

7:                                                ; preds = %4, %2
  ret void, !dbg !1825
}

; Function Attrs: nofree nounwind
declare !dbg !1826 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(i8* nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1829 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1833, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %1, metadata !1834, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !1850
  %4 = and i32 %1, 64, !dbg !1851
  %5 = icmp eq i32 %4, 0, !dbg !1851
  br i1 %5, label %27, label %6, !dbg !1852

6:                                                ; preds = %2
  %7 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1853
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1853
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1837, metadata !DIExpression()), !dbg !1854
  call void @llvm.va_start(i8* nonnull %7), !dbg !1855
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1856
  %9 = load i32, i32* %8, align 8, !dbg !1856
  %10 = icmp sgt i32 %9, -1, !dbg !1856
  br i1 %10, label %19, label %11, !dbg !1856

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 8, !dbg !1856
  store i32 %12, i32* %8, align 8, !dbg !1856
  %13 = icmp ult i32 %9, -7, !dbg !1856
  br i1 %13, label %14, label %19, !dbg !1856

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1856
  %16 = load i8*, i8** %15, align 8, !dbg !1856
  %17 = sext i32 %9 to i64, !dbg !1856
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !1856
  br label %23, !dbg !1856

19:                                               ; preds = %11, %6
  %20 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1856
  %21 = load i8*, i8** %20, align 8, !dbg !1856
  %22 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !1856
  store i8* %22, i8** %20, align 8, !dbg !1856
  br label %23, !dbg !1856

23:                                               ; preds = %19, %14
  %24 = phi i8* [ %18, %14 ], [ %21, %19 ]
  %25 = bitcast i8* %24 to i32*, !dbg !1856
  %26 = load i32, i32* %25, align 8, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %26, metadata !1835, metadata !DIExpression()), !dbg !1850
  call void @llvm.va_end(i8* nonnull %7), !dbg !1857
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1858
  br label %27, !dbg !1859

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %2 ], !dbg !1850
  call void @llvm.dbg.value(metadata i32 %28, metadata !1835, metadata !DIExpression()), !dbg !1850
  %29 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %1, i32 noundef %28) #35, !dbg !1860
  %30 = call i32 @fd_safer(i32 noundef %29) #35, !dbg !1861
  ret i32 %30, !dbg !1862
}

; Function Attrs: nofree
declare !dbg !1863 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #23 !dbg !1864 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1867, !tbaa !510
  ret i8* %1, !dbg !1868
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #16 !dbg !1869 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1871, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1874, metadata !DIExpression()), !dbg !1899
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1900
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1900
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1875, metadata !DIExpression()), !dbg !1901
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #35, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %4, metadata !1898, metadata !DIExpression()), !dbg !1899
  %5 = icmp eq i32 %4, 0, !dbg !1903
  br i1 %5, label %6, label %16, !dbg !1905

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1906
  %8 = load i32, i32* %7, align 4, !dbg !1906, !tbaa !1907
  %9 = icmp ult i32 %8, 2, !dbg !1908
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1909
  %11 = load i32, i32* %10, align 8, !dbg !1909
  %12 = and i32 %11, 61440, !dbg !1909
  %13 = icmp eq i32 %12, 4096, !dbg !1909
  %14 = select i1 %9, i1 %13, i1 false, !dbg !1909
  %15 = zext i1 %14 to i32, !dbg !1909
  br label %16, !dbg !1910

16:                                               ; preds = %1, %6
  %17 = phi i32 [ %15, %6 ], [ %4, %1 ], !dbg !1899
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1911
  ret i32 %17, !dbg !1911
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #24 !dbg !1912 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1914, metadata !DIExpression()), !dbg !1917
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1918
  call void @llvm.dbg.value(metadata i8* %2, metadata !1915, metadata !DIExpression()), !dbg !1917
  %3 = icmp eq i8* %2, null, !dbg !1919
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1919
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1919
  call void @llvm.dbg.value(metadata i8* %5, metadata !1916, metadata !DIExpression()), !dbg !1917
  %6 = ptrtoint i8* %5 to i64, !dbg !1920
  %7 = ptrtoint i8* %0 to i64, !dbg !1920
  %8 = sub i64 %6, %7, !dbg !1920
  %9 = icmp sgt i64 %8, 6, !dbg !1922
  br i1 %9, label %10, label %19, !dbg !1923

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %11, metadata !1925, metadata !DIExpression()) #35, !dbg !1930
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), metadata !1928, metadata !DIExpression()) #35, !dbg !1930
  call void @llvm.dbg.value(metadata i64 7, metadata !1929, metadata !DIExpression()) #35, !dbg !1930
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), i64 7) #35, !dbg !1932
  %13 = icmp eq i32 %12, 0, !dbg !1933
  br i1 %13, label %14, label %19, !dbg !1934

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1914, metadata !DIExpression()), !dbg !1917
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.110, i64 0, i64 0), i64 noundef 3) #36, !dbg !1935
  %16 = icmp eq i32 %15, 0, !dbg !1938
  %17 = select i1 %16, i64 3, i64 0, !dbg !1939
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1939
  br label %19, !dbg !1939

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1917
  call void @llvm.dbg.value(metadata i8* %21, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %20, metadata !1914, metadata !DIExpression()), !dbg !1917
  store i8* %20, i8** @program_name, align 8, !dbg !1940, !tbaa !510
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1941, !tbaa !510
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1942, !tbaa !510
  ret void, !dbg !1943
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !260 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %1, metadata !268, metadata !DIExpression()), !dbg !1944
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %5, metadata !269, metadata !DIExpression()), !dbg !1944
  %6 = icmp eq i8* %5, %0, !dbg !1946
  br i1 %6, label %7, label %17, !dbg !1948

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1949
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1949
  %10 = bitcast i64* %4 to i8*, !dbg !1950
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1950
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !275, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1952, metadata !DIExpression()) #35, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %10, metadata !1961, metadata !DIExpression()) #35, !dbg !1969
  call void @llvm.dbg.value(metadata i32 0, metadata !1967, metadata !DIExpression()) #35, !dbg !1969
  call void @llvm.dbg.value(metadata i64 8, metadata !1968, metadata !DIExpression()) #35, !dbg !1969
  store i64 0, i64* %4, align 8, !dbg !1971
  call void @llvm.dbg.value(metadata i32* %3, metadata !270, metadata !DIExpression(DW_OP_deref)), !dbg !1944
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1972
  %12 = icmp eq i64 %11, 2, !dbg !1974
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !270, metadata !DIExpression()), !dbg !1944
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1975
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1976
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1976
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1944
  ret i8* %18, !dbg !1976
}

; Function Attrs: nounwind
declare !dbg !1977 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1983 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  %2 = tail call i32* @__errno_location() #38, !dbg !1992
  %3 = load i32, i32* %2, align 4, !dbg !1992, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %3, metadata !1989, metadata !DIExpression()), !dbg !1991
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1993
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1993
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1993
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #42, !dbg !1994
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1994
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i32 %3, i32* %2, align 4, !dbg !1995, !tbaa !601
  ret %struct.quoting_options* %8, !dbg !1996
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #23 !dbg !1997 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2003, metadata !DIExpression()), !dbg !2004
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2005
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2005
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2006
  %5 = load i32, i32* %4, align 8, !dbg !2006, !tbaa !2007
  ret i32 %5, !dbg !2009
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2010 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2014, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %1, metadata !2015, metadata !DIExpression()), !dbg !2016
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2017
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2017
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2018
  store i32 %1, i32* %5, align 8, !dbg !2019, !tbaa !2007
  ret void, !dbg !2020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2021 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2025, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %1, metadata !2026, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %2, metadata !2027, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %1, metadata !2028, metadata !DIExpression()), !dbg !2033
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2034
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2034
  %6 = lshr i8 %1, 5, !dbg !2035
  %7 = zext i8 %6 to i64, !dbg !2035
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2036
  call void @llvm.dbg.value(metadata i32* %8, metadata !2029, metadata !DIExpression()), !dbg !2033
  %9 = and i8 %1, 31, !dbg !2037
  %10 = zext i8 %9 to i32, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %10, metadata !2031, metadata !DIExpression()), !dbg !2033
  %11 = load i32, i32* %8, align 4, !dbg !2038, !tbaa !601
  %12 = lshr i32 %11, %10, !dbg !2039
  %13 = and i32 %12, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %13, metadata !2032, metadata !DIExpression()), !dbg !2033
  %14 = and i32 %2, 1, !dbg !2041
  %15 = xor i32 %13, %14, !dbg !2042
  %16 = shl i32 %15, %10, !dbg !2043
  %17 = xor i32 %16, %11, !dbg !2044
  store i32 %17, i32* %8, align 4, !dbg !2044, !tbaa !601
  ret i32 %13, !dbg !2045
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2046 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2050, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2051, metadata !DIExpression()), !dbg !2053
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2054
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2050, metadata !DIExpression()), !dbg !2053
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2057
  %6 = load i32, i32* %5, align 4, !dbg !2057, !tbaa !2058
  call void @llvm.dbg.value(metadata i32 %6, metadata !2052, metadata !DIExpression()), !dbg !2053
  store i32 %1, i32* %5, align 4, !dbg !2059, !tbaa !2058
  ret i32 %6, !dbg !2060
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2061 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %1, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %2, metadata !2067, metadata !DIExpression()), !dbg !2068
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2069
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2065, metadata !DIExpression()), !dbg !2068
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2072
  store i32 10, i32* %6, align 8, !dbg !2073, !tbaa !2007
  %7 = icmp ne i8* %1, null, !dbg !2074
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2076
  br i1 %9, label %11, label %10, !dbg !2076

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2077
  unreachable, !dbg !2077

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2078
  store i8* %1, i8** %12, align 8, !dbg !2079, !tbaa !2080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2081
  store i8* %2, i8** %13, align 8, !dbg !2082, !tbaa !2083
  ret void, !dbg !2084
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2085 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2089, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %1, metadata !2090, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %2, metadata !2091, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %3, metadata !2092, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2093, metadata !DIExpression()), !dbg !2097
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2098
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2094, metadata !DIExpression()), !dbg !2097
  %8 = tail call i32* @__errno_location() #38, !dbg !2099
  %9 = load i32, i32* %8, align 4, !dbg !2099, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %9, metadata !2095, metadata !DIExpression()), !dbg !2097
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2100
  %11 = load i32, i32* %10, align 8, !dbg !2100, !tbaa !2007
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2101
  %13 = load i32, i32* %12, align 4, !dbg !2101, !tbaa !2058
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2102
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2103
  %16 = load i8*, i8** %15, align 8, !dbg !2103, !tbaa !2080
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2104
  %18 = load i8*, i8** %17, align 8, !dbg !2104, !tbaa !2083
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %19, metadata !2096, metadata !DIExpression()), !dbg !2097
  store i32 %9, i32* %8, align 4, !dbg !2106, !tbaa !601
  ret i64 %19, !dbg !2107
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2108 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2114, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %1, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %2, metadata !2116, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %3, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %4, metadata !2118, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %5, metadata !2119, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32* %6, metadata !2120, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %7, metadata !2121, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %8, metadata !2122, metadata !DIExpression()), !dbg !2176
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2177
  %18 = icmp eq i64 %17, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i1 %18, metadata !2123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2176
  call void @llvm.dbg.value(metadata i64 0, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 0, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* null, metadata !2126, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %5, metadata !2129, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2131, metadata !DIExpression()), !dbg !2176
  %19 = and i32 %5, 2, !dbg !2179
  %20 = icmp ne i32 %19, 0, !dbg !2179
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
  br label %36, !dbg !2179

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2180
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2181
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2182
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %43, metadata !2127, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %42, metadata !2126, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %41, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 0, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %40, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %39, metadata !2122, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %38, metadata !2121, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %37, metadata !2118, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.label(metadata !2169), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2176
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
  ], !dbg !2184

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 5, metadata !2118, metadata !DIExpression()), !dbg !2176
  br label %111, !dbg !2185

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 5, metadata !2118, metadata !DIExpression()), !dbg !2176
  br i1 %45, label %111, label %51, !dbg !2185

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2186
  br i1 %52, label %111, label %53, !dbg !2190

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2186, !tbaa !610
  br label %111, !dbg !2186

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), metadata !335, metadata !DIExpression()) #35, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %37, metadata !336, metadata !DIExpression()) #35, !dbg !2191
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), i32 noundef 5) #35, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %55, metadata !337, metadata !DIExpression()) #35, !dbg !2191
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), !dbg !2196
  br i1 %56, label %57, label %66, !dbg !2198

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2199
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2200
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !339, metadata !DIExpression()) #35, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2202, metadata !DIExpression()) #35, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %23, metadata !2210, metadata !DIExpression()) #35, !dbg !2215
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #35, !dbg !2215
  call void @llvm.dbg.value(metadata i64 8, metadata !2214, metadata !DIExpression()) #35, !dbg !2215
  store i64 0, i64* %13, align 8, !dbg !2217
  call void @llvm.dbg.value(metadata i32* %12, metadata !338, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2191
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2218
  %59 = icmp eq i64 %58, 3, !dbg !2220
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !338, metadata !DIExpression()) #35, !dbg !2191
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2221
  %63 = icmp eq i32 %37, 9, !dbg !2221
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2221
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2222
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2191
  call void @llvm.dbg.value(metadata i8* %67, metadata !2121, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), metadata !335, metadata !DIExpression()) #35, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %37, metadata !336, metadata !DIExpression()) #35, !dbg !2223
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), i32 noundef 5) #35, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %68, metadata !337, metadata !DIExpression()) #35, !dbg !2223
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2226
  br i1 %69, label %70, label %79, !dbg !2227

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2229
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !339, metadata !DIExpression()) #35, !dbg !2230
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2202, metadata !DIExpression()) #35, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %26, metadata !2210, metadata !DIExpression()) #35, !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #35, !dbg !2233
  call void @llvm.dbg.value(metadata i64 8, metadata !2214, metadata !DIExpression()) #35, !dbg !2233
  store i64 0, i64* %11, align 8, !dbg !2235
  call void @llvm.dbg.value(metadata i32* %10, metadata !338, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2223
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2236
  %72 = icmp eq i64 %71, 3, !dbg !2237
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !338, metadata !DIExpression()) #35, !dbg !2223
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2238
  %76 = icmp eq i32 %37, 9, !dbg !2238
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2238
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2239
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2122, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %80, metadata !2121, metadata !DIExpression()), !dbg !2176
  br i1 %45, label %97, label %82, !dbg !2240

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2133, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 0, metadata !2124, metadata !DIExpression()), !dbg !2176
  %83 = load i8, i8* %80, align 1, !dbg !2242, !tbaa !610
  %84 = icmp eq i8 %83, 0, !dbg !2244
  br i1 %84, label %97, label %85, !dbg !2244

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2133, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %88, metadata !2124, metadata !DIExpression()), !dbg !2176
  %89 = icmp ult i64 %88, %48, !dbg !2245
  br i1 %89, label %90, label %92, !dbg !2248

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2245
  store i8 %86, i8* %91, align 1, !dbg !2245, !tbaa !610
  br label %92, !dbg !2245

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %93, metadata !2124, metadata !DIExpression()), !dbg !2176
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %94, metadata !2133, metadata !DIExpression()), !dbg !2241
  %95 = load i8, i8* %94, align 1, !dbg !2242, !tbaa !610
  %96 = icmp eq i8 %95, 0, !dbg !2244
  br i1 %96, label %97, label %85, !dbg !2244, !llvm.loop !2250

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2252
  call void @llvm.dbg.value(metadata i64 %98, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %81, metadata !2126, metadata !DIExpression()), !dbg !2176
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %99, metadata !2127, metadata !DIExpression()), !dbg !2176
  br label %111, !dbg !2254

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2128, metadata !DIExpression()), !dbg !2176
  br label %102, !dbg !2255

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2128, metadata !DIExpression()), !dbg !2176
  br i1 %45, label %102, label %105, !dbg !2256

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 2, metadata !2118, metadata !DIExpression()), !dbg !2176
  br label %111, !dbg !2257

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 2, metadata !2118, metadata !DIExpression()), !dbg !2176
  br i1 %45, label %111, label %105, !dbg !2257

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2258
  br i1 %107, label %111, label %108, !dbg !2262

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2258, !tbaa !610
  br label %111, !dbg !2258

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2176
  br label %111, !dbg !2263

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2264
  unreachable, !dbg !2264

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2252
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %102 ], !dbg !2176
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2176
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2128, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %117, metadata !2127, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %116, metadata !2126, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %115, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %114, metadata !2122, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %113, metadata !2121, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %112, metadata !2118, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 0, metadata !2138, metadata !DIExpression()), !dbg !2265
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
  br label %132, !dbg !2266

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2252
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2180
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2265
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %139, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %135, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %134, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %133, metadata !2117, metadata !DIExpression()), !dbg !2176
  %141 = icmp eq i64 %133, -1, !dbg !2267
  br i1 %141, label %142, label %146, !dbg !2268

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2269
  %144 = load i8, i8* %143, align 1, !dbg !2269, !tbaa !610
  %145 = icmp eq i8 %144, 0, !dbg !2270
  br i1 %145, label %596, label %148, !dbg !2271

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2272
  br i1 %147, label %596, label %148, !dbg !2271

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2273
  br i1 %123, label %149, label %163, !dbg !2274

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2276
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2277
  br i1 %151, label %152, label %154, !dbg !2277

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %153, metadata !2117, metadata !DIExpression()), !dbg !2176
  br label %154, !dbg !2279

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2279
  call void @llvm.dbg.value(metadata i64 %155, metadata !2117, metadata !DIExpression()), !dbg !2176
  %156 = icmp ugt i64 %150, %155, !dbg !2280
  br i1 %156, label %163, label %157, !dbg !2281

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %158, metadata !2283, metadata !DIExpression()) #35, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %116, metadata !2286, metadata !DIExpression()) #35, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %117, metadata !2287, metadata !DIExpression()) #35, !dbg !2288
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2290
  %160 = icmp ne i32 %159, 0, !dbg !2291
  %161 = or i1 %160, %125, !dbg !2292
  %162 = xor i1 %160, true, !dbg !2292
  br i1 %161, label %163, label %647, !dbg !2292

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %164, metadata !2117, metadata !DIExpression()), !dbg !2176
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2293
  %167 = load i8, i8* %166, align 1, !dbg !2293, !tbaa !610
  call void @llvm.dbg.value(metadata i8 %167, metadata !2145, metadata !DIExpression()), !dbg !2273
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
  ], !dbg !2294

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2295

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2296

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2143, metadata !DIExpression()), !dbg !2273
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2300
  br i1 %171, label %188, label %172, !dbg !2300

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2302
  br i1 %173, label %174, label %176, !dbg !2306

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2302
  store i8 39, i8* %175, align 1, !dbg !2302, !tbaa !610
  br label %176, !dbg !2302

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %177, metadata !2124, metadata !DIExpression()), !dbg !2176
  %178 = icmp ult i64 %177, %140, !dbg !2307
  br i1 %178, label %179, label %181, !dbg !2310

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2307
  store i8 36, i8* %180, align 1, !dbg !2307, !tbaa !610
  br label %181, !dbg !2307

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %182, metadata !2124, metadata !DIExpression()), !dbg !2176
  %183 = icmp ult i64 %182, %140, !dbg !2311
  br i1 %183, label %184, label %186, !dbg !2314

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2311
  store i8 39, i8* %185, align 1, !dbg !2311, !tbaa !610
  br label %186, !dbg !2311

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %187, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %188, !dbg !2315

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2176
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %189, metadata !2124, metadata !DIExpression()), !dbg !2176
  %191 = icmp ult i64 %189, %140, !dbg !2316
  br i1 %191, label %192, label %194, !dbg !2319

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2316
  store i8 92, i8* %193, align 1, !dbg !2316, !tbaa !610
  br label %194, !dbg !2316

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %195, metadata !2124, metadata !DIExpression()), !dbg !2176
  br i1 %120, label %196, label %499, !dbg !2320

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2322
  %198 = icmp ult i64 %197, %164, !dbg !2323
  br i1 %198, label %199, label %456, !dbg !2324

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2325
  %201 = load i8, i8* %200, align 1, !dbg !2325, !tbaa !610
  %202 = add i8 %201, -48, !dbg !2326
  %203 = icmp ult i8 %202, 10, !dbg !2326
  br i1 %203, label %204, label %456, !dbg !2326

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2327
  br i1 %205, label %206, label %208, !dbg !2331

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2327
  store i8 48, i8* %207, align 1, !dbg !2327, !tbaa !610
  br label %208, !dbg !2327

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %209, metadata !2124, metadata !DIExpression()), !dbg !2176
  %210 = icmp ult i64 %209, %140, !dbg !2332
  br i1 %210, label %211, label %213, !dbg !2335

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2332
  store i8 48, i8* %212, align 1, !dbg !2332, !tbaa !610
  br label %213, !dbg !2332

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %214, metadata !2124, metadata !DIExpression()), !dbg !2176
  br label %456, !dbg !2336

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2337

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2338

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2339

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2341

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2343
  %221 = icmp ult i64 %220, %164, !dbg !2344
  br i1 %221, label %222, label %456, !dbg !2345

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2346
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2347
  %225 = load i8, i8* %224, align 1, !dbg !2347, !tbaa !610
  %226 = icmp eq i8 %225, 63, !dbg !2348
  br i1 %226, label %227, label %456, !dbg !2349

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2350
  %229 = load i8, i8* %228, align 1, !dbg !2350, !tbaa !610
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
  ], !dbg !2351

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2352

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %220, metadata !2138, metadata !DIExpression()), !dbg !2265
  %232 = icmp ult i64 %134, %140, !dbg !2354
  br i1 %232, label %233, label %235, !dbg !2357

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2354
  store i8 63, i8* %234, align 1, !dbg !2354, !tbaa !610
  br label %235, !dbg !2354

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %236, metadata !2124, metadata !DIExpression()), !dbg !2176
  %237 = icmp ult i64 %236, %140, !dbg !2358
  br i1 %237, label %238, label %240, !dbg !2361

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2358
  store i8 34, i8* %239, align 1, !dbg !2358, !tbaa !610
  br label %240, !dbg !2358

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %241, metadata !2124, metadata !DIExpression()), !dbg !2176
  %242 = icmp ult i64 %241, %140, !dbg !2362
  br i1 %242, label %243, label %245, !dbg !2365

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2362
  store i8 34, i8* %244, align 1, !dbg !2362, !tbaa !610
  br label %245, !dbg !2362

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %246, metadata !2124, metadata !DIExpression()), !dbg !2176
  %247 = icmp ult i64 %246, %140, !dbg !2366
  br i1 %247, label %248, label %250, !dbg !2369

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2366
  store i8 63, i8* %249, align 1, !dbg !2366, !tbaa !610
  br label %250, !dbg !2366

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %251, metadata !2124, metadata !DIExpression()), !dbg !2176
  br label %456, !dbg !2370

252:                                              ; preds = %163
  br label %263, !dbg !2371

253:                                              ; preds = %163
  br label %263, !dbg !2372

254:                                              ; preds = %163
  br label %261, !dbg !2373

255:                                              ; preds = %163
  br label %261, !dbg !2374

256:                                              ; preds = %163
  br label %263, !dbg !2375

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2376

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2377

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2380

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2382

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2383
  call void @llvm.dbg.label(metadata !2170), !dbg !2384
  br i1 %128, label %263, label %638, !dbg !2385

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2383
  call void @llvm.dbg.label(metadata !2172), !dbg !2387
  br i1 %118, label %510, label %467, !dbg !2388

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2389

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2390, !tbaa !610
  %268 = icmp eq i8 %267, 0, !dbg !2392
  br i1 %268, label %269, label %456, !dbg !2393

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2394
  br i1 %270, label %271, label %456, !dbg !2396

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2144, metadata !DIExpression()), !dbg !2273
  br label %272, !dbg !2397

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2144, metadata !DIExpression()), !dbg !2273
  br i1 %126, label %274, label %456, !dbg !2398

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2400

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2144, metadata !DIExpression()), !dbg !2273
  br i1 %126, label %276, label %456, !dbg !2401

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2402

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2405
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2407
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2407
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %282, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %281, metadata !2125, metadata !DIExpression()), !dbg !2176
  %283 = icmp ult i64 %134, %282, !dbg !2408
  br i1 %283, label %284, label %286, !dbg !2411

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2408
  store i8 39, i8* %285, align 1, !dbg !2408, !tbaa !610
  br label %286, !dbg !2408

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %287, metadata !2124, metadata !DIExpression()), !dbg !2176
  %288 = icmp ult i64 %287, %282, !dbg !2412
  br i1 %288, label %289, label %291, !dbg !2415

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2412
  store i8 92, i8* %290, align 1, !dbg !2412, !tbaa !610
  br label %291, !dbg !2412

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %292, metadata !2124, metadata !DIExpression()), !dbg !2176
  %293 = icmp ult i64 %292, %282, !dbg !2416
  br i1 %293, label %294, label %296, !dbg !2419

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2416
  store i8 39, i8* %295, align 1, !dbg !2416, !tbaa !610
  br label %296, !dbg !2416

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %297, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %456, !dbg !2420

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2421

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2146, metadata !DIExpression()), !dbg !2422
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2423
  %301 = load i16*, i16** %300, align 8, !dbg !2423, !tbaa !510
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2423
  %304 = load i16, i16* %303, align 2, !dbg !2423, !tbaa !635
  %305 = and i16 %304, 16384, !dbg !2423
  %306 = icmp ne i16 %305, 0, !dbg !2425
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %349, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i1 %350, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  br label %352, !dbg !2426

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2150, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2202, metadata !DIExpression()) #35, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %32, metadata !2210, metadata !DIExpression()) #35, !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #35, !dbg !2431
  call void @llvm.dbg.value(metadata i64 8, metadata !2214, metadata !DIExpression()) #35, !dbg !2431
  store i64 0, i64* %14, align 8, !dbg !2433
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 1, metadata !2149, metadata !DIExpression()), !dbg !2422
  %308 = icmp eq i64 %164, -1, !dbg !2434
  br i1 %308, label %309, label %311, !dbg !2436

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %310, metadata !2117, metadata !DIExpression()), !dbg !2176
  br label %311, !dbg !2438

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2273
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2439
  %313 = sub i64 %312, %139, !dbg !2440
  call void @llvm.dbg.value(metadata i32* %16, metadata !2153, metadata !DIExpression(DW_OP_deref)), !dbg !2441
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %314, metadata !2157, metadata !DIExpression()), !dbg !2441
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2443

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  %316 = icmp ugt i64 %312, %139, !dbg !2444
  br i1 %316, label %319, label %317, !dbg !2446

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %349, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i1 %350, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  br label %352, !dbg !2426

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2422
  br label %346, !dbg !2449

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2146, metadata !DIExpression()), !dbg !2422
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2451
  %323 = load i8, i8* %322, align 1, !dbg !2451, !tbaa !610
  %324 = icmp eq i8 %323, 0, !dbg !2446
  br i1 %324, label %348, label %325, !dbg !2452

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %326, metadata !2146, metadata !DIExpression()), !dbg !2422
  %327 = add i64 %326, %139, !dbg !2454
  %328 = icmp eq i64 %326, %313, !dbg !2444
  br i1 %328, label %348, label %319, !dbg !2446, !llvm.loop !2455

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2456
  call void @llvm.dbg.value(metadata i64 1, metadata !2158, metadata !DIExpression()), !dbg !2457
  br i1 %331, label %332, label %340, !dbg !2456

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2158, metadata !DIExpression()), !dbg !2457
  %334 = add i64 %333, %139, !dbg !2458
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2460
  %336 = load i8, i8* %335, align 1, !dbg !2460, !tbaa !610
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2461

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %338, metadata !2158, metadata !DIExpression()), !dbg !2457
  %339 = icmp eq i64 %338, %314, !dbg !2463
  br i1 %339, label %340, label %332, !dbg !2464, !llvm.loop !2465

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2467, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %341, metadata !2153, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %341, metadata !2469, metadata !DIExpression()) #35, !dbg !2477
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2479
  %343 = icmp ne i32 %342, 0, !dbg !2480
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %314, metadata !2146, metadata !DIExpression()), !dbg !2422
  br label %348, !dbg !2481

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2448
  call void @llvm.dbg.label(metadata !2175), !dbg !2482
  %345 = select i1 %118, i32 4, i32 2, !dbg !2483
  br label %643, !dbg !2483

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %349, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i1 %350, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  br label %352, !dbg !2426

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %349, metadata !2146, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i1 %350, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  %351 = icmp ugt i64 %349, 1, !dbg !2485
  br i1 %351, label %357, label %352, !dbg !2426

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2486
  br i1 %356, label %456, label %357, !dbg !2486

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %361, metadata !2166, metadata !DIExpression()), !dbg !2488
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2489

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2176
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2265
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2490
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2273
  call void @llvm.dbg.value(metadata i8 %369, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %368, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %366, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %364, metadata !2124, metadata !DIExpression()), !dbg !2176
  br i1 %362, label %414, label %370, !dbg !2491

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2496

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2143, metadata !DIExpression()), !dbg !2273
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2499
  br i1 %372, label %389, label %373, !dbg !2499

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2501
  br i1 %374, label %375, label %377, !dbg !2505

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2501
  store i8 39, i8* %376, align 1, !dbg !2501, !tbaa !610
  br label %377, !dbg !2501

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %378, metadata !2124, metadata !DIExpression()), !dbg !2176
  %379 = icmp ult i64 %378, %140, !dbg !2506
  br i1 %379, label %380, label %382, !dbg !2509

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2506
  store i8 36, i8* %381, align 1, !dbg !2506, !tbaa !610
  br label %382, !dbg !2506

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %383, metadata !2124, metadata !DIExpression()), !dbg !2176
  %384 = icmp ult i64 %383, %140, !dbg !2510
  br i1 %384, label %385, label %387, !dbg !2513

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2510
  store i8 39, i8* %386, align 1, !dbg !2510, !tbaa !610
  br label %387, !dbg !2510

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %388, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %389, !dbg !2514

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2176
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %390, metadata !2124, metadata !DIExpression()), !dbg !2176
  %392 = icmp ult i64 %390, %140, !dbg !2515
  br i1 %392, label %393, label %395, !dbg !2518

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2515
  store i8 92, i8* %394, align 1, !dbg !2515, !tbaa !610
  br label %395, !dbg !2515

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %396, metadata !2124, metadata !DIExpression()), !dbg !2176
  %397 = icmp ult i64 %396, %140, !dbg !2519
  br i1 %397, label %398, label %402, !dbg !2522

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2519
  %400 = or i8 %399, 48, !dbg !2519
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2519
  store i8 %400, i8* %401, align 1, !dbg !2519, !tbaa !610
  br label %402, !dbg !2519

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %403, metadata !2124, metadata !DIExpression()), !dbg !2176
  %404 = icmp ult i64 %403, %140, !dbg !2523
  br i1 %404, label %405, label %410, !dbg !2526

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2523
  %407 = and i8 %406, 7, !dbg !2523
  %408 = or i8 %407, 48, !dbg !2523
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2523
  store i8 %408, i8* %409, align 1, !dbg !2523, !tbaa !610
  br label %410, !dbg !2523

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %411, metadata !2124, metadata !DIExpression()), !dbg !2176
  %412 = and i8 %369, 7, !dbg !2527
  %413 = or i8 %412, 48, !dbg !2528
  call void @llvm.dbg.value(metadata i8 %413, metadata !2145, metadata !DIExpression()), !dbg !2273
  br label %421, !dbg !2529

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2530

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2531
  br i1 %416, label %417, label %419, !dbg !2536

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2531
  store i8 92, i8* %418, align 1, !dbg !2531, !tbaa !610
  br label %419, !dbg !2531

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %420, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2140, metadata !DIExpression()), !dbg !2273
  br label %421, !dbg !2537

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2176
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2273
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2273
  call void @llvm.dbg.value(metadata i8 %426, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %425, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %422, metadata !2124, metadata !DIExpression()), !dbg !2176
  %427 = add i64 %366, 1, !dbg !2538
  %428 = icmp ugt i64 %361, %427, !dbg !2540
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2541

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2542
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2542
  br i1 %432, label %433, label %444, !dbg !2542

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2545
  br i1 %434, label %435, label %437, !dbg !2549

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2545
  store i8 39, i8* %436, align 1, !dbg !2545, !tbaa !610
  br label %437, !dbg !2545

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %438, metadata !2124, metadata !DIExpression()), !dbg !2176
  %439 = icmp ult i64 %438, %140, !dbg !2550
  br i1 %439, label %440, label %442, !dbg !2553

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2550
  store i8 39, i8* %441, align 1, !dbg !2550, !tbaa !610
  br label %442, !dbg !2550

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %443, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %444, !dbg !2554

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2555
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %445, metadata !2124, metadata !DIExpression()), !dbg !2176
  %447 = icmp ult i64 %445, %140, !dbg !2556
  br i1 %447, label %448, label %450, !dbg !2559

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2556
  store i8 %426, i8* %449, align 1, !dbg !2556, !tbaa !610
  br label %450, !dbg !2556

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %451, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %427, metadata !2138, metadata !DIExpression()), !dbg !2265
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2560
  %453 = load i8, i8* %452, align 1, !dbg !2560, !tbaa !610
  call void @llvm.dbg.value(metadata i8 %453, metadata !2145, metadata !DIExpression()), !dbg !2273
  br label %363, !dbg !2561, !llvm.loop !2562

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i1 %358, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %425, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %366, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %422, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %360, metadata !2117, metadata !DIExpression()), !dbg !2176
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2565
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2176
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2180
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2265
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2273
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %465, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2140, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %462, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %459, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %458, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %457, metadata !2117, metadata !DIExpression()), !dbg !2176
  br i1 %121, label %478, label %467, !dbg !2566

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
  br i1 %131, label %479, label %499, !dbg !2568

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2569

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
  %490 = lshr i8 %481, 5, !dbg !2570
  %491 = zext i8 %490 to i64, !dbg !2570
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2571
  %493 = load i32, i32* %492, align 4, !dbg !2571, !tbaa !601
  %494 = and i8 %481, 31, !dbg !2572
  %495 = zext i8 %494 to i32, !dbg !2572
  %496 = shl nuw i32 1, %495, !dbg !2573
  %497 = and i32 %493, %496, !dbg !2573
  %498 = icmp eq i32 %497, 0, !dbg !2573
  br i1 %498, label %499, label %510, !dbg !2574

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
  br i1 %165, label %510, label %546, !dbg !2575

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2565
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2176
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2180
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2576
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2273
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %518, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %516, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %513, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %512, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %511, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.label(metadata !2173), !dbg !2577
  br i1 %119, label %638, label %520, !dbg !2578

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2143, metadata !DIExpression()), !dbg !2273
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2580
  br i1 %521, label %538, label %522, !dbg !2580

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2582
  br i1 %523, label %524, label %526, !dbg !2586

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2582
  store i8 39, i8* %525, align 1, !dbg !2582, !tbaa !610
  br label %526, !dbg !2582

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %527, metadata !2124, metadata !DIExpression()), !dbg !2176
  %528 = icmp ult i64 %527, %519, !dbg !2587
  br i1 %528, label %529, label %531, !dbg !2590

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2587
  store i8 36, i8* %530, align 1, !dbg !2587, !tbaa !610
  br label %531, !dbg !2587

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %532, metadata !2124, metadata !DIExpression()), !dbg !2176
  %533 = icmp ult i64 %532, %519, !dbg !2591
  br i1 %533, label %534, label %536, !dbg !2594

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2591
  store i8 39, i8* %535, align 1, !dbg !2591, !tbaa !610
  br label %536, !dbg !2591

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %537, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %538, !dbg !2595

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2273
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %539, metadata !2124, metadata !DIExpression()), !dbg !2176
  %541 = icmp ult i64 %539, %519, !dbg !2596
  br i1 %541, label %542, label %544, !dbg !2599

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2596
  store i8 92, i8* %543, align 1, !dbg !2596, !tbaa !610
  br label %544, !dbg !2596

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %556, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %555, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %552, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %549, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %548, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %547, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.label(metadata !2174), !dbg !2600
  br label %570, !dbg !2601

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2565
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2176
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2180
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2576
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2604
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %555, metadata !2145, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %552, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %549, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %548, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %547, metadata !2117, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.label(metadata !2174), !dbg !2600
  %557 = xor i1 %551, true, !dbg !2601
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2601
  br i1 %558, label %570, label %559, !dbg !2601

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2605
  br i1 %560, label %561, label %563, !dbg !2609

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2605
  store i8 39, i8* %562, align 1, !dbg !2605, !tbaa !610
  br label %563, !dbg !2605

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %564, metadata !2124, metadata !DIExpression()), !dbg !2176
  %565 = icmp ult i64 %564, %556, !dbg !2610
  br i1 %565, label %566, label %568, !dbg !2613

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2610
  store i8 39, i8* %567, align 1, !dbg !2610, !tbaa !610
  br label %568, !dbg !2610

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %569, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2176
  br label %570, !dbg !2614

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2273
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %578, metadata !2124, metadata !DIExpression()), !dbg !2176
  %580 = icmp ult i64 %578, %571, !dbg !2615
  br i1 %580, label %581, label %583, !dbg !2618

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2615
  store i8 %572, i8* %582, align 1, !dbg !2615, !tbaa !610
  br label %583, !dbg !2615

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %584, metadata !2124, metadata !DIExpression()), !dbg !2176
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2619
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2176
  br label %586, !dbg !2620

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2565
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2176
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2180
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2576
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %593, metadata !2138, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %589, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %588, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %587, metadata !2117, metadata !DIExpression()), !dbg !2176
  %595 = add i64 %593, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %595, metadata !2138, metadata !DIExpression()), !dbg !2265
  br label %132, !dbg !2622, !llvm.loop !2623

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2115, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !2130, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 undef, metadata !2125, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 undef, metadata !2124, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 undef, metadata !2117, metadata !DIExpression()), !dbg !2176
  %597 = icmp eq i64 %134, 0, !dbg !2625
  %598 = and i1 %126, %597, !dbg !2627
  %599 = and i1 %598, %119, !dbg !2627
  br i1 %599, label %638, label %600, !dbg !2627

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2628
  %602 = or i1 %119, %601, !dbg !2628
  %603 = xor i1 %136, true, !dbg !2628
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2628
  br i1 %604, label %612, label %605, !dbg !2628

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2630

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2632
  br label %653, !dbg !2634

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2635
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2637
  br i1 %611, label %36, label %612, !dbg !2637

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2638
  %615 = or i1 %614, %613, !dbg !2640
  br i1 %615, label %631, label %616, !dbg !2640

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2126, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %134, metadata !2124, metadata !DIExpression()), !dbg !2176
  %617 = load i8, i8* %116, align 1, !dbg !2641, !tbaa !610
  %618 = icmp eq i8 %617, 0, !dbg !2644
  br i1 %618, label %631, label %619, !dbg !2644

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2126, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %622, metadata !2124, metadata !DIExpression()), !dbg !2176
  %623 = icmp ult i64 %622, %140, !dbg !2645
  br i1 %623, label %624, label %626, !dbg !2648

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2645
  store i8 %620, i8* %625, align 1, !dbg !2645, !tbaa !610
  br label %626, !dbg !2645

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %627, metadata !2124, metadata !DIExpression()), !dbg !2176
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %628, metadata !2126, metadata !DIExpression()), !dbg !2176
  %629 = load i8, i8* %628, align 1, !dbg !2641, !tbaa !610
  %630 = icmp eq i8 %629, 0, !dbg !2644
  br i1 %630, label %631, label %619, !dbg !2644, !llvm.loop !2650

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2252
  call void @llvm.dbg.value(metadata i64 %632, metadata !2124, metadata !DIExpression()), !dbg !2176
  %633 = icmp ult i64 %632, %140, !dbg !2652
  br i1 %633, label %634, label %653, !dbg !2654

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2655
  store i8 0, i8* %635, align 1, !dbg !2656, !tbaa !610
  br label %653, !dbg !2655

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2175), !dbg !2482
  %637 = icmp eq i32 %112, 2, !dbg !2657
  br i1 %637, label %643, label %647, !dbg !2483

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2175), !dbg !2482
  %641 = icmp eq i32 %112, 2, !dbg !2657
  %642 = select i1 %118, i32 4, i32 2, !dbg !2483
  br i1 %641, label %643, label %647, !dbg !2483

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2483

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2118, metadata !DIExpression()), !dbg !2176
  %651 = and i32 %5, -3, !dbg !2658
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2659
  br label %653, !dbg !2660

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2661
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2662 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2664 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()) #35, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2677, metadata !DIExpression()) #35, !dbg !2685
  call void @llvm.dbg.value(metadata i64* null, metadata !2678, metadata !DIExpression()) #35, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2679, metadata !DIExpression()) #35, !dbg !2685
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2687
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2680, metadata !DIExpression()) #35, !dbg !2685
  %6 = tail call i32* @__errno_location() #38, !dbg !2688
  %7 = load i32, i32* %6, align 4, !dbg !2688, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %7, metadata !2681, metadata !DIExpression()) #35, !dbg !2685
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2689
  %9 = load i32, i32* %8, align 4, !dbg !2689, !tbaa !2058
  %10 = or i32 %9, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i32 %10, metadata !2682, metadata !DIExpression()) #35, !dbg !2685
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2691
  %12 = load i32, i32* %11, align 8, !dbg !2691, !tbaa !2007
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2692
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2693
  %15 = load i8*, i8** %14, align 8, !dbg !2693, !tbaa !2080
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2694
  %17 = load i8*, i8** %16, align 8, !dbg !2694, !tbaa !2083
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2695
  %19 = add i64 %18, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %19, metadata !2683, metadata !DIExpression()) #35, !dbg !2685
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #43, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %20, metadata !2684, metadata !DIExpression()) #35, !dbg !2685
  %21 = load i32, i32* %11, align 8, !dbg !2698, !tbaa !2007
  %22 = load i8*, i8** %14, align 8, !dbg !2699, !tbaa !2080
  %23 = load i8*, i8** %16, align 8, !dbg !2700, !tbaa !2083
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2701
  store i32 %7, i32* %6, align 4, !dbg !2702, !tbaa !601
  ret i8* %20, !dbg !2703
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2677, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64* %2, metadata !2678, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2679, metadata !DIExpression()), !dbg !2704
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2705
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2680, metadata !DIExpression()), !dbg !2704
  %7 = tail call i32* @__errno_location() #38, !dbg !2706
  %8 = load i32, i32* %7, align 4, !dbg !2706, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %8, metadata !2681, metadata !DIExpression()), !dbg !2704
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2707
  %10 = load i32, i32* %9, align 4, !dbg !2707, !tbaa !2058
  %11 = icmp eq i64* %2, null, !dbg !2708
  %12 = zext i1 %11 to i32, !dbg !2708
  %13 = or i32 %10, %12, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %13, metadata !2682, metadata !DIExpression()), !dbg !2704
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2710
  %15 = load i32, i32* %14, align 8, !dbg !2710, !tbaa !2007
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2711
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2712
  %18 = load i8*, i8** %17, align 8, !dbg !2712, !tbaa !2080
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2713
  %20 = load i8*, i8** %19, align 8, !dbg !2713, !tbaa !2083
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2714
  %22 = add i64 %21, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %22, metadata !2683, metadata !DIExpression()), !dbg !2704
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #43, !dbg !2716
  call void @llvm.dbg.value(metadata i8* %23, metadata !2684, metadata !DIExpression()), !dbg !2704
  %24 = load i32, i32* %14, align 8, !dbg !2717, !tbaa !2007
  %25 = load i8*, i8** %17, align 8, !dbg !2718, !tbaa !2080
  %26 = load i8*, i8** %19, align 8, !dbg !2719, !tbaa !2083
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2720
  store i32 %8, i32* %7, align 4, !dbg !2721, !tbaa !601
  br i1 %11, label %29, label %28, !dbg !2722

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2723, !tbaa !2725
  br label %29, !dbg !2726

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2727
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2728 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2733, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 1, metadata !2731, metadata !DIExpression()), !dbg !2735
  %2 = load i32, i32* @nslots, align 4, !tbaa !601
  call void @llvm.dbg.value(metadata i32 1, metadata !2731, metadata !DIExpression()), !dbg !2735
  %3 = icmp sgt i32 %2, 1, !dbg !2736
  br i1 %3, label %4, label %6, !dbg !2738

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2736
  br label %10, !dbg !2738

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2739
  %8 = load i8*, i8** %7, align 8, !dbg !2739, !tbaa !2741
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2743
  br i1 %9, label %17, label %16, !dbg !2744

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2731, metadata !DIExpression()), !dbg !2735
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2745
  %13 = load i8*, i8** %12, align 8, !dbg !2745, !tbaa !2741
  tail call void @free(i8* noundef %13) #35, !dbg !2746
  %14 = add nuw nsw i64 %11, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %14, metadata !2731, metadata !DIExpression()), !dbg !2735
  %15 = icmp eq i64 %14, %5, !dbg !2736
  br i1 %15, label %6, label %10, !dbg !2738, !llvm.loop !2748

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2750
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2752, !tbaa !2753
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2754, !tbaa !2741
  br label %17, !dbg !2755

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2756
  br i1 %18, label %21, label %19, !dbg !2758

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2759
  tail call void @free(i8* noundef %20) #35, !dbg !2761
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2762, !tbaa !510
  br label %21, !dbg !2763

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2764, !tbaa !601
  ret void, !dbg !2765
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %1, metadata !2769, metadata !DIExpression()), !dbg !2770
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2771
  ret i8* %3, !dbg !2772
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2773 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2777, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %2, metadata !2779, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2780, metadata !DIExpression()), !dbg !2793
  %6 = tail call i32* @__errno_location() #38, !dbg !2794
  %7 = load i32, i32* %6, align 4, !dbg !2794, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %7, metadata !2781, metadata !DIExpression()), !dbg !2793
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2795, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2782, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2783, metadata !DIExpression()), !dbg !2793
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2796
  br i1 %9, label %10, label %11, !dbg !2796

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2798
  unreachable, !dbg !2798

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2799, !tbaa !601
  %13 = icmp sgt i32 %12, %0, !dbg !2800
  br i1 %13, label %36, label %14, !dbg !2801

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2802
  call void @llvm.dbg.value(metadata i1 %15, metadata !2784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2803
  %16 = bitcast i64* %5 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2804
  %17 = sext i32 %12 to i64, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %17, metadata !2787, metadata !DIExpression()), !dbg !2803
  store i64 %17, i64* %5, align 8, !dbg !2806, !tbaa !2725
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2807
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2807
  %20 = add nuw nsw i32 %0, 1, !dbg !2808
  %21 = sub i32 %20, %12, !dbg !2809
  %22 = sext i32 %21 to i64, !dbg !2810
  call void @llvm.dbg.value(metadata i64* %5, metadata !2787, metadata !DIExpression(DW_OP_deref)), !dbg !2803
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2811
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2782, metadata !DIExpression()), !dbg !2793
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2812, !tbaa !510
  br i1 %15, label %25, label %26, !dbg !2813

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2814, !tbaa.struct !2816
  br label %26, !dbg !2817

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !601
  %28 = sext i32 %27 to i64, !dbg !2819
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2819
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2820
  %31 = load i64, i64* %5, align 8, !dbg !2821, !tbaa !2725
  call void @llvm.dbg.value(metadata i64 %31, metadata !2787, metadata !DIExpression()), !dbg !2803
  %32 = sub nsw i64 %31, %28, !dbg !2822
  %33 = shl i64 %32, 4, !dbg !2823
  call void @llvm.dbg.value(metadata i8* %30, metadata !2210, metadata !DIExpression()) #35, !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #35, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %33, metadata !2214, metadata !DIExpression()) #35, !dbg !2824
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2826
  %34 = load i64, i64* %5, align 8, !dbg !2827, !tbaa !2725
  call void @llvm.dbg.value(metadata i64 %34, metadata !2787, metadata !DIExpression()), !dbg !2803
  %35 = trunc i64 %34 to i32, !dbg !2827
  store i32 %35, i32* @nslots, align 4, !dbg !2828, !tbaa !601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2829
  br label %36, !dbg !2830

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2793
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2782, metadata !DIExpression()), !dbg !2793
  %38 = zext i32 %0 to i64, !dbg !2831
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2832
  %40 = load i64, i64* %39, align 8, !dbg !2832, !tbaa !2753
  call void @llvm.dbg.value(metadata i64 %40, metadata !2788, metadata !DIExpression()), !dbg !2833
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2834
  %42 = load i8*, i8** %41, align 8, !dbg !2834, !tbaa !2741
  call void @llvm.dbg.value(metadata i8* %42, metadata !2790, metadata !DIExpression()), !dbg !2833
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2835
  %44 = load i32, i32* %43, align 4, !dbg !2835, !tbaa !2058
  %45 = or i32 %44, 1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %45, metadata !2791, metadata !DIExpression()), !dbg !2833
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2837
  %47 = load i32, i32* %46, align 8, !dbg !2837, !tbaa !2007
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2838
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2839
  %50 = load i8*, i8** %49, align 8, !dbg !2839, !tbaa !2080
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2840
  %52 = load i8*, i8** %51, align 8, !dbg !2840, !tbaa !2083
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %53, metadata !2792, metadata !DIExpression()), !dbg !2833
  %54 = icmp ugt i64 %40, %53, !dbg !2842
  br i1 %54, label %65, label %55, !dbg !2844

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %56, metadata !2788, metadata !DIExpression()), !dbg !2833
  store i64 %56, i64* %39, align 8, !dbg !2847, !tbaa !2753
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2848
  br i1 %57, label %59, label %58, !dbg !2850

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2851
  br label %59, !dbg !2851

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #43, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %60, metadata !2790, metadata !DIExpression()), !dbg !2833
  store i8* %60, i8** %41, align 8, !dbg !2853, !tbaa !2741
  %61 = load i32, i32* %46, align 8, !dbg !2854, !tbaa !2007
  %62 = load i8*, i8** %49, align 8, !dbg !2855, !tbaa !2080
  %63 = load i8*, i8** %51, align 8, !dbg !2856, !tbaa !2083
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2857
  br label %65, !dbg !2858

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2833
  call void @llvm.dbg.value(metadata i8* %66, metadata !2790, metadata !DIExpression()), !dbg !2833
  store i32 %7, i32* %6, align 4, !dbg !2859, !tbaa !601
  ret i8* %66, !dbg !2860
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2867, metadata !DIExpression()), !dbg !2868
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2869
  ret i8* %4, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2768, metadata !DIExpression()) #35, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()) #35, !dbg !2875
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2877
  ret i8* %2, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 0, metadata !2865, metadata !DIExpression()) #35, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #35, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()) #35, !dbg !2886
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2888
  ret i8* %3, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2890 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2894, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %1, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %2, metadata !2896, metadata !DIExpression()), !dbg !2898
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2897, metadata !DIExpression()), !dbg !2900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %1, metadata !2905, metadata !DIExpression()) #35, !dbg !2911
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2910, metadata !DIExpression()) #35, !dbg !2913
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2913, !alias.scope !2901
  %6 = icmp eq i32 %1, 10, !dbg !2914
  br i1 %6, label %7, label %8, !dbg !2916

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2917, !noalias !2901
  unreachable, !dbg !2917

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2918
  store i32 %1, i32* %9, align 8, !dbg !2919, !tbaa !2007, !alias.scope !2901
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2921
  ret i8* %10, !dbg !2922
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2923 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2927, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %1, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %2, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %3, metadata !2930, metadata !DIExpression()), !dbg !2932
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2933
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2931, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %1, metadata !2905, metadata !DIExpression()) #35, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2910, metadata !DIExpression()) #35, !dbg !2941
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2941, !alias.scope !2935
  %7 = icmp eq i32 %1, 10, !dbg !2942
  br i1 %7, label %8, label %9, !dbg !2943

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2944, !noalias !2935
  unreachable, !dbg !2944

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2945
  store i32 %1, i32* %10, align 8, !dbg !2946, !tbaa !2007, !alias.scope !2935
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2948
  ret i8* %11, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2950 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %1, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2894, metadata !DIExpression()) #35, !dbg !2957
  call void @llvm.dbg.value(metadata i32 %0, metadata !2895, metadata !DIExpression()) #35, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %1, metadata !2896, metadata !DIExpression()) #35, !dbg !2957
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2897, metadata !DIExpression()) #35, !dbg !2960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961) #35, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()) #35, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2910, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2967, !alias.scope !2961
  %5 = icmp eq i32 %0, 10, !dbg !2968
  br i1 %5, label %6, label %7, !dbg !2969

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2970, !noalias !2961
  unreachable, !dbg !2970

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2971
  store i32 %0, i32* %8, align 8, !dbg !2972, !tbaa !2007, !alias.scope !2961
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2974
  ret i8* %9, !dbg !2975
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2976 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %2, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 0, metadata !2927, metadata !DIExpression()) #35, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()) #35, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %1, metadata !2929, metadata !DIExpression()) #35, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %2, metadata !2930, metadata !DIExpression()) #35, !dbg !2984
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2986
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression()) #35, !dbg !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988) #35, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()) #35, !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2910, metadata !DIExpression()) #35, !dbg !2994
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2994, !alias.scope !2988
  %6 = icmp eq i32 %0, 10, !dbg !2995
  br i1 %6, label %7, label %8, !dbg !2996

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2997, !noalias !2988
  unreachable, !dbg !2997

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2998
  store i32 %0, i32* %9, align 8, !dbg !2999, !tbaa !2007, !alias.scope !2988
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3001
  ret i8* %10, !dbg !3002
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3003 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8 %2, metadata !3009, metadata !DIExpression()), !dbg !3011
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3012
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3010, metadata !DIExpression()), !dbg !3013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3014, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2025, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %2, metadata !2026, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %2, metadata !2028, metadata !DIExpression()), !dbg !3016
  %6 = lshr i8 %2, 5, !dbg !3018
  %7 = zext i8 %6 to i64, !dbg !3018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3019
  call void @llvm.dbg.value(metadata i32* %8, metadata !2029, metadata !DIExpression()), !dbg !3016
  %9 = and i8 %2, 31, !dbg !3020
  %10 = zext i8 %9 to i32, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %10, metadata !2031, metadata !DIExpression()), !dbg !3016
  %11 = load i32, i32* %8, align 4, !dbg !3021, !tbaa !601
  %12 = lshr i32 %11, %10, !dbg !3022
  %13 = and i32 %12, 1, !dbg !3023
  call void @llvm.dbg.value(metadata i32 %13, metadata !2032, metadata !DIExpression()), !dbg !3016
  %14 = xor i32 %13, 1, !dbg !3024
  %15 = shl i32 %14, %10, !dbg !3025
  %16 = xor i32 %15, %11, !dbg !3026
  store i32 %16, i32* %8, align 4, !dbg !3026, !tbaa !601
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3027
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3028
  ret i8* %17, !dbg !3029
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3030 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %1, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()) #35, !dbg !3037
  call void @llvm.dbg.value(metadata i64 -1, metadata !3008, metadata !DIExpression()) #35, !dbg !3037
  call void @llvm.dbg.value(metadata i8 %1, metadata !3009, metadata !DIExpression()) #35, !dbg !3037
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3039
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3039
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3010, metadata !DIExpression()) #35, !dbg !3040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3041, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2025, metadata !DIExpression()) #35, !dbg !3042
  call void @llvm.dbg.value(metadata i8 %1, metadata !2026, metadata !DIExpression()) #35, !dbg !3042
  call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()) #35, !dbg !3042
  call void @llvm.dbg.value(metadata i8 %1, metadata !2028, metadata !DIExpression()) #35, !dbg !3042
  %5 = lshr i8 %1, 5, !dbg !3044
  %6 = zext i8 %5 to i64, !dbg !3044
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3045
  call void @llvm.dbg.value(metadata i32* %7, metadata !2029, metadata !DIExpression()) #35, !dbg !3042
  %8 = and i8 %1, 31, !dbg !3046
  %9 = zext i8 %8 to i32, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %9, metadata !2031, metadata !DIExpression()) #35, !dbg !3042
  %10 = load i32, i32* %7, align 4, !dbg !3047, !tbaa !601
  %11 = lshr i32 %10, %9, !dbg !3048
  %12 = and i32 %11, 1, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %12, metadata !2032, metadata !DIExpression()) #35, !dbg !3042
  %13 = xor i32 %12, 1, !dbg !3050
  %14 = shl i32 %13, %9, !dbg !3051
  %15 = xor i32 %14, %10, !dbg !3052
  store i32 %15, i32* %7, align 4, !dbg !3052, !tbaa !601
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3054
  ret i8* %16, !dbg !3055
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3056 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()) #35, !dbg !3060
  call void @llvm.dbg.value(metadata i8 58, metadata !3035, metadata !DIExpression()) #35, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()) #35, !dbg !3062
  call void @llvm.dbg.value(metadata i64 -1, metadata !3008, metadata !DIExpression()) #35, !dbg !3062
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()) #35, !dbg !3062
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3064
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3010, metadata !DIExpression()) #35, !dbg !3065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3066, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2025, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.dbg.value(metadata i8 58, metadata !2026, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.dbg.value(metadata i8 58, metadata !2028, metadata !DIExpression()) #35, !dbg !3067
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3069
  call void @llvm.dbg.value(metadata i32* %4, metadata !2029, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.dbg.value(metadata i32 26, metadata !2031, metadata !DIExpression()) #35, !dbg !3067
  %5 = load i32, i32* %4, align 4, !dbg !3070, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %5, metadata !2032, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3067
  %6 = or i32 %5, 67108864, !dbg !3071
  store i32 %6, i32* %4, align 4, !dbg !3071, !tbaa !601
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3073
  ret i8* %7, !dbg !3074
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3075 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()) #35, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()) #35, !dbg !3080
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()) #35, !dbg !3080
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3010, metadata !DIExpression()) #35, !dbg !3083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3084, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2025, metadata !DIExpression()) #35, !dbg !3085
  call void @llvm.dbg.value(metadata i8 58, metadata !2026, metadata !DIExpression()) #35, !dbg !3085
  call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()) #35, !dbg !3085
  call void @llvm.dbg.value(metadata i8 58, metadata !2028, metadata !DIExpression()) #35, !dbg !3085
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3087
  call void @llvm.dbg.value(metadata i32* %5, metadata !2029, metadata !DIExpression()) #35, !dbg !3085
  call void @llvm.dbg.value(metadata i32 26, metadata !2031, metadata !DIExpression()) #35, !dbg !3085
  %6 = load i32, i32* %5, align 4, !dbg !3088, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %6, metadata !2032, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3085
  %7 = or i32 %6, 67108864, !dbg !3089
  store i32 %7, i32* %5, align 4, !dbg !3089, !tbaa !601
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3090
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3091
  ret i8* %8, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3093 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3095, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %2, metadata !3097, metadata !DIExpression()), !dbg !3099
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3100
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %1, metadata !2905, metadata !DIExpression()) #35, !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !2910, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3102
  %6 = icmp eq i32 %1, 10, !dbg !3104
  br i1 %6, label %7, label %8, !dbg !3105

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3106, !noalias !3107
  unreachable, !dbg !3106

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2910, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3102
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3110
  store i32 %1, i32* %9, align 8, !dbg !3110, !tbaa.struct !3015
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3110
  %11 = bitcast i32* %10 to i8*, !dbg !3110
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2025, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2026, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2028, metadata !DIExpression()), !dbg !3111
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %12, metadata !2029, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 26, metadata !2031, metadata !DIExpression()), !dbg !3111
  %13 = load i32, i32* %12, align 4, !dbg !3114, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %13, metadata !2032, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3111
  %14 = or i32 %13, 67108864, !dbg !3115
  store i32 %14, i32* %12, align 4, !dbg !3115, !tbaa !601
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3117
  ret i8* %15, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3119 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %1, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %2, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %3, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %0, metadata !3128, metadata !DIExpression()) #35, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3133, metadata !DIExpression()) #35, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %2, metadata !3134, metadata !DIExpression()) #35, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %3, metadata !3135, metadata !DIExpression()) #35, !dbg !3138
  call void @llvm.dbg.value(metadata i64 -1, metadata !3136, metadata !DIExpression()) #35, !dbg !3138
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3140
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3137, metadata !DIExpression()) #35, !dbg !3141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3142, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2065, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %1, metadata !2066, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %2, metadata !2067, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2065, metadata !DIExpression()) #35, !dbg !3143
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3145
  store i32 10, i32* %7, align 8, !dbg !3146, !tbaa !2007
  %8 = icmp ne i8* %1, null, !dbg !3147
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3148
  br i1 %10, label %12, label %11, !dbg !3148

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3149
  unreachable, !dbg !3149

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3150
  store i8* %1, i8** %13, align 8, !dbg !3151, !tbaa !2080
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3152
  store i8* %2, i8** %14, align 8, !dbg !3153, !tbaa !2083
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3154
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3155
  ret i8* %15, !dbg !3156
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3129 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3128, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3133, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %2, metadata !3134, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %3, metadata !3135, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %4, metadata !3136, metadata !DIExpression()), !dbg !3157
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3158
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3137, metadata !DIExpression()), !dbg !3159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3160, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2065, metadata !DIExpression()) #35, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !2066, metadata !DIExpression()) #35, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !2067, metadata !DIExpression()) #35, !dbg !3161
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2065, metadata !DIExpression()) #35, !dbg !3161
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3163
  store i32 10, i32* %8, align 8, !dbg !3164, !tbaa !2007
  %9 = icmp ne i8* %1, null, !dbg !3165
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3166
  br i1 %11, label %13, label %12, !dbg !3166

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3167
  unreachable, !dbg !3167

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3168
  store i8* %1, i8** %14, align 8, !dbg !3169, !tbaa !2080
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3170
  store i8* %2, i8** %15, align 8, !dbg !3171, !tbaa !2083
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3173
  ret i8* %16, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3175 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %2, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3123, metadata !DIExpression()) #35, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !3124, metadata !DIExpression()) #35, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()) #35, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()) #35, !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3133, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %2, metadata !3135, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i64 -1, metadata !3136, metadata !DIExpression()) #35, !dbg !3185
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3137, metadata !DIExpression()) #35, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3189, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2065, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %0, metadata !2066, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %1, metadata !2067, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2065, metadata !DIExpression()) #35, !dbg !3190
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3192
  store i32 10, i32* %6, align 8, !dbg !3193, !tbaa !2007
  %7 = icmp ne i8* %0, null, !dbg !3194
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3195
  br i1 %9, label %11, label %10, !dbg !3195

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3196
  unreachable, !dbg !3196

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3197
  store i8* %0, i8** %12, align 8, !dbg !3198, !tbaa !2080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3199
  store i8* %1, i8** %13, align 8, !dbg !3200, !tbaa !2083
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3202
  ret i8* %14, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3204 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %0, metadata !3133, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !3135, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %3, metadata !3136, metadata !DIExpression()) #35, !dbg !3213
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3137, metadata !DIExpression()) #35, !dbg !3216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3217, !tbaa.struct !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2065, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %0, metadata !2066, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2067, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2065, metadata !DIExpression()) #35, !dbg !3218
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3220
  store i32 10, i32* %7, align 8, !dbg !3221, !tbaa !2007
  %8 = icmp ne i8* %0, null, !dbg !3222
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3223
  br i1 %10, label %12, label %11, !dbg !3223

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3224
  unreachable, !dbg !3224

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3225
  store i8* %0, i8** %13, align 8, !dbg !3226, !tbaa !2080
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3227
  store i8* %1, i8** %14, align 8, !dbg !3228, !tbaa !2083
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3230
  ret i8* %15, !dbg !3231
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %2, metadata !3238, metadata !DIExpression()), !dbg !3239
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3240
  ret i8* %4, !dbg !3241
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()) #35, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %0, metadata !3237, metadata !DIExpression()) #35, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()) #35, !dbg !3249
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3251
  ret i8* %3, !dbg !3252
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i64 -1, metadata !3238, metadata !DIExpression()) #35, !dbg !3260
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3262
  ret i8* %3, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3264 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 0, metadata !3257, metadata !DIExpression()) #35, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %0, metadata !3258, metadata !DIExpression()) #35, !dbg !3270
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()) #35, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !3237, metadata !DIExpression()) #35, !dbg !3272
  call void @llvm.dbg.value(metadata i64 -1, metadata !3238, metadata !DIExpression()) #35, !dbg !3272
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3274
  ret i8* %2, !dbg !3275
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !3276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3278, metadata !DIExpression()), !dbg !3283
  %2 = icmp ult i32 %0, 3, !dbg !3284
  br i1 %2, label %3, label %8, !dbg !3284

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #35, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %4, metadata !3279, metadata !DIExpression()), !dbg !3286
  %5 = tail call i32* @__errno_location() #38, !dbg !3287
  %6 = load i32, i32* %5, align 4, !dbg !3287, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %6, metadata !3282, metadata !DIExpression()), !dbg !3286
  %7 = tail call i32 @close(i32 noundef %0) #35, !dbg !3288
  store i32 %6, i32* %5, align 4, !dbg !3289, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %4, metadata !3278, metadata !DIExpression()), !dbg !3283
  br label %8, !dbg !3290

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3278, metadata !DIExpression()), !dbg !3283
  ret i32 %9, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3292 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3330, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %2, metadata !3332, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %3, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8** %4, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %5, metadata !3335, metadata !DIExpression()), !dbg !3336
  %7 = icmp eq i8* %1, null, !dbg !3337
  br i1 %7, label %10, label %8, !dbg !3339

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3340
  br label %12, !dbg !3340

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3341
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.142, i64 0, i64 0), i32 noundef 5) #35, !dbg !3342
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3342
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3343
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.144, i64 0, i64 0), i32 noundef 5) #35, !dbg !3344
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.145, i64 0, i64 0)) #35, !dbg !3344
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3345
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
  ], !dbg !3346

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.146, i64 0, i64 0), i32 noundef 5) #35, !dbg !3347
  %21 = load i8*, i8** %4, align 8, !dbg !3347, !tbaa !510
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3347
  br label %147, !dbg !3349

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.147, i64 0, i64 0), i32 noundef 5) #35, !dbg !3350
  %25 = load i8*, i8** %4, align 8, !dbg !3350, !tbaa !510
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3350
  %27 = load i8*, i8** %26, align 8, !dbg !3350, !tbaa !510
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3350
  br label %147, !dbg !3351

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !3352
  %31 = load i8*, i8** %4, align 8, !dbg !3352, !tbaa !510
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3352
  %33 = load i8*, i8** %32, align 8, !dbg !3352, !tbaa !510
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3352
  %35 = load i8*, i8** %34, align 8, !dbg !3352, !tbaa !510
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3352
  br label %147, !dbg !3353

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.149, i64 0, i64 0), i32 noundef 5) #35, !dbg !3354
  %39 = load i8*, i8** %4, align 8, !dbg !3354, !tbaa !510
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3354
  %41 = load i8*, i8** %40, align 8, !dbg !3354, !tbaa !510
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3354
  %43 = load i8*, i8** %42, align 8, !dbg !3354, !tbaa !510
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3354
  %45 = load i8*, i8** %44, align 8, !dbg !3354, !tbaa !510
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3354
  br label %147, !dbg !3355

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3356
  %49 = load i8*, i8** %4, align 8, !dbg !3356, !tbaa !510
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3356
  %51 = load i8*, i8** %50, align 8, !dbg !3356, !tbaa !510
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3356
  %53 = load i8*, i8** %52, align 8, !dbg !3356, !tbaa !510
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3356
  %55 = load i8*, i8** %54, align 8, !dbg !3356, !tbaa !510
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3356
  %57 = load i8*, i8** %56, align 8, !dbg !3356, !tbaa !510
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3356
  br label %147, !dbg !3357

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.151, i64 0, i64 0), i32 noundef 5) #35, !dbg !3358
  %61 = load i8*, i8** %4, align 8, !dbg !3358, !tbaa !510
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3358
  %63 = load i8*, i8** %62, align 8, !dbg !3358, !tbaa !510
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3358
  %65 = load i8*, i8** %64, align 8, !dbg !3358, !tbaa !510
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3358
  %67 = load i8*, i8** %66, align 8, !dbg !3358, !tbaa !510
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3358
  %69 = load i8*, i8** %68, align 8, !dbg !3358, !tbaa !510
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3358
  %71 = load i8*, i8** %70, align 8, !dbg !3358, !tbaa !510
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3358
  br label %147, !dbg !3359

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.152, i64 0, i64 0), i32 noundef 5) #35, !dbg !3360
  %75 = load i8*, i8** %4, align 8, !dbg !3360, !tbaa !510
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3360
  %77 = load i8*, i8** %76, align 8, !dbg !3360, !tbaa !510
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3360
  %79 = load i8*, i8** %78, align 8, !dbg !3360, !tbaa !510
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3360
  %81 = load i8*, i8** %80, align 8, !dbg !3360, !tbaa !510
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3360
  %83 = load i8*, i8** %82, align 8, !dbg !3360, !tbaa !510
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3360
  %85 = load i8*, i8** %84, align 8, !dbg !3360, !tbaa !510
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3360
  %87 = load i8*, i8** %86, align 8, !dbg !3360, !tbaa !510
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3360
  br label %147, !dbg !3361

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.153, i64 0, i64 0), i32 noundef 5) #35, !dbg !3362
  %91 = load i8*, i8** %4, align 8, !dbg !3362, !tbaa !510
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3362
  %93 = load i8*, i8** %92, align 8, !dbg !3362, !tbaa !510
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3362
  %95 = load i8*, i8** %94, align 8, !dbg !3362, !tbaa !510
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3362
  %97 = load i8*, i8** %96, align 8, !dbg !3362, !tbaa !510
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3362
  %99 = load i8*, i8** %98, align 8, !dbg !3362, !tbaa !510
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3362
  %101 = load i8*, i8** %100, align 8, !dbg !3362, !tbaa !510
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3362
  %103 = load i8*, i8** %102, align 8, !dbg !3362, !tbaa !510
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3362
  %105 = load i8*, i8** %104, align 8, !dbg !3362, !tbaa !510
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3362
  br label %147, !dbg !3363

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.154, i64 0, i64 0), i32 noundef 5) #35, !dbg !3364
  %109 = load i8*, i8** %4, align 8, !dbg !3364, !tbaa !510
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3364
  %111 = load i8*, i8** %110, align 8, !dbg !3364, !tbaa !510
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3364
  %113 = load i8*, i8** %112, align 8, !dbg !3364, !tbaa !510
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3364
  %115 = load i8*, i8** %114, align 8, !dbg !3364, !tbaa !510
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3364
  %117 = load i8*, i8** %116, align 8, !dbg !3364, !tbaa !510
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3364
  %119 = load i8*, i8** %118, align 8, !dbg !3364, !tbaa !510
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3364
  %121 = load i8*, i8** %120, align 8, !dbg !3364, !tbaa !510
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3364
  %123 = load i8*, i8** %122, align 8, !dbg !3364, !tbaa !510
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3364
  %125 = load i8*, i8** %124, align 8, !dbg !3364, !tbaa !510
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3364
  br label %147, !dbg !3365

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !3366
  %129 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !510
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %131 = load i8*, i8** %130, align 8, !dbg !3366, !tbaa !510
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %133 = load i8*, i8** %132, align 8, !dbg !3366, !tbaa !510
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3366
  %135 = load i8*, i8** %134, align 8, !dbg !3366, !tbaa !510
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3366
  %137 = load i8*, i8** %136, align 8, !dbg !3366, !tbaa !510
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3366
  %139 = load i8*, i8** %138, align 8, !dbg !3366, !tbaa !510
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3366
  %141 = load i8*, i8** %140, align 8, !dbg !3366, !tbaa !510
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3366
  %143 = load i8*, i8** %142, align 8, !dbg !3366, !tbaa !510
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3366
  %145 = load i8*, i8** %144, align 8, !dbg !3366, !tbaa !510
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3366
  br label %147, !dbg !3367

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3369 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3373, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8* %1, metadata !3374, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8* %2, metadata !3375, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8* %3, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8** %4, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 0, metadata !3378, metadata !DIExpression()), !dbg !3379
  br label %6, !dbg !3380

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3382
  call void @llvm.dbg.value(metadata i64 %7, metadata !3378, metadata !DIExpression()), !dbg !3379
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3383
  %9 = load i8*, i8** %8, align 8, !dbg !3383, !tbaa !510
  %10 = icmp eq i8* %9, null, !dbg !3385
  %11 = add i64 %7, 1, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %11, metadata !3378, metadata !DIExpression()), !dbg !3379
  br i1 %10, label %12, label %6, !dbg !3385, !llvm.loop !3387

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3389
  ret void, !dbg !3390
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3391 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3406, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %1, metadata !3407, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %2, metadata !3408, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %3, metadata !3409, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3410, metadata !DIExpression()), !dbg !3415
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3416
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3412, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 0, metadata !3411, metadata !DIExpression()), !dbg !3414
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !3418
  %12 = icmp sgt i32 %11, -1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 0, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 0, metadata !3411, metadata !DIExpression()), !dbg !3414
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3418
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3418
  store i8* %15, i8** %10, align 8, !dbg !3418
  %16 = bitcast i8* %14 to i8**, !dbg !3418
  %17 = load i8*, i8** %16, align 8, !dbg !3418
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3421
  store i8* %17, i8** %18, align 8, !dbg !3422, !tbaa !510
  %19 = icmp eq i8* %17, null, !dbg !3423
  br i1 %19, label %265, label %20, !dbg !3424

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !3411, metadata !DIExpression()), !dbg !3414
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3418
  store i8* %21, i8** %10, align 8, !dbg !3418
  %22 = bitcast i8* %15 to i8**, !dbg !3418
  %23 = load i8*, i8** %22, align 8, !dbg !3418
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3421
  store i8* %23, i8** %24, align 8, !dbg !3422, !tbaa !510
  %25 = icmp eq i8* %23, null, !dbg !3423
  br i1 %25, label %265, label %26, !dbg !3424

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !3411, metadata !DIExpression()), !dbg !3414
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !3418
  store i8* %27, i8** %10, align 8, !dbg !3418
  %28 = bitcast i8* %21 to i8**, !dbg !3418
  %29 = load i8*, i8** %28, align 8, !dbg !3418
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3421
  store i8* %29, i8** %30, align 8, !dbg !3422, !tbaa !510
  %31 = icmp eq i8* %29, null, !dbg !3423
  br i1 %31, label %265, label %32, !dbg !3424

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !3411, metadata !DIExpression()), !dbg !3414
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !3418
  store i8* %33, i8** %10, align 8, !dbg !3418
  %34 = bitcast i8* %27 to i8**, !dbg !3418
  %35 = load i8*, i8** %34, align 8, !dbg !3418
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3421
  store i8* %35, i8** %36, align 8, !dbg !3422, !tbaa !510
  %37 = icmp eq i8* %35, null, !dbg !3423
  br i1 %37, label %265, label %38, !dbg !3424

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !3411, metadata !DIExpression()), !dbg !3414
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !3418
  store i8* %39, i8** %10, align 8, !dbg !3418
  %40 = bitcast i8* %33 to i8**, !dbg !3418
  %41 = load i8*, i8** %40, align 8, !dbg !3418
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3421
  store i8* %41, i8** %42, align 8, !dbg !3422, !tbaa !510
  %43 = icmp eq i8* %41, null, !dbg !3423
  br i1 %43, label %265, label %44, !dbg !3424

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !3411, metadata !DIExpression()), !dbg !3414
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !3418
  store i8* %45, i8** %10, align 8, !dbg !3418
  %46 = bitcast i8* %39 to i8**, !dbg !3418
  %47 = load i8*, i8** %46, align 8, !dbg !3418
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3421
  store i8* %47, i8** %48, align 8, !dbg !3422, !tbaa !510
  %49 = icmp eq i8* %47, null, !dbg !3423
  br i1 %49, label %265, label %50, !dbg !3424

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !3411, metadata !DIExpression()), !dbg !3414
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !3418
  store i8* %51, i8** %10, align 8, !dbg !3418
  %52 = bitcast i8* %45 to i8**, !dbg !3418
  %53 = load i8*, i8** %52, align 8, !dbg !3418
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3421
  store i8* %53, i8** %54, align 8, !dbg !3422, !tbaa !510
  %55 = icmp eq i8* %53, null, !dbg !3423
  br i1 %55, label %265, label %56, !dbg !3424

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !3411, metadata !DIExpression()), !dbg !3414
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !3418
  store i8* %57, i8** %10, align 8, !dbg !3418
  %58 = bitcast i8* %51 to i8**, !dbg !3418
  %59 = load i8*, i8** %58, align 8, !dbg !3418
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3421
  store i8* %59, i8** %60, align 8, !dbg !3422, !tbaa !510
  %61 = icmp eq i8* %59, null, !dbg !3423
  br i1 %61, label %265, label %62, !dbg !3424

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !3411, metadata !DIExpression()), !dbg !3414
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !3418
  store i8* %63, i8** %10, align 8, !dbg !3418
  %64 = bitcast i8* %57 to i8**, !dbg !3418
  %65 = load i8*, i8** %64, align 8, !dbg !3418
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3421
  store i8* %65, i8** %66, align 8, !dbg !3422, !tbaa !510
  %67 = icmp eq i8* %65, null, !dbg !3423
  br i1 %67, label %265, label %68, !dbg !3424

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !3411, metadata !DIExpression()), !dbg !3414
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !3418
  store i8* %69, i8** %10, align 8, !dbg !3418
  br label %258, !dbg !3424

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !3418
  store i32 %71, i32* %8, align 8, !dbg !3418
  %72 = icmp ult i32 %11, -7, !dbg !3418
  br i1 %72, label %73, label %77, !dbg !3418

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !3418
  %75 = sext i32 %11 to i64, !dbg !3418
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !3418
  br label %80, !dbg !3418

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3418
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3418
  store i8* %79, i8** %10, align 8, !dbg !3418
  br label %80, !dbg !3418

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !3418
  %83 = load i8*, i8** %82, align 8, !dbg !3418
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3421
  store i8* %83, i8** %84, align 8, !dbg !3422, !tbaa !510
  %85 = icmp eq i8* %83, null, !dbg !3423
  br i1 %85, label %265, label %86, !dbg !3424

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !3411, metadata !DIExpression()), !dbg !3414
  %87 = icmp sgt i32 %11, -9, !dbg !3418
  br i1 %87, label %95, label %88, !dbg !3418

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !3418
  store i32 %89, i32* %8, align 8, !dbg !3418
  %90 = icmp ult i32 %71, -7, !dbg !3418
  br i1 %90, label %91, label %95, !dbg !3418

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !3418
  %93 = sext i32 %71 to i64, !dbg !3418
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !3418
  br label %99, !dbg !3418

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !3418
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3418
  store i8* %98, i8** %10, align 8, !dbg !3418
  br label %99, !dbg !3418

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !3418
  %103 = load i8*, i8** %102, align 8, !dbg !3418
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3421
  store i8* %103, i8** %104, align 8, !dbg !3422, !tbaa !510
  %105 = icmp eq i8* %103, null, !dbg !3423
  br i1 %105, label %265, label %106, !dbg !3424

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !3411, metadata !DIExpression()), !dbg !3414
  %107 = icmp sgt i32 %100, -1, !dbg !3418
  br i1 %107, label %115, label %108, !dbg !3418

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !3418
  store i32 %109, i32* %8, align 8, !dbg !3418
  %110 = icmp ult i32 %100, -7, !dbg !3418
  br i1 %110, label %111, label %115, !dbg !3418

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !3418
  %113 = sext i32 %100 to i64, !dbg !3418
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !3418
  br label %119, !dbg !3418

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !3418
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !3418
  store i8* %118, i8** %10, align 8, !dbg !3418
  br label %119, !dbg !3418

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !3418
  %123 = load i8*, i8** %122, align 8, !dbg !3418
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3421
  store i8* %123, i8** %124, align 8, !dbg !3422, !tbaa !510
  %125 = icmp eq i8* %123, null, !dbg !3423
  br i1 %125, label %265, label %126, !dbg !3424

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !3411, metadata !DIExpression()), !dbg !3414
  %127 = icmp sgt i32 %120, -1, !dbg !3418
  br i1 %127, label %135, label %128, !dbg !3418

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !3418
  store i32 %129, i32* %8, align 8, !dbg !3418
  %130 = icmp ult i32 %120, -7, !dbg !3418
  br i1 %130, label %131, label %135, !dbg !3418

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !3418
  %133 = sext i32 %120 to i64, !dbg !3418
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !3418
  br label %139, !dbg !3418

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !3418
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !3418
  store i8* %138, i8** %10, align 8, !dbg !3418
  br label %139, !dbg !3418

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !3418
  %143 = load i8*, i8** %142, align 8, !dbg !3418
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3421
  store i8* %143, i8** %144, align 8, !dbg !3422, !tbaa !510
  %145 = icmp eq i8* %143, null, !dbg !3423
  br i1 %145, label %265, label %146, !dbg !3424

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !3411, metadata !DIExpression()), !dbg !3414
  %147 = icmp sgt i32 %140, -1, !dbg !3418
  br i1 %147, label %155, label %148, !dbg !3418

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !3418
  store i32 %149, i32* %8, align 8, !dbg !3418
  %150 = icmp ult i32 %140, -7, !dbg !3418
  br i1 %150, label %151, label %155, !dbg !3418

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !3418
  %153 = sext i32 %140 to i64, !dbg !3418
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !3418
  br label %159, !dbg !3418

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !3418
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !3418
  store i8* %158, i8** %10, align 8, !dbg !3418
  br label %159, !dbg !3418

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !3418
  %163 = load i8*, i8** %162, align 8, !dbg !3418
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3421
  store i8* %163, i8** %164, align 8, !dbg !3422, !tbaa !510
  %165 = icmp eq i8* %163, null, !dbg !3423
  br i1 %165, label %265, label %166, !dbg !3424

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !3411, metadata !DIExpression()), !dbg !3414
  %167 = icmp sgt i32 %160, -1, !dbg !3418
  br i1 %167, label %175, label %168, !dbg !3418

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !3418
  store i32 %169, i32* %8, align 8, !dbg !3418
  %170 = icmp ult i32 %160, -7, !dbg !3418
  br i1 %170, label %171, label %175, !dbg !3418

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !3418
  %173 = sext i32 %160 to i64, !dbg !3418
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !3418
  br label %179, !dbg !3418

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !3418
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !3418
  store i8* %178, i8** %10, align 8, !dbg !3418
  br label %179, !dbg !3418

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !3418
  %183 = load i8*, i8** %182, align 8, !dbg !3418
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3421
  store i8* %183, i8** %184, align 8, !dbg !3422, !tbaa !510
  %185 = icmp eq i8* %183, null, !dbg !3423
  br i1 %185, label %265, label %186, !dbg !3424

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !3411, metadata !DIExpression()), !dbg !3414
  %187 = icmp sgt i32 %180, -1, !dbg !3418
  br i1 %187, label %195, label %188, !dbg !3418

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !3418
  store i32 %189, i32* %8, align 8, !dbg !3418
  %190 = icmp ult i32 %180, -7, !dbg !3418
  br i1 %190, label %191, label %195, !dbg !3418

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !3418
  %193 = sext i32 %180 to i64, !dbg !3418
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !3418
  br label %199, !dbg !3418

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !3418
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !3418
  store i8* %198, i8** %10, align 8, !dbg !3418
  br label %199, !dbg !3418

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !3418
  %203 = load i8*, i8** %202, align 8, !dbg !3418
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3421
  store i8* %203, i8** %204, align 8, !dbg !3422, !tbaa !510
  %205 = icmp eq i8* %203, null, !dbg !3423
  br i1 %205, label %265, label %206, !dbg !3424

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !3411, metadata !DIExpression()), !dbg !3414
  %207 = icmp sgt i32 %200, -1, !dbg !3418
  br i1 %207, label %215, label %208, !dbg !3418

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !3418
  store i32 %209, i32* %8, align 8, !dbg !3418
  %210 = icmp ult i32 %200, -7, !dbg !3418
  br i1 %210, label %211, label %215, !dbg !3418

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !3418
  %213 = sext i32 %200 to i64, !dbg !3418
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !3418
  br label %219, !dbg !3418

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !3418
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !3418
  store i8* %218, i8** %10, align 8, !dbg !3418
  br label %219, !dbg !3418

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !3418
  %223 = load i8*, i8** %222, align 8, !dbg !3418
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3421
  store i8* %223, i8** %224, align 8, !dbg !3422, !tbaa !510
  %225 = icmp eq i8* %223, null, !dbg !3423
  br i1 %225, label %265, label %226, !dbg !3424

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !3411, metadata !DIExpression()), !dbg !3414
  %227 = icmp sgt i32 %220, -1, !dbg !3418
  br i1 %227, label %235, label %228, !dbg !3418

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !3418
  store i32 %229, i32* %8, align 8, !dbg !3418
  %230 = icmp ult i32 %220, -7, !dbg !3418
  br i1 %230, label %231, label %235, !dbg !3418

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !3418
  %233 = sext i32 %220 to i64, !dbg !3418
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !3418
  br label %239, !dbg !3418

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !3418
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !3418
  store i8* %238, i8** %10, align 8, !dbg !3418
  br label %239, !dbg !3418

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !3418
  %243 = load i8*, i8** %242, align 8, !dbg !3418
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3421
  store i8* %243, i8** %244, align 8, !dbg !3422, !tbaa !510
  %245 = icmp eq i8* %243, null, !dbg !3423
  br i1 %245, label %265, label %246, !dbg !3424

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !3411, metadata !DIExpression()), !dbg !3414
  %247 = icmp sgt i32 %240, -1, !dbg !3418
  br i1 %247, label %255, label %248, !dbg !3418

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !3418
  store i32 %249, i32* %8, align 8, !dbg !3418
  %250 = icmp ult i32 %240, -7, !dbg !3418
  br i1 %250, label %251, label %255, !dbg !3418

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !3418
  %253 = sext i32 %240 to i64, !dbg !3418
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !3418
  br label %258, !dbg !3418

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !3418
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !3418
  store i8* %257, i8** %10, align 8, !dbg !3418
  br label %258, !dbg !3418

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !3418
  %261 = load i8*, i8** %260, align 8, !dbg !3418
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3421
  store i8* %261, i8** %262, align 8, !dbg !3422, !tbaa !510
  %263 = icmp eq i8* %261, null, !dbg !3423
  %264 = select i1 %263, i64 9, i64 10, !dbg !3424
  br label %265, !dbg !3425

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3425
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3427
  ret void, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3428 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %2, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %3, metadata !3435, metadata !DIExpression()), !dbg !3437
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3438
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.va_start(i8* nonnull %7), !dbg !3440
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3441, !tbaa.struct !1568
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3441
  call void @llvm.va_end(i8* nonnull %7), !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3443
  ret void, !dbg !3443
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3444 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3445, !tbaa !510
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3445
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.160, i64 0, i64 0), i32 noundef 5) #35, !dbg !3446
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.161, i64 0, i64 0)) #35, !dbg !3446
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.162, i64 0, i64 0), i32 noundef 5) #35, !dbg !3447
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.164, i64 0, i64 0)) #35, !dbg !3447
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.165, i64 0, i64 0), i32 noundef 5) #35, !dbg !3448
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.166, i64 0, i64 0)) #35, !dbg !3448
  ret void, !dbg !3449
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %2, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()) #35, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3462, metadata !DIExpression()) #35, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %2, metadata !3463, metadata !DIExpression()) #35, !dbg !3464
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %4, metadata !3467, metadata !DIExpression()) #35, !dbg !3472
  %5 = icmp eq i8* %4, null, !dbg !3474
  br i1 %5, label %6, label %7, !dbg !3476

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3477
  unreachable, !dbg !3477

7:                                                ; preds = %3
  ret i8* %4, !dbg !3478
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3462, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !3463, metadata !DIExpression()), !dbg !3479
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %4, metadata !3467, metadata !DIExpression()) #35, !dbg !3481
  %5 = icmp eq i8* %4, null, !dbg !3483
  br i1 %5, label %6, label %7, !dbg !3484

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3485
  unreachable, !dbg !3485

7:                                                ; preds = %3
  ret i8* %4, !dbg !3486
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3487 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()), !dbg !3492
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()) #35, !dbg !3494
  %3 = icmp eq i8* %2, null, !dbg !3496
  br i1 %3, label %4, label %5, !dbg !3497

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3498
  unreachable, !dbg !3498

5:                                                ; preds = %1
  ret i8* %2, !dbg !3499
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3504, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %0, metadata !3506, metadata !DIExpression()) #35, !dbg !3510
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()) #35, !dbg !3513
  %3 = icmp eq i8* %2, null, !dbg !3515
  br i1 %3, label %4, label %5, !dbg !3516

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3517
  unreachable, !dbg !3517

5:                                                ; preds = %1
  ret i8* %2, !dbg !3518
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3519 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()) #35, !dbg !3525
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3527
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()) #35, !dbg !3528
  %3 = icmp eq i8* %2, null, !dbg !3530
  br i1 %3, label %4, label %5, !dbg !3531

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3532
  unreachable, !dbg !3532

5:                                                ; preds = %1
  ret i8* %2, !dbg !3533
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3534 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3538, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()) #35, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #35, !dbg !3546
  %3 = icmp eq i64 %1, 0, !dbg !3548
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3548
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %5, metadata !3467, metadata !DIExpression()) #35, !dbg !3550
  %6 = icmp eq i8* %5, null, !dbg !3552
  br i1 %6, label %7, label %8, !dbg !3553

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3554
  unreachable, !dbg !3554

8:                                                ; preds = %2
  ret i8* %5, !dbg !3555
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %0, metadata !3563, metadata !DIExpression()) #35, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()) #35, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()) #35, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #35, !dbg !3569
  %3 = icmp eq i64 %1, 0, !dbg !3571
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3571
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %5, metadata !3467, metadata !DIExpression()) #35, !dbg !3573
  %6 = icmp eq i8* %5, null, !dbg !3575
  br i1 %6, label %7, label %8, !dbg !3576

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3577
  unreachable, !dbg !3577

8:                                                ; preds = %2
  ret i8* %5, !dbg !3578
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %2, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #35, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()) #35, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %2, metadata !3591, metadata !DIExpression()) #35, !dbg !3592
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %4, metadata !3467, metadata !DIExpression()) #35, !dbg !3595
  %5 = icmp eq i8* %4, null, !dbg !3597
  br i1 %5, label %6, label %7, !dbg !3598

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3599
  unreachable, !dbg !3599

7:                                                ; preds = %3
  ret i8* %4, !dbg !3600
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3601 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8* null, metadata !3459, metadata !DIExpression()) #35, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %0, metadata !3462, metadata !DIExpression()) #35, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()) #35, !dbg !3608
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3610
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3611
  %4 = icmp eq i8* %3, null, !dbg !3613
  br i1 %4, label %5, label %6, !dbg !3614

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3615
  unreachable, !dbg !3615

6:                                                ; preds = %2
  ret i8* %3, !dbg !3616
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3617 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %1, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8* null, metadata !3583, metadata !DIExpression()) #35, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %0, metadata !3584, metadata !DIExpression()) #35, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()) #35, !dbg !3624
  call void @llvm.dbg.value(metadata i8* null, metadata !3587, metadata !DIExpression()) #35, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %0, metadata !3590, metadata !DIExpression()) #35, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()) #35, !dbg !3626
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3629
  %4 = icmp eq i8* %3, null, !dbg !3631
  br i1 %4, label %5, label %6, !dbg !3632

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3633
  unreachable, !dbg !3633

6:                                                ; preds = %2
  ret i8* %3, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3635 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64* %1, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.dbg.value(metadata i64* %1, metadata !444, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.dbg.value(metadata i64 1, metadata !445, metadata !DIExpression()) #35, !dbg !3642
  %3 = load i64, i64* %1, align 8, !dbg !3644, !tbaa !2725
  call void @llvm.dbg.value(metadata i64 %3, metadata !446, metadata !DIExpression()) #35, !dbg !3642
  %4 = icmp eq i8* %0, null, !dbg !3645
  br i1 %4, label %5, label %8, !dbg !3647

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3648
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3651
  br label %15, !dbg !3651

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3652
  %10 = add nuw i64 %9, 1, !dbg !3652
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3652
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3652
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %13, metadata !446, metadata !DIExpression()) #35, !dbg !3642
  br i1 %12, label %14, label %15, !dbg !3655

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3656
  unreachable, !dbg !3656

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3642
  call void @llvm.dbg.value(metadata i64 %16, metadata !446, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()) #35, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %16, metadata !3462, metadata !DIExpression()) #35, !dbg !3657
  call void @llvm.dbg.value(metadata i64 1, metadata !3463, metadata !DIExpression()) #35, !dbg !3657
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %17, metadata !3467, metadata !DIExpression()) #35, !dbg !3660
  %18 = icmp eq i8* %17, null, !dbg !3662
  br i1 %18, label %19, label %20, !dbg !3663

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3664
  unreachable, !dbg !3664

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !443, metadata !DIExpression()) #35, !dbg !3642
  store i64 %16, i64* %1, align 8, !dbg !3665, !tbaa !2725
  ret i8* %17, !dbg !3666
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64* %1, metadata !444, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %2, metadata !445, metadata !DIExpression()), !dbg !3667
  %4 = load i64, i64* %1, align 8, !dbg !3668, !tbaa !2725
  call void @llvm.dbg.value(metadata i64 %4, metadata !446, metadata !DIExpression()), !dbg !3667
  %5 = icmp eq i8* %0, null, !dbg !3669
  br i1 %5, label %6, label %13, !dbg !3670

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3671
  br i1 %7, label %8, label %20, !dbg !3672

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression()), !dbg !3667
  %10 = icmp ugt i64 %2, 128, !dbg !3675
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %12, metadata !446, metadata !DIExpression()), !dbg !3667
  br label %20, !dbg !3677

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3678
  %15 = add nuw i64 %14, 1, !dbg !3678
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3678
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3678
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %18, metadata !446, metadata !DIExpression()), !dbg !3667
  br i1 %17, label %19, label %20, !dbg !3679

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3680
  unreachable, !dbg !3680

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3667
  call void @llvm.dbg.value(metadata i64 %21, metadata !446, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()) #35, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %21, metadata !3462, metadata !DIExpression()) #35, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %2, metadata !3463, metadata !DIExpression()) #35, !dbg !3681
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %22, metadata !3467, metadata !DIExpression()) #35, !dbg !3684
  %23 = icmp eq i8* %22, null, !dbg !3686
  br i1 %23, label %24, label %25, !dbg !3687

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3688
  unreachable, !dbg !3688

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !443, metadata !DIExpression()), !dbg !3667
  store i64 %21, i64* %1, align 8, !dbg !3689, !tbaa !2725
  ret i8* %22, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !458, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64* %1, metadata !459, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %2, metadata !460, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %3, metadata !461, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %4, metadata !462, metadata !DIExpression()), !dbg !3691
  %6 = load i64, i64* %1, align 8, !dbg !3692, !tbaa !2725
  call void @llvm.dbg.value(metadata i64 %6, metadata !463, metadata !DIExpression()), !dbg !3691
  %7 = ashr i64 %6, 1, !dbg !3693
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3693
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3693
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %10, metadata !464, metadata !DIExpression()), !dbg !3691
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %11, metadata !464, metadata !DIExpression()), !dbg !3691
  %12 = icmp sgt i64 %3, -1, !dbg !3696
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3698
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %15, metadata !464, metadata !DIExpression()), !dbg !3691
  %16 = icmp slt i64 %4, 0, !dbg !3699
  br i1 %16, label %17, label %30, !dbg !3699

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3699
  br i1 %18, label %19, label %24, !dbg !3699

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3699
  %21 = udiv i64 9223372036854775807, %20, !dbg !3699
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3699
  br i1 %23, label %46, label %43, !dbg !3699

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3699
  br i1 %25, label %43, label %26, !dbg !3699

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3699
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3699
  %29 = icmp ult i64 %28, %15, !dbg !3699
  br i1 %29, label %46, label %43, !dbg !3699

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3699
  br i1 %31, label %43, label %32, !dbg !3699

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3699
  br i1 %33, label %34, label %40, !dbg !3699

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3699
  br i1 %35, label %43, label %36, !dbg !3699

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3699
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3699
  %39 = icmp ult i64 %38, %4, !dbg !3699
  br i1 %39, label %46, label %43, !dbg !3699

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3699
  %42 = icmp ult i64 %41, %15, !dbg !3699
  br i1 %42, label %46, label %43, !dbg !3699

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3691
  %44 = mul i64 %15, %4, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %44, metadata !465, metadata !DIExpression()), !dbg !3691
  %45 = icmp slt i64 %44, 128, !dbg !3699
  br i1 %45, label %46, label %52, !dbg !3699

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !466, metadata !DIExpression()), !dbg !3691
  %48 = sdiv i64 %47, %4, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %48, metadata !464, metadata !DIExpression()), !dbg !3691
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %51, metadata !465, metadata !DIExpression()), !dbg !3691
  br label %52, !dbg !3704

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3691
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3691
  call void @llvm.dbg.value(metadata i64 %54, metadata !465, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %53, metadata !464, metadata !DIExpression()), !dbg !3691
  %55 = icmp eq i8* %0, null, !dbg !3705
  br i1 %55, label %56, label %57, !dbg !3707

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3708, !tbaa !2725
  br label %57, !dbg !3709

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3710
  %59 = icmp slt i64 %58, %2, !dbg !3712
  br i1 %59, label %60, label %97, !dbg !3713

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3714
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3714
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %63, metadata !464, metadata !DIExpression()), !dbg !3691
  br i1 %62, label %96, label %64, !dbg !3715

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3716
  br i1 %66, label %96, label %67, !dbg !3716

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3717

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3717
  br i1 %69, label %70, label %75, !dbg !3717

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3717
  %72 = udiv i64 9223372036854775807, %71, !dbg !3717
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3717
  br i1 %74, label %96, label %94, !dbg !3717

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3717
  br i1 %76, label %94, label %77, !dbg !3717

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3717
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3717
  %80 = icmp ult i64 %79, %63, !dbg !3717
  br i1 %80, label %96, label %94, !dbg !3717

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3717
  br i1 %82, label %94, label %83, !dbg !3717

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3717
  br i1 %84, label %85, label %91, !dbg !3717

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3717
  br i1 %86, label %94, label %87, !dbg !3717

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3717
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3717
  %90 = icmp ult i64 %89, %4, !dbg !3717
  br i1 %90, label %96, label %94, !dbg !3717

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3717
  %93 = icmp ult i64 %92, %63, !dbg !3717
  br i1 %93, label %96, label %94, !dbg !3717

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3691
  %95 = mul i64 %63, %4, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %95, metadata !465, metadata !DIExpression()), !dbg !3691
  br label %97, !dbg !3718

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3719
  unreachable, !dbg !3719

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3691
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3691
  call void @llvm.dbg.value(metadata i64 %99, metadata !465, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %98, metadata !464, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i8* %0, metadata !3538, metadata !DIExpression()) #35, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %99, metadata !3539, metadata !DIExpression()) #35, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()) #35, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %99, metadata !3545, metadata !DIExpression()) #35, !dbg !3722
  %100 = icmp eq i64 %99, 0, !dbg !3724
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3724
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %102, metadata !3467, metadata !DIExpression()) #35, !dbg !3726
  %103 = icmp eq i8* %102, null, !dbg !3728
  br i1 %103, label %104, label %105, !dbg !3729

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3730
  unreachable, !dbg !3730

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !458, metadata !DIExpression()), !dbg !3691
  store i64 %98, i64* %1, align 8, !dbg !3731, !tbaa !2725
  ret i8* %102, !dbg !3732
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3733 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()) #35, !dbg !3741
  call void @llvm.dbg.value(metadata i64 1, metadata !3740, metadata !DIExpression()) #35, !dbg !3741
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()) #35, !dbg !3744
  %3 = icmp eq i8* %2, null, !dbg !3746
  br i1 %3, label %4, label %5, !dbg !3747

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3748
  unreachable, !dbg !3748

5:                                                ; preds = %1
  ret i8* %2, !dbg !3749
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3738 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3750
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3752
  %4 = icmp eq i8* %3, null, !dbg !3754
  br i1 %4, label %5, label %6, !dbg !3755

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3756
  unreachable, !dbg !3756

6:                                                ; preds = %2
  ret i8* %3, !dbg !3757
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3758 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3760, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %0, metadata !3762, metadata !DIExpression()) #35, !dbg !3766
  call void @llvm.dbg.value(metadata i64 1, metadata !3765, metadata !DIExpression()) #35, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()) #35, !dbg !3772
  call void @llvm.dbg.value(metadata i64 1, metadata !3771, metadata !DIExpression()) #35, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()) #35, !dbg !3772
  call void @llvm.dbg.value(metadata i64 1, metadata !3771, metadata !DIExpression()) #35, !dbg !3772
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()) #35, !dbg !3775
  %3 = icmp eq i8* %2, null, !dbg !3777
  br i1 %3, label %4, label %5, !dbg !3778

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3779
  unreachable, !dbg !3779

5:                                                ; preds = %1
  ret i8* %2, !dbg !3780
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3763 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3762, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %1, metadata !3765, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()) #35, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()) #35, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()) #35, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()) #35, !dbg !3782
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3785
  %4 = icmp eq i8* %3, null, !dbg !3787
  br i1 %4, label %5, label %6, !dbg !3788

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3789
  unreachable, !dbg !3789

6:                                                ; preds = %2
  ret i8* %3, !dbg !3790
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3795, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %1, metadata !3796, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()) #35, !dbg !3798
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3801
  %4 = icmp eq i8* %3, null, !dbg !3803
  br i1 %4, label %5, label %6, !dbg !3804

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3805
  unreachable, !dbg !3805

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3806, metadata !DIExpression()) #35, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #35, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()) #35, !dbg !3814
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3816
  ret i8* %3, !dbg !3817
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3822, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3823, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3504, metadata !DIExpression()) #35, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()) #35, !dbg !3827
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %3, metadata !3467, metadata !DIExpression()) #35, !dbg !3830
  %4 = icmp eq i8* %3, null, !dbg !3832
  br i1 %4, label %5, label %6, !dbg !3833

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3834
  unreachable, !dbg !3834

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3806, metadata !DIExpression()) #35, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #35, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()) #35, !dbg !3835
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3837
  ret i8* %3, !dbg !3838
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3843, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3844, metadata !DIExpression()), !dbg !3846
  %3 = add nsw i64 %1, 1, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %3, metadata !3504, metadata !DIExpression()) #35, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %3, metadata !3506, metadata !DIExpression()) #35, !dbg !3850
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %4, metadata !3467, metadata !DIExpression()) #35, !dbg !3853
  %5 = icmp eq i8* %4, null, !dbg !3855
  br i1 %5, label %6, label %7, !dbg !3856

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3857
  unreachable, !dbg !3857

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3845, metadata !DIExpression()), !dbg !3846
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3858
  store i8 0, i8* %8, align 1, !dbg !3859, !tbaa !610
  call void @llvm.dbg.value(metadata i8* %4, metadata !3806, metadata !DIExpression()) #35, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #35, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()) #35, !dbg !3860
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3862
  ret i8* %4, !dbg !3863
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3864 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3866, metadata !DIExpression()), !dbg !3867
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3868
  %3 = add i64 %2, 1, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %0, metadata !3795, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %3, metadata !3796, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %3, metadata !3491, metadata !DIExpression()) #35, !dbg !3872
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i8* %4, metadata !3467, metadata !DIExpression()) #35, !dbg !3875
  %5 = icmp eq i8* %4, null, !dbg !3877
  br i1 %5, label %6, label %7, !dbg !3878

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3879
  unreachable, !dbg !3879

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3806, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %3, metadata !3813, metadata !DIExpression()) #35, !dbg !3880
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3882
  ret i8* %4, !dbg !3883
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3884 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3888, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %1, metadata !3886, metadata !DIExpression()), !dbg !3889
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.179, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.180, i64 0, i64 0), i32 noundef 5) #35, !dbg !3888
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i64 0, i64 0), i8* noundef %2) #35, !dbg !3888
  %3 = icmp eq i32 %1, 0, !dbg !3888
  tail call void @llvm.assume(i1 %3), !dbg !3888
  tail call void @abort() #37, !dbg !3890
  unreachable, !dbg !3890
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3891 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3929, metadata !DIExpression()), !dbg !3934
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !3935
  call void @llvm.dbg.value(metadata i1 undef, metadata !3930, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3934
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3936, metadata !DIExpression()), !dbg !3939
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3941
  %4 = load i32, i32* %3, align 8, !dbg !3941, !tbaa !3942
  %5 = and i32 %4, 32, !dbg !3943
  %6 = icmp eq i32 %5, 0, !dbg !3943
  call void @llvm.dbg.value(metadata i1 %6, metadata !3932, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3934
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !3944
  %8 = icmp eq i32 %7, 0, !dbg !3945
  call void @llvm.dbg.value(metadata i1 %8, metadata !3933, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3934
  br i1 %6, label %9, label %19, !dbg !3946

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3948
  call void @llvm.dbg.value(metadata i1 %10, metadata !3930, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3934
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3949
  %12 = xor i1 %8, true, !dbg !3949
  %13 = sext i1 %12 to i32, !dbg !3949
  br i1 %11, label %22, label %14, !dbg !3949

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !3950
  %16 = load i32, i32* %15, align 4, !dbg !3950, !tbaa !601
  %17 = icmp ne i32 %16, 9, !dbg !3951
  %18 = sext i1 %17 to i32, !dbg !3952
  br label %22, !dbg !3952

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3953

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !3955
  store i32 0, i32* %21, align 4, !dbg !3957, !tbaa !601
  br label %22, !dbg !3955

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3934
  ret i32 %23, !dbg !3958
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3959 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3998, metadata !DIExpression()), !dbg !4001
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4002
  call void @llvm.dbg.value(metadata i32 %2, metadata !3999, metadata !DIExpression()), !dbg !4001
  %3 = icmp slt i32 %2, 0, !dbg !4003
  br i1 %3, label %4, label %6, !dbg !4005

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4006
  br label %24, !dbg !4007

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4008
  %8 = icmp eq i32 %7, 0, !dbg !4008
  br i1 %8, label %13, label %9, !dbg !4010

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4011
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4012
  %12 = icmp eq i64 %11, -1, !dbg !4013
  br i1 %12, label %16, label %13, !dbg !4014

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4015
  %15 = icmp eq i32 %14, 0, !dbg !4015
  br i1 %15, label %16, label %18, !dbg !4016

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !4000, metadata !DIExpression()), !dbg !4001
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %21, metadata !4000, metadata !DIExpression()), !dbg !4001
  br label %24, !dbg !4018

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4019
  %20 = load i32, i32* %19, align 4, !dbg !4019, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %20, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !4000, metadata !DIExpression()), !dbg !4001
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %21, metadata !4000, metadata !DIExpression()), !dbg !4001
  %22 = icmp eq i32 %20, 0, !dbg !4020
  br i1 %22, label %24, label %23, !dbg !4018

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4022, !tbaa !601
  call void @llvm.dbg.value(metadata i32 -1, metadata !4000, metadata !DIExpression()), !dbg !4001
  br label %24, !dbg !4024

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4001
  ret i32 %25, !dbg !4025
}

; Function Attrs: nofree nounwind
declare !dbg !4026 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4027 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4030 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4068, metadata !DIExpression()), !dbg !4069
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4070
  br i1 %2, label %6, label %3, !dbg !4072

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4073
  %5 = icmp eq i32 %4, 0, !dbg !4073
  br i1 %5, label %6, label %8, !dbg !4074

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4075
  br label %17, !dbg !4076

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4077, metadata !DIExpression()) #35, !dbg !4082
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4084
  %10 = load i32, i32* %9, align 8, !dbg !4084, !tbaa !3942
  %11 = and i32 %10, 256, !dbg !4086
  %12 = icmp eq i32 %11, 0, !dbg !4086
  br i1 %12, label %15, label %13, !dbg !4087

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4088
  br label %15, !dbg !4088

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4089
  br label %17, !dbg !4090

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4069
  ret i32 %18, !dbg !4091
}

; Function Attrs: nofree nounwind
declare !dbg !4092 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4093 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4131, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !4132, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %2, metadata !4133, metadata !DIExpression()), !dbg !4137
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4138
  %5 = load i8*, i8** %4, align 8, !dbg !4138, !tbaa !4139
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4140
  %7 = load i8*, i8** %6, align 8, !dbg !4140, !tbaa !4141
  %8 = icmp eq i8* %5, %7, !dbg !4142
  br i1 %8, label %9, label %28, !dbg !4143

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4144
  %11 = load i8*, i8** %10, align 8, !dbg !4144, !tbaa !1409
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4145
  %13 = load i8*, i8** %12, align 8, !dbg !4145, !tbaa !4146
  %14 = icmp eq i8* %11, %13, !dbg !4147
  br i1 %14, label %15, label %28, !dbg !4148

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4149
  %17 = load i8*, i8** %16, align 8, !dbg !4149, !tbaa !4150
  %18 = icmp eq i8* %17, null, !dbg !4151
  br i1 %18, label %19, label %28, !dbg !4152

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4153
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %21, metadata !4134, metadata !DIExpression()), !dbg !4155
  %22 = icmp eq i64 %21, -1, !dbg !4156
  br i1 %22, label %30, label %23, !dbg !4158

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4159
  %25 = load i32, i32* %24, align 8, !dbg !4160, !tbaa !3942
  %26 = and i32 %25, -17, !dbg !4160
  store i32 %26, i32* %24, align 8, !dbg !4160, !tbaa !3942
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4161
  store i64 %21, i64* %27, align 8, !dbg !4162, !tbaa !4163
  br label %30, !dbg !4164

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4165
  br label %30, !dbg !4166

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4137
  ret i32 %31, !dbg !4167
}

; Function Attrs: nofree nounwind
declare !dbg !4168 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4171 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4176, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i8* %1, metadata !4177, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %2, metadata !4178, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4179, metadata !DIExpression()), !dbg !4181
  %5 = icmp eq i8* %1, null, !dbg !4182
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4184
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), i8* %1, !dbg !4184
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %8, metadata !4178, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i8* %7, metadata !4177, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i32* %6, metadata !4176, metadata !DIExpression()), !dbg !4181
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4185
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4187
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4179, metadata !DIExpression()), !dbg !4181
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %11, metadata !4180, metadata !DIExpression()), !dbg !4181
  %12 = icmp ult i64 %11, -3, !dbg !4189
  br i1 %12, label %13, label %18, !dbg !4191

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4192
  %15 = icmp eq i32 %14, 0, !dbg !4192
  br i1 %15, label %16, label %30, !dbg !4193

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4194, metadata !DIExpression()) #35, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4201, metadata !DIExpression()) #35, !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4204, metadata !DIExpression()) #35, !dbg !4206
  call void @llvm.dbg.value(metadata i64 8, metadata !4205, metadata !DIExpression()) #35, !dbg !4206
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4208
  store i64 0, i64* %17, align 1, !dbg !4208
  br label %30, !dbg !4209

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4210
  br i1 %19, label %20, label %21, !dbg !4212

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4213
  unreachable, !dbg !4213

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4214

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4216
  br i1 %24, label %30, label %25, !dbg !4217

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4218
  br i1 %26, label %30, label %27, !dbg !4221

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4222, !tbaa !610
  %29 = zext i8 %28 to i32, !dbg !4223
  store i32 %29, i32* %6, align 4, !dbg !4224, !tbaa !601
  br label %30, !dbg !4225

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4181
  ret i64 %31, !dbg !4226
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4227 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %2, metadata !4237, metadata !DIExpression()), !dbg !4239
  %4 = icmp eq i64 %2, 0, !dbg !4240
  br i1 %4, label %8, label %5, !dbg !4240

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4240
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4240
  br i1 %7, label %13, label %8, !dbg !4240

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4238, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4239
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4238, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4239
  %9 = mul i64 %2, %1, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %9, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i8* %0, metadata !4242, metadata !DIExpression()) #35, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %9, metadata !4245, metadata !DIExpression()) #35, !dbg !4246
  %10 = icmp eq i64 %9, 0, !dbg !4248
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4248
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4249
  br label %15, !dbg !4250

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4238, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4239
  %14 = tail call i32* @__errno_location() #38, !dbg !4251
  store i32 12, i32* %14, align 4, !dbg !4253, !tbaa !601
  br label %15, !dbg !4254

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4239
  ret i8* %16, !dbg !4255
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4258, metadata !DIExpression()), !dbg !4259
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #35, !dbg !4260
  ret i32 %2, !dbg !4261
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4262 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4264, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 %1, metadata !4265, metadata !DIExpression()), !dbg !4289
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !4290
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4290
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4266, metadata !DIExpression()), !dbg !4291
  call void @llvm.va_start(i8* nonnull %4), !dbg !4292
  call void @llvm.dbg.value(metadata i32 -1, metadata !4277, metadata !DIExpression()), !dbg !4289
  switch i32 %1, label %103 [
    i32 0, label %5
    i32 1030, label %26
    i32 1, label %80
    i32 3, label %80
    i32 1025, label %80
    i32 9, label %80
    i32 1032, label %80
    i32 1034, label %80
    i32 11, label %80
    i32 1033, label %82
    i32 1031, label %82
    i32 10, label %82
    i32 1026, label %82
    i32 2, label %82
    i32 4, label %82
    i32 1024, label %82
    i32 8, label %82
  ], !dbg !4293

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4294
  %7 = load i32, i32* %6, align 8, !dbg !4294
  %8 = icmp sgt i32 %7, -1, !dbg !4294
  br i1 %8, label %17, label %9, !dbg !4294

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !4294
  store i32 %10, i32* %6, align 8, !dbg !4294
  %11 = icmp ult i32 %7, -7, !dbg !4294
  br i1 %11, label %12, label %17, !dbg !4294

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4294
  %14 = load i8*, i8** %13, align 8, !dbg !4294
  %15 = sext i32 %7 to i64, !dbg !4294
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !4294
  br label %21, !dbg !4294

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4294
  %19 = load i8*, i8** %18, align 8, !dbg !4294
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !4294
  store i8* %20, i8** %18, align 8, !dbg !4294
  br label %21, !dbg !4294

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4294
  %24 = load i32, i32* %23, align 8, !dbg !4294
  call void @llvm.dbg.value(metadata i32 %24, metadata !4278, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i32 %0, metadata !4296, metadata !DIExpression()) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %24, metadata !4299, metadata !DIExpression()) #35, !dbg !4301
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %25, metadata !4300, metadata !DIExpression()) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %25, metadata !4277, metadata !DIExpression()), !dbg !4289
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4304
  %28 = load i32, i32* %27, align 8, !dbg !4304
  %29 = icmp sgt i32 %28, -1, !dbg !4304
  br i1 %29, label %38, label %30, !dbg !4304

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !4304
  store i32 %31, i32* %27, align 8, !dbg !4304
  %32 = icmp ult i32 %28, -7, !dbg !4304
  br i1 %32, label %33, label %38, !dbg !4304

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4304
  %35 = load i8*, i8** %34, align 8, !dbg !4304
  %36 = sext i32 %28 to i64, !dbg !4304
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !4304
  br label %42, !dbg !4304

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4304
  %40 = load i8*, i8** %39, align 8, !dbg !4304
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !4304
  store i8* %41, i8** %39, align 8, !dbg !4304
  br label %42, !dbg !4304

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !4304
  %45 = load i32, i32* %44, align 8, !dbg !4304
  call void @llvm.dbg.value(metadata i32 %45, metadata !4281, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 %0, metadata !405, metadata !DIExpression()) #35, !dbg !4306
  call void @llvm.dbg.value(metadata i32 %45, metadata !406, metadata !DIExpression()) #35, !dbg !4306
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4308, !tbaa !601
  %47 = icmp sgt i32 %46, -1, !dbg !4310
  br i1 %47, label %48, label %60, !dbg !4311

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %49, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  %50 = icmp sgt i32 %49, -1, !dbg !4314
  br i1 %50, label %55, label %51, !dbg !4316

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !4317
  %53 = load i32, i32* %52, align 4, !dbg !4317, !tbaa !601
  %54 = icmp eq i32 %53, 22, !dbg !4318
  br i1 %54, label %56, label %55, !dbg !4319

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4320, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %66, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  br label %124, !dbg !4322

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !4296, metadata !DIExpression()) #35, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %45, metadata !4299, metadata !DIExpression()) #35, !dbg !4323
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %57, metadata !4300, metadata !DIExpression()) #35, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %57, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  %58 = icmp sgt i32 %57, -1, !dbg !4327
  br i1 %58, label %59, label %124, !dbg !4329

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4330, !tbaa !601
  br label %64, !dbg !4331

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4296, metadata !DIExpression()) #35, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %45, metadata !4299, metadata !DIExpression()) #35, !dbg !4332
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %61, metadata !4300, metadata !DIExpression()) #35, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %61, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !4335
  call void @llvm.dbg.value(metadata i32 %66, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  %67 = icmp sgt i32 %66, -1, !dbg !4336
  %68 = select i1 %67, i1 %65, i1 false, !dbg !4322
  br i1 %68, label %69, label %124, !dbg !4322

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %70, metadata !408, metadata !DIExpression()) #35, !dbg !4338
  %71 = icmp slt i32 %70, 0, !dbg !4339
  br i1 %71, label %76, label %72, !dbg !4340

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !4341
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !4342
  %75 = icmp eq i32 %74, -1, !dbg !4343
  br i1 %75, label %76, label %124, !dbg !4344

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !4345
  %78 = load i32, i32* %77, align 4, !dbg !4345, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %78, metadata !411, metadata !DIExpression()) #35, !dbg !4346
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !4347
  store i32 %78, i32* %77, align 4, !dbg !4348, !tbaa !601
  call void @llvm.dbg.value(metadata i32 -1, metadata !407, metadata !DIExpression()) #35, !dbg !4306
  br label %124, !dbg !4349

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i32 %81, metadata !4277, metadata !DIExpression()), !dbg !4289
  br label %124, !dbg !4351

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4352
  %84 = load i32, i32* %83, align 8, !dbg !4352
  %85 = icmp sgt i32 %84, -1, !dbg !4352
  br i1 %85, label %94, label %86, !dbg !4352

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !4352
  store i32 %87, i32* %83, align 8, !dbg !4352
  %88 = icmp ult i32 %84, -7, !dbg !4352
  br i1 %88, label %89, label %94, !dbg !4352

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4352
  %91 = load i8*, i8** %90, align 8, !dbg !4352
  %92 = sext i32 %84 to i64, !dbg !4352
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !4352
  br label %98, !dbg !4352

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4352
  %96 = load i8*, i8** %95, align 8, !dbg !4352
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !4352
  store i8* %97, i8** %95, align 8, !dbg !4352
  br label %98, !dbg !4352

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !4352
  %101 = load i32, i32* %100, align 8, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %101, metadata !4283, metadata !DIExpression()), !dbg !4353
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !4354
  call void @llvm.dbg.value(metadata i32 %102, metadata !4277, metadata !DIExpression()), !dbg !4289
  br label %124, !dbg !4355

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4356
  %105 = load i32, i32* %104, align 8, !dbg !4356
  %106 = icmp sgt i32 %105, -1, !dbg !4356
  br i1 %106, label %115, label %107, !dbg !4356

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !4356
  store i32 %108, i32* %104, align 8, !dbg !4356
  %109 = icmp ult i32 %105, -7, !dbg !4356
  br i1 %109, label %110, label %115, !dbg !4356

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4356
  %112 = load i8*, i8** %111, align 8, !dbg !4356
  %113 = sext i32 %105 to i64, !dbg !4356
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !4356
  br label %119, !dbg !4356

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4356
  %117 = load i8*, i8** %116, align 8, !dbg !4356
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !4356
  store i8* %118, i8** %116, align 8, !dbg !4356
  br label %119, !dbg !4356

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !4356
  %122 = load i8*, i8** %121, align 8, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %122, metadata !4287, metadata !DIExpression()), !dbg !4357
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %123, metadata !4277, metadata !DIExpression()), !dbg !4289
  br label %124, !dbg !4359

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !4360
  call void @llvm.dbg.value(metadata i32 %125, metadata !4277, metadata !DIExpression()), !dbg !4289
  call void @llvm.va_end(i8* nonnull %4), !dbg !4361
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4362
  ret i32 %125, !dbg !4363
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4364 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4366, metadata !DIExpression()), !dbg !4371
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4372
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4372
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4367, metadata !DIExpression()), !dbg !4373
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4374
  %5 = icmp eq i32 %4, 0, !dbg !4374
  br i1 %5, label %6, label %13, !dbg !4376

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4377, metadata !DIExpression()) #35, !dbg !4381
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0), metadata !4380, metadata !DIExpression()) #35, !dbg !4381
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0), i64 2), !dbg !4384
  %8 = icmp eq i32 %7, 0, !dbg !4385
  br i1 %8, label %12, label %9, !dbg !4386

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4377, metadata !DIExpression()) #35, !dbg !4387
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0), metadata !4380, metadata !DIExpression()) #35, !dbg !4387
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0), i64 6), !dbg !4389
  %11 = icmp eq i32 %10, 0, !dbg !4390
  br i1 %11, label %12, label %13, !dbg !4391

12:                                               ; preds = %9, %6
  br label %13, !dbg !4392

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4371
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4393
  ret i1 %14, !dbg !4393
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4398, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i8* %1, metadata !4399, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %2, metadata !4400, metadata !DIExpression()), !dbg !4401
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4402
  ret i32 %4, !dbg !4403
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4408, metadata !DIExpression()), !dbg !4409
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4410
  ret i8* %2, !dbg !4411
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4412 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4414, metadata !DIExpression()), !dbg !4416
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %2, metadata !4415, metadata !DIExpression()), !dbg !4416
  ret i8* %2, !dbg !4418
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4421, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i8* %1, metadata !4422, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %2, metadata !4423, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i32 %0, metadata !4414, metadata !DIExpression()) #35, !dbg !4429
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4431
  call void @llvm.dbg.value(metadata i8* %4, metadata !4415, metadata !DIExpression()) #35, !dbg !4429
  call void @llvm.dbg.value(metadata i8* %4, metadata !4424, metadata !DIExpression()), !dbg !4428
  %5 = icmp eq i8* %4, null, !dbg !4432
  br i1 %5, label %6, label %9, !dbg !4433

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4434
  br i1 %7, label %19, label %8, !dbg !4437

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4438, !tbaa !610
  br label %19, !dbg !4439

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %10, metadata !4425, metadata !DIExpression()), !dbg !4441
  %11 = icmp ult i64 %10, %2, !dbg !4442
  br i1 %11, label %12, label %14, !dbg !4444

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4445
  call void @llvm.dbg.value(metadata i8* %1, metadata !4447, metadata !DIExpression()) #35, !dbg !4452
  call void @llvm.dbg.value(metadata i8* %4, metadata !4450, metadata !DIExpression()) #35, !dbg !4452
  call void @llvm.dbg.value(metadata i64 %13, metadata !4451, metadata !DIExpression()) #35, !dbg !4452
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4454
  br label %19, !dbg !4455

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4456
  br i1 %15, label %19, label %16, !dbg !4459

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %1, metadata !4447, metadata !DIExpression()) #35, !dbg !4462
  call void @llvm.dbg.value(metadata i8* %4, metadata !4450, metadata !DIExpression()) #35, !dbg !4462
  call void @llvm.dbg.value(metadata i64 %17, metadata !4451, metadata !DIExpression()) #35, !dbg !4462
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4464
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4465
  store i8 0, i8* %18, align 1, !dbg !4466, !tbaa !610
  br label %19, !dbg !4467

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4468
  ret i32 %20, !dbg !4469
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
attributes #14 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !414, !192, !197, !209, !216, !376, !416, !419, !421, !423, !254, !264, !294, !425, !427, !368, !434, !468, !470, !472, !474, !476, !382, !478, !481, !402, !483, !485, !487}
!llvm.ident = !{!489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489}
!llvm.module.flags = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !70, splitDebugInlining: false, nameTableKind: None)
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
!51 = !{!52, !54, !56, !57, !62, !63, !64, !67, !69}
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
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !{!71, !74, !76, !78, !0, !164, !170}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !73, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !80, file: !81, line: 575, type: !62, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "oputs_", scope: !81, file: !81, line: 573, type: !82, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !67, !67}
!84 = !{!85, !86, !87, !90, !91, !92, !93, !97, !98, !99, !100, !102, !158, !159, !160, !162, !163}
!85 = !DILocalVariable(name: "program", arg: 1, scope: !80, file: !81, line: 573, type: !67)
!86 = !DILocalVariable(name: "option", arg: 2, scope: !80, file: !81, line: 573, type: !67)
!87 = !DILocalVariable(name: "term", scope: !88, file: !81, line: 585, type: !67)
!88 = distinct !DILexicalBlock(scope: !89, file: !81, line: 582, column: 5)
!89 = distinct !DILexicalBlock(scope: !80, file: !81, line: 581, column: 7)
!90 = !DILocalVariable(name: "double_space", scope: !80, file: !81, line: 594, type: !73)
!91 = !DILocalVariable(name: "first_word", scope: !80, file: !81, line: 595, type: !67)
!92 = !DILocalVariable(name: "option_text", scope: !80, file: !81, line: 596, type: !67)
!93 = !DILocalVariable(name: "s", scope: !94, file: !81, line: 608, type: !67)
!94 = distinct !DILexicalBlock(scope: !95, file: !81, line: 605, column: 5)
!95 = distinct !DILexicalBlock(scope: !96, file: !81, line: 604, column: 12)
!96 = distinct !DILexicalBlock(scope: !80, file: !81, line: 597, column: 7)
!97 = !DILocalVariable(name: "spaces", scope: !94, file: !81, line: 609, type: !64)
!98 = !DILocalVariable(name: "anchor_len", scope: !80, file: !81, line: 620, type: !64)
!99 = !DILocalVariable(name: "desc_text", scope: !80, file: !81, line: 625, type: !67)
!100 = !DILocalVariable(name: "__ptr", scope: !101, file: !81, line: 644, type: !67)
!101 = distinct !DILexicalBlock(scope: !80, file: !81, line: 644, column: 3)
!102 = !DILocalVariable(name: "__stream", scope: !101, file: !81, line: 644, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !126, !127, !128, !132, !133, !135, !139, !142, !144, !147, !150, !151, !152, !153, !154}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 51, baseType: !62, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 36, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 70, baseType: !125, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !130, line: 152, baseType: !131)
!130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!131 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!134 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 43, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !130, line: 153, baseType: !131)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !106, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !107, line: 37, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !106, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !107, line: 38, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !106, file: !107, line: 93, baseType: !125, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !106, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 20)
!158 = !DILocalVariable(name: "__cnt", scope: !101, file: !81, line: 644, type: !64)
!159 = !DILocalVariable(name: "url_program", scope: !80, file: !81, line: 648, type: !67)
!160 = !DILocalVariable(name: "__ptr", scope: !161, file: !81, line: 686, type: !67)
!161 = distinct !DILexicalBlock(scope: !80, file: !81, line: 686, column: 3)
!162 = !DILocalVariable(name: "__stream", scope: !161, file: !81, line: 686, type: !103)
!163 = !DILocalVariable(name: "__cnt", scope: !161, file: !81, line: 686, type: !64)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!168 = !{!169}
!169 = !DISubrange(count: 4)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!174 = !{!175}
!175 = !DISubrange(count: 5)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1536, elements: !186)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !179, line: 50, size: 256, elements: !180)
!179 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!180 = !{!181, !182, !183, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 52, baseType: !67, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !178, file: !179, line: 55, baseType: !62, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !178, file: !179, line: 56, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !179, line: 57, baseType: !62, size: 32, offset: 192)
!186 = !{!187}
!187 = !DISubrange(count: 6)
!188 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!189 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "Version", scope: !192, file: !193, line: 3, type: !67, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !194, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!194 = !{!190}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !197, file: !198, line: 65, type: !202, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !199, retainedTypes: !200, globals: !201, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/argmatch.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b147d258438e01421d766b453f353b54")
!199 = !{!37}
!200 = !{!56, !67, !69}
!201 = !{!195}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !203, line: 69, baseType: !204)
!203 = !DIFile(filename: "./lib/argmatch.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "file_name", scope: !209, file: !210, line: 45, type: !67, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !211, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!211 = !{!207, !212}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !209, file: !210, line: 55, type: !73, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !216, file: !217, line: 66, type: !204, isLocal: false, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !218, globals: !219, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!218 = !{!56, !69}
!219 = !{!220, !246, !214, !248, !250}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "old_file_name", scope: !222, file: !217, line: 304, type: !67, isLocal: true, isDefinition: true)
!222 = distinct !DISubprogram(name: "verror_at_line", scope: !217, file: !217, line: 298, type: !223, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !239)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !62, !62, !67, !6, !67, !225}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !226, line: 52, baseType: !227)
!226 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !228, line: 32, baseType: !229)
!228 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !230, baseType: !231)
!230 = !DIFile(filename: "lib/error.c", directory: "/src")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !233)
!232 = !DINamespace(name: "std", scope: null)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !231, file: !230, baseType: !56, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !231, file: !230, baseType: !56, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !231, file: !230, baseType: !56, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !231, file: !230, baseType: !62, size: 32, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !231, file: !230, baseType: !62, size: 32, offset: 224)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DILocalVariable(name: "status", arg: 1, scope: !222, file: !217, line: 298, type: !62)
!241 = !DILocalVariable(name: "errnum", arg: 2, scope: !222, file: !217, line: 298, type: !62)
!242 = !DILocalVariable(name: "file_name", arg: 3, scope: !222, file: !217, line: 298, type: !67)
!243 = !DILocalVariable(name: "line_number", arg: 4, scope: !222, file: !217, line: 298, type: !6)
!244 = !DILocalVariable(name: "message", arg: 5, scope: !222, file: !217, line: 298, type: !67)
!245 = !DILocalVariable(name: "args", arg: 6, scope: !222, file: !217, line: 298, type: !225)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "old_line_number", scope: !222, file: !217, line: 305, type: !6, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "error_message_count", scope: !216, file: !217, line: 69, type: !6, isLocal: false, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !216, file: !217, line: 295, type: !62, isLocal: false, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "program_name", scope: !254, file: !255, line: 31, type: !67, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !256, globals: !257, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!256 = !{!54}
!257 = !{!252}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "utf07FF", scope: !260, file: !261, line: 46, type: !289, isLocal: true, isDefinition: true)
!260 = distinct !DISubprogram(name: "proper_name_lite", scope: !261, file: !261, line: 38, type: !262, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !266)
!261 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!262 = !DISubroutineType(types: !263)
!263 = !{!67, !67, !67}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !265, splitDebugInlining: false, nameTableKind: None)
!265 = !{!258}
!266 = !{!267, !268, !269, !270, !275}
!267 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !260, file: !261, line: 38, type: !67)
!268 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !260, file: !261, line: 38, type: !67)
!269 = !DILocalVariable(name: "translation", scope: !260, file: !261, line: 40, type: !67)
!270 = !DILocalVariable(name: "w", scope: !260, file: !261, line: 47, type: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !272, line: 37, baseType: !273)
!272 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !130, line: 57, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !130, line: 42, baseType: !6)
!275 = !DILocalVariable(name: "mbs", scope: !260, file: !261, line: 48, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !278)
!277 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !280)
!279 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !280, file: !279, line: 15, baseType: !62, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !280, file: !279, line: 20, baseType: !284, size: 32, offset: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 16, size: 32, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !284, file: !279, line: 18, baseType: !6, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !284, file: !279, line: 19, baseType: !288, size: 32)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !168)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !294, file: !295, line: 76, type: !363, isLocal: false, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !302, globals: !303, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!296 = !{!37, !297, !13}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !38, line: 254, baseType: !6, size: 32, elements: !298)
!298 = !{!299, !300, !301}
!299 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!300 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!301 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!302 = !{!62, !63, !64}
!303 = !{!292, !304, !310, !322, !324, !329, !352, !359, !361}
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !294, file: !295, line: 92, type: !306, isLocal: false, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 320, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!308 = !{!309}
!309 = !DISubrange(count: 10)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !294, file: !295, line: 1040, type: !312, isLocal: false, isDefinition: true)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !295, line: 56, size: 448, elements: !313)
!313 = !{!314, !315, !316, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !312, file: !295, line: 59, baseType: !37, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !295, line: 62, baseType: !62, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !312, file: !295, line: 66, baseType: !317, size: 256, offset: 64)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !312, file: !295, line: 69, baseType: !67, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !312, file: !295, line: 72, baseType: !67, size: 64, offset: 384)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !294, file: !295, line: 107, type: !312, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "slot0", scope: !294, file: !295, line: 831, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 256)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "quote", scope: !331, file: !295, line: 228, type: !350, isLocal: true, isDefinition: true)
!331 = distinct !DISubprogram(name: "gettext_quote", scope: !295, file: !295, line: 197, type: !332, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!67, !67, !37}
!334 = !{!335, !336, !337, !338, !339}
!335 = !DILocalVariable(name: "msgid", arg: 1, scope: !331, file: !295, line: 197, type: !67)
!336 = !DILocalVariable(name: "s", arg: 2, scope: !331, file: !295, line: 197, type: !37)
!337 = !DILocalVariable(name: "translation", scope: !331, file: !295, line: 199, type: !67)
!338 = !DILocalVariable(name: "w", scope: !331, file: !295, line: 229, type: !271)
!339 = !DILocalVariable(name: "mbs", scope: !331, file: !295, line: 230, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !279, line: 15, baseType: !62, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !279, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !279, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !279, line: 18, baseType: !6, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !279, line: 19, baseType: !288, size: 32)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !351)
!351 = !{!291, !169}
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "slotvec", scope: !294, file: !295, line: 834, type: !354, isLocal: true, isDefinition: true)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !295, line: 823, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !355, file: !295, line: 825, baseType: !64, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !295, line: 826, baseType: !54, size: 64, offset: 64)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "nslots", scope: !294, file: !295, line: 832, type: !62, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "slotvec0", scope: !294, file: !295, line: 833, type: !355, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 704, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 11)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !368, file: !369, line: 26, type: !371, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !370, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!370 = !{!366}
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 376, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 47)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "exit_failure", scope: !376, file: !377, line: 24, type: !379, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !378, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!378 = !{!374}
!379 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "internal_state", scope: !382, file: !383, line: 97, type: !386, isLocal: true, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, globals: !385, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!384 = !{!56, !64, !69}
!385 = !{!380}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !388, file: !279, line: 15, baseType: !62, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !388, file: !279, line: 20, baseType: !392, size: 32, offset: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !279, line: 16, size: 32, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !392, file: !279, line: 18, baseType: !6, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !392, file: !279, line: 19, baseType: !288, size: 32)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !398, file: !399, line: 506, type: !62, isLocal: true, isDefinition: true)
!398 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !399, file: !399, line: 485, type: !400, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !404)
!399 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!400 = !DISubroutineType(types: !401)
!401 = !{!62, !62, !62}
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !403, splitDebugInlining: false, nameTableKind: None)
!403 = !{!396}
!404 = !{!405, !406, !407, !408, !411}
!405 = !DILocalVariable(name: "fd", arg: 1, scope: !398, file: !399, line: 485, type: !62)
!406 = !DILocalVariable(name: "target", arg: 2, scope: !398, file: !399, line: 485, type: !62)
!407 = !DILocalVariable(name: "result", scope: !398, file: !399, line: 487, type: !62)
!408 = !DILocalVariable(name: "flags", scope: !409, file: !399, line: 530, type: !62)
!409 = distinct !DILexicalBlock(scope: !410, file: !399, line: 529, column: 5)
!410 = distinct !DILexicalBlock(scope: !398, file: !399, line: 528, column: 7)
!411 = !DILocalVariable(name: "saved_errno", scope: !412, file: !399, line: 533, type: !62)
!412 = distinct !DILexicalBlock(scope: !413, file: !399, line: 532, column: 9)
!413 = distinct !DILexicalBlock(scope: !409, file: !399, line: 531, column: 11)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "src/iopoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "994e71aa1d7ebbae5028422474ffd3c4")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!418 = !{!28}
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !429, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!429 = !{!430}
!430 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !428, line: 40, baseType: !6, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!433 = !{!56}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!436 = !{!437, !449}
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !438, file: !435, line: 188, baseType: !6, size: 32, elements: !447)
!438 = distinct !DISubprogram(name: "x2nrealloc", scope: !435, file: !435, line: 176, type: !439, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !442)
!439 = !DISubroutineType(types: !440)
!440 = !{!56, !56, !441, !64}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "p", arg: 1, scope: !438, file: !435, line: 176, type: !56)
!444 = !DILocalVariable(name: "pn", arg: 2, scope: !438, file: !435, line: 176, type: !441)
!445 = !DILocalVariable(name: "s", arg: 3, scope: !438, file: !435, line: 176, type: !64)
!446 = !DILocalVariable(name: "n", scope: !438, file: !435, line: 178, type: !64)
!447 = !{!448}
!448 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !450, file: !435, line: 228, baseType: !6, size: 32, elements: !447)
!450 = distinct !DISubprogram(name: "xpalloc", scope: !435, file: !435, line: 223, type: !451, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !457)
!451 = !DISubroutineType(types: !452)
!452 = !{!56, !56, !453, !454, !456, !454}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !455, line: 130, baseType: !456)
!455 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !65, line: 35, baseType: !131)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466}
!458 = !DILocalVariable(name: "pa", arg: 1, scope: !450, file: !435, line: 223, type: !56)
!459 = !DILocalVariable(name: "pn", arg: 2, scope: !450, file: !435, line: 223, type: !453)
!460 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !450, file: !435, line: 223, type: !454)
!461 = !DILocalVariable(name: "n_max", arg: 4, scope: !450, file: !435, line: 223, type: !456)
!462 = !DILocalVariable(name: "s", arg: 5, scope: !450, file: !435, line: 223, type: !454)
!463 = !DILocalVariable(name: "n0", scope: !450, file: !435, line: 230, type: !454)
!464 = !DILocalVariable(name: "n", scope: !450, file: !435, line: 237, type: !454)
!465 = !DILocalVariable(name: "nbytes", scope: !450, file: !435, line: 248, type: !454)
!466 = !DILocalVariable(name: "adjusted_nbytes", scope: !450, file: !435, line: 252, type: !454)
!467 = !{!54, !56, !73, !131, !66}
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!470 = distinct !DICompileUnit(language: DW_LANG_C99, file: !471, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !480, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!480 = !{!73, !66, !56}
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!489 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!490 = !{i32 7, !"Dwarf Version", i32 5}
!491 = !{i32 2, !"Debug Info Version", i32 3}
!492 = !{i32 1, !"wchar_size", i32 4}
!493 = !{i32 1, !"branch-target-enforcement", i32 0}
!494 = !{i32 1, !"sign-return-address", i32 0}
!495 = !{i32 1, !"sign-return-address-all", i32 0}
!496 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!497 = !{i32 7, !"PIC Level", i32 2}
!498 = !{i32 7, !"PIE Level", i32 2}
!499 = !{i32 7, !"uwtable", i32 1}
!500 = !{i32 7, !"frame-pointer", i32 1}
!501 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !60, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !502)
!502 = !{!503}
!503 = !DILocalVariable(name: "status", arg: 1, scope: !501, file: !3, line: 81, type: !62)
!504 = !DILocation(line: 0, scope: !501)
!505 = !DILocation(line: 83, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 83, column: 7)
!507 = !DILocation(line: 83, column: 7, scope: !501)
!508 = !DILocation(line: 84, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !3, line: 84, column: 5)
!510 = !{!511, !511, i64 0}
!511 = !{!"any pointer", !512, i64 0}
!512 = !{!"omnipotent char", !513, i64 0}
!513 = !{!"Simple C/C++ TBAA"}
!514 = !DILocation(line: 87, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !506, file: !3, line: 86, column: 5)
!516 = !DILocation(line: 88, column: 7, scope: !515)
!517 = !DILocation(line: 92, column: 7, scope: !515)
!518 = !DILocation(line: 96, column: 7, scope: !515)
!519 = !DILocation(line: 100, column: 7, scope: !515)
!520 = !DILocation(line: 104, column: 7, scope: !515)
!521 = !DILocation(line: 108, column: 7, scope: !515)
!522 = !DILocation(line: 109, column: 7, scope: !515)
!523 = !DILocation(line: 110, column: 7, scope: !515)
!524 = !DILocalVariable(name: "program", arg: 1, scope: !525, file: !81, line: 836, type: !67)
!525 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !81, file: !81, line: 836, type: !526, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !67}
!528 = !{!524, !529, !538, !539, !541, !542}
!529 = !DILocalVariable(name: "infomap", scope: !525, file: !81, line: 838, type: !530)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 896, elements: !536)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !525, file: !81, line: 838, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !532, file: !81, line: 838, baseType: !67, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !81, line: 838, baseType: !67, size: 64, offset: 64)
!536 = !{!537}
!537 = !DISubrange(count: 7)
!538 = !DILocalVariable(name: "node", scope: !525, file: !81, line: 848, type: !67)
!539 = !DILocalVariable(name: "map_prog", scope: !525, file: !81, line: 849, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!541 = !DILocalVariable(name: "lc_messages", scope: !525, file: !81, line: 861, type: !67)
!542 = !DILocalVariable(name: "url_program", scope: !525, file: !81, line: 874, type: !67)
!543 = !DILocation(line: 0, scope: !525, inlinedAt: !544)
!544 = distinct !DILocation(line: 123, column: 7, scope: !515)
!545 = !DILocation(line: 838, column: 3, scope: !525, inlinedAt: !544)
!546 = !DILocation(line: 838, column: 67, scope: !525, inlinedAt: !544)
!547 = !DILocation(line: 849, column: 36, scope: !525, inlinedAt: !544)
!548 = !DILocation(line: 851, column: 3, scope: !525, inlinedAt: !544)
!549 = !DILocalVariable(name: "__s1", arg: 1, scope: !550, file: !551, line: 1359, type: !67)
!550 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!551 = !DIFile(filename: "./lib/string.h", directory: "/src")
!552 = !DISubroutineType(types: !553)
!553 = !{!73, !67, !67}
!554 = !{!549, !555}
!555 = !DILocalVariable(name: "__s2", arg: 2, scope: !550, file: !551, line: 1359, type: !67)
!556 = !DILocation(line: 0, scope: !550, inlinedAt: !557)
!557 = distinct !DILocation(line: 851, column: 33, scope: !525, inlinedAt: !544)
!558 = !DILocation(line: 1361, column: 11, scope: !550, inlinedAt: !557)
!559 = !DILocation(line: 1361, column: 10, scope: !550, inlinedAt: !557)
!560 = !DILocation(line: 852, column: 13, scope: !525, inlinedAt: !544)
!561 = !DILocation(line: 851, column: 20, scope: !525, inlinedAt: !544)
!562 = !{!563, !511, i64 0}
!563 = !{!"infomap", !511, i64 0, !511, i64 8}
!564 = !DILocation(line: 851, column: 10, scope: !525, inlinedAt: !544)
!565 = !DILocation(line: 851, column: 28, scope: !525, inlinedAt: !544)
!566 = distinct !{!566, !548, !560, !567}
!567 = !{!"llvm.loop.mustprogress"}
!568 = !DILocation(line: 854, column: 17, scope: !569, inlinedAt: !544)
!569 = distinct !DILexicalBlock(scope: !525, file: !81, line: 854, column: 7)
!570 = !{!563, !511, i64 8}
!571 = !DILocation(line: 854, column: 7, scope: !569, inlinedAt: !544)
!572 = !DILocation(line: 854, column: 7, scope: !525, inlinedAt: !544)
!573 = !DILocation(line: 857, column: 3, scope: !525, inlinedAt: !544)
!574 = !DILocation(line: 861, column: 29, scope: !525, inlinedAt: !544)
!575 = !DILocation(line: 862, column: 7, scope: !576, inlinedAt: !544)
!576 = distinct !DILexicalBlock(scope: !525, file: !81, line: 862, column: 7)
!577 = !DILocation(line: 862, column: 19, scope: !576, inlinedAt: !544)
!578 = !DILocation(line: 862, column: 22, scope: !576, inlinedAt: !544)
!579 = !DILocation(line: 862, column: 7, scope: !525, inlinedAt: !544)
!580 = !DILocation(line: 868, column: 7, scope: !581, inlinedAt: !544)
!581 = distinct !DILexicalBlock(scope: !576, file: !81, line: 863, column: 5)
!582 = !DILocation(line: 870, column: 5, scope: !581, inlinedAt: !544)
!583 = !DILocation(line: 0, scope: !550, inlinedAt: !584)
!584 = distinct !DILocation(line: 874, column: 29, scope: !525, inlinedAt: !544)
!585 = !DILocation(line: 875, column: 3, scope: !525, inlinedAt: !544)
!586 = !DILocation(line: 877, column: 3, scope: !525, inlinedAt: !544)
!587 = !DILocation(line: 879, column: 1, scope: !525, inlinedAt: !544)
!588 = !DILocation(line: 125, column: 3, scope: !501)
!589 = !DISubprogram(name: "dcgettext", scope: !590, file: !590, line: 51, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!590 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!591 = !DISubroutineType(types: !592)
!592 = !{!54, !67, !67, !62}
!593 = !{}
!594 = !DISubprogram(name: "fputs_unlocked", scope: !226, file: !226, line: 691, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!595 = !DISubroutineType(types: !596)
!596 = !{!62, !597, !598}
!597 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!599 = !DILocation(line: 0, scope: !80)
!600 = !DILocation(line: 581, column: 7, scope: !89)
!601 = !{!602, !602, i64 0}
!602 = !{!"int", !512, i64 0}
!603 = !DILocation(line: 581, column: 19, scope: !89)
!604 = !DILocation(line: 581, column: 7, scope: !80)
!605 = !DILocation(line: 585, column: 26, scope: !88)
!606 = !DILocation(line: 0, scope: !88)
!607 = !DILocation(line: 586, column: 23, scope: !88)
!608 = !DILocation(line: 586, column: 28, scope: !88)
!609 = !DILocation(line: 586, column: 32, scope: !88)
!610 = !{!512, !512, i64 0}
!611 = !DILocation(line: 586, column: 38, scope: !88)
!612 = !DILocation(line: 0, scope: !550, inlinedAt: !613)
!613 = distinct !DILocation(line: 586, column: 41, scope: !88)
!614 = !DILocation(line: 1361, column: 11, scope: !550, inlinedAt: !613)
!615 = !DILocation(line: 1361, column: 10, scope: !550, inlinedAt: !613)
!616 = !DILocation(line: 586, column: 19, scope: !88)
!617 = !DILocation(line: 587, column: 5, scope: !88)
!618 = !DILocation(line: 588, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !80, file: !81, line: 588, column: 7)
!620 = !DILocation(line: 588, column: 7, scope: !80)
!621 = !DILocation(line: 590, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !81, line: 589, column: 5)
!623 = !DILocation(line: 591, column: 7, scope: !622)
!624 = !DILocation(line: 595, column: 37, scope: !80)
!625 = !DILocation(line: 595, column: 35, scope: !80)
!626 = !DILocation(line: 596, column: 29, scope: !80)
!627 = !DILocation(line: 597, column: 8, scope: !96)
!628 = !DILocation(line: 597, column: 7, scope: !80)
!629 = !DILocation(line: 604, column: 24, scope: !95)
!630 = !DILocation(line: 604, column: 12, scope: !96)
!631 = !DILocation(line: 0, scope: !94)
!632 = !DILocation(line: 610, column: 16, scope: !94)
!633 = !DILocation(line: 610, column: 7, scope: !94)
!634 = !DILocation(line: 611, column: 21, scope: !94)
!635 = !{!636, !636, i64 0}
!636 = !{!"short", !512, i64 0}
!637 = !DILocation(line: 611, column: 19, scope: !94)
!638 = !DILocation(line: 611, column: 16, scope: !94)
!639 = !DILocation(line: 610, column: 30, scope: !94)
!640 = distinct !{!640, !633, !634, !567}
!641 = !DILocation(line: 612, column: 18, scope: !642)
!642 = distinct !DILexicalBlock(scope: !94, file: !81, line: 612, column: 11)
!643 = !DILocation(line: 612, column: 11, scope: !94)
!644 = !DILocation(line: 620, column: 23, scope: !80)
!645 = !DILocation(line: 625, column: 39, scope: !80)
!646 = !DILocation(line: 626, column: 3, scope: !80)
!647 = !DILocation(line: 626, column: 10, scope: !80)
!648 = !DILocation(line: 626, column: 21, scope: !80)
!649 = !DILocation(line: 628, column: 44, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !81, line: 628, column: 11)
!651 = distinct !DILexicalBlock(scope: !80, file: !81, line: 627, column: 5)
!652 = !DILocation(line: 628, column: 32, scope: !650)
!653 = !DILocation(line: 628, column: 49, scope: !650)
!654 = !DILocation(line: 628, column: 11, scope: !651)
!655 = !DILocation(line: 630, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !81, line: 630, column: 11)
!657 = !DILocation(line: 630, column: 11, scope: !651)
!658 = !DILocation(line: 632, column: 26, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !81, line: 632, column: 15)
!660 = distinct !DILexicalBlock(scope: !656, file: !81, line: 631, column: 9)
!661 = !DILocation(line: 632, column: 34, scope: !659)
!662 = !DILocation(line: 632, column: 37, scope: !659)
!663 = !DILocation(line: 632, column: 15, scope: !660)
!664 = !DILocation(line: 636, column: 29, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !81, line: 636, column: 15)
!666 = !DILocation(line: 640, column: 16, scope: !651)
!667 = distinct !{!667, !646, !668, !567}
!668 = !DILocation(line: 641, column: 5, scope: !80)
!669 = !DILocation(line: 644, column: 3, scope: !80)
!670 = !DILocation(line: 0, scope: !550, inlinedAt: !671)
!671 = distinct !DILocation(line: 648, column: 31, scope: !80)
!672 = !DILocation(line: 0, scope: !550, inlinedAt: !673)
!673 = distinct !DILocation(line: 649, column: 31, scope: !80)
!674 = !DILocation(line: 0, scope: !550, inlinedAt: !675)
!675 = distinct !DILocation(line: 650, column: 31, scope: !80)
!676 = !DILocation(line: 0, scope: !550, inlinedAt: !677)
!677 = distinct !DILocation(line: 651, column: 31, scope: !80)
!678 = !DILocation(line: 0, scope: !550, inlinedAt: !679)
!679 = distinct !DILocation(line: 652, column: 31, scope: !80)
!680 = !DILocation(line: 0, scope: !550, inlinedAt: !681)
!681 = distinct !DILocation(line: 653, column: 31, scope: !80)
!682 = !DILocation(line: 0, scope: !550, inlinedAt: !683)
!683 = distinct !DILocation(line: 654, column: 31, scope: !80)
!684 = !DILocation(line: 0, scope: !550, inlinedAt: !685)
!685 = distinct !DILocation(line: 655, column: 31, scope: !80)
!686 = !DILocation(line: 0, scope: !550, inlinedAt: !687)
!687 = distinct !DILocation(line: 656, column: 31, scope: !80)
!688 = !DILocation(line: 0, scope: !550, inlinedAt: !689)
!689 = distinct !DILocation(line: 657, column: 31, scope: !80)
!690 = !DILocation(line: 663, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !80, file: !81, line: 663, column: 7)
!692 = !DILocation(line: 664, column: 7, scope: !691)
!693 = !DILocation(line: 664, column: 10, scope: !691)
!694 = !DILocation(line: 663, column: 7, scope: !80)
!695 = !DILocation(line: 669, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !81, line: 665, column: 5)
!697 = !DILocation(line: 671, column: 5, scope: !696)
!698 = !DILocation(line: 676, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !81, line: 673, column: 5)
!700 = !DILocation(line: 679, column: 3, scope: !80)
!701 = !DILocation(line: 683, column: 3, scope: !80)
!702 = !DILocation(line: 686, column: 3, scope: !80)
!703 = !DILocation(line: 688, column: 3, scope: !80)
!704 = !DILocation(line: 691, column: 3, scope: !80)
!705 = !DILocation(line: 695, column: 3, scope: !80)
!706 = !DILocation(line: 696, column: 1, scope: !80)
!707 = !DISubprogram(name: "setlocale", scope: !708, file: !708, line: 122, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!708 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!709 = !DISubroutineType(types: !710)
!710 = !{!54, !62, !67}
!711 = !DISubprogram(name: "getenv", scope: !712, file: !712, line: 641, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!712 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!713 = !DISubroutineType(types: !714)
!714 = !{!54, !67}
!715 = !DISubprogram(name: "fwrite_unlocked", scope: !226, file: !226, line: 704, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!716 = !DISubroutineType(types: !717)
!717 = !{!64, !718, !64, !64, !598}
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!719 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 129, type: !720, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!720 = !DISubroutineType(types: !721)
!721 = !{!62, !62, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!723 = !{!724, !725, !726, !727, !728}
!724 = !DILocalVariable(name: "argc", arg: 1, scope: !719, file: !3, line: 129, type: !62)
!725 = !DILocalVariable(name: "argv", arg: 2, scope: !719, file: !3, line: 129, type: !722)
!726 = !DILocalVariable(name: "optc", scope: !719, file: !3, line: 139, type: !62)
!727 = !DILocalVariable(name: "pipe_check", scope: !719, file: !3, line: 177, type: !73)
!728 = !DILocalVariable(name: "ok", scope: !719, file: !3, line: 184, type: !73)
!729 = !DILocation(line: 0, scope: !719)
!730 = !DILocation(line: 132, column: 21, scope: !719)
!731 = !DILocation(line: 132, column: 3, scope: !719)
!732 = !DILocation(line: 133, column: 3, scope: !719)
!733 = !DILocation(line: 134, column: 3, scope: !719)
!734 = !DILocation(line: 135, column: 3, scope: !719)
!735 = !DILocation(line: 137, column: 3, scope: !719)
!736 = !DILocation(line: 140, column: 3, scope: !719)
!737 = !DILocation(line: 140, column: 18, scope: !719)
!738 = !DILocation(line: 145, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 143, column: 9)
!740 = distinct !DILexicalBlock(scope: !719, file: !3, line: 141, column: 5)
!741 = !DILocation(line: 146, column: 11, scope: !739)
!742 = !DILocation(line: 149, column: 29, scope: !739)
!743 = !DILocation(line: 150, column: 11, scope: !739)
!744 = !DILocation(line: 153, column: 15, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 153, column: 15)
!746 = !DILocation(line: 153, column: 15, scope: !739)
!747 = !DILocation(line: 154, column: 28, scope: !745)
!748 = !DILocation(line: 154, column: 26, scope: !745)
!749 = !DILocation(line: 154, column: 13, scope: !745)
!750 = distinct !{!750, !736, !751, !567}
!751 = !DILocation(line: 167, column: 5, scope: !719)
!752 = !DILocation(line: 157, column: 26, scope: !745)
!753 = !DILocation(line: 160, column: 9, scope: !739)
!754 = !DILocation(line: 162, column: 9, scope: !739)
!755 = !DILocation(line: 165, column: 11, scope: !739)
!756 = !DILocation(line: 169, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !719, file: !3, line: 169, column: 7)
!758 = !DILocation(line: 169, column: 7, scope: !719)
!759 = !DILocation(line: 170, column: 5, scope: !757)
!760 = !DILocation(line: 172, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !719, file: !3, line: 172, column: 7)
!762 = !DILocation(line: 172, column: 20, scope: !761)
!763 = !DILocation(line: 172, column: 7, scope: !719)
!764 = !DILocation(line: 173, column: 5, scope: !761)
!765 = !DILocation(line: 177, column: 23, scope: !719)
!766 = !DILocation(line: 178, column: 23, scope: !719)
!767 = !DILocation(line: 179, column: 25, scope: !719)
!768 = !DILocation(line: 184, column: 31, scope: !719)
!769 = !DILocation(line: 184, column: 29, scope: !719)
!770 = !DILocation(line: 184, column: 40, scope: !719)
!771 = !DILocalVariable(name: "nfiles", arg: 1, scope: !772, file: !3, line: 231, type: !62)
!772 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 231, type: !773, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!73, !62, !722, !73}
!775 = !{!771, !776, !777, !778, !779, !780, !782, !786, !790, !791, !792, !793, !795, !802, !806, !808}
!776 = !DILocalVariable(name: "files", arg: 2, scope: !772, file: !3, line: 231, type: !722)
!777 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !772, file: !3, line: 231, type: !73)
!778 = !DILocalVariable(name: "n_outputs", scope: !772, file: !3, line: 233, type: !64)
!779 = !DILocalVariable(name: "descriptors", scope: !772, file: !3, line: 234, type: !184)
!780 = !DILocalVariable(name: "out_pollable", scope: !772, file: !3, line: 235, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!782 = !DILocalVariable(name: "buffer", scope: !772, file: !3, line: 236, type: !783)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 65536, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 8192)
!786 = !DILocalVariable(name: "bytes_read", scope: !772, file: !3, line: 237, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !788, line: 108, baseType: !789)
!788 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !130, line: 194, baseType: !131)
!790 = !DILocalVariable(name: "first_out", scope: !772, file: !3, line: 238, type: !62)
!791 = !DILocalVariable(name: "ok", scope: !772, file: !3, line: 239, type: !73)
!792 = !DILocalVariable(name: "flags", scope: !772, file: !3, line: 240, type: !62)
!793 = !DILocalVariable(name: "i", scope: !794, file: !3, line: 259, type: !62)
!794 = distinct !DILexicalBlock(scope: !772, file: !3, line: 259, column: 3)
!795 = !DILocalVariable(name: "__errstatus", scope: !796, file: !3, line: 267, type: !801)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 267, column: 11)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 264, column: 9)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 263, column: 11)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 260, column: 5)
!800 = distinct !DILexicalBlock(scope: !794, file: !3, line: 259, column: 3)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!802 = !DILocalVariable(name: "err", scope: !803, file: !3, line: 285, type: !62)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 283, column: 9)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 282, column: 11)
!805 = distinct !DILexicalBlock(scope: !772, file: !3, line: 281, column: 5)
!806 = !DILocalVariable(name: "i", scope: !807, file: !3, line: 312, type: !62)
!807 = distinct !DILexicalBlock(scope: !805, file: !3, line: 312, column: 7)
!808 = !DILocalVariable(name: "i", scope: !809, file: !3, line: 331, type: !62)
!809 = distinct !DILexicalBlock(scope: !772, file: !3, line: 331, column: 3)
!810 = !DILocation(line: 0, scope: !772, inlinedAt: !811)
!811 = distinct !DILocation(line: 184, column: 13, scope: !719)
!812 = !DILocation(line: 236, column: 3, scope: !772, inlinedAt: !811)
!813 = !DILocation(line: 236, column: 8, scope: !772, inlinedAt: !811)
!814 = !DILocation(line: 240, column: 48, scope: !772, inlinedAt: !811)
!815 = !DILocation(line: 240, column: 45, scope: !772, inlinedAt: !811)
!816 = !DILocation(line: 244, column: 12, scope: !772, inlinedAt: !811)
!817 = !DILocation(line: 244, column: 3, scope: !772, inlinedAt: !811)
!818 = !DILocation(line: 249, column: 34, scope: !772, inlinedAt: !811)
!819 = !DILocation(line: 249, column: 27, scope: !772, inlinedAt: !811)
!820 = !DILocation(line: 249, column: 17, scope: !772, inlinedAt: !811)
!821 = !DILocation(line: 250, column: 7, scope: !772, inlinedAt: !811)
!822 = !DILocation(line: 253, column: 18, scope: !772, inlinedAt: !811)
!823 = !DILocation(line: 251, column: 20, scope: !824, inlinedAt: !811)
!824 = distinct !DILexicalBlock(scope: !772, file: !3, line: 250, column: 7)
!825 = !DILocation(line: 255, column: 23, scope: !826, inlinedAt: !811)
!826 = distinct !DILexicalBlock(scope: !772, file: !3, line: 254, column: 7)
!827 = !DILocation(line: 255, column: 21, scope: !826, inlinedAt: !811)
!828 = !{!829, !829, i64 0}
!829 = !{!"_Bool", !512, i64 0}
!830 = !DILocation(line: 255, column: 5, scope: !826, inlinedAt: !811)
!831 = !DILocation(line: 252, column: 8, scope: !772, inlinedAt: !811)
!832 = !DILocation(line: 256, column: 24, scope: !772, inlinedAt: !811)
!833 = !DILocation(line: 256, column: 12, scope: !772, inlinedAt: !811)
!834 = !DILocation(line: 0, scope: !794, inlinedAt: !811)
!835 = !DILocation(line: 259, column: 21, scope: !800, inlinedAt: !811)
!836 = !DILocation(line: 259, column: 3, scope: !794, inlinedAt: !811)
!837 = !DILocation(line: 280, column: 3, scope: !772, inlinedAt: !811)
!838 = !DILocation(line: 262, column: 30, scope: !799, inlinedAt: !811)
!839 = !DILocation(line: 262, column: 24, scope: !799, inlinedAt: !811)
!840 = !DILocation(line: 262, column: 7, scope: !799, inlinedAt: !811)
!841 = !DILocation(line: 262, column: 22, scope: !799, inlinedAt: !811)
!842 = !DILocation(line: 263, column: 26, scope: !798, inlinedAt: !811)
!843 = !DILocation(line: 263, column: 11, scope: !799, inlinedAt: !811)
!844 = !DILocation(line: 265, column: 15, scope: !797, inlinedAt: !811)
!845 = !DILocation(line: 266, column: 13, scope: !846, inlinedAt: !811)
!846 = distinct !DILexicalBlock(scope: !797, file: !3, line: 265, column: 15)
!847 = !DILocation(line: 266, column: 29, scope: !846, inlinedAt: !811)
!848 = !DILocation(line: 267, column: 11, scope: !797, inlinedAt: !811)
!849 = !DILocation(line: 0, scope: !797, inlinedAt: !811)
!850 = !DILocation(line: 0, scope: !796, inlinedAt: !811)
!851 = !DILocation(line: 267, column: 11, scope: !796, inlinedAt: !811)
!852 = !DILocation(line: 274, column: 15, scope: !853, inlinedAt: !811)
!853 = distinct !DILexicalBlock(scope: !798, file: !3, line: 273, column: 9)
!854 = !DILocation(line: 275, column: 31, scope: !855, inlinedAt: !811)
!855 = distinct !DILexicalBlock(scope: !853, file: !3, line: 274, column: 15)
!856 = !DILocation(line: 275, column: 13, scope: !855, inlinedAt: !811)
!857 = !DILocation(line: 275, column: 29, scope: !855, inlinedAt: !811)
!858 = !DILocation(line: 276, column: 20, scope: !853, inlinedAt: !811)
!859 = !DILocation(line: 259, column: 33, scope: !800, inlinedAt: !811)
!860 = distinct !{!860, !836, !861, !567}
!861 = !DILocation(line: 278, column: 5, scope: !794, inlinedAt: !811)
!862 = !DILocation(line: 282, column: 22, scope: !804, inlinedAt: !811)
!863 = !DILocation(line: 282, column: 25, scope: !804, inlinedAt: !811)
!864 = !{i8 0, i8 2}
!865 = !DILocation(line: 282, column: 11, scope: !805, inlinedAt: !811)
!866 = !DILocation(line: 285, column: 43, scope: !803, inlinedAt: !811)
!867 = !DILocation(line: 285, column: 21, scope: !803, inlinedAt: !811)
!868 = !DILocation(line: 0, scope: !803, inlinedAt: !811)
!869 = !DILocation(line: 288, column: 15, scope: !803, inlinedAt: !811)
!870 = !DILocation(line: 290, column: 15, scope: !871, inlinedAt: !811)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 289, column: 13)
!872 = distinct !DILexicalBlock(scope: !803, file: !3, line: 288, column: 15)
!873 = !DILocation(line: 290, column: 21, scope: !871, inlinedAt: !811)
!874 = !DILocalVariable(name: "descriptors", arg: 1, scope: !875, file: !3, line: 209, type: !184)
!875 = distinct !DISubprogram(name: "fail_output", scope: !3, file: !3, line: 209, type: !876, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!73, !184, !722, !62}
!878 = !{!874, !879, !880, !881, !882, !883}
!879 = !DILocalVariable(name: "files", arg: 2, scope: !875, file: !3, line: 209, type: !722)
!880 = !DILocalVariable(name: "i", arg: 3, scope: !875, file: !3, line: 209, type: !62)
!881 = !DILocalVariable(name: "w_errno", scope: !875, file: !3, line: 211, type: !62)
!882 = !DILocalVariable(name: "fail", scope: !875, file: !3, line: 212, type: !73)
!883 = !DILocalVariable(name: "__errstatus", scope: !884, file: !3, line: 217, type: !801)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 217, column: 7)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 216, column: 5)
!886 = distinct !DILexicalBlock(scope: !875, file: !3, line: 215, column: 7)
!887 = !DILocation(line: 0, scope: !875, inlinedAt: !888)
!888 = distinct !DILocation(line: 291, column: 19, scope: !889, inlinedAt: !811)
!889 = distinct !DILexicalBlock(scope: !871, file: !3, line: 291, column: 19)
!890 = !DILocation(line: 215, column: 7, scope: !875, inlinedAt: !888)
!891 = !DILocation(line: 217, column: 7, scope: !885, inlinedAt: !888)
!892 = !DILocation(line: 0, scope: !885, inlinedAt: !888)
!893 = !DILocation(line: 0, scope: !884, inlinedAt: !888)
!894 = !DILocation(line: 217, column: 7, scope: !884, inlinedAt: !888)
!895 = !DILocation(line: 213, column: 15, scope: !875, inlinedAt: !888)
!896 = !DILocation(line: 221, column: 18, scope: !875, inlinedAt: !888)
!897 = !DILocation(line: 291, column: 19, scope: !871, inlinedAt: !811)
!898 = !DILocation(line: 293, column: 24, scope: !871, inlinedAt: !811)
!899 = !DILocalVariable(name: "descriptors", arg: 1, scope: !900, file: !3, line: 197, type: !184)
!900 = distinct !DISubprogram(name: "get_next_out", scope: !3, file: !3, line: 197, type: !901, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!62, !184, !62, !62}
!903 = !{!899, !904, !905}
!904 = !DILocalVariable(name: "nfiles", arg: 2, scope: !900, file: !3, line: 197, type: !62)
!905 = !DILocalVariable(name: "idx", arg: 3, scope: !900, file: !3, line: 197, type: !62)
!906 = !DILocation(line: 0, scope: !900, inlinedAt: !907)
!907 = distinct !DILocation(line: 294, column: 27, scope: !871, inlinedAt: !811)
!908 = !DILocation(line: 199, column: 8, scope: !909, inlinedAt: !907)
!909 = distinct !DILexicalBlock(scope: !900, file: !3, line: 199, column: 3)
!910 = !DILocation(line: 199, column: 19, scope: !911, inlinedAt: !907)
!911 = distinct !DILexicalBlock(scope: !909, file: !3, line: 199, column: 3)
!912 = !DILocation(line: 0, scope: !909, inlinedAt: !907)
!913 = !DILocation(line: 199, column: 3, scope: !909, inlinedAt: !907)
!914 = distinct !{!914, !837, !915, !567}
!915 = !DILocation(line: 322, column: 5, scope: !772, inlinedAt: !811)
!916 = !DILocation(line: 200, column: 14, scope: !917, inlinedAt: !907)
!917 = distinct !DILexicalBlock(scope: !911, file: !3, line: 200, column: 9)
!918 = !DILocation(line: 200, column: 11, scope: !917, inlinedAt: !907)
!919 = !DILocation(line: 200, column: 9, scope: !911, inlinedAt: !907)
!920 = distinct !{!920, !913, !921, !567}
!921 = !DILocation(line: 201, column: 14, scope: !909, inlinedAt: !907)
!922 = !DILocation(line: 203, column: 1, scope: !900, inlinedAt: !907)
!923 = distinct !{!923, !837, !915, !567}
!924 = !DILocation(line: 299, column: 15, scope: !925, inlinedAt: !811)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 298, column: 13)
!926 = distinct !DILexicalBlock(scope: !872, file: !3, line: 297, column: 20)
!927 = !DILocation(line: 301, column: 13, scope: !925, inlinedAt: !811)
!928 = !DILocation(line: 304, column: 20, scope: !805, inlinedAt: !811)
!929 = !DILocation(line: 305, column: 22, scope: !930, inlinedAt: !811)
!930 = distinct !DILexicalBlock(scope: !805, file: !3, line: 305, column: 11)
!931 = !DILocation(line: 305, column: 26, scope: !930, inlinedAt: !811)
!932 = !DILocation(line: 305, column: 29, scope: !930, inlinedAt: !811)
!933 = !DILocation(line: 305, column: 35, scope: !930, inlinedAt: !811)
!934 = !DILocation(line: 305, column: 11, scope: !805, inlinedAt: !811)
!935 = distinct !{!935, !837, !915, !567}
!936 = !DILocation(line: 307, column: 22, scope: !937, inlinedAt: !811)
!937 = distinct !DILexicalBlock(scope: !805, file: !3, line: 307, column: 11)
!938 = !DILocation(line: 307, column: 11, scope: !805, inlinedAt: !811)
!939 = !DILocation(line: 0, scope: !807, inlinedAt: !811)
!940 = !DILocation(line: 312, column: 7, scope: !807, inlinedAt: !811)
!941 = distinct !{!941, !837, !915, !567}
!942 = !DILocation(line: 313, column: 18, scope: !943, inlinedAt: !811)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 313, column: 13)
!944 = distinct !DILexicalBlock(scope: !807, file: !3, line: 312, column: 7)
!945 = !DILocation(line: 313, column: 15, scope: !943, inlinedAt: !811)
!946 = !DILocation(line: 314, column: 13, scope: !943, inlinedAt: !811)
!947 = !DILocation(line: 314, column: 18, scope: !943, inlinedAt: !811)
!948 = !DILocation(line: 313, column: 13, scope: !944, inlinedAt: !811)
!949 = !DILocation(line: 0, scope: !875, inlinedAt: !950)
!950 = distinct !DILocation(line: 316, column: 17, scope: !951, inlinedAt: !811)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 316, column: 17)
!952 = distinct !DILexicalBlock(scope: !943, file: !3, line: 315, column: 11)
!953 = !DILocation(line: 211, column: 17, scope: !875, inlinedAt: !950)
!954 = !DILocation(line: 212, column: 21, scope: !875, inlinedAt: !950)
!955 = !DILocation(line: 215, column: 7, scope: !875, inlinedAt: !950)
!956 = !DILocation(line: 217, column: 7, scope: !885, inlinedAt: !950)
!957 = !DILocation(line: 0, scope: !885, inlinedAt: !950)
!958 = !DILocation(line: 0, scope: !884, inlinedAt: !950)
!959 = !DILocation(line: 217, column: 7, scope: !884, inlinedAt: !950)
!960 = !DILocation(line: 213, column: 15, scope: !875, inlinedAt: !950)
!961 = !DILocation(line: 221, column: 18, scope: !875, inlinedAt: !950)
!962 = !DILocation(line: 316, column: 17, scope: !952, inlinedAt: !811)
!963 = !DILocation(line: 318, column: 22, scope: !952, inlinedAt: !811)
!964 = !DILocation(line: 319, column: 19, scope: !965, inlinedAt: !811)
!965 = distinct !DILexicalBlock(scope: !952, file: !3, line: 319, column: 17)
!966 = !DILocation(line: 319, column: 17, scope: !952, inlinedAt: !811)
!967 = !DILocation(line: 0, scope: !900, inlinedAt: !968)
!968 = distinct !DILocation(line: 320, column: 27, scope: !965, inlinedAt: !811)
!969 = !DILocation(line: 199, column: 8, scope: !909, inlinedAt: !968)
!970 = !DILocation(line: 199, column: 19, scope: !911, inlinedAt: !968)
!971 = !DILocation(line: 0, scope: !909, inlinedAt: !968)
!972 = !DILocation(line: 199, column: 3, scope: !909, inlinedAt: !968)
!973 = !DILocation(line: 200, column: 14, scope: !917, inlinedAt: !968)
!974 = !DILocation(line: 200, column: 11, scope: !917, inlinedAt: !968)
!975 = !DILocation(line: 200, column: 9, scope: !911, inlinedAt: !968)
!976 = distinct !{!976, !972, !977, !567}
!977 = !DILocation(line: 201, column: 14, scope: !909, inlinedAt: !968)
!978 = !DILocation(line: 203, column: 1, scope: !900, inlinedAt: !968)
!979 = !DILocation(line: 0, scope: !805, inlinedAt: !811)
!980 = !DILocation(line: 312, column: 37, scope: !944, inlinedAt: !811)
!981 = !DILocation(line: 312, column: 25, scope: !944, inlinedAt: !811)
!982 = distinct !{!982, !940, !983, !567}
!983 = !DILocation(line: 321, column: 11, scope: !807, inlinedAt: !811)
!984 = !DILocation(line: 324, column: 18, scope: !985, inlinedAt: !811)
!985 = distinct !DILexicalBlock(scope: !772, file: !3, line: 324, column: 7)
!986 = !DILocation(line: 324, column: 7, scope: !772, inlinedAt: !811)
!987 = !DILocation(line: 326, column: 7, scope: !988, inlinedAt: !811)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 325, column: 5)
!989 = !DILocation(line: 328, column: 5, scope: !988, inlinedAt: !811)
!990 = !DILocation(line: 0, scope: !809, inlinedAt: !811)
!991 = !DILocation(line: 331, column: 3, scope: !809, inlinedAt: !811)
!992 = !DILocation(line: 331, column: 21, scope: !993, inlinedAt: !811)
!993 = distinct !DILexicalBlock(scope: !809, file: !3, line: 331, column: 3)
!994 = !DILocation(line: 338, column: 3, scope: !772, inlinedAt: !811)
!995 = !DILocation(line: 339, column: 7, scope: !772, inlinedAt: !811)
!996 = !DILocation(line: 332, column: 14, scope: !997, inlinedAt: !811)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 332, column: 9)
!998 = !DILocation(line: 332, column: 11, scope: !997, inlinedAt: !811)
!999 = !DILocation(line: 332, column: 29, scope: !997, inlinedAt: !811)
!1000 = !DILocation(line: 332, column: 34, scope: !997, inlinedAt: !811)
!1001 = !DILocation(line: 332, column: 9, scope: !993, inlinedAt: !811)
!1002 = !DILocation(line: 334, column: 9, scope: !1003, inlinedAt: !811)
!1003 = distinct !DILexicalBlock(scope: !997, file: !3, line: 333, column: 7)
!1004 = !DILocation(line: 336, column: 7, scope: !1003, inlinedAt: !811)
!1005 = !DILocation(line: 331, column: 33, scope: !993, inlinedAt: !811)
!1006 = distinct !{!1006, !991, !1007, !567}
!1007 = !DILocation(line: 336, column: 7, scope: !809, inlinedAt: !811)
!1008 = !DILocation(line: 340, column: 5, scope: !1009, inlinedAt: !811)
!1009 = distinct !DILexicalBlock(scope: !772, file: !3, line: 339, column: 7)
!1010 = !DILocation(line: 343, column: 1, scope: !772, inlinedAt: !811)
!1011 = !DILocation(line: 185, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !719, file: !3, line: 185, column: 7)
!1013 = !DILocation(line: 185, column: 28, scope: !1012)
!1014 = !DILocation(line: 185, column: 7, scope: !719)
!1015 = !DILocation(line: 186, column: 5, scope: !1012)
!1016 = !DILocation(line: 188, column: 10, scope: !719)
!1017 = !DILocation(line: 189, column: 1, scope: !719)
!1018 = !DISubprogram(name: "bindtextdomain", scope: !590, file: !590, line: 86, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!54, !67, !67}
!1021 = !DISubprogram(name: "textdomain", scope: !590, file: !590, line: 82, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1022 = !DISubprogram(name: "atexit", scope: !712, file: !712, line: 602, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!62, !204}
!1025 = !DISubprogram(name: "getopt_long", scope: !179, file: !179, line: 66, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!62, !62, !1028, !67, !1030, !184}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1031 = !DISubprogram(name: "signal", scope: !58, file: !58, line: 88, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!57, !62, !57}
!1034 = !DISubprogram(name: "close", scope: !1035, file: !1035, line: 358, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1035 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!62, !62}
!1038 = distinct !DISubprogram(name: "iopoll", scope: !415, file: !415, line: 139, type: !1039, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!62, !62, !62, !73}
!1041 = !{!1042, !1043, !1044}
!1042 = !DILocalVariable(name: "fdin", arg: 1, scope: !1038, file: !415, line: 139, type: !62)
!1043 = !DILocalVariable(name: "fdout", arg: 2, scope: !1038, file: !415, line: 139, type: !62)
!1044 = !DILocalVariable(name: "block", arg: 3, scope: !1038, file: !415, line: 139, type: !73)
!1045 = !DILocation(line: 0, scope: !1038)
!1046 = !DILocation(line: 141, column: 10, scope: !1038)
!1047 = !DILocation(line: 141, column: 3, scope: !1038)
!1048 = distinct !DISubprogram(name: "iopoll_internal", scope: !415, file: !415, line: 62, type: !1049, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!62, !62, !62, !73, !73}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1065, !1066}
!1052 = !DILocalVariable(name: "fdin", arg: 1, scope: !1048, file: !415, line: 62, type: !62)
!1053 = !DILocalVariable(name: "fdout", arg: 2, scope: !1048, file: !415, line: 62, type: !62)
!1054 = !DILocalVariable(name: "block", arg: 3, scope: !1048, file: !415, line: 62, type: !73)
!1055 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1048, file: !415, line: 62, type: !73)
!1056 = !DILocalVariable(name: "pfds", scope: !1048, file: !415, line: 67, type: !1057)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 128, elements: !290)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1059, line: 36, size: 64, elements: !1060)
!1059 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1060 = !{!1061, !1062, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1058, file: !1059, line: 38, baseType: !62, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1058, file: !1059, line: 39, baseType: !1063, size: 16, offset: 32)
!1063 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1058, file: !1059, line: 40, baseType: !1063, size: 16, offset: 48)
!1065 = !DILocalVariable(name: "check_out_events", scope: !1048, file: !415, line: 71, type: !62)
!1066 = !DILocalVariable(name: "ret", scope: !1048, file: !415, line: 72, type: !62)
!1067 = !DILocation(line: 0, scope: !1048)
!1068 = !DILocation(line: 64, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !415, line: 64, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 64, column: 3)
!1071 = !DILocation(line: 67, column: 3, scope: !1048)
!1072 = !DILocation(line: 67, column: 17, scope: !1048)
!1073 = !DILocation(line: 67, column: 27, scope: !1048)
!1074 = !DILocation(line: 68, column: 5, scope: !1048)
!1075 = !{!1076, !602, i64 0}
!1076 = !{!"pollfd", !602, i64 0, !636, i64 4, !636, i64 6}
!1077 = !{!1076, !636, i64 4}
!1078 = !{!1076, !636, i64 6}
!1079 = !DILocation(line: 69, column: 5, scope: !1048)
!1080 = !DILocation(line: 74, column: 7, scope: !1048)
!1081 = !DILocation(line: 76, column: 39, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !415, line: 75, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 74, column: 7)
!1084 = !DILocation(line: 76, column: 22, scope: !1082)
!1085 = !DILocation(line: 78, column: 5, scope: !1082)
!1086 = !DILocation(line: 80, column: 12, scope: !1048)
!1087 = !DILocation(line: 80, column: 19, scope: !1048)
!1088 = !DILocation(line: 80, column: 22, scope: !1048)
!1089 = !DILocation(line: 80, column: 28, scope: !1048)
!1090 = !DILocation(line: 80, column: 3, scope: !1048)
!1091 = !DILocation(line: 82, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 81, column: 5)
!1093 = !DILocation(line: 84, column: 15, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 84, column: 11)
!1095 = !DILocation(line: 84, column: 11, scope: !1092)
!1096 = !DILocation(line: 88, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !415, line: 88, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 88, column: 7)
!1099 = !DILocation(line: 88, column: 7, scope: !1098)
!1100 = !DILocation(line: 89, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 89, column: 11)
!1102 = !DILocation(line: 89, column: 11, scope: !1101)
!1103 = !DILocation(line: 89, column: 11, scope: !1092)
!1104 = !DILocation(line: 91, column: 19, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 91, column: 11)
!1106 = !DILocation(line: 91, column: 11, scope: !1105)
!1107 = !DILocation(line: 91, column: 27, scope: !1105)
!1108 = !DILocation(line: 91, column: 11, scope: !1092)
!1109 = distinct !{!1109, !1090, !1110, !567}
!1110 = !DILocation(line: 93, column: 5, scope: !1048)
!1111 = !DILocation(line: 86, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 86, column: 11)
!1113 = !DILocation(line: 86, column: 20, scope: !1112)
!1114 = !DILocation(line: 92, column: 16, scope: !1105)
!1115 = !DILocation(line: 92, column: 9, scope: !1105)
!1116 = !DILocation(line: 136, column: 1, scope: !1048)
!1117 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !415, file: !415, line: 151, type: !1118, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!73, !62}
!1120 = !{!1121, !1122, !1158}
!1121 = !DILocalVariable(name: "fdin", arg: 1, scope: !1117, file: !415, line: 151, type: !62)
!1122 = !DILocalVariable(name: "st", scope: !1117, file: !415, line: 153, type: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1124, line: 44, size: 1024, elements: !1125)
!1124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1125 = !{!1126, !1128, !1130, !1132, !1134, !1136, !1138, !1139, !1140, !1141, !1143, !1144, !1146, !1154, !1155, !1156}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1123, file: !1124, line: 46, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !130, line: 145, baseType: !66)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1123, file: !1124, line: 47, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !130, line: 148, baseType: !66)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1123, file: !1124, line: 48, baseType: !1131, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !130, line: 150, baseType: !6)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1123, file: !1124, line: 49, baseType: !1133, size: 32, offset: 160)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !130, line: 151, baseType: !6)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1123, file: !1124, line: 50, baseType: !1135, size: 32, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !130, line: 146, baseType: !6)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1123, file: !1124, line: 51, baseType: !1137, size: 32, offset: 224)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !130, line: 147, baseType: !6)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1123, file: !1124, line: 52, baseType: !1127, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1123, file: !1124, line: 53, baseType: !1127, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1123, file: !1124, line: 54, baseType: !129, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1123, file: !1124, line: 55, baseType: !1142, size: 32, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !130, line: 175, baseType: !62)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1123, file: !1124, line: 56, baseType: !62, size: 32, offset: 480)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1123, file: !1124, line: 57, baseType: !1145, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !130, line: 180, baseType: !131)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1123, file: !1124, line: 65, baseType: !1147, size: 128, offset: 576)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1148, line: 11, size: 128, elements: !1149)
!1148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1149 = !{!1150, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1147, file: !1148, line: 16, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !130, line: 160, baseType: !131)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1147, file: !1148, line: 21, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !130, line: 197, baseType: !131)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1123, file: !1124, line: 66, baseType: !1147, size: 128, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1123, file: !1124, line: 67, baseType: !1147, size: 128, offset: 832)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1123, file: !1124, line: 79, baseType: !1157, size: 64, offset: 960)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !290)
!1158 = !DILocalVariable(name: "always_ready", scope: !1117, file: !415, line: 154, type: !73)
!1159 = !DILocation(line: 0, scope: !1117)
!1160 = !DILocation(line: 153, column: 3, scope: !1117)
!1161 = !DILocation(line: 153, column: 15, scope: !1117)
!1162 = !DILocation(line: 154, column: 23, scope: !1117)
!1163 = !DILocation(line: 154, column: 41, scope: !1117)
!1164 = !DILocation(line: 155, column: 23, scope: !1117)
!1165 = !DILocation(line: 155, column: 27, scope: !1117)
!1166 = !{!1167, !602, i64 16}
!1167 = !{!"stat", !1168, i64 0, !1168, i64 8, !602, i64 16, !602, i64 20, !602, i64 24, !602, i64 28, !1168, i64 32, !1168, i64 40, !1168, i64 48, !602, i64 56, !602, i64 60, !1168, i64 64, !1169, i64 72, !1169, i64 88, !1169, i64 104, !512, i64 120}
!1168 = !{!"long", !512, i64 0}
!1169 = !{!"timespec", !1168, i64 0, !1168, i64 8}
!1170 = !DILocation(line: 156, column: 27, scope: !1117)
!1171 = !DILocation(line: 158, column: 1, scope: !1117)
!1172 = !DILocation(line: 157, column: 3, scope: !1117)
!1173 = !DISubprogram(name: "fstat", scope: !1174, file: !1174, line: 210, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1174 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!62, !62, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1178 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !415, file: !415, line: 164, type: !1118, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1179)
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "fdout", arg: 1, scope: !1178, file: !415, line: 164, type: !62)
!1181 = !DILocation(line: 0, scope: !1178)
!1182 = !DILocation(line: 166, column: 10, scope: !1178)
!1183 = !DILocation(line: 166, column: 26, scope: !1178)
!1184 = !DILocation(line: 166, column: 3, scope: !1178)
!1185 = distinct !DISubprogram(name: "close_wait", scope: !415, file: !415, line: 200, type: !1118, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "fd", arg: 1, scope: !1185, file: !415, line: 200, type: !62)
!1188 = !DILocation(line: 0, scope: !1185)
!1189 = !DILocation(line: 202, column: 3, scope: !1185)
!1190 = !DILocalVariable(name: "fd", arg: 1, scope: !1191, file: !415, line: 180, type: !62)
!1191 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !415, file: !415, line: 180, type: !1118, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1192)
!1192 = !{!1190}
!1193 = !DILocation(line: 0, scope: !1191, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 202, column: 10, scope: !1185)
!1195 = !DILocation(line: 182, column: 9, scope: !1196, inlinedAt: !1194)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !415, line: 182, column: 7)
!1197 = !DILocation(line: 187, column: 7, scope: !1198, inlinedAt: !1194)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !415, line: 187, column: 7)
!1199 = !DILocation(line: 187, column: 45, scope: !1198, inlinedAt: !1194)
!1200 = !DILocation(line: 187, column: 7, scope: !1191, inlinedAt: !1194)
!1201 = distinct !{!1201, !1189, !1202, !567}
!1202 = !DILocation(line: 203, column: 5, scope: !1185)
!1203 = !DILocation(line: 189, column: 13, scope: !1204, inlinedAt: !1194)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !415, line: 188, column: 5)
!1205 = !DILocation(line: 190, column: 7, scope: !1204, inlinedAt: !1194)
!1206 = !DILocation(line: 204, column: 10, scope: !1185)
!1207 = !DILocation(line: 204, column: 21, scope: !1185)
!1208 = !DILocation(line: 204, column: 3, scope: !1185)
!1209 = distinct !DISubprogram(name: "write_wait", scope: !415, file: !415, line: 211, type: !1210, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!73, !62, !52, !64}
!1212 = !{!1213, !1214, !1215, !1216, !1219}
!1213 = !DILocalVariable(name: "fd", arg: 1, scope: !1209, file: !415, line: 211, type: !62)
!1214 = !DILocalVariable(name: "buffer", arg: 2, scope: !1209, file: !415, line: 211, type: !52)
!1215 = !DILocalVariable(name: "size", arg: 3, scope: !1209, file: !415, line: 211, type: !64)
!1216 = !DILocalVariable(name: "buf", scope: !1209, file: !415, line: 213, type: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1219 = !DILocalVariable(name: "written", scope: !1220, file: !415, line: 217, type: !787)
!1220 = distinct !DILexicalBlock(scope: !1209, file: !415, line: 216, column: 5)
!1221 = !DILocation(line: 0, scope: !1209)
!1222 = !DILocation(line: 217, column: 25, scope: !1220)
!1223 = !DILocation(line: 0, scope: !1220)
!1224 = !DILocation(line: 218, column: 11, scope: !1220)
!1225 = !DILocation(line: 221, column: 12, scope: !1220)
!1226 = !DILocation(line: 222, column: 16, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !415, line: 222, column: 11)
!1228 = !DILocation(line: 222, column: 11, scope: !1220)
!1229 = !DILocation(line: 0, scope: !1191, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 225, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1220, file: !415, line: 225, column: 11)
!1232 = !DILocation(line: 182, column: 9, scope: !1196, inlinedAt: !1230)
!1233 = !DILocation(line: 187, column: 7, scope: !1198, inlinedAt: !1230)
!1234 = !DILocation(line: 187, column: 45, scope: !1198, inlinedAt: !1230)
!1235 = !DILocation(line: 187, column: 7, scope: !1191, inlinedAt: !1230)
!1236 = !DILocation(line: 189, column: 13, scope: !1204, inlinedAt: !1230)
!1237 = !DILocation(line: 190, column: 7, scope: !1204, inlinedAt: !1230)
!1238 = !DILocation(line: 228, column: 11, scope: !1220)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 215, column: 3, scope: !1209)
!1241 = !DILocation(line: 229, column: 5, scope: !1209)
!1242 = !DILocation(line: 230, column: 1, scope: !1209)
!1243 = !DISubprogram(name: "write", scope: !1035, file: !1035, line: 378, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!787, !62, !52, !64}
!1246 = distinct !DISubprogram(name: "__argmatch_die", scope: !198, file: !198, line: 58, type: !205, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !593)
!1247 = !DILocation(line: 60, column: 3, scope: !1246)
!1248 = !DILocation(line: 61, column: 1, scope: !1246)
!1249 = distinct !DISubprogram(name: "argmatch", scope: !198, file: !198, line: 80, type: !1250, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1253)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!456, !67, !1252, !52, !64}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1254 = !DILocalVariable(name: "arg", arg: 1, scope: !1249, file: !198, line: 80, type: !67)
!1255 = !DILocalVariable(name: "arglist", arg: 2, scope: !1249, file: !198, line: 80, type: !1252)
!1256 = !DILocalVariable(name: "vallist", arg: 3, scope: !1249, file: !198, line: 81, type: !52)
!1257 = !DILocalVariable(name: "valsize", arg: 4, scope: !1249, file: !198, line: 81, type: !64)
!1258 = !DILocalVariable(name: "arglen", scope: !1249, file: !198, line: 83, type: !64)
!1259 = !DILocalVariable(name: "matchind", scope: !1249, file: !198, line: 85, type: !456)
!1260 = !DILocalVariable(name: "ambiguous", scope: !1249, file: !198, line: 86, type: !73)
!1261 = !DILocalVariable(name: "i", scope: !1262, file: !198, line: 89, type: !64)
!1262 = distinct !DILexicalBlock(scope: !1249, file: !198, line: 89, column: 3)
!1263 = !DILocation(line: 0, scope: !1249)
!1264 = !DILocation(line: 83, column: 19, scope: !1249)
!1265 = !DILocation(line: 0, scope: !1262)
!1266 = !DILocation(line: 89, column: 22, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !198, line: 89, column: 3)
!1268 = !DILocation(line: 89, column: 3, scope: !1262)
!1269 = !DILocation(line: 103, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !198, line: 102, column: 19)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !198, line: 100, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !198, line: 96, column: 20)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !198, line: 93, column: 15)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !198, line: 92, column: 9)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !198, line: 91, column: 11)
!1276 = distinct !DILexicalBlock(scope: !1267, file: !198, line: 90, column: 5)
!1277 = !DILocation(line: 91, column: 12, scope: !1275)
!1278 = !DILocation(line: 91, column: 11, scope: !1276)
!1279 = !DILocation(line: 93, column: 15, scope: !1273)
!1280 = !DILocation(line: 93, column: 35, scope: !1273)
!1281 = !DILocation(line: 93, column: 15, scope: !1274)
!1282 = !DILocation(line: 96, column: 29, scope: !1272)
!1283 = !DILocation(line: 96, column: 20, scope: !1273)
!1284 = !DILocation(line: 89, column: 35, scope: !1267)
!1285 = distinct !{!1285, !1268, !1286, !567}
!1286 = !DILocation(line: 112, column: 5, scope: !1262)
!1287 = !DILocation(line: 103, column: 63, scope: !1270)
!1288 = !DILocation(line: 103, column: 53, scope: !1270)
!1289 = !DILocation(line: 104, column: 63, scope: !1270)
!1290 = !DILocation(line: 104, column: 53, scope: !1270)
!1291 = !DILocalVariable(name: "__s1", arg: 1, scope: !1292, file: !551, line: 974, type: !52)
!1292 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1293, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!73, !52, !52, !64}
!1295 = !{!1291, !1296, !1297}
!1296 = !DILocalVariable(name: "__s2", arg: 2, scope: !1292, file: !551, line: 974, type: !52)
!1297 = !DILocalVariable(name: "__n", arg: 3, scope: !1292, file: !551, line: 974, type: !64)
!1298 = !DILocation(line: 0, scope: !1292, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 103, column: 23, scope: !1270)
!1300 = !DILocation(line: 976, column: 11, scope: !1292, inlinedAt: !1299)
!1301 = !DILocation(line: 976, column: 10, scope: !1292, inlinedAt: !1299)
!1302 = !DILocation(line: 102, column: 19, scope: !1271)
!1303 = !DILocation(line: 85, column: 13, scope: !1249)
!1304 = !DILocation(line: 0, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1249, file: !198, line: 113, column: 7)
!1306 = !DILocation(line: 117, column: 1, scope: !1249)
!1307 = distinct !DISubprogram(name: "argmatch_exact", scope: !198, file: !198, line: 120, type: !1308, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!456, !67, !1252}
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "arg", arg: 1, scope: !1307, file: !198, line: 120, type: !67)
!1312 = !DILocalVariable(name: "arglist", arg: 2, scope: !1307, file: !198, line: 120, type: !1252)
!1313 = !DILocalVariable(name: "i", scope: !1314, file: !198, line: 123, type: !64)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !198, line: 123, column: 3)
!1315 = !DILocation(line: 0, scope: !1307)
!1316 = !DILocation(line: 0, scope: !1314)
!1317 = !DILocation(line: 123, column: 22, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !198, line: 123, column: 3)
!1319 = !DILocation(line: 123, column: 3, scope: !1314)
!1320 = !DILocalVariable(name: "__s1", arg: 1, scope: !1321, file: !551, line: 1359, type: !67)
!1321 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1322)
!1322 = !{!1320, !1323}
!1323 = !DILocalVariable(name: "__s2", arg: 2, scope: !1321, file: !551, line: 1359, type: !67)
!1324 = !DILocation(line: 0, scope: !1321, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 125, column: 11, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !198, line: 125, column: 11)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !198, line: 124, column: 5)
!1328 = !DILocation(line: 1361, column: 11, scope: !1321, inlinedAt: !1325)
!1329 = !DILocation(line: 1361, column: 10, scope: !1321, inlinedAt: !1325)
!1330 = !DILocation(line: 125, column: 11, scope: !1327)
!1331 = !DILocation(line: 123, column: 35, scope: !1318)
!1332 = distinct !{!1332, !1319, !1333, !567}
!1333 = !DILocation(line: 127, column: 5, scope: !1314)
!1334 = !DILocation(line: 130, column: 1, scope: !1307)
!1335 = distinct !DISubprogram(name: "argmatch_invalid", scope: !198, file: !198, line: 138, type: !1336, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !67, !67, !456}
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "context", arg: 1, scope: !1335, file: !198, line: 138, type: !67)
!1340 = !DILocalVariable(name: "value", arg: 2, scope: !1335, file: !198, line: 138, type: !67)
!1341 = !DILocalVariable(name: "problem", arg: 3, scope: !1335, file: !198, line: 138, type: !456)
!1342 = !DILocalVariable(name: "format", scope: !1335, file: !198, line: 140, type: !67)
!1343 = !DILocation(line: 0, scope: !1335)
!1344 = !DILocation(line: 140, column: 33, scope: !1335)
!1345 = !DILocation(line: 140, column: 25, scope: !1335)
!1346 = !DILocation(line: 144, column: 3, scope: !1335)
!1347 = !DILocation(line: 146, column: 1, scope: !1335)
!1348 = distinct !DISubprogram(name: "argmatch_valid", scope: !198, file: !198, line: 153, type: !1349, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1252, !52, !64}
!1351 = !{!1352, !1353, !1354, !1355, !1356}
!1352 = !DILocalVariable(name: "arglist", arg: 1, scope: !1348, file: !198, line: 153, type: !1252)
!1353 = !DILocalVariable(name: "vallist", arg: 2, scope: !1348, file: !198, line: 154, type: !52)
!1354 = !DILocalVariable(name: "valsize", arg: 3, scope: !1348, file: !198, line: 154, type: !64)
!1355 = !DILocalVariable(name: "last_val", scope: !1348, file: !198, line: 156, type: !67)
!1356 = !DILocalVariable(name: "i", scope: !1357, file: !198, line: 161, type: !64)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !198, line: 161, column: 3)
!1358 = !DILocation(line: 0, scope: !1348)
!1359 = !DILocation(line: 160, column: 3, scope: !1348)
!1360 = !DILocation(line: 0, scope: !1357)
!1361 = !DILocation(line: 161, column: 22, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !198, line: 161, column: 3)
!1363 = !DILocation(line: 161, column: 3, scope: !1357)
!1364 = !DILocation(line: 172, column: 3, scope: !1348)
!1365 = !DILocalVariable(name: "__c", arg: 1, scope: !1366, file: !1367, line: 101, type: !62)
!1366 = distinct !DISubprogram(name: "putc_unlocked", scope: !1367, file: !1367, line: 101, type: !1368, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1404)
!1367 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!62, !62, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1372, file: !107, line: 51, baseType: !62, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1372, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1372, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1372, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1372, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1372, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1372, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1372, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1372, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1372, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1372, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1372, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1372, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1372, file: !107, line: 70, baseType: !1388, size: 64, offset: 832)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1372, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1372, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1372, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1372, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1372, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1372, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1372, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1372, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1372, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1372, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1372, file: !107, line: 93, baseType: !1388, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1372, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1372, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1372, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1372, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1404 = !{!1365, !1405}
!1405 = !DILocalVariable(name: "__stream", arg: 2, scope: !1366, file: !1367, line: 101, type: !1370)
!1406 = !DILocation(line: 0, scope: !1366, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 172, column: 3, scope: !1348)
!1408 = !DILocation(line: 103, column: 10, scope: !1366, inlinedAt: !1407)
!1409 = !{!1410, !511, i64 40}
!1410 = !{!"_IO_FILE", !602, i64 0, !511, i64 8, !511, i64 16, !511, i64 24, !511, i64 32, !511, i64 40, !511, i64 48, !511, i64 56, !511, i64 64, !511, i64 72, !511, i64 80, !511, i64 88, !511, i64 96, !511, i64 104, !602, i64 112, !602, i64 116, !1168, i64 120, !636, i64 128, !512, i64 130, !512, i64 131, !511, i64 136, !1168, i64 144, !511, i64 152, !511, i64 160, !511, i64 168, !511, i64 176, !1168, i64 184, !602, i64 192, !512, i64 196}
!1411 = !{!1410, !511, i64 48}
!1412 = !{!"branch_weights", i32 2000, i32 1}
!1413 = !DILocation(line: 173, column: 1, scope: !1348)
!1414 = !DILocation(line: 162, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1362, file: !198, line: 162, column: 9)
!1416 = !DILocation(line: 163, column: 9, scope: !1415)
!1417 = !DILocation(line: 163, column: 63, scope: !1415)
!1418 = !DILocation(line: 163, column: 53, scope: !1415)
!1419 = !DILocation(line: 0, scope: !1292, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 163, column: 13, scope: !1415)
!1421 = !DILocation(line: 976, column: 11, scope: !1292, inlinedAt: !1420)
!1422 = !DILocation(line: 976, column: 10, scope: !1292, inlinedAt: !1420)
!1423 = !DILocation(line: 162, column: 9, scope: !1362)
!1424 = !DILocation(line: 166, column: 53, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1415, file: !198, line: 164, column: 7)
!1426 = !DILocation(line: 165, column: 9, scope: !1425)
!1427 = !DILocation(line: 166, column: 43, scope: !1425)
!1428 = !DILocation(line: 167, column: 7, scope: !1425)
!1429 = !DILocation(line: 170, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1415, file: !198, line: 169, column: 7)
!1431 = !DILocation(line: 161, column: 35, scope: !1362)
!1432 = distinct !{!1432, !1363, !1433, !567}
!1433 = !DILocation(line: 171, column: 7, scope: !1357)
!1434 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !198, file: !198, line: 182, type: !1435, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!456, !67, !67, !1252, !52, !64, !202, !73}
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1438 = !DILocalVariable(name: "context", arg: 1, scope: !1434, file: !198, line: 182, type: !67)
!1439 = !DILocalVariable(name: "arg", arg: 2, scope: !1434, file: !198, line: 183, type: !67)
!1440 = !DILocalVariable(name: "arglist", arg: 3, scope: !1434, file: !198, line: 183, type: !1252)
!1441 = !DILocalVariable(name: "vallist", arg: 4, scope: !1434, file: !198, line: 184, type: !52)
!1442 = !DILocalVariable(name: "valsize", arg: 5, scope: !1434, file: !198, line: 184, type: !64)
!1443 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1434, file: !198, line: 185, type: !202)
!1444 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1434, file: !198, line: 186, type: !73)
!1445 = !DILocalVariable(name: "res", scope: !1434, file: !198, line: 188, type: !456)
!1446 = !DILocation(line: 0, scope: !1434)
!1447 = !DILocation(line: 189, column: 7, scope: !1434)
!1448 = !DILocation(line: 190, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1434, file: !198, line: 189, column: 7)
!1450 = !DILocation(line: 190, column: 5, scope: !1449)
!1451 = !DILocation(line: 0, scope: !1307, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 192, column: 11, scope: !1449)
!1453 = !DILocation(line: 0, scope: !1314, inlinedAt: !1452)
!1454 = !DILocation(line: 123, column: 22, scope: !1318, inlinedAt: !1452)
!1455 = !DILocation(line: 123, column: 3, scope: !1314, inlinedAt: !1452)
!1456 = !DILocation(line: 0, scope: !1321, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 125, column: 11, scope: !1326, inlinedAt: !1452)
!1458 = !DILocation(line: 1361, column: 11, scope: !1321, inlinedAt: !1457)
!1459 = !DILocation(line: 1361, column: 10, scope: !1321, inlinedAt: !1457)
!1460 = !DILocation(line: 125, column: 11, scope: !1327, inlinedAt: !1452)
!1461 = !DILocation(line: 123, column: 35, scope: !1318, inlinedAt: !1452)
!1462 = distinct !{!1462, !1455, !1463, !567}
!1463 = !DILocation(line: 127, column: 5, scope: !1314, inlinedAt: !1452)
!1464 = !DILocation(line: 0, scope: !1449)
!1465 = !DILocation(line: 194, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1434, file: !198, line: 194, column: 7)
!1467 = !DILocation(line: 194, column: 7, scope: !1434)
!1468 = !DILocation(line: 0, scope: !1335, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 199, column: 3, scope: !1434)
!1470 = !DILocation(line: 140, column: 33, scope: !1335, inlinedAt: !1469)
!1471 = !DILocation(line: 140, column: 25, scope: !1335, inlinedAt: !1469)
!1472 = !DILocation(line: 144, column: 3, scope: !1335, inlinedAt: !1469)
!1473 = !DILocation(line: 200, column: 3, scope: !1434)
!1474 = !DILocation(line: 201, column: 3, scope: !1434)
!1475 = !DILocation(line: 203, column: 3, scope: !1434)
!1476 = !DILocation(line: 204, column: 1, scope: !1434)
!1477 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !198, file: !198, line: 209, type: !1478, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!67, !52, !1252, !52, !64}
!1480 = !{!1481, !1482, !1483, !1484, !1485}
!1481 = !DILocalVariable(name: "value", arg: 1, scope: !1477, file: !198, line: 209, type: !52)
!1482 = !DILocalVariable(name: "arglist", arg: 2, scope: !1477, file: !198, line: 210, type: !1252)
!1483 = !DILocalVariable(name: "vallist", arg: 3, scope: !1477, file: !198, line: 211, type: !52)
!1484 = !DILocalVariable(name: "valsize", arg: 4, scope: !1477, file: !198, line: 211, type: !64)
!1485 = !DILocalVariable(name: "i", scope: !1486, file: !198, line: 213, type: !64)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !198, line: 213, column: 3)
!1487 = !DILocation(line: 0, scope: !1477)
!1488 = !DILocation(line: 0, scope: !1486)
!1489 = !DILocation(line: 213, column: 22, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !198, line: 213, column: 3)
!1491 = !DILocation(line: 213, column: 3, scope: !1486)
!1492 = !DILocation(line: 0, scope: !1292, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 214, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !198, line: 214, column: 9)
!1495 = !DILocation(line: 976, column: 11, scope: !1292, inlinedAt: !1493)
!1496 = !DILocation(line: 976, column: 10, scope: !1292, inlinedAt: !1493)
!1497 = !DILocation(line: 214, column: 9, scope: !1490)
!1498 = distinct !{!1498, !1491, !1499, !567}
!1499 = !DILocation(line: 215, column: 23, scope: !1486)
!1500 = !DILocation(line: 214, column: 56, scope: !1494)
!1501 = !DILocation(line: 214, column: 46, scope: !1494)
!1502 = !DILocation(line: 213, column: 35, scope: !1490)
!1503 = !DILocation(line: 217, column: 1, scope: !1477)
!1504 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !210, file: !210, line: 50, type: !526, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "file", arg: 1, scope: !1504, file: !210, line: 50, type: !67)
!1507 = !DILocation(line: 0, scope: !1504)
!1508 = !DILocation(line: 52, column: 13, scope: !1504)
!1509 = !DILocation(line: 53, column: 1, scope: !1504)
!1510 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !210, file: !210, line: 87, type: !1511, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !73}
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "ignore", arg: 1, scope: !1510, file: !210, line: 87, type: !73)
!1515 = !DILocation(line: 0, scope: !1510)
!1516 = !DILocation(line: 89, column: 16, scope: !1510)
!1517 = !DILocation(line: 90, column: 1, scope: !1510)
!1518 = distinct !DISubprogram(name: "close_stdout", scope: !210, file: !210, line: 116, type: !205, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1519)
!1519 = !{!1520}
!1520 = !DILocalVariable(name: "write_error", scope: !1521, file: !210, line: 121, type: !67)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !210, line: 120, column: 5)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !210, line: 118, column: 7)
!1523 = !DILocation(line: 118, column: 21, scope: !1522)
!1524 = !DILocation(line: 118, column: 7, scope: !1522)
!1525 = !DILocation(line: 118, column: 29, scope: !1522)
!1526 = !DILocation(line: 119, column: 7, scope: !1522)
!1527 = !DILocation(line: 119, column: 12, scope: !1522)
!1528 = !DILocation(line: 119, column: 25, scope: !1522)
!1529 = !DILocation(line: 119, column: 28, scope: !1522)
!1530 = !DILocation(line: 119, column: 34, scope: !1522)
!1531 = !DILocation(line: 118, column: 7, scope: !1518)
!1532 = !DILocation(line: 121, column: 33, scope: !1521)
!1533 = !DILocation(line: 0, scope: !1521)
!1534 = !DILocation(line: 122, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1521, file: !210, line: 122, column: 11)
!1536 = !DILocation(line: 0, scope: !1535)
!1537 = !DILocation(line: 122, column: 11, scope: !1521)
!1538 = !DILocation(line: 123, column: 9, scope: !1535)
!1539 = !DILocation(line: 126, column: 9, scope: !1535)
!1540 = !DILocation(line: 128, column: 14, scope: !1521)
!1541 = !DILocation(line: 128, column: 7, scope: !1521)
!1542 = !DILocation(line: 133, column: 42, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1518, file: !210, line: 133, column: 7)
!1544 = !DILocation(line: 133, column: 28, scope: !1543)
!1545 = !DILocation(line: 133, column: 50, scope: !1543)
!1546 = !DILocation(line: 133, column: 7, scope: !1518)
!1547 = !DILocation(line: 134, column: 12, scope: !1543)
!1548 = !DILocation(line: 134, column: 5, scope: !1543)
!1549 = !DILocation(line: 135, column: 1, scope: !1518)
!1550 = distinct !DISubprogram(name: "verror", scope: !217, file: !217, line: 251, type: !1551, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !62, !62, !67, !225}
!1553 = !{!1554, !1555, !1556, !1557}
!1554 = !DILocalVariable(name: "status", arg: 1, scope: !1550, file: !217, line: 251, type: !62)
!1555 = !DILocalVariable(name: "errnum", arg: 2, scope: !1550, file: !217, line: 251, type: !62)
!1556 = !DILocalVariable(name: "message", arg: 3, scope: !1550, file: !217, line: 251, type: !67)
!1557 = !DILocalVariable(name: "args", arg: 4, scope: !1550, file: !217, line: 251, type: !225)
!1558 = !DILocation(line: 0, scope: !1550)
!1559 = !DILocation(line: 251, column: 1, scope: !1550)
!1560 = !DILocation(line: 261, column: 3, scope: !1550)
!1561 = !DILocation(line: 265, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1550, file: !217, line: 265, column: 7)
!1563 = !DILocation(line: 265, column: 7, scope: !1550)
!1564 = !DILocation(line: 266, column: 5, scope: !1562)
!1565 = !DILocation(line: 272, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !217, line: 268, column: 5)
!1567 = !DILocation(line: 276, column: 3, scope: !1550)
!1568 = !{i64 0, i64 8, !510, i64 8, i64 8, !510, i64 16, i64 8, !510, i64 24, i64 4, !601, i64 28, i64 4, !601}
!1569 = !DILocation(line: 282, column: 1, scope: !1550)
!1570 = distinct !DISubprogram(name: "flush_stdout", scope: !217, file: !217, line: 163, type: !205, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1571)
!1571 = !{!1572}
!1572 = !DILocalVariable(name: "stdout_fd", scope: !1570, file: !217, line: 166, type: !62)
!1573 = !DILocation(line: 0, scope: !1570)
!1574 = !DILocalVariable(name: "fd", arg: 1, scope: !1575, file: !217, line: 145, type: !62)
!1575 = distinct !DISubprogram(name: "is_open", scope: !217, file: !217, line: 145, type: !1036, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1576)
!1576 = !{!1574}
!1577 = !DILocation(line: 0, scope: !1575, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 182, column: 25, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !217, line: 182, column: 7)
!1580 = !DILocation(line: 157, column: 15, scope: !1575, inlinedAt: !1578)
!1581 = !DILocation(line: 182, column: 25, scope: !1579)
!1582 = !DILocation(line: 182, column: 7, scope: !1570)
!1583 = !DILocation(line: 184, column: 5, scope: !1579)
!1584 = !DILocation(line: 185, column: 1, scope: !1570)
!1585 = distinct !DISubprogram(name: "error_tail", scope: !217, file: !217, line: 219, type: !1551, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1586)
!1586 = !{!1587, !1588, !1589, !1590}
!1587 = !DILocalVariable(name: "status", arg: 1, scope: !1585, file: !217, line: 219, type: !62)
!1588 = !DILocalVariable(name: "errnum", arg: 2, scope: !1585, file: !217, line: 219, type: !62)
!1589 = !DILocalVariable(name: "message", arg: 3, scope: !1585, file: !217, line: 219, type: !67)
!1590 = !DILocalVariable(name: "args", arg: 4, scope: !1585, file: !217, line: 219, type: !225)
!1591 = !DILocation(line: 0, scope: !1585)
!1592 = !DILocation(line: 219, column: 1, scope: !1585)
!1593 = !DILocation(line: 229, column: 13, scope: !1585)
!1594 = !DILocation(line: 229, column: 3, scope: !1585)
!1595 = !DILocalVariable(name: "__stream", arg: 1, scope: !1596, file: !1597, line: 132, type: !1600)
!1596 = distinct !DISubprogram(name: "vfprintf", scope: !1597, file: !1597, line: 132, type: !1598, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1635)
!1597 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!62, !1600, !597, !227}
!1600 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1603, file: !107, line: 51, baseType: !62, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1603, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1603, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1603, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1603, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1603, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1603, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1603, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1603, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1603, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1603, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1603, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1603, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1603, file: !107, line: 70, baseType: !1619, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1603, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1603, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1603, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1603, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1603, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1603, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1603, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1603, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1603, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1603, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1603, file: !107, line: 93, baseType: !1619, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1603, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1603, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1603, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1603, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1635 = !{!1595, !1636, !1637}
!1636 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1596, file: !1597, line: 133, type: !597)
!1637 = !DILocalVariable(name: "__ap", arg: 3, scope: !1596, file: !1597, line: 133, type: !227)
!1638 = !DILocation(line: 0, scope: !1596, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 229, column: 3, scope: !1585)
!1640 = !DILocation(line: 135, column: 10, scope: !1596, inlinedAt: !1639)
!1641 = !{!1642, !1644}
!1642 = distinct !{!1642, !1643, !"vfprintf.inline: argument 0"}
!1643 = distinct !{!1643, !"vfprintf.inline"}
!1644 = distinct !{!1644, !1643, !"vfprintf.inline: argument 1"}
!1645 = !DILocation(line: 232, column: 3, scope: !1585)
!1646 = !DILocation(line: 233, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1585, file: !217, line: 233, column: 7)
!1648 = !DILocation(line: 233, column: 7, scope: !1585)
!1649 = !DILocalVariable(name: "errnum", arg: 1, scope: !1650, file: !217, line: 188, type: !62)
!1650 = distinct !DISubprogram(name: "print_errno_message", scope: !217, file: !217, line: 188, type: !60, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1651)
!1651 = !{!1649, !1652, !1653}
!1652 = !DILocalVariable(name: "s", scope: !1650, file: !217, line: 190, type: !67)
!1653 = !DILocalVariable(name: "errbuf", scope: !1650, file: !217, line: 193, type: !1654)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8192, elements: !1655)
!1655 = !{!1656}
!1656 = !DISubrange(count: 1024)
!1657 = !DILocation(line: 0, scope: !1650, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 234, column: 5, scope: !1647)
!1659 = !DILocation(line: 193, column: 3, scope: !1650, inlinedAt: !1658)
!1660 = !DILocation(line: 193, column: 8, scope: !1650, inlinedAt: !1658)
!1661 = !DILocation(line: 195, column: 7, scope: !1650, inlinedAt: !1658)
!1662 = !DILocation(line: 207, column: 9, scope: !1663, inlinedAt: !1658)
!1663 = distinct !DILexicalBlock(scope: !1650, file: !217, line: 207, column: 7)
!1664 = !DILocation(line: 207, column: 7, scope: !1650, inlinedAt: !1658)
!1665 = !DILocation(line: 208, column: 9, scope: !1663, inlinedAt: !1658)
!1666 = !DILocation(line: 208, column: 5, scope: !1663, inlinedAt: !1658)
!1667 = !DILocation(line: 214, column: 3, scope: !1650, inlinedAt: !1658)
!1668 = !DILocation(line: 216, column: 1, scope: !1650, inlinedAt: !1658)
!1669 = !DILocation(line: 234, column: 5, scope: !1647)
!1670 = !DILocation(line: 238, column: 3, scope: !1585)
!1671 = !DILocalVariable(name: "__c", arg: 1, scope: !1672, file: !1367, line: 101, type: !62)
!1672 = distinct !DISubprogram(name: "putc_unlocked", scope: !1367, file: !1367, line: 101, type: !1673, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!62, !62, !1601}
!1675 = !{!1671, !1676}
!1676 = !DILocalVariable(name: "__stream", arg: 2, scope: !1672, file: !1367, line: 101, type: !1601)
!1677 = !DILocation(line: 0, scope: !1672, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 238, column: 3, scope: !1585)
!1679 = !DILocation(line: 103, column: 10, scope: !1672, inlinedAt: !1678)
!1680 = !DILocation(line: 240, column: 3, scope: !1585)
!1681 = !DILocation(line: 241, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1585, file: !217, line: 241, column: 7)
!1683 = !DILocation(line: 241, column: 7, scope: !1585)
!1684 = !DILocation(line: 242, column: 5, scope: !1682)
!1685 = !DILocation(line: 243, column: 1, scope: !1585)
!1686 = !DISubprogram(name: "strerror_r", scope: !1687, file: !1687, line: 444, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1687 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!54, !62, !54, !64}
!1690 = !DISubprogram(name: "fflush_unlocked", scope: !226, file: !226, line: 239, type: !1691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!62, !1601}
!1693 = !DISubprogram(name: "fcntl", scope: !1694, file: !1694, line: 149, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1694 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!62, !62, !62, null}
!1697 = distinct !DISubprogram(name: "error", scope: !217, file: !217, line: 285, type: !1698, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !62, !62, !67, null}
!1700 = !{!1701, !1702, !1703, !1704}
!1701 = !DILocalVariable(name: "status", arg: 1, scope: !1697, file: !217, line: 285, type: !62)
!1702 = !DILocalVariable(name: "errnum", arg: 2, scope: !1697, file: !217, line: 285, type: !62)
!1703 = !DILocalVariable(name: "message", arg: 3, scope: !1697, file: !217, line: 285, type: !67)
!1704 = !DILocalVariable(name: "ap", scope: !1697, file: !217, line: 287, type: !225)
!1705 = !DILocation(line: 0, scope: !1697)
!1706 = !DILocation(line: 287, column: 3, scope: !1697)
!1707 = !DILocation(line: 287, column: 11, scope: !1697)
!1708 = !DILocation(line: 288, column: 3, scope: !1697)
!1709 = !DILocation(line: 289, column: 3, scope: !1697)
!1710 = !DILocation(line: 290, column: 3, scope: !1697)
!1711 = !DILocation(line: 291, column: 1, scope: !1697)
!1712 = !DILocation(line: 0, scope: !222)
!1713 = !DILocation(line: 298, column: 1, scope: !222)
!1714 = !DILocation(line: 302, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !222, file: !217, line: 302, column: 7)
!1716 = !DILocation(line: 302, column: 7, scope: !222)
!1717 = !DILocation(line: 307, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !217, line: 307, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !217, line: 303, column: 5)
!1720 = !DILocation(line: 307, column: 27, scope: !1718)
!1721 = !DILocation(line: 308, column: 11, scope: !1718)
!1722 = !DILocation(line: 308, column: 28, scope: !1718)
!1723 = !DILocation(line: 308, column: 25, scope: !1718)
!1724 = !DILocation(line: 309, column: 15, scope: !1718)
!1725 = !DILocation(line: 309, column: 33, scope: !1718)
!1726 = !DILocation(line: 310, column: 19, scope: !1718)
!1727 = !DILocation(line: 311, column: 22, scope: !1718)
!1728 = !DILocation(line: 311, column: 56, scope: !1718)
!1729 = !DILocation(line: 307, column: 11, scope: !1719)
!1730 = !DILocation(line: 316, column: 21, scope: !1719)
!1731 = !DILocation(line: 317, column: 23, scope: !1719)
!1732 = !DILocation(line: 318, column: 5, scope: !1719)
!1733 = !DILocation(line: 327, column: 3, scope: !222)
!1734 = !DILocation(line: 331, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !222, file: !217, line: 331, column: 7)
!1736 = !DILocation(line: 331, column: 7, scope: !222)
!1737 = !DILocation(line: 332, column: 5, scope: !1735)
!1738 = !DILocation(line: 338, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !217, line: 334, column: 5)
!1740 = !DILocation(line: 346, column: 3, scope: !222)
!1741 = !DILocation(line: 350, column: 3, scope: !222)
!1742 = !DILocation(line: 356, column: 1, scope: !222)
!1743 = distinct !DISubprogram(name: "error_at_line", scope: !217, file: !217, line: 359, type: !1744, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !62, !62, !67, !6, !67, null}
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752}
!1747 = !DILocalVariable(name: "status", arg: 1, scope: !1743, file: !217, line: 359, type: !62)
!1748 = !DILocalVariable(name: "errnum", arg: 2, scope: !1743, file: !217, line: 359, type: !62)
!1749 = !DILocalVariable(name: "file_name", arg: 3, scope: !1743, file: !217, line: 359, type: !67)
!1750 = !DILocalVariable(name: "line_number", arg: 4, scope: !1743, file: !217, line: 360, type: !6)
!1751 = !DILocalVariable(name: "message", arg: 5, scope: !1743, file: !217, line: 360, type: !67)
!1752 = !DILocalVariable(name: "ap", scope: !1743, file: !217, line: 362, type: !225)
!1753 = !DILocation(line: 0, scope: !1743)
!1754 = !DILocation(line: 362, column: 3, scope: !1743)
!1755 = !DILocation(line: 362, column: 11, scope: !1743)
!1756 = !DILocation(line: 363, column: 3, scope: !1743)
!1757 = !DILocation(line: 364, column: 3, scope: !1743)
!1758 = !DILocation(line: 366, column: 3, scope: !1743)
!1759 = !DILocation(line: 367, column: 1, scope: !1743)
!1760 = distinct !DISubprogram(name: "fdadvise", scope: !417, file: !417, line: 25, type: !1761, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1765)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !62, !1763, !1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !226, line: 63, baseType: !129)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !29, line: 51, baseType: !28)
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DILocalVariable(name: "fd", arg: 1, scope: !1760, file: !417, line: 25, type: !62)
!1767 = !DILocalVariable(name: "offset", arg: 2, scope: !1760, file: !417, line: 25, type: !1763)
!1768 = !DILocalVariable(name: "len", arg: 3, scope: !1760, file: !417, line: 25, type: !1763)
!1769 = !DILocalVariable(name: "advice", arg: 4, scope: !1760, file: !417, line: 25, type: !1764)
!1770 = !DILocation(line: 0, scope: !1760)
!1771 = !DILocation(line: 28, column: 3, scope: !1760)
!1772 = !DILocation(line: 30, column: 1, scope: !1760)
!1773 = !DISubprogram(name: "posix_fadvise", scope: !1694, file: !1694, line: 273, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!62, !62, !1763, !1763, !62}
!1776 = distinct !DISubprogram(name: "fadvise", scope: !417, file: !417, line: 33, type: !1777, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1813)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1779, !1764}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1781, file: !107, line: 51, baseType: !62, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1781, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1781, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1781, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1781, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1781, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1781, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1781, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1781, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1781, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1781, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1781, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1781, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1781, file: !107, line: 70, baseType: !1797, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1781, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1781, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1781, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1781, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1781, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1781, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1781, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1781, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1781, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1781, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1781, file: !107, line: 93, baseType: !1797, size: 64, offset: 1344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1781, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1781, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1781, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1781, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "fp", arg: 1, scope: !1776, file: !417, line: 33, type: !1779)
!1815 = !DILocalVariable(name: "advice", arg: 2, scope: !1776, file: !417, line: 33, type: !1764)
!1816 = !DILocation(line: 0, scope: !1776)
!1817 = !DILocation(line: 35, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1776, file: !417, line: 35, column: 7)
!1819 = !DILocation(line: 35, column: 7, scope: !1776)
!1820 = !DILocation(line: 36, column: 15, scope: !1818)
!1821 = !DILocation(line: 0, scope: !1760, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 36, column: 5, scope: !1818)
!1823 = !DILocation(line: 28, column: 3, scope: !1760, inlinedAt: !1822)
!1824 = !DILocation(line: 36, column: 5, scope: !1818)
!1825 = !DILocation(line: 37, column: 1, scope: !1776)
!1826 = !DISubprogram(name: "fileno", scope: !226, file: !226, line: 809, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!62, !1779}
!1829 = distinct !DISubprogram(name: "open_safer", scope: !420, file: !420, line: 29, type: !1830, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!62, !67, !62, null}
!1832 = !{!1833, !1834, !1835, !1837}
!1833 = !DILocalVariable(name: "file", arg: 1, scope: !1829, file: !420, line: 29, type: !67)
!1834 = !DILocalVariable(name: "flags", arg: 2, scope: !1829, file: !420, line: 29, type: !62)
!1835 = !DILocalVariable(name: "mode", scope: !1829, file: !420, line: 31, type: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !788, line: 69, baseType: !1131)
!1837 = !DILocalVariable(name: "ap", scope: !1838, file: !420, line: 35, type: !1840)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !420, line: 34, column: 5)
!1839 = distinct !DILexicalBlock(scope: !1829, file: !420, line: 33, column: 7)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !228, line: 14, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1842, baseType: !1843)
!1842 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848, !1849}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1843, file: !1842, line: 35, baseType: !56, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1843, file: !1842, line: 35, baseType: !56, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1843, file: !1842, line: 35, baseType: !56, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1843, file: !1842, line: 35, baseType: !62, size: 32, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1843, file: !1842, line: 35, baseType: !62, size: 32, offset: 224)
!1850 = !DILocation(line: 0, scope: !1829)
!1851 = !DILocation(line: 33, column: 13, scope: !1839)
!1852 = !DILocation(line: 33, column: 7, scope: !1829)
!1853 = !DILocation(line: 35, column: 7, scope: !1838)
!1854 = !DILocation(line: 35, column: 15, scope: !1838)
!1855 = !DILocation(line: 36, column: 7, scope: !1838)
!1856 = !DILocation(line: 40, column: 14, scope: !1838)
!1857 = !DILocation(line: 42, column: 7, scope: !1838)
!1858 = !DILocation(line: 43, column: 5, scope: !1839)
!1859 = !DILocation(line: 43, column: 5, scope: !1838)
!1860 = !DILocation(line: 45, column: 20, scope: !1829)
!1861 = !DILocation(line: 45, column: 10, scope: !1829)
!1862 = !DILocation(line: 45, column: 3, scope: !1829)
!1863 = !DISubprogram(name: "open", scope: !1694, file: !1694, line: 181, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1864 = distinct !DISubprogram(name: "getprogname", scope: !422, file: !422, line: 54, type: !1865, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !593)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!67}
!1867 = !DILocation(line: 58, column: 10, scope: !1864)
!1868 = !DILocation(line: 58, column: 3, scope: !1864)
!1869 = distinct !DISubprogram(name: "isapipe", scope: !424, file: !424, line: 72, type: !1036, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1870)
!1870 = !{!1871, !1872, !1874, !1875, !1898}
!1871 = !DILocalVariable(name: "fd", arg: 1, scope: !1869, file: !424, line: 72, type: !62)
!1872 = !DILocalVariable(name: "pipe_link_count_max", scope: !1869, file: !424, line: 74, type: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !788, line: 74, baseType: !1133)
!1874 = !DILocalVariable(name: "check_for_fifo", scope: !1869, file: !424, line: 75, type: !73)
!1875 = !DILocalVariable(name: "st", scope: !1869, file: !424, line: 77, type: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1124, line: 44, size: 1024, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1895, !1896, !1897}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1876, file: !1124, line: 46, baseType: !1127, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1876, file: !1124, line: 47, baseType: !1129, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1876, file: !1124, line: 48, baseType: !1131, size: 32, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1876, file: !1124, line: 49, baseType: !1133, size: 32, offset: 160)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1876, file: !1124, line: 50, baseType: !1135, size: 32, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1876, file: !1124, line: 51, baseType: !1137, size: 32, offset: 224)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1876, file: !1124, line: 52, baseType: !1127, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1876, file: !1124, line: 53, baseType: !1127, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1876, file: !1124, line: 54, baseType: !129, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1876, file: !1124, line: 55, baseType: !1142, size: 32, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1876, file: !1124, line: 56, baseType: !62, size: 32, offset: 480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1876, file: !1124, line: 57, baseType: !1145, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1876, file: !1124, line: 65, baseType: !1891, size: 128, offset: 576)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1148, line: 11, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1891, file: !1148, line: 16, baseType: !1151, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1891, file: !1148, line: 21, baseType: !1153, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1876, file: !1124, line: 66, baseType: !1891, size: 128, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1876, file: !1124, line: 67, baseType: !1891, size: 128, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1876, file: !1124, line: 79, baseType: !1157, size: 64, offset: 960)
!1898 = !DILocalVariable(name: "fstat_result", scope: !1869, file: !424, line: 78, type: !62)
!1899 = !DILocation(line: 0, scope: !1869)
!1900 = !DILocation(line: 77, column: 3, scope: !1869)
!1901 = !DILocation(line: 77, column: 15, scope: !1869)
!1902 = !DILocation(line: 78, column: 22, scope: !1869)
!1903 = !DILocation(line: 79, column: 20, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1869, file: !424, line: 79, column: 7)
!1905 = !DILocation(line: 79, column: 7, scope: !1869)
!1906 = !DILocation(line: 118, column: 9, scope: !1869)
!1907 = !{!1167, !602, i64 20}
!1908 = !DILocation(line: 118, column: 18, scope: !1869)
!1909 = !DILocation(line: 119, column: 6, scope: !1869)
!1910 = !DILocation(line: 117, column: 3, scope: !1869)
!1911 = !DILocation(line: 120, column: 1, scope: !1869)
!1912 = distinct !DISubprogram(name: "set_program_name", scope: !255, file: !255, line: 37, type: !526, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "argv0", arg: 1, scope: !1912, file: !255, line: 37, type: !67)
!1915 = !DILocalVariable(name: "slash", scope: !1912, file: !255, line: 44, type: !67)
!1916 = !DILocalVariable(name: "base", scope: !1912, file: !255, line: 45, type: !67)
!1917 = !DILocation(line: 0, scope: !1912)
!1918 = !DILocation(line: 44, column: 23, scope: !1912)
!1919 = !DILocation(line: 45, column: 22, scope: !1912)
!1920 = !DILocation(line: 46, column: 17, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1912, file: !255, line: 46, column: 7)
!1922 = !DILocation(line: 46, column: 9, scope: !1921)
!1923 = !DILocation(line: 46, column: 25, scope: !1921)
!1924 = !DILocation(line: 46, column: 40, scope: !1921)
!1925 = !DILocalVariable(name: "__s1", arg: 1, scope: !1926, file: !551, line: 974, type: !52)
!1926 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1293, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1927)
!1927 = !{!1925, !1928, !1929}
!1928 = !DILocalVariable(name: "__s2", arg: 2, scope: !1926, file: !551, line: 974, type: !52)
!1929 = !DILocalVariable(name: "__n", arg: 3, scope: !1926, file: !551, line: 974, type: !64)
!1930 = !DILocation(line: 0, scope: !1926, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 46, column: 28, scope: !1921)
!1932 = !DILocation(line: 976, column: 11, scope: !1926, inlinedAt: !1931)
!1933 = !DILocation(line: 976, column: 10, scope: !1926, inlinedAt: !1931)
!1934 = !DILocation(line: 46, column: 7, scope: !1912)
!1935 = !DILocation(line: 49, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !255, line: 49, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1921, file: !255, line: 47, column: 5)
!1938 = !DILocation(line: 49, column: 36, scope: !1936)
!1939 = !DILocation(line: 49, column: 11, scope: !1937)
!1940 = !DILocation(line: 65, column: 16, scope: !1912)
!1941 = !DILocation(line: 71, column: 27, scope: !1912)
!1942 = !DILocation(line: 74, column: 33, scope: !1912)
!1943 = !DILocation(line: 76, column: 1, scope: !1912)
!1944 = !DILocation(line: 0, scope: !260)
!1945 = !DILocation(line: 40, column: 29, scope: !260)
!1946 = !DILocation(line: 41, column: 19, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !260, file: !261, line: 41, column: 7)
!1948 = !DILocation(line: 41, column: 7, scope: !260)
!1949 = !DILocation(line: 47, column: 3, scope: !260)
!1950 = !DILocation(line: 48, column: 3, scope: !260)
!1951 = !DILocation(line: 48, column: 13, scope: !260)
!1952 = !DILocalVariable(name: "ps", arg: 1, scope: !1953, file: !1954, line: 1135, type: !1957)
!1953 = distinct !DISubprogram(name: "mbszero", scope: !1954, file: !1954, line: 1135, type: !1955, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1958)
!1954 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1958 = !{!1952}
!1959 = !DILocation(line: 0, scope: !1953, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 48, column: 18, scope: !260)
!1961 = !DILocalVariable(name: "__dest", arg: 1, scope: !1962, file: !1963, line: 57, type: !56)
!1962 = distinct !DISubprogram(name: "memset", scope: !1963, file: !1963, line: 57, type: !1964, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1966)
!1963 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!56, !56, !62, !64}
!1966 = !{!1961, !1967, !1968}
!1967 = !DILocalVariable(name: "__ch", arg: 2, scope: !1962, file: !1963, line: 57, type: !62)
!1968 = !DILocalVariable(name: "__len", arg: 3, scope: !1962, file: !1963, line: 57, type: !64)
!1969 = !DILocation(line: 0, scope: !1962, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 1137, column: 3, scope: !1953, inlinedAt: !1960)
!1971 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !1970)
!1972 = !DILocation(line: 49, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !260, file: !261, line: 49, column: 7)
!1974 = !DILocation(line: 49, column: 39, scope: !1973)
!1975 = !DILocation(line: 49, column: 44, scope: !1973)
!1976 = !DILocation(line: 54, column: 1, scope: !260)
!1977 = !DISubprogram(name: "mbrtoc32", scope: !272, file: !272, line: 57, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!64, !1980, !597, !64, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1981)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1957)
!1983 = distinct !DISubprogram(name: "clone_quoting_options", scope: !295, file: !295, line: 113, type: !1984, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1987)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "o", arg: 1, scope: !1983, file: !295, line: 113, type: !1986)
!1989 = !DILocalVariable(name: "saved_errno", scope: !1983, file: !295, line: 115, type: !62)
!1990 = !DILocalVariable(name: "p", scope: !1983, file: !295, line: 116, type: !1986)
!1991 = !DILocation(line: 0, scope: !1983)
!1992 = !DILocation(line: 115, column: 21, scope: !1983)
!1993 = !DILocation(line: 116, column: 40, scope: !1983)
!1994 = !DILocation(line: 116, column: 31, scope: !1983)
!1995 = !DILocation(line: 118, column: 9, scope: !1983)
!1996 = !DILocation(line: 119, column: 3, scope: !1983)
!1997 = distinct !DISubprogram(name: "get_quoting_style", scope: !295, file: !295, line: 124, type: !1998, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2002)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!37, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!2002 = !{!2003}
!2003 = !DILocalVariable(name: "o", arg: 1, scope: !1997, file: !295, line: 124, type: !2000)
!2004 = !DILocation(line: 0, scope: !1997)
!2005 = !DILocation(line: 126, column: 11, scope: !1997)
!2006 = !DILocation(line: 126, column: 46, scope: !1997)
!2007 = !{!2008, !512, i64 0}
!2008 = !{!"quoting_options", !512, i64 0, !602, i64 4, !512, i64 8, !511, i64 40, !511, i64 48}
!2009 = !DILocation(line: 126, column: 3, scope: !1997)
!2010 = distinct !DISubprogram(name: "set_quoting_style", scope: !295, file: !295, line: 132, type: !2011, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1986, !37}
!2013 = !{!2014, !2015}
!2014 = !DILocalVariable(name: "o", arg: 1, scope: !2010, file: !295, line: 132, type: !1986)
!2015 = !DILocalVariable(name: "s", arg: 2, scope: !2010, file: !295, line: 132, type: !37)
!2016 = !DILocation(line: 0, scope: !2010)
!2017 = !DILocation(line: 134, column: 4, scope: !2010)
!2018 = !DILocation(line: 134, column: 39, scope: !2010)
!2019 = !DILocation(line: 134, column: 45, scope: !2010)
!2020 = !DILocation(line: 135, column: 1, scope: !2010)
!2021 = distinct !DISubprogram(name: "set_char_quoting", scope: !295, file: !295, line: 143, type: !2022, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!62, !1986, !55, !62}
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2031, !2032}
!2025 = !DILocalVariable(name: "o", arg: 1, scope: !2021, file: !295, line: 143, type: !1986)
!2026 = !DILocalVariable(name: "c", arg: 2, scope: !2021, file: !295, line: 143, type: !55)
!2027 = !DILocalVariable(name: "i", arg: 3, scope: !2021, file: !295, line: 143, type: !62)
!2028 = !DILocalVariable(name: "uc", scope: !2021, file: !295, line: 145, type: !69)
!2029 = !DILocalVariable(name: "p", scope: !2021, file: !295, line: 146, type: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2031 = !DILocalVariable(name: "shift", scope: !2021, file: !295, line: 148, type: !62)
!2032 = !DILocalVariable(name: "r", scope: !2021, file: !295, line: 149, type: !6)
!2033 = !DILocation(line: 0, scope: !2021)
!2034 = !DILocation(line: 147, column: 6, scope: !2021)
!2035 = !DILocation(line: 147, column: 62, scope: !2021)
!2036 = !DILocation(line: 147, column: 57, scope: !2021)
!2037 = !DILocation(line: 148, column: 15, scope: !2021)
!2038 = !DILocation(line: 149, column: 21, scope: !2021)
!2039 = !DILocation(line: 149, column: 24, scope: !2021)
!2040 = !DILocation(line: 149, column: 34, scope: !2021)
!2041 = !DILocation(line: 150, column: 13, scope: !2021)
!2042 = !DILocation(line: 150, column: 19, scope: !2021)
!2043 = !DILocation(line: 150, column: 24, scope: !2021)
!2044 = !DILocation(line: 150, column: 6, scope: !2021)
!2045 = !DILocation(line: 151, column: 3, scope: !2021)
!2046 = distinct !DISubprogram(name: "set_quoting_flags", scope: !295, file: !295, line: 159, type: !2047, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!62, !1986, !62}
!2049 = !{!2050, !2051, !2052}
!2050 = !DILocalVariable(name: "o", arg: 1, scope: !2046, file: !295, line: 159, type: !1986)
!2051 = !DILocalVariable(name: "i", arg: 2, scope: !2046, file: !295, line: 159, type: !62)
!2052 = !DILocalVariable(name: "r", scope: !2046, file: !295, line: 163, type: !62)
!2053 = !DILocation(line: 0, scope: !2046)
!2054 = !DILocation(line: 161, column: 8, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2046, file: !295, line: 161, column: 7)
!2056 = !DILocation(line: 161, column: 7, scope: !2046)
!2057 = !DILocation(line: 163, column: 14, scope: !2046)
!2058 = !{!2008, !602, i64 4}
!2059 = !DILocation(line: 164, column: 12, scope: !2046)
!2060 = !DILocation(line: 165, column: 3, scope: !2046)
!2061 = distinct !DISubprogram(name: "set_custom_quoting", scope: !295, file: !295, line: 169, type: !2062, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !1986, !67, !67}
!2064 = !{!2065, !2066, !2067}
!2065 = !DILocalVariable(name: "o", arg: 1, scope: !2061, file: !295, line: 169, type: !1986)
!2066 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2061, file: !295, line: 170, type: !67)
!2067 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2061, file: !295, line: 170, type: !67)
!2068 = !DILocation(line: 0, scope: !2061)
!2069 = !DILocation(line: 172, column: 8, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2061, file: !295, line: 172, column: 7)
!2071 = !DILocation(line: 172, column: 7, scope: !2061)
!2072 = !DILocation(line: 174, column: 6, scope: !2061)
!2073 = !DILocation(line: 174, column: 12, scope: !2061)
!2074 = !DILocation(line: 175, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2061, file: !295, line: 175, column: 7)
!2076 = !DILocation(line: 175, column: 19, scope: !2075)
!2077 = !DILocation(line: 176, column: 5, scope: !2075)
!2078 = !DILocation(line: 177, column: 6, scope: !2061)
!2079 = !DILocation(line: 177, column: 17, scope: !2061)
!2080 = !{!2008, !511, i64 40}
!2081 = !DILocation(line: 178, column: 6, scope: !2061)
!2082 = !DILocation(line: 178, column: 18, scope: !2061)
!2083 = !{!2008, !511, i64 48}
!2084 = !DILocation(line: 179, column: 1, scope: !2061)
!2085 = distinct !DISubprogram(name: "quotearg_buffer", scope: !295, file: !295, line: 774, type: !2086, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!64, !54, !64, !67, !64, !2000}
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2089 = !DILocalVariable(name: "buffer", arg: 1, scope: !2085, file: !295, line: 774, type: !54)
!2090 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2085, file: !295, line: 774, type: !64)
!2091 = !DILocalVariable(name: "arg", arg: 3, scope: !2085, file: !295, line: 775, type: !67)
!2092 = !DILocalVariable(name: "argsize", arg: 4, scope: !2085, file: !295, line: 775, type: !64)
!2093 = !DILocalVariable(name: "o", arg: 5, scope: !2085, file: !295, line: 776, type: !2000)
!2094 = !DILocalVariable(name: "p", scope: !2085, file: !295, line: 778, type: !2000)
!2095 = !DILocalVariable(name: "saved_errno", scope: !2085, file: !295, line: 779, type: !62)
!2096 = !DILocalVariable(name: "r", scope: !2085, file: !295, line: 780, type: !64)
!2097 = !DILocation(line: 0, scope: !2085)
!2098 = !DILocation(line: 778, column: 37, scope: !2085)
!2099 = !DILocation(line: 779, column: 21, scope: !2085)
!2100 = !DILocation(line: 781, column: 43, scope: !2085)
!2101 = !DILocation(line: 781, column: 53, scope: !2085)
!2102 = !DILocation(line: 781, column: 60, scope: !2085)
!2103 = !DILocation(line: 782, column: 43, scope: !2085)
!2104 = !DILocation(line: 782, column: 58, scope: !2085)
!2105 = !DILocation(line: 780, column: 14, scope: !2085)
!2106 = !DILocation(line: 783, column: 9, scope: !2085)
!2107 = !DILocation(line: 784, column: 3, scope: !2085)
!2108 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !295, file: !295, line: 251, type: !2109, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2113)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!64, !54, !64, !67, !64, !37, !62, !2111, !67, !67}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2138, !2140, !2143, !2144, !2145, !2146, !2149, !2150, !2153, !2157, !2158, !2166, !2169, !2170, !2172, !2173, !2174, !2175}
!2114 = !DILocalVariable(name: "buffer", arg: 1, scope: !2108, file: !295, line: 251, type: !54)
!2115 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2108, file: !295, line: 251, type: !64)
!2116 = !DILocalVariable(name: "arg", arg: 3, scope: !2108, file: !295, line: 252, type: !67)
!2117 = !DILocalVariable(name: "argsize", arg: 4, scope: !2108, file: !295, line: 252, type: !64)
!2118 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2108, file: !295, line: 253, type: !37)
!2119 = !DILocalVariable(name: "flags", arg: 6, scope: !2108, file: !295, line: 253, type: !62)
!2120 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2108, file: !295, line: 254, type: !2111)
!2121 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2108, file: !295, line: 255, type: !67)
!2122 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2108, file: !295, line: 256, type: !67)
!2123 = !DILocalVariable(name: "unibyte_locale", scope: !2108, file: !295, line: 258, type: !73)
!2124 = !DILocalVariable(name: "len", scope: !2108, file: !295, line: 260, type: !64)
!2125 = !DILocalVariable(name: "orig_buffersize", scope: !2108, file: !295, line: 261, type: !64)
!2126 = !DILocalVariable(name: "quote_string", scope: !2108, file: !295, line: 262, type: !67)
!2127 = !DILocalVariable(name: "quote_string_len", scope: !2108, file: !295, line: 263, type: !64)
!2128 = !DILocalVariable(name: "backslash_escapes", scope: !2108, file: !295, line: 264, type: !73)
!2129 = !DILocalVariable(name: "elide_outer_quotes", scope: !2108, file: !295, line: 265, type: !73)
!2130 = !DILocalVariable(name: "encountered_single_quote", scope: !2108, file: !295, line: 266, type: !73)
!2131 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2108, file: !295, line: 267, type: !73)
!2132 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2108, file: !295, line: 309, type: !73)
!2133 = !DILocalVariable(name: "lq", scope: !2134, file: !295, line: 361, type: !67)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !295, line: 361, column: 11)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !295, line: 360, column: 13)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !295, line: 333, column: 7)
!2137 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 312, column: 5)
!2138 = !DILocalVariable(name: "i", scope: !2139, file: !295, line: 395, type: !64)
!2139 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 395, column: 3)
!2140 = !DILocalVariable(name: "is_right_quote", scope: !2141, file: !295, line: 397, type: !73)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !295, line: 396, column: 5)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !295, line: 395, column: 3)
!2143 = !DILocalVariable(name: "escaping", scope: !2141, file: !295, line: 398, type: !73)
!2144 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2141, file: !295, line: 399, type: !73)
!2145 = !DILocalVariable(name: "c", scope: !2141, file: !295, line: 417, type: !69)
!2146 = !DILocalVariable(name: "m", scope: !2147, file: !295, line: 598, type: !64)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 596, column: 11)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 419, column: 9)
!2149 = !DILocalVariable(name: "printable", scope: !2147, file: !295, line: 600, type: !73)
!2150 = !DILocalVariable(name: "mbs", scope: !2151, file: !295, line: 609, type: !340)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !295, line: 608, column: 15)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !295, line: 602, column: 17)
!2153 = !DILocalVariable(name: "w", scope: !2154, file: !295, line: 618, type: !271)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !295, line: 617, column: 19)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !295, line: 616, column: 17)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !295, line: 616, column: 17)
!2157 = !DILocalVariable(name: "bytes", scope: !2154, file: !295, line: 619, type: !64)
!2158 = !DILocalVariable(name: "j", scope: !2159, file: !295, line: 648, type: !64)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !295, line: 648, column: 29)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !295, line: 647, column: 27)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !295, line: 645, column: 29)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !295, line: 636, column: 23)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !295, line: 628, column: 30)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !295, line: 623, column: 30)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !295, line: 621, column: 25)
!2166 = !DILocalVariable(name: "ilim", scope: !2167, file: !295, line: 674, type: !64)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !295, line: 671, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2147, file: !295, line: 670, column: 17)
!2169 = !DILabel(scope: !2108, name: "process_input", file: !295, line: 308)
!2170 = !DILabel(scope: !2171, name: "c_and_shell_escape", file: !295, line: 502)
!2171 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 478, column: 9)
!2172 = !DILabel(scope: !2171, name: "c_escape", file: !295, line: 507)
!2173 = !DILabel(scope: !2141, name: "store_escape", file: !295, line: 709)
!2174 = !DILabel(scope: !2141, name: "store_c", file: !295, line: 712)
!2175 = !DILabel(scope: !2108, name: "force_outer_quoting_style", file: !295, line: 753)
!2176 = !DILocation(line: 0, scope: !2108)
!2177 = !DILocation(line: 258, column: 25, scope: !2108)
!2178 = !DILocation(line: 258, column: 36, scope: !2108)
!2179 = !DILocation(line: 267, column: 3, scope: !2108)
!2180 = !DILocation(line: 261, column: 10, scope: !2108)
!2181 = !DILocation(line: 262, column: 15, scope: !2108)
!2182 = !DILocation(line: 263, column: 10, scope: !2108)
!2183 = !DILocation(line: 308, column: 2, scope: !2108)
!2184 = !DILocation(line: 311, column: 3, scope: !2108)
!2185 = !DILocation(line: 318, column: 11, scope: !2137)
!2186 = !DILocation(line: 319, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !295, line: 319, column: 9)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !295, line: 319, column: 9)
!2189 = distinct !DILexicalBlock(scope: !2137, file: !295, line: 318, column: 11)
!2190 = !DILocation(line: 319, column: 9, scope: !2188)
!2191 = !DILocation(line: 0, scope: !331, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 357, column: 26, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !295, line: 335, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2136, file: !295, line: 334, column: 13)
!2195 = !DILocation(line: 199, column: 29, scope: !331, inlinedAt: !2192)
!2196 = !DILocation(line: 201, column: 19, scope: !2197, inlinedAt: !2192)
!2197 = distinct !DILexicalBlock(scope: !331, file: !295, line: 201, column: 7)
!2198 = !DILocation(line: 201, column: 7, scope: !331, inlinedAt: !2192)
!2199 = !DILocation(line: 229, column: 3, scope: !331, inlinedAt: !2192)
!2200 = !DILocation(line: 230, column: 3, scope: !331, inlinedAt: !2192)
!2201 = !DILocation(line: 230, column: 13, scope: !331, inlinedAt: !2192)
!2202 = !DILocalVariable(name: "ps", arg: 1, scope: !2203, file: !1954, line: 1135, type: !2206)
!2203 = distinct !DISubprogram(name: "mbszero", scope: !1954, file: !1954, line: 1135, type: !2204, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2207)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2207 = !{!2202}
!2208 = !DILocation(line: 0, scope: !2203, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 230, column: 18, scope: !331, inlinedAt: !2192)
!2210 = !DILocalVariable(name: "__dest", arg: 1, scope: !2211, file: !1963, line: 57, type: !56)
!2211 = distinct !DISubprogram(name: "memset", scope: !1963, file: !1963, line: 57, type: !1964, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2212)
!2212 = !{!2210, !2213, !2214}
!2213 = !DILocalVariable(name: "__ch", arg: 2, scope: !2211, file: !1963, line: 57, type: !62)
!2214 = !DILocalVariable(name: "__len", arg: 3, scope: !2211, file: !1963, line: 57, type: !64)
!2215 = !DILocation(line: 0, scope: !2211, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 1137, column: 3, scope: !2203, inlinedAt: !2209)
!2217 = !DILocation(line: 59, column: 10, scope: !2211, inlinedAt: !2216)
!2218 = !DILocation(line: 231, column: 7, scope: !2219, inlinedAt: !2192)
!2219 = distinct !DILexicalBlock(scope: !331, file: !295, line: 231, column: 7)
!2220 = !DILocation(line: 231, column: 40, scope: !2219, inlinedAt: !2192)
!2221 = !DILocation(line: 231, column: 45, scope: !2219, inlinedAt: !2192)
!2222 = !DILocation(line: 235, column: 1, scope: !331, inlinedAt: !2192)
!2223 = !DILocation(line: 0, scope: !331, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 358, column: 27, scope: !2193)
!2225 = !DILocation(line: 199, column: 29, scope: !331, inlinedAt: !2224)
!2226 = !DILocation(line: 201, column: 19, scope: !2197, inlinedAt: !2224)
!2227 = !DILocation(line: 201, column: 7, scope: !331, inlinedAt: !2224)
!2228 = !DILocation(line: 229, column: 3, scope: !331, inlinedAt: !2224)
!2229 = !DILocation(line: 230, column: 3, scope: !331, inlinedAt: !2224)
!2230 = !DILocation(line: 230, column: 13, scope: !331, inlinedAt: !2224)
!2231 = !DILocation(line: 0, scope: !2203, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 230, column: 18, scope: !331, inlinedAt: !2224)
!2233 = !DILocation(line: 0, scope: !2211, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 1137, column: 3, scope: !2203, inlinedAt: !2232)
!2235 = !DILocation(line: 59, column: 10, scope: !2211, inlinedAt: !2234)
!2236 = !DILocation(line: 231, column: 7, scope: !2219, inlinedAt: !2224)
!2237 = !DILocation(line: 231, column: 40, scope: !2219, inlinedAt: !2224)
!2238 = !DILocation(line: 231, column: 45, scope: !2219, inlinedAt: !2224)
!2239 = !DILocation(line: 235, column: 1, scope: !331, inlinedAt: !2224)
!2240 = !DILocation(line: 360, column: 13, scope: !2136)
!2241 = !DILocation(line: 0, scope: !2134)
!2242 = !DILocation(line: 361, column: 45, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 361, column: 11)
!2244 = !DILocation(line: 361, column: 11, scope: !2134)
!2245 = !DILocation(line: 362, column: 13, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !295, line: 362, column: 13)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !295, line: 362, column: 13)
!2248 = !DILocation(line: 362, column: 13, scope: !2247)
!2249 = !DILocation(line: 361, column: 52, scope: !2243)
!2250 = distinct !{!2250, !2244, !2251, !567}
!2251 = !DILocation(line: 362, column: 13, scope: !2134)
!2252 = !DILocation(line: 260, column: 10, scope: !2108)
!2253 = !DILocation(line: 365, column: 28, scope: !2136)
!2254 = !DILocation(line: 367, column: 7, scope: !2137)
!2255 = !DILocation(line: 370, column: 7, scope: !2137)
!2256 = !DILocation(line: 376, column: 11, scope: !2137)
!2257 = !DILocation(line: 381, column: 11, scope: !2137)
!2258 = !DILocation(line: 382, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !295, line: 382, column: 9)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !295, line: 382, column: 9)
!2261 = distinct !DILexicalBlock(scope: !2137, file: !295, line: 381, column: 11)
!2262 = !DILocation(line: 382, column: 9, scope: !2260)
!2263 = !DILocation(line: 389, column: 7, scope: !2137)
!2264 = !DILocation(line: 392, column: 7, scope: !2137)
!2265 = !DILocation(line: 0, scope: !2139)
!2266 = !DILocation(line: 395, column: 8, scope: !2139)
!2267 = !DILocation(line: 395, column: 34, scope: !2142)
!2268 = !DILocation(line: 395, column: 26, scope: !2142)
!2269 = !DILocation(line: 395, column: 48, scope: !2142)
!2270 = !DILocation(line: 395, column: 55, scope: !2142)
!2271 = !DILocation(line: 395, column: 3, scope: !2139)
!2272 = !DILocation(line: 395, column: 67, scope: !2142)
!2273 = !DILocation(line: 0, scope: !2141)
!2274 = !DILocation(line: 402, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 401, column: 11)
!2276 = !DILocation(line: 404, column: 17, scope: !2275)
!2277 = !DILocation(line: 405, column: 39, scope: !2275)
!2278 = !DILocation(line: 409, column: 32, scope: !2275)
!2279 = !DILocation(line: 405, column: 19, scope: !2275)
!2280 = !DILocation(line: 405, column: 15, scope: !2275)
!2281 = !DILocation(line: 410, column: 11, scope: !2275)
!2282 = !DILocation(line: 410, column: 25, scope: !2275)
!2283 = !DILocalVariable(name: "__s1", arg: 1, scope: !2284, file: !551, line: 974, type: !52)
!2284 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1293, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2285)
!2285 = !{!2283, !2286, !2287}
!2286 = !DILocalVariable(name: "__s2", arg: 2, scope: !2284, file: !551, line: 974, type: !52)
!2287 = !DILocalVariable(name: "__n", arg: 3, scope: !2284, file: !551, line: 974, type: !64)
!2288 = !DILocation(line: 0, scope: !2284, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 410, column: 14, scope: !2275)
!2290 = !DILocation(line: 976, column: 11, scope: !2284, inlinedAt: !2289)
!2291 = !DILocation(line: 976, column: 10, scope: !2284, inlinedAt: !2289)
!2292 = !DILocation(line: 401, column: 11, scope: !2141)
!2293 = !DILocation(line: 417, column: 25, scope: !2141)
!2294 = !DILocation(line: 418, column: 7, scope: !2141)
!2295 = !DILocation(line: 421, column: 15, scope: !2148)
!2296 = !DILocation(line: 423, column: 15, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !295, line: 423, column: 15)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !295, line: 422, column: 13)
!2299 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 421, column: 15)
!2300 = !DILocation(line: 423, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !295, line: 423, column: 15)
!2302 = !DILocation(line: 423, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !295, line: 423, column: 15)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !295, line: 423, column: 15)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !295, line: 423, column: 15)
!2306 = !DILocation(line: 423, column: 15, scope: !2304)
!2307 = !DILocation(line: 423, column: 15, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !295, line: 423, column: 15)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !295, line: 423, column: 15)
!2310 = !DILocation(line: 423, column: 15, scope: !2309)
!2311 = !DILocation(line: 423, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !295, line: 423, column: 15)
!2313 = distinct !DILexicalBlock(scope: !2305, file: !295, line: 423, column: 15)
!2314 = !DILocation(line: 423, column: 15, scope: !2313)
!2315 = !DILocation(line: 423, column: 15, scope: !2305)
!2316 = !DILocation(line: 423, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !295, line: 423, column: 15)
!2318 = distinct !DILexicalBlock(scope: !2297, file: !295, line: 423, column: 15)
!2319 = !DILocation(line: 423, column: 15, scope: !2318)
!2320 = !DILocation(line: 431, column: 19, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2298, file: !295, line: 430, column: 19)
!2322 = !DILocation(line: 431, column: 24, scope: !2321)
!2323 = !DILocation(line: 431, column: 28, scope: !2321)
!2324 = !DILocation(line: 431, column: 38, scope: !2321)
!2325 = !DILocation(line: 431, column: 48, scope: !2321)
!2326 = !DILocation(line: 431, column: 59, scope: !2321)
!2327 = !DILocation(line: 433, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !295, line: 433, column: 19)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !295, line: 433, column: 19)
!2330 = distinct !DILexicalBlock(scope: !2321, file: !295, line: 432, column: 17)
!2331 = !DILocation(line: 433, column: 19, scope: !2329)
!2332 = !DILocation(line: 434, column: 19, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !295, line: 434, column: 19)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !295, line: 434, column: 19)
!2335 = !DILocation(line: 434, column: 19, scope: !2334)
!2336 = !DILocation(line: 435, column: 17, scope: !2330)
!2337 = !DILocation(line: 442, column: 20, scope: !2299)
!2338 = !DILocation(line: 447, column: 11, scope: !2148)
!2339 = !DILocation(line: 450, column: 19, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 448, column: 13)
!2341 = !DILocation(line: 456, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !295, line: 455, column: 19)
!2343 = !DILocation(line: 456, column: 24, scope: !2342)
!2344 = !DILocation(line: 456, column: 28, scope: !2342)
!2345 = !DILocation(line: 456, column: 38, scope: !2342)
!2346 = !DILocation(line: 456, column: 47, scope: !2342)
!2347 = !DILocation(line: 456, column: 41, scope: !2342)
!2348 = !DILocation(line: 456, column: 52, scope: !2342)
!2349 = !DILocation(line: 455, column: 19, scope: !2340)
!2350 = !DILocation(line: 457, column: 25, scope: !2342)
!2351 = !DILocation(line: 457, column: 17, scope: !2342)
!2352 = !DILocation(line: 464, column: 25, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2342, file: !295, line: 458, column: 19)
!2354 = !DILocation(line: 468, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !295, line: 468, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !295, line: 468, column: 21)
!2357 = !DILocation(line: 468, column: 21, scope: !2356)
!2358 = !DILocation(line: 469, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !295, line: 469, column: 21)
!2360 = distinct !DILexicalBlock(scope: !2353, file: !295, line: 469, column: 21)
!2361 = !DILocation(line: 469, column: 21, scope: !2360)
!2362 = !DILocation(line: 470, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !295, line: 470, column: 21)
!2364 = distinct !DILexicalBlock(scope: !2353, file: !295, line: 470, column: 21)
!2365 = !DILocation(line: 470, column: 21, scope: !2364)
!2366 = !DILocation(line: 471, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !295, line: 471, column: 21)
!2368 = distinct !DILexicalBlock(scope: !2353, file: !295, line: 471, column: 21)
!2369 = !DILocation(line: 471, column: 21, scope: !2368)
!2370 = !DILocation(line: 472, column: 21, scope: !2353)
!2371 = !DILocation(line: 482, column: 33, scope: !2171)
!2372 = !DILocation(line: 483, column: 33, scope: !2171)
!2373 = !DILocation(line: 485, column: 33, scope: !2171)
!2374 = !DILocation(line: 486, column: 33, scope: !2171)
!2375 = !DILocation(line: 487, column: 33, scope: !2171)
!2376 = !DILocation(line: 490, column: 17, scope: !2171)
!2377 = !DILocation(line: 492, column: 21, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !295, line: 491, column: 15)
!2379 = distinct !DILexicalBlock(scope: !2171, file: !295, line: 490, column: 17)
!2380 = !DILocation(line: 499, column: 35, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2171, file: !295, line: 499, column: 17)
!2382 = !DILocation(line: 499, column: 57, scope: !2381)
!2383 = !DILocation(line: 0, scope: !2171)
!2384 = !DILocation(line: 502, column: 11, scope: !2171)
!2385 = !DILocation(line: 504, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2171, file: !295, line: 503, column: 17)
!2387 = !DILocation(line: 507, column: 11, scope: !2171)
!2388 = !DILocation(line: 508, column: 17, scope: !2171)
!2389 = !DILocation(line: 517, column: 15, scope: !2148)
!2390 = !DILocation(line: 517, column: 40, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 517, column: 15)
!2392 = !DILocation(line: 517, column: 47, scope: !2391)
!2393 = !DILocation(line: 517, column: 18, scope: !2391)
!2394 = !DILocation(line: 521, column: 17, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 521, column: 15)
!2396 = !DILocation(line: 521, column: 15, scope: !2148)
!2397 = !DILocation(line: 525, column: 11, scope: !2148)
!2398 = !DILocation(line: 537, column: 15, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 536, column: 15)
!2400 = !DILocation(line: 536, column: 15, scope: !2148)
!2401 = !DILocation(line: 544, column: 15, scope: !2148)
!2402 = !DILocation(line: 546, column: 19, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !295, line: 545, column: 13)
!2404 = distinct !DILexicalBlock(scope: !2148, file: !295, line: 544, column: 15)
!2405 = !DILocation(line: 549, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !295, line: 549, column: 19)
!2407 = !DILocation(line: 549, column: 30, scope: !2406)
!2408 = !DILocation(line: 558, column: 15, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !295, line: 558, column: 15)
!2410 = distinct !DILexicalBlock(scope: !2403, file: !295, line: 558, column: 15)
!2411 = !DILocation(line: 558, column: 15, scope: !2410)
!2412 = !DILocation(line: 559, column: 15, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !295, line: 559, column: 15)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !295, line: 559, column: 15)
!2415 = !DILocation(line: 559, column: 15, scope: !2414)
!2416 = !DILocation(line: 560, column: 15, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !295, line: 560, column: 15)
!2418 = distinct !DILexicalBlock(scope: !2403, file: !295, line: 560, column: 15)
!2419 = !DILocation(line: 560, column: 15, scope: !2418)
!2420 = !DILocation(line: 562, column: 13, scope: !2403)
!2421 = !DILocation(line: 602, column: 17, scope: !2147)
!2422 = !DILocation(line: 0, scope: !2147)
!2423 = !DILocation(line: 605, column: 29, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2152, file: !295, line: 603, column: 15)
!2425 = !DILocation(line: 605, column: 41, scope: !2424)
!2426 = !DILocation(line: 670, column: 23, scope: !2168)
!2427 = !DILocation(line: 609, column: 17, scope: !2151)
!2428 = !DILocation(line: 609, column: 27, scope: !2151)
!2429 = !DILocation(line: 0, scope: !2203, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 609, column: 32, scope: !2151)
!2431 = !DILocation(line: 0, scope: !2211, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1137, column: 3, scope: !2203, inlinedAt: !2430)
!2433 = !DILocation(line: 59, column: 10, scope: !2211, inlinedAt: !2432)
!2434 = !DILocation(line: 613, column: 29, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2151, file: !295, line: 613, column: 21)
!2436 = !DILocation(line: 613, column: 21, scope: !2151)
!2437 = !DILocation(line: 614, column: 29, scope: !2435)
!2438 = !DILocation(line: 614, column: 19, scope: !2435)
!2439 = !DILocation(line: 618, column: 21, scope: !2154)
!2440 = !DILocation(line: 620, column: 54, scope: !2154)
!2441 = !DILocation(line: 0, scope: !2154)
!2442 = !DILocation(line: 619, column: 36, scope: !2154)
!2443 = !DILocation(line: 621, column: 25, scope: !2154)
!2444 = !DILocation(line: 631, column: 38, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2163, file: !295, line: 629, column: 23)
!2446 = !DILocation(line: 631, column: 48, scope: !2445)
!2447 = !DILocation(line: 665, column: 19, scope: !2155)
!2448 = !DILocation(line: 666, column: 15, scope: !2152)
!2449 = !DILocation(line: 626, column: 25, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2164, file: !295, line: 624, column: 23)
!2451 = !DILocation(line: 631, column: 51, scope: !2445)
!2452 = !DILocation(line: 631, column: 25, scope: !2445)
!2453 = !DILocation(line: 632, column: 28, scope: !2445)
!2454 = !DILocation(line: 631, column: 34, scope: !2445)
!2455 = distinct !{!2455, !2452, !2453, !567}
!2456 = !DILocation(line: 646, column: 29, scope: !2161)
!2457 = !DILocation(line: 0, scope: !2159)
!2458 = !DILocation(line: 649, column: 49, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2159, file: !295, line: 648, column: 29)
!2460 = !DILocation(line: 649, column: 39, scope: !2459)
!2461 = !DILocation(line: 649, column: 31, scope: !2459)
!2462 = !DILocation(line: 648, column: 60, scope: !2459)
!2463 = !DILocation(line: 648, column: 50, scope: !2459)
!2464 = !DILocation(line: 648, column: 29, scope: !2159)
!2465 = distinct !{!2465, !2464, !2466, !567}
!2466 = !DILocation(line: 654, column: 33, scope: !2159)
!2467 = !DILocation(line: 657, column: 43, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2162, file: !295, line: 657, column: 29)
!2469 = !DILocalVariable(name: "wc", arg: 1, scope: !2470, file: !2471, line: 865, type: !2474)
!2470 = distinct !DISubprogram(name: "c32isprint", scope: !2471, file: !2471, line: 865, type: !2472, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2476)
!2471 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!62, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2475, line: 20, baseType: !6)
!2475 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2476 = !{!2469}
!2477 = !DILocation(line: 0, scope: !2470, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 657, column: 31, scope: !2468)
!2479 = !DILocation(line: 871, column: 10, scope: !2470, inlinedAt: !2478)
!2480 = !DILocation(line: 657, column: 31, scope: !2468)
!2481 = !DILocation(line: 664, column: 23, scope: !2154)
!2482 = !DILocation(line: 753, column: 2, scope: !2108)
!2483 = !DILocation(line: 756, column: 51, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 756, column: 7)
!2485 = !DILocation(line: 670, column: 19, scope: !2168)
!2486 = !DILocation(line: 670, column: 45, scope: !2168)
!2487 = !DILocation(line: 674, column: 33, scope: !2167)
!2488 = !DILocation(line: 0, scope: !2167)
!2489 = !DILocation(line: 676, column: 17, scope: !2167)
!2490 = !DILocation(line: 398, column: 12, scope: !2141)
!2491 = !DILocation(line: 678, column: 43, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !295, line: 678, column: 25)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !295, line: 677, column: 19)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !295, line: 676, column: 17)
!2495 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 676, column: 17)
!2496 = !DILocation(line: 680, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !295, line: 680, column: 25)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !295, line: 679, column: 23)
!2499 = !DILocation(line: 680, column: 25, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !295, line: 680, column: 25)
!2501 = !DILocation(line: 680, column: 25, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !295, line: 680, column: 25)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !295, line: 680, column: 25)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !295, line: 680, column: 25)
!2505 = !DILocation(line: 680, column: 25, scope: !2503)
!2506 = !DILocation(line: 680, column: 25, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !295, line: 680, column: 25)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !295, line: 680, column: 25)
!2509 = !DILocation(line: 680, column: 25, scope: !2508)
!2510 = !DILocation(line: 680, column: 25, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !295, line: 680, column: 25)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !295, line: 680, column: 25)
!2513 = !DILocation(line: 680, column: 25, scope: !2512)
!2514 = !DILocation(line: 680, column: 25, scope: !2504)
!2515 = !DILocation(line: 680, column: 25, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !295, line: 680, column: 25)
!2517 = distinct !DILexicalBlock(scope: !2497, file: !295, line: 680, column: 25)
!2518 = !DILocation(line: 680, column: 25, scope: !2517)
!2519 = !DILocation(line: 681, column: 25, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !295, line: 681, column: 25)
!2521 = distinct !DILexicalBlock(scope: !2498, file: !295, line: 681, column: 25)
!2522 = !DILocation(line: 681, column: 25, scope: !2521)
!2523 = !DILocation(line: 682, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !295, line: 682, column: 25)
!2525 = distinct !DILexicalBlock(scope: !2498, file: !295, line: 682, column: 25)
!2526 = !DILocation(line: 682, column: 25, scope: !2525)
!2527 = !DILocation(line: 683, column: 38, scope: !2498)
!2528 = !DILocation(line: 683, column: 33, scope: !2498)
!2529 = !DILocation(line: 684, column: 23, scope: !2498)
!2530 = !DILocation(line: 685, column: 30, scope: !2492)
!2531 = !DILocation(line: 687, column: 25, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !295, line: 687, column: 25)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !295, line: 687, column: 25)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !295, line: 686, column: 23)
!2535 = distinct !DILexicalBlock(scope: !2492, file: !295, line: 685, column: 30)
!2536 = !DILocation(line: 687, column: 25, scope: !2533)
!2537 = !DILocation(line: 689, column: 23, scope: !2534)
!2538 = !DILocation(line: 690, column: 35, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2493, file: !295, line: 690, column: 25)
!2540 = !DILocation(line: 690, column: 30, scope: !2539)
!2541 = !DILocation(line: 690, column: 25, scope: !2493)
!2542 = !DILocation(line: 692, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !295, line: 692, column: 21)
!2544 = distinct !DILexicalBlock(scope: !2493, file: !295, line: 692, column: 21)
!2545 = !DILocation(line: 692, column: 21, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !295, line: 692, column: 21)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !295, line: 692, column: 21)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !295, line: 692, column: 21)
!2549 = !DILocation(line: 692, column: 21, scope: !2547)
!2550 = !DILocation(line: 692, column: 21, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !295, line: 692, column: 21)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !295, line: 692, column: 21)
!2553 = !DILocation(line: 692, column: 21, scope: !2552)
!2554 = !DILocation(line: 692, column: 21, scope: !2548)
!2555 = !DILocation(line: 0, scope: !2493)
!2556 = !DILocation(line: 693, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !295, line: 693, column: 21)
!2558 = distinct !DILexicalBlock(scope: !2493, file: !295, line: 693, column: 21)
!2559 = !DILocation(line: 693, column: 21, scope: !2558)
!2560 = !DILocation(line: 694, column: 25, scope: !2493)
!2561 = !DILocation(line: 676, column: 17, scope: !2494)
!2562 = distinct !{!2562, !2563, !2564}
!2563 = !DILocation(line: 676, column: 17, scope: !2495)
!2564 = !DILocation(line: 695, column: 19, scope: !2495)
!2565 = !DILocation(line: 409, column: 30, scope: !2275)
!2566 = !DILocation(line: 702, column: 34, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 702, column: 11)
!2568 = !DILocation(line: 704, column: 14, scope: !2567)
!2569 = !DILocation(line: 705, column: 14, scope: !2567)
!2570 = !DILocation(line: 705, column: 35, scope: !2567)
!2571 = !DILocation(line: 705, column: 17, scope: !2567)
!2572 = !DILocation(line: 705, column: 47, scope: !2567)
!2573 = !DILocation(line: 705, column: 65, scope: !2567)
!2574 = !DILocation(line: 706, column: 11, scope: !2567)
!2575 = !DILocation(line: 702, column: 11, scope: !2141)
!2576 = !DILocation(line: 395, column: 15, scope: !2139)
!2577 = !DILocation(line: 709, column: 5, scope: !2141)
!2578 = !DILocation(line: 710, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 710, column: 7)
!2580 = !DILocation(line: 710, column: 7, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !295, line: 710, column: 7)
!2582 = !DILocation(line: 710, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !295, line: 710, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !295, line: 710, column: 7)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !295, line: 710, column: 7)
!2586 = !DILocation(line: 710, column: 7, scope: !2584)
!2587 = !DILocation(line: 710, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !295, line: 710, column: 7)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !295, line: 710, column: 7)
!2590 = !DILocation(line: 710, column: 7, scope: !2589)
!2591 = !DILocation(line: 710, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !295, line: 710, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2585, file: !295, line: 710, column: 7)
!2594 = !DILocation(line: 710, column: 7, scope: !2593)
!2595 = !DILocation(line: 710, column: 7, scope: !2585)
!2596 = !DILocation(line: 710, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !295, line: 710, column: 7)
!2598 = distinct !DILexicalBlock(scope: !2579, file: !295, line: 710, column: 7)
!2599 = !DILocation(line: 710, column: 7, scope: !2598)
!2600 = !DILocation(line: 712, column: 5, scope: !2141)
!2601 = !DILocation(line: 713, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !295, line: 713, column: 7)
!2603 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 713, column: 7)
!2604 = !DILocation(line: 417, column: 21, scope: !2141)
!2605 = !DILocation(line: 713, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !295, line: 713, column: 7)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !295, line: 713, column: 7)
!2608 = distinct !DILexicalBlock(scope: !2602, file: !295, line: 713, column: 7)
!2609 = !DILocation(line: 713, column: 7, scope: !2607)
!2610 = !DILocation(line: 713, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !295, line: 713, column: 7)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !295, line: 713, column: 7)
!2613 = !DILocation(line: 713, column: 7, scope: !2612)
!2614 = !DILocation(line: 713, column: 7, scope: !2608)
!2615 = !DILocation(line: 714, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !295, line: 714, column: 7)
!2617 = distinct !DILexicalBlock(scope: !2141, file: !295, line: 714, column: 7)
!2618 = !DILocation(line: 714, column: 7, scope: !2617)
!2619 = !DILocation(line: 716, column: 11, scope: !2141)
!2620 = !DILocation(line: 718, column: 5, scope: !2142)
!2621 = !DILocation(line: 395, column: 82, scope: !2142)
!2622 = !DILocation(line: 395, column: 3, scope: !2142)
!2623 = distinct !{!2623, !2271, !2624, !567}
!2624 = !DILocation(line: 718, column: 5, scope: !2139)
!2625 = !DILocation(line: 720, column: 11, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 720, column: 7)
!2627 = !DILocation(line: 720, column: 16, scope: !2626)
!2628 = !DILocation(line: 728, column: 51, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 728, column: 7)
!2630 = !DILocation(line: 731, column: 11, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !295, line: 730, column: 5)
!2632 = !DILocation(line: 732, column: 16, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2631, file: !295, line: 731, column: 11)
!2634 = !DILocation(line: 732, column: 9, scope: !2633)
!2635 = !DILocation(line: 736, column: 18, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !295, line: 736, column: 16)
!2637 = !DILocation(line: 736, column: 29, scope: !2636)
!2638 = !DILocation(line: 745, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 745, column: 7)
!2640 = !DILocation(line: 745, column: 20, scope: !2639)
!2641 = !DILocation(line: 746, column: 12, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !295, line: 746, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !295, line: 746, column: 5)
!2644 = !DILocation(line: 746, column: 5, scope: !2643)
!2645 = !DILocation(line: 747, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !295, line: 747, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !295, line: 747, column: 7)
!2648 = !DILocation(line: 747, column: 7, scope: !2647)
!2649 = !DILocation(line: 746, column: 39, scope: !2642)
!2650 = distinct !{!2650, !2644, !2651, !567}
!2651 = !DILocation(line: 747, column: 7, scope: !2643)
!2652 = !DILocation(line: 749, column: 11, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2108, file: !295, line: 749, column: 7)
!2654 = !DILocation(line: 749, column: 7, scope: !2108)
!2655 = !DILocation(line: 750, column: 5, scope: !2653)
!2656 = !DILocation(line: 750, column: 17, scope: !2653)
!2657 = !DILocation(line: 756, column: 21, scope: !2484)
!2658 = !DILocation(line: 760, column: 42, scope: !2108)
!2659 = !DILocation(line: 758, column: 10, scope: !2108)
!2660 = !DILocation(line: 758, column: 3, scope: !2108)
!2661 = !DILocation(line: 762, column: 1, scope: !2108)
!2662 = !DISubprogram(name: "iswprint", scope: !2663, file: !2663, line: 120, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!2663 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2664 = distinct !DISubprogram(name: "quotearg_alloc", scope: !295, file: !295, line: 788, type: !2665, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!54, !67, !64, !2000}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !295, line: 788, type: !67)
!2669 = !DILocalVariable(name: "argsize", arg: 2, scope: !2664, file: !295, line: 788, type: !64)
!2670 = !DILocalVariable(name: "o", arg: 3, scope: !2664, file: !295, line: 789, type: !2000)
!2671 = !DILocation(line: 0, scope: !2664)
!2672 = !DILocalVariable(name: "arg", arg: 1, scope: !2673, file: !295, line: 801, type: !67)
!2673 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !295, file: !295, line: 801, type: !2674, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!54, !67, !64, !441, !2000}
!2676 = !{!2672, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!2677 = !DILocalVariable(name: "argsize", arg: 2, scope: !2673, file: !295, line: 801, type: !64)
!2678 = !DILocalVariable(name: "size", arg: 3, scope: !2673, file: !295, line: 801, type: !441)
!2679 = !DILocalVariable(name: "o", arg: 4, scope: !2673, file: !295, line: 802, type: !2000)
!2680 = !DILocalVariable(name: "p", scope: !2673, file: !295, line: 804, type: !2000)
!2681 = !DILocalVariable(name: "saved_errno", scope: !2673, file: !295, line: 805, type: !62)
!2682 = !DILocalVariable(name: "flags", scope: !2673, file: !295, line: 807, type: !62)
!2683 = !DILocalVariable(name: "bufsize", scope: !2673, file: !295, line: 808, type: !64)
!2684 = !DILocalVariable(name: "buf", scope: !2673, file: !295, line: 812, type: !54)
!2685 = !DILocation(line: 0, scope: !2673, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 791, column: 10, scope: !2664)
!2687 = !DILocation(line: 804, column: 37, scope: !2673, inlinedAt: !2686)
!2688 = !DILocation(line: 805, column: 21, scope: !2673, inlinedAt: !2686)
!2689 = !DILocation(line: 807, column: 18, scope: !2673, inlinedAt: !2686)
!2690 = !DILocation(line: 807, column: 24, scope: !2673, inlinedAt: !2686)
!2691 = !DILocation(line: 808, column: 72, scope: !2673, inlinedAt: !2686)
!2692 = !DILocation(line: 809, column: 53, scope: !2673, inlinedAt: !2686)
!2693 = !DILocation(line: 810, column: 49, scope: !2673, inlinedAt: !2686)
!2694 = !DILocation(line: 811, column: 49, scope: !2673, inlinedAt: !2686)
!2695 = !DILocation(line: 808, column: 20, scope: !2673, inlinedAt: !2686)
!2696 = !DILocation(line: 811, column: 62, scope: !2673, inlinedAt: !2686)
!2697 = !DILocation(line: 812, column: 15, scope: !2673, inlinedAt: !2686)
!2698 = !DILocation(line: 813, column: 60, scope: !2673, inlinedAt: !2686)
!2699 = !DILocation(line: 815, column: 32, scope: !2673, inlinedAt: !2686)
!2700 = !DILocation(line: 815, column: 47, scope: !2673, inlinedAt: !2686)
!2701 = !DILocation(line: 813, column: 3, scope: !2673, inlinedAt: !2686)
!2702 = !DILocation(line: 816, column: 9, scope: !2673, inlinedAt: !2686)
!2703 = !DILocation(line: 791, column: 3, scope: !2664)
!2704 = !DILocation(line: 0, scope: !2673)
!2705 = !DILocation(line: 804, column: 37, scope: !2673)
!2706 = !DILocation(line: 805, column: 21, scope: !2673)
!2707 = !DILocation(line: 807, column: 18, scope: !2673)
!2708 = !DILocation(line: 807, column: 27, scope: !2673)
!2709 = !DILocation(line: 807, column: 24, scope: !2673)
!2710 = !DILocation(line: 808, column: 72, scope: !2673)
!2711 = !DILocation(line: 809, column: 53, scope: !2673)
!2712 = !DILocation(line: 810, column: 49, scope: !2673)
!2713 = !DILocation(line: 811, column: 49, scope: !2673)
!2714 = !DILocation(line: 808, column: 20, scope: !2673)
!2715 = !DILocation(line: 811, column: 62, scope: !2673)
!2716 = !DILocation(line: 812, column: 15, scope: !2673)
!2717 = !DILocation(line: 813, column: 60, scope: !2673)
!2718 = !DILocation(line: 815, column: 32, scope: !2673)
!2719 = !DILocation(line: 815, column: 47, scope: !2673)
!2720 = !DILocation(line: 813, column: 3, scope: !2673)
!2721 = !DILocation(line: 816, column: 9, scope: !2673)
!2722 = !DILocation(line: 817, column: 7, scope: !2673)
!2723 = !DILocation(line: 818, column: 11, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2673, file: !295, line: 817, column: 7)
!2725 = !{!1168, !1168, i64 0}
!2726 = !DILocation(line: 818, column: 5, scope: !2724)
!2727 = !DILocation(line: 819, column: 3, scope: !2673)
!2728 = distinct !DISubprogram(name: "quotearg_free", scope: !295, file: !295, line: 837, type: !205, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2729)
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "sv", scope: !2728, file: !295, line: 839, type: !354)
!2731 = !DILocalVariable(name: "i", scope: !2732, file: !295, line: 840, type: !62)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !295, line: 840, column: 3)
!2733 = !DILocation(line: 839, column: 24, scope: !2728)
!2734 = !DILocation(line: 0, scope: !2728)
!2735 = !DILocation(line: 0, scope: !2732)
!2736 = !DILocation(line: 840, column: 21, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !295, line: 840, column: 3)
!2738 = !DILocation(line: 840, column: 3, scope: !2732)
!2739 = !DILocation(line: 842, column: 13, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2728, file: !295, line: 842, column: 7)
!2741 = !{!2742, !511, i64 8}
!2742 = !{!"slotvec", !1168, i64 0, !511, i64 8}
!2743 = !DILocation(line: 842, column: 17, scope: !2740)
!2744 = !DILocation(line: 842, column: 7, scope: !2728)
!2745 = !DILocation(line: 841, column: 17, scope: !2737)
!2746 = !DILocation(line: 841, column: 5, scope: !2737)
!2747 = !DILocation(line: 840, column: 32, scope: !2737)
!2748 = distinct !{!2748, !2738, !2749, !567}
!2749 = !DILocation(line: 841, column: 20, scope: !2732)
!2750 = !DILocation(line: 844, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2740, file: !295, line: 843, column: 5)
!2752 = !DILocation(line: 845, column: 21, scope: !2751)
!2753 = !{!2742, !1168, i64 0}
!2754 = !DILocation(line: 846, column: 20, scope: !2751)
!2755 = !DILocation(line: 847, column: 5, scope: !2751)
!2756 = !DILocation(line: 848, column: 10, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2728, file: !295, line: 848, column: 7)
!2758 = !DILocation(line: 848, column: 7, scope: !2728)
!2759 = !DILocation(line: 850, column: 13, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !295, line: 849, column: 5)
!2761 = !DILocation(line: 850, column: 7, scope: !2760)
!2762 = !DILocation(line: 851, column: 15, scope: !2760)
!2763 = !DILocation(line: 852, column: 5, scope: !2760)
!2764 = !DILocation(line: 853, column: 10, scope: !2728)
!2765 = !DILocation(line: 854, column: 1, scope: !2728)
!2766 = distinct !DISubprogram(name: "quotearg_n", scope: !295, file: !295, line: 919, type: !709, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2767)
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !295, line: 919, type: !62)
!2769 = !DILocalVariable(name: "arg", arg: 2, scope: !2766, file: !295, line: 919, type: !67)
!2770 = !DILocation(line: 0, scope: !2766)
!2771 = !DILocation(line: 921, column: 10, scope: !2766)
!2772 = !DILocation(line: 921, column: 3, scope: !2766)
!2773 = distinct !DISubprogram(name: "quotearg_n_options", scope: !295, file: !295, line: 866, type: !2774, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!54, !62, !67, !64, !2000}
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2787, !2788, !2790, !2791, !2792}
!2777 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !295, line: 866, type: !62)
!2778 = !DILocalVariable(name: "arg", arg: 2, scope: !2773, file: !295, line: 866, type: !67)
!2779 = !DILocalVariable(name: "argsize", arg: 3, scope: !2773, file: !295, line: 866, type: !64)
!2780 = !DILocalVariable(name: "options", arg: 4, scope: !2773, file: !295, line: 867, type: !2000)
!2781 = !DILocalVariable(name: "saved_errno", scope: !2773, file: !295, line: 869, type: !62)
!2782 = !DILocalVariable(name: "sv", scope: !2773, file: !295, line: 871, type: !354)
!2783 = !DILocalVariable(name: "nslots_max", scope: !2773, file: !295, line: 873, type: !62)
!2784 = !DILocalVariable(name: "preallocated", scope: !2785, file: !295, line: 879, type: !73)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !295, line: 878, column: 5)
!2786 = distinct !DILexicalBlock(scope: !2773, file: !295, line: 877, column: 7)
!2787 = !DILocalVariable(name: "new_nslots", scope: !2785, file: !295, line: 880, type: !454)
!2788 = !DILocalVariable(name: "size", scope: !2789, file: !295, line: 891, type: !64)
!2789 = distinct !DILexicalBlock(scope: !2773, file: !295, line: 890, column: 3)
!2790 = !DILocalVariable(name: "val", scope: !2789, file: !295, line: 892, type: !54)
!2791 = !DILocalVariable(name: "flags", scope: !2789, file: !295, line: 894, type: !62)
!2792 = !DILocalVariable(name: "qsize", scope: !2789, file: !295, line: 895, type: !64)
!2793 = !DILocation(line: 0, scope: !2773)
!2794 = !DILocation(line: 869, column: 21, scope: !2773)
!2795 = !DILocation(line: 871, column: 24, scope: !2773)
!2796 = !DILocation(line: 874, column: 17, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2773, file: !295, line: 874, column: 7)
!2798 = !DILocation(line: 875, column: 5, scope: !2797)
!2799 = !DILocation(line: 877, column: 7, scope: !2786)
!2800 = !DILocation(line: 877, column: 14, scope: !2786)
!2801 = !DILocation(line: 877, column: 7, scope: !2773)
!2802 = !DILocation(line: 879, column: 31, scope: !2785)
!2803 = !DILocation(line: 0, scope: !2785)
!2804 = !DILocation(line: 880, column: 7, scope: !2785)
!2805 = !DILocation(line: 880, column: 26, scope: !2785)
!2806 = !DILocation(line: 880, column: 13, scope: !2785)
!2807 = !DILocation(line: 882, column: 31, scope: !2785)
!2808 = !DILocation(line: 883, column: 33, scope: !2785)
!2809 = !DILocation(line: 883, column: 42, scope: !2785)
!2810 = !DILocation(line: 883, column: 31, scope: !2785)
!2811 = !DILocation(line: 882, column: 22, scope: !2785)
!2812 = !DILocation(line: 882, column: 15, scope: !2785)
!2813 = !DILocation(line: 884, column: 11, scope: !2785)
!2814 = !DILocation(line: 885, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2785, file: !295, line: 884, column: 11)
!2816 = !{i64 0, i64 8, !2725, i64 8, i64 8, !510}
!2817 = !DILocation(line: 885, column: 9, scope: !2815)
!2818 = !DILocation(line: 886, column: 20, scope: !2785)
!2819 = !DILocation(line: 886, column: 18, scope: !2785)
!2820 = !DILocation(line: 886, column: 15, scope: !2785)
!2821 = !DILocation(line: 886, column: 32, scope: !2785)
!2822 = !DILocation(line: 886, column: 43, scope: !2785)
!2823 = !DILocation(line: 886, column: 53, scope: !2785)
!2824 = !DILocation(line: 0, scope: !2211, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 886, column: 7, scope: !2785)
!2826 = !DILocation(line: 59, column: 10, scope: !2211, inlinedAt: !2825)
!2827 = !DILocation(line: 887, column: 16, scope: !2785)
!2828 = !DILocation(line: 887, column: 14, scope: !2785)
!2829 = !DILocation(line: 888, column: 5, scope: !2786)
!2830 = !DILocation(line: 888, column: 5, scope: !2785)
!2831 = !DILocation(line: 891, column: 19, scope: !2789)
!2832 = !DILocation(line: 891, column: 25, scope: !2789)
!2833 = !DILocation(line: 0, scope: !2789)
!2834 = !DILocation(line: 892, column: 23, scope: !2789)
!2835 = !DILocation(line: 894, column: 26, scope: !2789)
!2836 = !DILocation(line: 894, column: 32, scope: !2789)
!2837 = !DILocation(line: 896, column: 55, scope: !2789)
!2838 = !DILocation(line: 897, column: 46, scope: !2789)
!2839 = !DILocation(line: 898, column: 55, scope: !2789)
!2840 = !DILocation(line: 899, column: 55, scope: !2789)
!2841 = !DILocation(line: 895, column: 20, scope: !2789)
!2842 = !DILocation(line: 901, column: 14, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2789, file: !295, line: 901, column: 9)
!2844 = !DILocation(line: 901, column: 9, scope: !2789)
!2845 = !DILocation(line: 903, column: 35, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !295, line: 902, column: 7)
!2847 = !DILocation(line: 903, column: 20, scope: !2846)
!2848 = !DILocation(line: 904, column: 17, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !295, line: 904, column: 13)
!2850 = !DILocation(line: 904, column: 13, scope: !2846)
!2851 = !DILocation(line: 905, column: 11, scope: !2849)
!2852 = !DILocation(line: 906, column: 27, scope: !2846)
!2853 = !DILocation(line: 906, column: 19, scope: !2846)
!2854 = !DILocation(line: 907, column: 69, scope: !2846)
!2855 = !DILocation(line: 909, column: 44, scope: !2846)
!2856 = !DILocation(line: 910, column: 44, scope: !2846)
!2857 = !DILocation(line: 907, column: 9, scope: !2846)
!2858 = !DILocation(line: 911, column: 7, scope: !2846)
!2859 = !DILocation(line: 913, column: 11, scope: !2789)
!2860 = !DILocation(line: 914, column: 5, scope: !2789)
!2861 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !295, file: !295, line: 925, type: !2862, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!54, !62, !67, !64}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "n", arg: 1, scope: !2861, file: !295, line: 925, type: !62)
!2866 = !DILocalVariable(name: "arg", arg: 2, scope: !2861, file: !295, line: 925, type: !67)
!2867 = !DILocalVariable(name: "argsize", arg: 3, scope: !2861, file: !295, line: 925, type: !64)
!2868 = !DILocation(line: 0, scope: !2861)
!2869 = !DILocation(line: 927, column: 10, scope: !2861)
!2870 = !DILocation(line: 927, column: 3, scope: !2861)
!2871 = distinct !DISubprogram(name: "quotearg", scope: !295, file: !295, line: 931, type: !713, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2872)
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "arg", arg: 1, scope: !2871, file: !295, line: 931, type: !67)
!2874 = !DILocation(line: 0, scope: !2871)
!2875 = !DILocation(line: 0, scope: !2766, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 933, column: 10, scope: !2871)
!2877 = !DILocation(line: 921, column: 10, scope: !2766, inlinedAt: !2876)
!2878 = !DILocation(line: 933, column: 3, scope: !2871)
!2879 = distinct !DISubprogram(name: "quotearg_mem", scope: !295, file: !295, line: 937, type: !2880, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!54, !67, !64}
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2879, file: !295, line: 937, type: !67)
!2884 = !DILocalVariable(name: "argsize", arg: 2, scope: !2879, file: !295, line: 937, type: !64)
!2885 = !DILocation(line: 0, scope: !2879)
!2886 = !DILocation(line: 0, scope: !2861, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 939, column: 10, scope: !2879)
!2888 = !DILocation(line: 927, column: 10, scope: !2861, inlinedAt: !2887)
!2889 = !DILocation(line: 939, column: 3, scope: !2879)
!2890 = distinct !DISubprogram(name: "quotearg_n_style", scope: !295, file: !295, line: 943, type: !2891, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!54, !62, !37, !67}
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !295, line: 943, type: !62)
!2895 = !DILocalVariable(name: "s", arg: 2, scope: !2890, file: !295, line: 943, type: !37)
!2896 = !DILocalVariable(name: "arg", arg: 3, scope: !2890, file: !295, line: 943, type: !67)
!2897 = !DILocalVariable(name: "o", scope: !2890, file: !295, line: 945, type: !2001)
!2898 = !DILocation(line: 0, scope: !2890)
!2899 = !DILocation(line: 945, column: 3, scope: !2890)
!2900 = !DILocation(line: 945, column: 32, scope: !2890)
!2901 = !{!2902}
!2902 = distinct !{!2902, !2903, !"quoting_options_from_style: argument 0"}
!2903 = distinct !{!2903, !"quoting_options_from_style"}
!2904 = !DILocation(line: 945, column: 36, scope: !2890)
!2905 = !DILocalVariable(name: "style", arg: 1, scope: !2906, file: !295, line: 183, type: !37)
!2906 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !295, file: !295, line: 183, type: !2907, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!312, !37}
!2909 = !{!2905, !2910}
!2910 = !DILocalVariable(name: "o", scope: !2906, file: !295, line: 185, type: !312)
!2911 = !DILocation(line: 0, scope: !2906, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 945, column: 36, scope: !2890)
!2913 = !DILocation(line: 185, column: 26, scope: !2906, inlinedAt: !2912)
!2914 = !DILocation(line: 186, column: 13, scope: !2915, inlinedAt: !2912)
!2915 = distinct !DILexicalBlock(scope: !2906, file: !295, line: 186, column: 7)
!2916 = !DILocation(line: 186, column: 7, scope: !2906, inlinedAt: !2912)
!2917 = !DILocation(line: 187, column: 5, scope: !2915, inlinedAt: !2912)
!2918 = !DILocation(line: 188, column: 5, scope: !2906, inlinedAt: !2912)
!2919 = !DILocation(line: 188, column: 11, scope: !2906, inlinedAt: !2912)
!2920 = !DILocation(line: 946, column: 10, scope: !2890)
!2921 = !DILocation(line: 947, column: 1, scope: !2890)
!2922 = !DILocation(line: 946, column: 3, scope: !2890)
!2923 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !295, file: !295, line: 950, type: !2924, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!54, !62, !37, !67, !64}
!2926 = !{!2927, !2928, !2929, !2930, !2931}
!2927 = !DILocalVariable(name: "n", arg: 1, scope: !2923, file: !295, line: 950, type: !62)
!2928 = !DILocalVariable(name: "s", arg: 2, scope: !2923, file: !295, line: 950, type: !37)
!2929 = !DILocalVariable(name: "arg", arg: 3, scope: !2923, file: !295, line: 951, type: !67)
!2930 = !DILocalVariable(name: "argsize", arg: 4, scope: !2923, file: !295, line: 951, type: !64)
!2931 = !DILocalVariable(name: "o", scope: !2923, file: !295, line: 953, type: !2001)
!2932 = !DILocation(line: 0, scope: !2923)
!2933 = !DILocation(line: 953, column: 3, scope: !2923)
!2934 = !DILocation(line: 953, column: 32, scope: !2923)
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"quoting_options_from_style: argument 0"}
!2937 = distinct !{!2937, !"quoting_options_from_style"}
!2938 = !DILocation(line: 953, column: 36, scope: !2923)
!2939 = !DILocation(line: 0, scope: !2906, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 953, column: 36, scope: !2923)
!2941 = !DILocation(line: 185, column: 26, scope: !2906, inlinedAt: !2940)
!2942 = !DILocation(line: 186, column: 13, scope: !2915, inlinedAt: !2940)
!2943 = !DILocation(line: 186, column: 7, scope: !2906, inlinedAt: !2940)
!2944 = !DILocation(line: 187, column: 5, scope: !2915, inlinedAt: !2940)
!2945 = !DILocation(line: 188, column: 5, scope: !2906, inlinedAt: !2940)
!2946 = !DILocation(line: 188, column: 11, scope: !2906, inlinedAt: !2940)
!2947 = !DILocation(line: 954, column: 10, scope: !2923)
!2948 = !DILocation(line: 955, column: 1, scope: !2923)
!2949 = !DILocation(line: 954, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "quotearg_style", scope: !295, file: !295, line: 958, type: !2951, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!54, !37, !67}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "s", arg: 1, scope: !2950, file: !295, line: 958, type: !37)
!2955 = !DILocalVariable(name: "arg", arg: 2, scope: !2950, file: !295, line: 958, type: !67)
!2956 = !DILocation(line: 0, scope: !2950)
!2957 = !DILocation(line: 0, scope: !2890, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 960, column: 10, scope: !2950)
!2959 = !DILocation(line: 945, column: 3, scope: !2890, inlinedAt: !2958)
!2960 = !DILocation(line: 945, column: 32, scope: !2890, inlinedAt: !2958)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 945, column: 36, scope: !2890, inlinedAt: !2958)
!2965 = !DILocation(line: 0, scope: !2906, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 945, column: 36, scope: !2890, inlinedAt: !2958)
!2967 = !DILocation(line: 185, column: 26, scope: !2906, inlinedAt: !2966)
!2968 = !DILocation(line: 186, column: 13, scope: !2915, inlinedAt: !2966)
!2969 = !DILocation(line: 186, column: 7, scope: !2906, inlinedAt: !2966)
!2970 = !DILocation(line: 187, column: 5, scope: !2915, inlinedAt: !2966)
!2971 = !DILocation(line: 188, column: 5, scope: !2906, inlinedAt: !2966)
!2972 = !DILocation(line: 188, column: 11, scope: !2906, inlinedAt: !2966)
!2973 = !DILocation(line: 946, column: 10, scope: !2890, inlinedAt: !2958)
!2974 = !DILocation(line: 947, column: 1, scope: !2890, inlinedAt: !2958)
!2975 = !DILocation(line: 960, column: 3, scope: !2950)
!2976 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !295, file: !295, line: 964, type: !2977, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!54, !37, !67, !64}
!2979 = !{!2980, !2981, !2982}
!2980 = !DILocalVariable(name: "s", arg: 1, scope: !2976, file: !295, line: 964, type: !37)
!2981 = !DILocalVariable(name: "arg", arg: 2, scope: !2976, file: !295, line: 964, type: !67)
!2982 = !DILocalVariable(name: "argsize", arg: 3, scope: !2976, file: !295, line: 964, type: !64)
!2983 = !DILocation(line: 0, scope: !2976)
!2984 = !DILocation(line: 0, scope: !2923, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 966, column: 10, scope: !2976)
!2986 = !DILocation(line: 953, column: 3, scope: !2923, inlinedAt: !2985)
!2987 = !DILocation(line: 953, column: 32, scope: !2923, inlinedAt: !2985)
!2988 = !{!2989}
!2989 = distinct !{!2989, !2990, !"quoting_options_from_style: argument 0"}
!2990 = distinct !{!2990, !"quoting_options_from_style"}
!2991 = !DILocation(line: 953, column: 36, scope: !2923, inlinedAt: !2985)
!2992 = !DILocation(line: 0, scope: !2906, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 953, column: 36, scope: !2923, inlinedAt: !2985)
!2994 = !DILocation(line: 185, column: 26, scope: !2906, inlinedAt: !2993)
!2995 = !DILocation(line: 186, column: 13, scope: !2915, inlinedAt: !2993)
!2996 = !DILocation(line: 186, column: 7, scope: !2906, inlinedAt: !2993)
!2997 = !DILocation(line: 187, column: 5, scope: !2915, inlinedAt: !2993)
!2998 = !DILocation(line: 188, column: 5, scope: !2906, inlinedAt: !2993)
!2999 = !DILocation(line: 188, column: 11, scope: !2906, inlinedAt: !2993)
!3000 = !DILocation(line: 954, column: 10, scope: !2923, inlinedAt: !2985)
!3001 = !DILocation(line: 955, column: 1, scope: !2923, inlinedAt: !2985)
!3002 = !DILocation(line: 966, column: 3, scope: !2976)
!3003 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !295, file: !295, line: 970, type: !3004, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!54, !67, !64, !55}
!3006 = !{!3007, !3008, !3009, !3010}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !295, line: 970, type: !67)
!3008 = !DILocalVariable(name: "argsize", arg: 2, scope: !3003, file: !295, line: 970, type: !64)
!3009 = !DILocalVariable(name: "ch", arg: 3, scope: !3003, file: !295, line: 970, type: !55)
!3010 = !DILocalVariable(name: "options", scope: !3003, file: !295, line: 972, type: !312)
!3011 = !DILocation(line: 0, scope: !3003)
!3012 = !DILocation(line: 972, column: 3, scope: !3003)
!3013 = !DILocation(line: 972, column: 26, scope: !3003)
!3014 = !DILocation(line: 973, column: 13, scope: !3003)
!3015 = !{i64 0, i64 4, !610, i64 4, i64 4, !601, i64 8, i64 32, !610, i64 40, i64 8, !510, i64 48, i64 8, !510}
!3016 = !DILocation(line: 0, scope: !2021, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 974, column: 3, scope: !3003)
!3018 = !DILocation(line: 147, column: 62, scope: !2021, inlinedAt: !3017)
!3019 = !DILocation(line: 147, column: 57, scope: !2021, inlinedAt: !3017)
!3020 = !DILocation(line: 148, column: 15, scope: !2021, inlinedAt: !3017)
!3021 = !DILocation(line: 149, column: 21, scope: !2021, inlinedAt: !3017)
!3022 = !DILocation(line: 149, column: 24, scope: !2021, inlinedAt: !3017)
!3023 = !DILocation(line: 149, column: 34, scope: !2021, inlinedAt: !3017)
!3024 = !DILocation(line: 150, column: 19, scope: !2021, inlinedAt: !3017)
!3025 = !DILocation(line: 150, column: 24, scope: !2021, inlinedAt: !3017)
!3026 = !DILocation(line: 150, column: 6, scope: !2021, inlinedAt: !3017)
!3027 = !DILocation(line: 975, column: 10, scope: !3003)
!3028 = !DILocation(line: 976, column: 1, scope: !3003)
!3029 = !DILocation(line: 975, column: 3, scope: !3003)
!3030 = distinct !DISubprogram(name: "quotearg_char", scope: !295, file: !295, line: 979, type: !3031, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!54, !67, !55}
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "arg", arg: 1, scope: !3030, file: !295, line: 979, type: !67)
!3035 = !DILocalVariable(name: "ch", arg: 2, scope: !3030, file: !295, line: 979, type: !55)
!3036 = !DILocation(line: 0, scope: !3030)
!3037 = !DILocation(line: 0, scope: !3003, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 981, column: 10, scope: !3030)
!3039 = !DILocation(line: 972, column: 3, scope: !3003, inlinedAt: !3038)
!3040 = !DILocation(line: 972, column: 26, scope: !3003, inlinedAt: !3038)
!3041 = !DILocation(line: 973, column: 13, scope: !3003, inlinedAt: !3038)
!3042 = !DILocation(line: 0, scope: !2021, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 974, column: 3, scope: !3003, inlinedAt: !3038)
!3044 = !DILocation(line: 147, column: 62, scope: !2021, inlinedAt: !3043)
!3045 = !DILocation(line: 147, column: 57, scope: !2021, inlinedAt: !3043)
!3046 = !DILocation(line: 148, column: 15, scope: !2021, inlinedAt: !3043)
!3047 = !DILocation(line: 149, column: 21, scope: !2021, inlinedAt: !3043)
!3048 = !DILocation(line: 149, column: 24, scope: !2021, inlinedAt: !3043)
!3049 = !DILocation(line: 149, column: 34, scope: !2021, inlinedAt: !3043)
!3050 = !DILocation(line: 150, column: 19, scope: !2021, inlinedAt: !3043)
!3051 = !DILocation(line: 150, column: 24, scope: !2021, inlinedAt: !3043)
!3052 = !DILocation(line: 150, column: 6, scope: !2021, inlinedAt: !3043)
!3053 = !DILocation(line: 975, column: 10, scope: !3003, inlinedAt: !3038)
!3054 = !DILocation(line: 976, column: 1, scope: !3003, inlinedAt: !3038)
!3055 = !DILocation(line: 981, column: 3, scope: !3030)
!3056 = distinct !DISubprogram(name: "quotearg_colon", scope: !295, file: !295, line: 985, type: !713, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3057)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !295, line: 985, type: !67)
!3059 = !DILocation(line: 0, scope: !3056)
!3060 = !DILocation(line: 0, scope: !3030, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 987, column: 10, scope: !3056)
!3062 = !DILocation(line: 0, scope: !3003, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 981, column: 10, scope: !3030, inlinedAt: !3061)
!3064 = !DILocation(line: 972, column: 3, scope: !3003, inlinedAt: !3063)
!3065 = !DILocation(line: 972, column: 26, scope: !3003, inlinedAt: !3063)
!3066 = !DILocation(line: 973, column: 13, scope: !3003, inlinedAt: !3063)
!3067 = !DILocation(line: 0, scope: !2021, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 974, column: 3, scope: !3003, inlinedAt: !3063)
!3069 = !DILocation(line: 147, column: 57, scope: !2021, inlinedAt: !3068)
!3070 = !DILocation(line: 149, column: 21, scope: !2021, inlinedAt: !3068)
!3071 = !DILocation(line: 150, column: 6, scope: !2021, inlinedAt: !3068)
!3072 = !DILocation(line: 975, column: 10, scope: !3003, inlinedAt: !3063)
!3073 = !DILocation(line: 976, column: 1, scope: !3003, inlinedAt: !3063)
!3074 = !DILocation(line: 987, column: 3, scope: !3056)
!3075 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !295, file: !295, line: 991, type: !2880, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3076)
!3076 = !{!3077, !3078}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !295, line: 991, type: !67)
!3078 = !DILocalVariable(name: "argsize", arg: 2, scope: !3075, file: !295, line: 991, type: !64)
!3079 = !DILocation(line: 0, scope: !3075)
!3080 = !DILocation(line: 0, scope: !3003, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 993, column: 10, scope: !3075)
!3082 = !DILocation(line: 972, column: 3, scope: !3003, inlinedAt: !3081)
!3083 = !DILocation(line: 972, column: 26, scope: !3003, inlinedAt: !3081)
!3084 = !DILocation(line: 973, column: 13, scope: !3003, inlinedAt: !3081)
!3085 = !DILocation(line: 0, scope: !2021, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 974, column: 3, scope: !3003, inlinedAt: !3081)
!3087 = !DILocation(line: 147, column: 57, scope: !2021, inlinedAt: !3086)
!3088 = !DILocation(line: 149, column: 21, scope: !2021, inlinedAt: !3086)
!3089 = !DILocation(line: 150, column: 6, scope: !2021, inlinedAt: !3086)
!3090 = !DILocation(line: 975, column: 10, scope: !3003, inlinedAt: !3081)
!3091 = !DILocation(line: 976, column: 1, scope: !3003, inlinedAt: !3081)
!3092 = !DILocation(line: 993, column: 3, scope: !3075)
!3093 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !295, file: !295, line: 997, type: !2891, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3094)
!3094 = !{!3095, !3096, !3097, !3098}
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !295, line: 997, type: !62)
!3096 = !DILocalVariable(name: "s", arg: 2, scope: !3093, file: !295, line: 997, type: !37)
!3097 = !DILocalVariable(name: "arg", arg: 3, scope: !3093, file: !295, line: 997, type: !67)
!3098 = !DILocalVariable(name: "options", scope: !3093, file: !295, line: 999, type: !312)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 999, column: 3, scope: !3093)
!3101 = !DILocation(line: 999, column: 26, scope: !3093)
!3102 = !DILocation(line: 0, scope: !2906, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1000, column: 13, scope: !3093)
!3104 = !DILocation(line: 186, column: 13, scope: !2915, inlinedAt: !3103)
!3105 = !DILocation(line: 186, column: 7, scope: !2906, inlinedAt: !3103)
!3106 = !DILocation(line: 187, column: 5, scope: !2915, inlinedAt: !3103)
!3107 = !{!3108}
!3108 = distinct !{!3108, !3109, !"quoting_options_from_style: argument 0"}
!3109 = distinct !{!3109, !"quoting_options_from_style"}
!3110 = !DILocation(line: 1000, column: 13, scope: !3093)
!3111 = !DILocation(line: 0, scope: !2021, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 1001, column: 3, scope: !3093)
!3113 = !DILocation(line: 147, column: 57, scope: !2021, inlinedAt: !3112)
!3114 = !DILocation(line: 149, column: 21, scope: !2021, inlinedAt: !3112)
!3115 = !DILocation(line: 150, column: 6, scope: !2021, inlinedAt: !3112)
!3116 = !DILocation(line: 1002, column: 10, scope: !3093)
!3117 = !DILocation(line: 1003, column: 1, scope: !3093)
!3118 = !DILocation(line: 1002, column: 3, scope: !3093)
!3119 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !295, file: !295, line: 1006, type: !3120, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!54, !62, !67, !67, !67}
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !295, line: 1006, type: !62)
!3124 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3119, file: !295, line: 1006, type: !67)
!3125 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3119, file: !295, line: 1007, type: !67)
!3126 = !DILocalVariable(name: "arg", arg: 4, scope: !3119, file: !295, line: 1007, type: !67)
!3127 = !DILocation(line: 0, scope: !3119)
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !295, line: 1014, type: !62)
!3129 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !295, file: !295, line: 1014, type: !3130, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!54, !62, !67, !67, !67, !64}
!3132 = !{!3128, !3133, !3134, !3135, !3136, !3137}
!3133 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3129, file: !295, line: 1014, type: !67)
!3134 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3129, file: !295, line: 1015, type: !67)
!3135 = !DILocalVariable(name: "arg", arg: 4, scope: !3129, file: !295, line: 1016, type: !67)
!3136 = !DILocalVariable(name: "argsize", arg: 5, scope: !3129, file: !295, line: 1016, type: !64)
!3137 = !DILocalVariable(name: "o", scope: !3129, file: !295, line: 1018, type: !312)
!3138 = !DILocation(line: 0, scope: !3129, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 1009, column: 10, scope: !3119)
!3140 = !DILocation(line: 1018, column: 3, scope: !3129, inlinedAt: !3139)
!3141 = !DILocation(line: 1018, column: 26, scope: !3129, inlinedAt: !3139)
!3142 = !DILocation(line: 1018, column: 30, scope: !3129, inlinedAt: !3139)
!3143 = !DILocation(line: 0, scope: !2061, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1019, column: 3, scope: !3129, inlinedAt: !3139)
!3145 = !DILocation(line: 174, column: 6, scope: !2061, inlinedAt: !3144)
!3146 = !DILocation(line: 174, column: 12, scope: !2061, inlinedAt: !3144)
!3147 = !DILocation(line: 175, column: 8, scope: !2075, inlinedAt: !3144)
!3148 = !DILocation(line: 175, column: 19, scope: !2075, inlinedAt: !3144)
!3149 = !DILocation(line: 176, column: 5, scope: !2075, inlinedAt: !3144)
!3150 = !DILocation(line: 177, column: 6, scope: !2061, inlinedAt: !3144)
!3151 = !DILocation(line: 177, column: 17, scope: !2061, inlinedAt: !3144)
!3152 = !DILocation(line: 178, column: 6, scope: !2061, inlinedAt: !3144)
!3153 = !DILocation(line: 178, column: 18, scope: !2061, inlinedAt: !3144)
!3154 = !DILocation(line: 1020, column: 10, scope: !3129, inlinedAt: !3139)
!3155 = !DILocation(line: 1021, column: 1, scope: !3129, inlinedAt: !3139)
!3156 = !DILocation(line: 1009, column: 3, scope: !3119)
!3157 = !DILocation(line: 0, scope: !3129)
!3158 = !DILocation(line: 1018, column: 3, scope: !3129)
!3159 = !DILocation(line: 1018, column: 26, scope: !3129)
!3160 = !DILocation(line: 1018, column: 30, scope: !3129)
!3161 = !DILocation(line: 0, scope: !2061, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1019, column: 3, scope: !3129)
!3163 = !DILocation(line: 174, column: 6, scope: !2061, inlinedAt: !3162)
!3164 = !DILocation(line: 174, column: 12, scope: !2061, inlinedAt: !3162)
!3165 = !DILocation(line: 175, column: 8, scope: !2075, inlinedAt: !3162)
!3166 = !DILocation(line: 175, column: 19, scope: !2075, inlinedAt: !3162)
!3167 = !DILocation(line: 176, column: 5, scope: !2075, inlinedAt: !3162)
!3168 = !DILocation(line: 177, column: 6, scope: !2061, inlinedAt: !3162)
!3169 = !DILocation(line: 177, column: 17, scope: !2061, inlinedAt: !3162)
!3170 = !DILocation(line: 178, column: 6, scope: !2061, inlinedAt: !3162)
!3171 = !DILocation(line: 178, column: 18, scope: !2061, inlinedAt: !3162)
!3172 = !DILocation(line: 1020, column: 10, scope: !3129)
!3173 = !DILocation(line: 1021, column: 1, scope: !3129)
!3174 = !DILocation(line: 1020, column: 3, scope: !3129)
!3175 = distinct !DISubprogram(name: "quotearg_custom", scope: !295, file: !295, line: 1024, type: !3176, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!54, !67, !67, !67}
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3175, file: !295, line: 1024, type: !67)
!3180 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3175, file: !295, line: 1024, type: !67)
!3181 = !DILocalVariable(name: "arg", arg: 3, scope: !3175, file: !295, line: 1025, type: !67)
!3182 = !DILocation(line: 0, scope: !3175)
!3183 = !DILocation(line: 0, scope: !3119, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 1027, column: 10, scope: !3175)
!3185 = !DILocation(line: 0, scope: !3129, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1009, column: 10, scope: !3119, inlinedAt: !3184)
!3187 = !DILocation(line: 1018, column: 3, scope: !3129, inlinedAt: !3186)
!3188 = !DILocation(line: 1018, column: 26, scope: !3129, inlinedAt: !3186)
!3189 = !DILocation(line: 1018, column: 30, scope: !3129, inlinedAt: !3186)
!3190 = !DILocation(line: 0, scope: !2061, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1019, column: 3, scope: !3129, inlinedAt: !3186)
!3192 = !DILocation(line: 174, column: 6, scope: !2061, inlinedAt: !3191)
!3193 = !DILocation(line: 174, column: 12, scope: !2061, inlinedAt: !3191)
!3194 = !DILocation(line: 175, column: 8, scope: !2075, inlinedAt: !3191)
!3195 = !DILocation(line: 175, column: 19, scope: !2075, inlinedAt: !3191)
!3196 = !DILocation(line: 176, column: 5, scope: !2075, inlinedAt: !3191)
!3197 = !DILocation(line: 177, column: 6, scope: !2061, inlinedAt: !3191)
!3198 = !DILocation(line: 177, column: 17, scope: !2061, inlinedAt: !3191)
!3199 = !DILocation(line: 178, column: 6, scope: !2061, inlinedAt: !3191)
!3200 = !DILocation(line: 178, column: 18, scope: !2061, inlinedAt: !3191)
!3201 = !DILocation(line: 1020, column: 10, scope: !3129, inlinedAt: !3186)
!3202 = !DILocation(line: 1021, column: 1, scope: !3129, inlinedAt: !3186)
!3203 = !DILocation(line: 1027, column: 3, scope: !3175)
!3204 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !295, file: !295, line: 1031, type: !3205, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!54, !67, !67, !67, !64}
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3204, file: !295, line: 1031, type: !67)
!3209 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3204, file: !295, line: 1031, type: !67)
!3210 = !DILocalVariable(name: "arg", arg: 3, scope: !3204, file: !295, line: 1032, type: !67)
!3211 = !DILocalVariable(name: "argsize", arg: 4, scope: !3204, file: !295, line: 1032, type: !64)
!3212 = !DILocation(line: 0, scope: !3204)
!3213 = !DILocation(line: 0, scope: !3129, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1034, column: 10, scope: !3204)
!3215 = !DILocation(line: 1018, column: 3, scope: !3129, inlinedAt: !3214)
!3216 = !DILocation(line: 1018, column: 26, scope: !3129, inlinedAt: !3214)
!3217 = !DILocation(line: 1018, column: 30, scope: !3129, inlinedAt: !3214)
!3218 = !DILocation(line: 0, scope: !2061, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1019, column: 3, scope: !3129, inlinedAt: !3214)
!3220 = !DILocation(line: 174, column: 6, scope: !2061, inlinedAt: !3219)
!3221 = !DILocation(line: 174, column: 12, scope: !2061, inlinedAt: !3219)
!3222 = !DILocation(line: 175, column: 8, scope: !2075, inlinedAt: !3219)
!3223 = !DILocation(line: 175, column: 19, scope: !2075, inlinedAt: !3219)
!3224 = !DILocation(line: 176, column: 5, scope: !2075, inlinedAt: !3219)
!3225 = !DILocation(line: 177, column: 6, scope: !2061, inlinedAt: !3219)
!3226 = !DILocation(line: 177, column: 17, scope: !2061, inlinedAt: !3219)
!3227 = !DILocation(line: 178, column: 6, scope: !2061, inlinedAt: !3219)
!3228 = !DILocation(line: 178, column: 18, scope: !2061, inlinedAt: !3219)
!3229 = !DILocation(line: 1020, column: 10, scope: !3129, inlinedAt: !3214)
!3230 = !DILocation(line: 1021, column: 1, scope: !3129, inlinedAt: !3214)
!3231 = !DILocation(line: 1034, column: 3, scope: !3204)
!3232 = distinct !DISubprogram(name: "quote_n_mem", scope: !295, file: !295, line: 1049, type: !3233, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!67, !62, !67, !64}
!3235 = !{!3236, !3237, !3238}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !295, line: 1049, type: !62)
!3237 = !DILocalVariable(name: "arg", arg: 2, scope: !3232, file: !295, line: 1049, type: !67)
!3238 = !DILocalVariable(name: "argsize", arg: 3, scope: !3232, file: !295, line: 1049, type: !64)
!3239 = !DILocation(line: 0, scope: !3232)
!3240 = !DILocation(line: 1051, column: 10, scope: !3232)
!3241 = !DILocation(line: 1051, column: 3, scope: !3232)
!3242 = distinct !DISubprogram(name: "quote_mem", scope: !295, file: !295, line: 1055, type: !3243, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!67, !67, !64}
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "arg", arg: 1, scope: !3242, file: !295, line: 1055, type: !67)
!3247 = !DILocalVariable(name: "argsize", arg: 2, scope: !3242, file: !295, line: 1055, type: !64)
!3248 = !DILocation(line: 0, scope: !3242)
!3249 = !DILocation(line: 0, scope: !3232, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1057, column: 10, scope: !3242)
!3251 = !DILocation(line: 1051, column: 10, scope: !3232, inlinedAt: !3250)
!3252 = !DILocation(line: 1057, column: 3, scope: !3242)
!3253 = distinct !DISubprogram(name: "quote_n", scope: !295, file: !295, line: 1061, type: !3254, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!67, !62, !67}
!3256 = !{!3257, !3258}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !295, line: 1061, type: !62)
!3258 = !DILocalVariable(name: "arg", arg: 2, scope: !3253, file: !295, line: 1061, type: !67)
!3259 = !DILocation(line: 0, scope: !3253)
!3260 = !DILocation(line: 0, scope: !3232, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1063, column: 10, scope: !3253)
!3262 = !DILocation(line: 1051, column: 10, scope: !3232, inlinedAt: !3261)
!3263 = !DILocation(line: 1063, column: 3, scope: !3253)
!3264 = distinct !DISubprogram(name: "quote", scope: !295, file: !295, line: 1067, type: !3265, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!67, !67}
!3267 = !{!3268}
!3268 = !DILocalVariable(name: "arg", arg: 1, scope: !3264, file: !295, line: 1067, type: !67)
!3269 = !DILocation(line: 0, scope: !3264)
!3270 = !DILocation(line: 0, scope: !3253, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 1069, column: 10, scope: !3264)
!3272 = !DILocation(line: 0, scope: !3232, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 1063, column: 10, scope: !3253, inlinedAt: !3271)
!3274 = !DILocation(line: 1051, column: 10, scope: !3232, inlinedAt: !3273)
!3275 = !DILocation(line: 1069, column: 3, scope: !3264)
!3276 = distinct !DISubprogram(name: "fd_safer", scope: !426, file: !426, line: 37, type: !1036, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3277)
!3277 = !{!3278, !3279, !3282}
!3278 = !DILocalVariable(name: "fd", arg: 1, scope: !3276, file: !426, line: 37, type: !62)
!3279 = !DILocalVariable(name: "f", scope: !3280, file: !426, line: 41, type: !62)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !426, line: 40, column: 5)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !426, line: 39, column: 7)
!3282 = !DILocalVariable(name: "saved_errno", scope: !3280, file: !426, line: 42, type: !62)
!3283 = !DILocation(line: 0, scope: !3276)
!3284 = !DILocation(line: 39, column: 26, scope: !3281)
!3285 = !DILocation(line: 41, column: 15, scope: !3280)
!3286 = !DILocation(line: 0, scope: !3280)
!3287 = !DILocation(line: 42, column: 25, scope: !3280)
!3288 = !DILocation(line: 43, column: 7, scope: !3280)
!3289 = !DILocation(line: 44, column: 13, scope: !3280)
!3290 = !DILocation(line: 46, column: 5, scope: !3280)
!3291 = !DILocation(line: 48, column: 3, scope: !3276)
!3292 = distinct !DISubprogram(name: "version_etc_arn", scope: !428, file: !428, line: 61, type: !3293, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3329)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !3295, !67, !67, !67, !1252, !64}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3297, file: !107, line: 51, baseType: !62, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3297, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3297, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3297, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3297, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3297, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3297, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3297, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3297, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3297, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3297, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3297, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3297, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3297, file: !107, line: 70, baseType: !3313, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3297, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3297, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3297, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3297, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3297, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3297, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3297, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3297, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3297, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3297, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3297, file: !107, line: 93, baseType: !3313, size: 64, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3297, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3297, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3297, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3297, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335}
!3330 = !DILocalVariable(name: "stream", arg: 1, scope: !3292, file: !428, line: 61, type: !3295)
!3331 = !DILocalVariable(name: "command_name", arg: 2, scope: !3292, file: !428, line: 62, type: !67)
!3332 = !DILocalVariable(name: "package", arg: 3, scope: !3292, file: !428, line: 62, type: !67)
!3333 = !DILocalVariable(name: "version", arg: 4, scope: !3292, file: !428, line: 63, type: !67)
!3334 = !DILocalVariable(name: "authors", arg: 5, scope: !3292, file: !428, line: 64, type: !1252)
!3335 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3292, file: !428, line: 64, type: !64)
!3336 = !DILocation(line: 0, scope: !3292)
!3337 = !DILocation(line: 66, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3292, file: !428, line: 66, column: 7)
!3339 = !DILocation(line: 66, column: 7, scope: !3292)
!3340 = !DILocation(line: 67, column: 5, scope: !3338)
!3341 = !DILocation(line: 69, column: 5, scope: !3338)
!3342 = !DILocation(line: 83, column: 3, scope: !3292)
!3343 = !DILocation(line: 85, column: 3, scope: !3292)
!3344 = !DILocation(line: 88, column: 3, scope: !3292)
!3345 = !DILocation(line: 95, column: 3, scope: !3292)
!3346 = !DILocation(line: 97, column: 3, scope: !3292)
!3347 = !DILocation(line: 105, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3292, file: !428, line: 98, column: 5)
!3349 = !DILocation(line: 106, column: 7, scope: !3348)
!3350 = !DILocation(line: 109, column: 7, scope: !3348)
!3351 = !DILocation(line: 110, column: 7, scope: !3348)
!3352 = !DILocation(line: 113, column: 7, scope: !3348)
!3353 = !DILocation(line: 115, column: 7, scope: !3348)
!3354 = !DILocation(line: 120, column: 7, scope: !3348)
!3355 = !DILocation(line: 122, column: 7, scope: !3348)
!3356 = !DILocation(line: 127, column: 7, scope: !3348)
!3357 = !DILocation(line: 129, column: 7, scope: !3348)
!3358 = !DILocation(line: 134, column: 7, scope: !3348)
!3359 = !DILocation(line: 137, column: 7, scope: !3348)
!3360 = !DILocation(line: 142, column: 7, scope: !3348)
!3361 = !DILocation(line: 145, column: 7, scope: !3348)
!3362 = !DILocation(line: 150, column: 7, scope: !3348)
!3363 = !DILocation(line: 154, column: 7, scope: !3348)
!3364 = !DILocation(line: 159, column: 7, scope: !3348)
!3365 = !DILocation(line: 163, column: 7, scope: !3348)
!3366 = !DILocation(line: 170, column: 7, scope: !3348)
!3367 = !DILocation(line: 174, column: 7, scope: !3348)
!3368 = !DILocation(line: 176, column: 1, scope: !3292)
!3369 = distinct !DISubprogram(name: "version_etc_ar", scope: !428, file: !428, line: 183, type: !3370, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3295, !67, !67, !67, !1252}
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378}
!3373 = !DILocalVariable(name: "stream", arg: 1, scope: !3369, file: !428, line: 183, type: !3295)
!3374 = !DILocalVariable(name: "command_name", arg: 2, scope: !3369, file: !428, line: 184, type: !67)
!3375 = !DILocalVariable(name: "package", arg: 3, scope: !3369, file: !428, line: 184, type: !67)
!3376 = !DILocalVariable(name: "version", arg: 4, scope: !3369, file: !428, line: 185, type: !67)
!3377 = !DILocalVariable(name: "authors", arg: 5, scope: !3369, file: !428, line: 185, type: !1252)
!3378 = !DILocalVariable(name: "n_authors", scope: !3369, file: !428, line: 187, type: !64)
!3379 = !DILocation(line: 0, scope: !3369)
!3380 = !DILocation(line: 189, column: 8, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3369, file: !428, line: 189, column: 3)
!3382 = !DILocation(line: 0, scope: !3381)
!3383 = !DILocation(line: 189, column: 23, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !428, line: 189, column: 3)
!3385 = !DILocation(line: 189, column: 3, scope: !3381)
!3386 = !DILocation(line: 189, column: 52, scope: !3384)
!3387 = distinct !{!3387, !3385, !3388, !567}
!3388 = !DILocation(line: 190, column: 5, scope: !3381)
!3389 = !DILocation(line: 191, column: 3, scope: !3369)
!3390 = !DILocation(line: 192, column: 1, scope: !3369)
!3391 = distinct !DISubprogram(name: "version_etc_va", scope: !428, file: !428, line: 199, type: !3392, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3405)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3295, !67, !67, !67, !3394}
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !226, line: 52, baseType: !3395)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !228, line: 32, baseType: !3396)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3397, baseType: !3398)
!3397 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403, !3404}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3398, file: !3397, line: 192, baseType: !56, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3398, file: !3397, line: 192, baseType: !56, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3398, file: !3397, line: 192, baseType: !56, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3398, file: !3397, line: 192, baseType: !62, size: 32, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3398, file: !3397, line: 192, baseType: !62, size: 32, offset: 224)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3406 = !DILocalVariable(name: "stream", arg: 1, scope: !3391, file: !428, line: 199, type: !3295)
!3407 = !DILocalVariable(name: "command_name", arg: 2, scope: !3391, file: !428, line: 200, type: !67)
!3408 = !DILocalVariable(name: "package", arg: 3, scope: !3391, file: !428, line: 200, type: !67)
!3409 = !DILocalVariable(name: "version", arg: 4, scope: !3391, file: !428, line: 201, type: !67)
!3410 = !DILocalVariable(name: "authors", arg: 5, scope: !3391, file: !428, line: 201, type: !3394)
!3411 = !DILocalVariable(name: "n_authors", scope: !3391, file: !428, line: 203, type: !64)
!3412 = !DILocalVariable(name: "authtab", scope: !3391, file: !428, line: 204, type: !3413)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 640, elements: !308)
!3414 = !DILocation(line: 0, scope: !3391)
!3415 = !DILocation(line: 201, column: 46, scope: !3391)
!3416 = !DILocation(line: 204, column: 3, scope: !3391)
!3417 = !DILocation(line: 204, column: 15, scope: !3391)
!3418 = !DILocation(line: 208, column: 35, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !428, line: 206, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3391, file: !428, line: 206, column: 3)
!3421 = !DILocation(line: 208, column: 14, scope: !3419)
!3422 = !DILocation(line: 208, column: 33, scope: !3419)
!3423 = !DILocation(line: 208, column: 67, scope: !3419)
!3424 = !DILocation(line: 206, column: 3, scope: !3420)
!3425 = !DILocation(line: 212, column: 20, scope: !3391)
!3426 = !DILocation(line: 211, column: 3, scope: !3391)
!3427 = !DILocation(line: 213, column: 1, scope: !3391)
!3428 = distinct !DISubprogram(name: "version_etc", scope: !428, file: !428, line: 230, type: !3429, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3295, !67, !67, !67, null}
!3431 = !{!3432, !3433, !3434, !3435, !3436}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !428, line: 230, type: !3295)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3428, file: !428, line: 231, type: !67)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3428, file: !428, line: 231, type: !67)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3428, file: !428, line: 232, type: !67)
!3436 = !DILocalVariable(name: "authors", scope: !3428, file: !428, line: 234, type: !3394)
!3437 = !DILocation(line: 0, scope: !3428)
!3438 = !DILocation(line: 234, column: 3, scope: !3428)
!3439 = !DILocation(line: 234, column: 11, scope: !3428)
!3440 = !DILocation(line: 235, column: 3, scope: !3428)
!3441 = !DILocation(line: 236, column: 3, scope: !3428)
!3442 = !DILocation(line: 237, column: 3, scope: !3428)
!3443 = !DILocation(line: 238, column: 1, scope: !3428)
!3444 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !428, file: !428, line: 241, type: !205, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !593)
!3445 = !DILocation(line: 243, column: 3, scope: !3444)
!3446 = !DILocation(line: 248, column: 3, scope: !3444)
!3447 = !DILocation(line: 254, column: 3, scope: !3444)
!3448 = !DILocation(line: 259, column: 3, scope: !3444)
!3449 = !DILocation(line: 261, column: 1, scope: !3444)
!3450 = distinct !DISubprogram(name: "xnrealloc", scope: !3451, file: !3451, line: 147, type: !3452, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3454)
!3451 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!56, !56, !64, !64}
!3454 = !{!3455, !3456, !3457}
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !3451, line: 147, type: !56)
!3456 = !DILocalVariable(name: "n", arg: 2, scope: !3450, file: !3451, line: 147, type: !64)
!3457 = !DILocalVariable(name: "s", arg: 3, scope: !3450, file: !3451, line: 147, type: !64)
!3458 = !DILocation(line: 0, scope: !3450)
!3459 = !DILocalVariable(name: "p", arg: 1, scope: !3460, file: !435, line: 83, type: !56)
!3460 = distinct !DISubprogram(name: "xreallocarray", scope: !435, file: !435, line: 83, type: !3452, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3461)
!3461 = !{!3459, !3462, !3463}
!3462 = !DILocalVariable(name: "n", arg: 2, scope: !3460, file: !435, line: 83, type: !64)
!3463 = !DILocalVariable(name: "s", arg: 3, scope: !3460, file: !435, line: 83, type: !64)
!3464 = !DILocation(line: 0, scope: !3460, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 149, column: 10, scope: !3450)
!3466 = !DILocation(line: 85, column: 25, scope: !3460, inlinedAt: !3465)
!3467 = !DILocalVariable(name: "p", arg: 1, scope: !3468, file: !435, line: 37, type: !56)
!3468 = distinct !DISubprogram(name: "check_nonnull", scope: !435, file: !435, line: 37, type: !3469, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!56, !56}
!3471 = !{!3467}
!3472 = !DILocation(line: 0, scope: !3468, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 85, column: 10, scope: !3460, inlinedAt: !3465)
!3474 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3473)
!3475 = distinct !DILexicalBlock(scope: !3468, file: !435, line: 39, column: 7)
!3476 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3473)
!3477 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3473)
!3478 = !DILocation(line: 149, column: 3, scope: !3450)
!3479 = !DILocation(line: 0, scope: !3460)
!3480 = !DILocation(line: 85, column: 25, scope: !3460)
!3481 = !DILocation(line: 0, scope: !3468, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 85, column: 10, scope: !3460)
!3483 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3482)
!3486 = !DILocation(line: 85, column: 3, scope: !3460)
!3487 = distinct !DISubprogram(name: "xmalloc", scope: !435, file: !435, line: 47, type: !3488, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!56, !64}
!3490 = !{!3491}
!3491 = !DILocalVariable(name: "s", arg: 1, scope: !3487, file: !435, line: 47, type: !64)
!3492 = !DILocation(line: 0, scope: !3487)
!3493 = !DILocation(line: 49, column: 25, scope: !3487)
!3494 = !DILocation(line: 0, scope: !3468, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 49, column: 10, scope: !3487)
!3496 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3495)
!3497 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3495)
!3498 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3495)
!3499 = !DILocation(line: 49, column: 3, scope: !3487)
!3500 = distinct !DISubprogram(name: "ximalloc", scope: !435, file: !435, line: 53, type: !3501, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!56, !454}
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "s", arg: 1, scope: !3500, file: !435, line: 53, type: !454)
!3505 = !DILocation(line: 0, scope: !3500)
!3506 = !DILocalVariable(name: "s", arg: 1, scope: !3507, file: !3508, line: 55, type: !454)
!3507 = distinct !DISubprogram(name: "imalloc", scope: !3508, file: !3508, line: 55, type: !3501, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3509)
!3508 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3509 = !{!3506}
!3510 = !DILocation(line: 0, scope: !3507, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 55, column: 25, scope: !3500)
!3512 = !DILocation(line: 57, column: 26, scope: !3507, inlinedAt: !3511)
!3513 = !DILocation(line: 0, scope: !3468, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 55, column: 10, scope: !3500)
!3515 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3514)
!3516 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3514)
!3517 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3514)
!3518 = !DILocation(line: 55, column: 3, scope: !3500)
!3519 = distinct !DISubprogram(name: "xcharalloc", scope: !435, file: !435, line: 59, type: !3520, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!54, !64}
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !435, line: 59, type: !64)
!3524 = !DILocation(line: 0, scope: !3519)
!3525 = !DILocation(line: 0, scope: !3487, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 61, column: 10, scope: !3519)
!3527 = !DILocation(line: 49, column: 25, scope: !3487, inlinedAt: !3526)
!3528 = !DILocation(line: 0, scope: !3468, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 49, column: 10, scope: !3487, inlinedAt: !3526)
!3530 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3529)
!3531 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3529)
!3532 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3529)
!3533 = !DILocation(line: 61, column: 3, scope: !3519)
!3534 = distinct !DISubprogram(name: "xrealloc", scope: !435, file: !435, line: 68, type: !3535, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!56, !56, !64}
!3537 = !{!3538, !3539}
!3538 = !DILocalVariable(name: "p", arg: 1, scope: !3534, file: !435, line: 68, type: !56)
!3539 = !DILocalVariable(name: "s", arg: 2, scope: !3534, file: !435, line: 68, type: !64)
!3540 = !DILocation(line: 0, scope: !3534)
!3541 = !DILocalVariable(name: "ptr", arg: 1, scope: !3542, file: !3543, line: 2057, type: !56)
!3542 = distinct !DISubprogram(name: "rpl_realloc", scope: !3543, file: !3543, line: 2057, type: !3535, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3544)
!3543 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3544 = !{!3541, !3545}
!3545 = !DILocalVariable(name: "size", arg: 2, scope: !3542, file: !3543, line: 2057, type: !64)
!3546 = !DILocation(line: 0, scope: !3542, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 70, column: 25, scope: !3534)
!3548 = !DILocation(line: 2059, column: 24, scope: !3542, inlinedAt: !3547)
!3549 = !DILocation(line: 2059, column: 10, scope: !3542, inlinedAt: !3547)
!3550 = !DILocation(line: 0, scope: !3468, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 70, column: 10, scope: !3534)
!3552 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3551)
!3553 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3551)
!3554 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3551)
!3555 = !DILocation(line: 70, column: 3, scope: !3534)
!3556 = distinct !DISubprogram(name: "xirealloc", scope: !435, file: !435, line: 74, type: !3557, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!56, !56, !454}
!3559 = !{!3560, !3561}
!3560 = !DILocalVariable(name: "p", arg: 1, scope: !3556, file: !435, line: 74, type: !56)
!3561 = !DILocalVariable(name: "s", arg: 2, scope: !3556, file: !435, line: 74, type: !454)
!3562 = !DILocation(line: 0, scope: !3556)
!3563 = !DILocalVariable(name: "p", arg: 1, scope: !3564, file: !3508, line: 66, type: !56)
!3564 = distinct !DISubprogram(name: "irealloc", scope: !3508, file: !3508, line: 66, type: !3557, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3565)
!3565 = !{!3563, !3566}
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3564, file: !3508, line: 66, type: !454)
!3567 = !DILocation(line: 0, scope: !3564, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 76, column: 25, scope: !3556)
!3569 = !DILocation(line: 0, scope: !3542, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 68, column: 26, scope: !3564, inlinedAt: !3568)
!3571 = !DILocation(line: 2059, column: 24, scope: !3542, inlinedAt: !3570)
!3572 = !DILocation(line: 2059, column: 10, scope: !3542, inlinedAt: !3570)
!3573 = !DILocation(line: 0, scope: !3468, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 76, column: 10, scope: !3556)
!3575 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3574)
!3576 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3574)
!3577 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3574)
!3578 = !DILocation(line: 76, column: 3, scope: !3556)
!3579 = distinct !DISubprogram(name: "xireallocarray", scope: !435, file: !435, line: 89, type: !3580, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!56, !56, !454, !454}
!3582 = !{!3583, !3584, !3585}
!3583 = !DILocalVariable(name: "p", arg: 1, scope: !3579, file: !435, line: 89, type: !56)
!3584 = !DILocalVariable(name: "n", arg: 2, scope: !3579, file: !435, line: 89, type: !454)
!3585 = !DILocalVariable(name: "s", arg: 3, scope: !3579, file: !435, line: 89, type: !454)
!3586 = !DILocation(line: 0, scope: !3579)
!3587 = !DILocalVariable(name: "p", arg: 1, scope: !3588, file: !3508, line: 98, type: !56)
!3588 = distinct !DISubprogram(name: "ireallocarray", scope: !3508, file: !3508, line: 98, type: !3580, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3589)
!3589 = !{!3587, !3590, !3591}
!3590 = !DILocalVariable(name: "n", arg: 2, scope: !3588, file: !3508, line: 98, type: !454)
!3591 = !DILocalVariable(name: "s", arg: 3, scope: !3588, file: !3508, line: 98, type: !454)
!3592 = !DILocation(line: 0, scope: !3588, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 91, column: 25, scope: !3579)
!3594 = !DILocation(line: 101, column: 13, scope: !3588, inlinedAt: !3593)
!3595 = !DILocation(line: 0, scope: !3468, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 91, column: 10, scope: !3579)
!3597 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3596)
!3598 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3596)
!3599 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3596)
!3600 = !DILocation(line: 91, column: 3, scope: !3579)
!3601 = distinct !DISubprogram(name: "xnmalloc", scope: !435, file: !435, line: 98, type: !3602, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!56, !64, !64}
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "n", arg: 1, scope: !3601, file: !435, line: 98, type: !64)
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !435, line: 98, type: !64)
!3607 = !DILocation(line: 0, scope: !3601)
!3608 = !DILocation(line: 0, scope: !3460, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 100, column: 10, scope: !3601)
!3610 = !DILocation(line: 85, column: 25, scope: !3460, inlinedAt: !3609)
!3611 = !DILocation(line: 0, scope: !3468, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 85, column: 10, scope: !3460, inlinedAt: !3609)
!3613 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3612)
!3614 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3612)
!3615 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3612)
!3616 = !DILocation(line: 100, column: 3, scope: !3601)
!3617 = distinct !DISubprogram(name: "xinmalloc", scope: !435, file: !435, line: 104, type: !3618, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!56, !454, !454}
!3620 = !{!3621, !3622}
!3621 = !DILocalVariable(name: "n", arg: 1, scope: !3617, file: !435, line: 104, type: !454)
!3622 = !DILocalVariable(name: "s", arg: 2, scope: !3617, file: !435, line: 104, type: !454)
!3623 = !DILocation(line: 0, scope: !3617)
!3624 = !DILocation(line: 0, scope: !3579, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 106, column: 10, scope: !3617)
!3626 = !DILocation(line: 0, scope: !3588, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 91, column: 25, scope: !3579, inlinedAt: !3625)
!3628 = !DILocation(line: 101, column: 13, scope: !3588, inlinedAt: !3627)
!3629 = !DILocation(line: 0, scope: !3468, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 91, column: 10, scope: !3579, inlinedAt: !3625)
!3631 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3630)
!3632 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3630)
!3633 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3630)
!3634 = !DILocation(line: 106, column: 3, scope: !3617)
!3635 = distinct !DISubprogram(name: "x2realloc", scope: !435, file: !435, line: 116, type: !3636, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!56, !56, !441}
!3638 = !{!3639, !3640}
!3639 = !DILocalVariable(name: "p", arg: 1, scope: !3635, file: !435, line: 116, type: !56)
!3640 = !DILocalVariable(name: "ps", arg: 2, scope: !3635, file: !435, line: 116, type: !441)
!3641 = !DILocation(line: 0, scope: !3635)
!3642 = !DILocation(line: 0, scope: !438, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 118, column: 10, scope: !3635)
!3644 = !DILocation(line: 178, column: 14, scope: !438, inlinedAt: !3643)
!3645 = !DILocation(line: 180, column: 9, scope: !3646, inlinedAt: !3643)
!3646 = distinct !DILexicalBlock(scope: !438, file: !435, line: 180, column: 7)
!3647 = !DILocation(line: 180, column: 7, scope: !438, inlinedAt: !3643)
!3648 = !DILocation(line: 182, column: 13, scope: !3649, inlinedAt: !3643)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !435, line: 182, column: 11)
!3650 = distinct !DILexicalBlock(scope: !3646, file: !435, line: 181, column: 5)
!3651 = !DILocation(line: 182, column: 11, scope: !3650, inlinedAt: !3643)
!3652 = !DILocation(line: 197, column: 11, scope: !3653, inlinedAt: !3643)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !435, line: 197, column: 11)
!3654 = distinct !DILexicalBlock(scope: !3646, file: !435, line: 195, column: 5)
!3655 = !DILocation(line: 197, column: 11, scope: !3654, inlinedAt: !3643)
!3656 = !DILocation(line: 198, column: 9, scope: !3653, inlinedAt: !3643)
!3657 = !DILocation(line: 0, scope: !3460, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 201, column: 7, scope: !438, inlinedAt: !3643)
!3659 = !DILocation(line: 85, column: 25, scope: !3460, inlinedAt: !3658)
!3660 = !DILocation(line: 0, scope: !3468, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 85, column: 10, scope: !3460, inlinedAt: !3658)
!3662 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3661)
!3663 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3661)
!3664 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3661)
!3665 = !DILocation(line: 202, column: 7, scope: !438, inlinedAt: !3643)
!3666 = !DILocation(line: 118, column: 3, scope: !3635)
!3667 = !DILocation(line: 0, scope: !438)
!3668 = !DILocation(line: 178, column: 14, scope: !438)
!3669 = !DILocation(line: 180, column: 9, scope: !3646)
!3670 = !DILocation(line: 180, column: 7, scope: !438)
!3671 = !DILocation(line: 182, column: 13, scope: !3649)
!3672 = !DILocation(line: 182, column: 11, scope: !3650)
!3673 = !DILocation(line: 190, column: 30, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3649, file: !435, line: 183, column: 9)
!3675 = !DILocation(line: 191, column: 16, scope: !3674)
!3676 = !DILocation(line: 191, column: 13, scope: !3674)
!3677 = !DILocation(line: 192, column: 9, scope: !3674)
!3678 = !DILocation(line: 197, column: 11, scope: !3653)
!3679 = !DILocation(line: 197, column: 11, scope: !3654)
!3680 = !DILocation(line: 198, column: 9, scope: !3653)
!3681 = !DILocation(line: 0, scope: !3460, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 201, column: 7, scope: !438)
!3683 = !DILocation(line: 85, column: 25, scope: !3460, inlinedAt: !3682)
!3684 = !DILocation(line: 0, scope: !3468, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 85, column: 10, scope: !3460, inlinedAt: !3682)
!3686 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3685)
!3687 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3685)
!3688 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3685)
!3689 = !DILocation(line: 202, column: 7, scope: !438)
!3690 = !DILocation(line: 203, column: 3, scope: !438)
!3691 = !DILocation(line: 0, scope: !450)
!3692 = !DILocation(line: 230, column: 14, scope: !450)
!3693 = !DILocation(line: 238, column: 7, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !450, file: !435, line: 238, column: 7)
!3695 = !DILocation(line: 238, column: 7, scope: !450)
!3696 = !DILocation(line: 240, column: 9, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !450, file: !435, line: 240, column: 7)
!3698 = !DILocation(line: 240, column: 18, scope: !3697)
!3699 = !DILocation(line: 253, column: 8, scope: !450)
!3700 = !DILocation(line: 258, column: 27, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !435, line: 257, column: 5)
!3702 = distinct !DILexicalBlock(scope: !450, file: !435, line: 256, column: 7)
!3703 = !DILocation(line: 259, column: 32, scope: !3701)
!3704 = !DILocation(line: 260, column: 5, scope: !3701)
!3705 = !DILocation(line: 262, column: 9, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !450, file: !435, line: 262, column: 7)
!3707 = !DILocation(line: 262, column: 7, scope: !450)
!3708 = !DILocation(line: 263, column: 9, scope: !3706)
!3709 = !DILocation(line: 263, column: 5, scope: !3706)
!3710 = !DILocation(line: 264, column: 9, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !450, file: !435, line: 264, column: 7)
!3712 = !DILocation(line: 264, column: 14, scope: !3711)
!3713 = !DILocation(line: 265, column: 7, scope: !3711)
!3714 = !DILocation(line: 265, column: 11, scope: !3711)
!3715 = !DILocation(line: 266, column: 11, scope: !3711)
!3716 = !DILocation(line: 266, column: 26, scope: !3711)
!3717 = !DILocation(line: 267, column: 14, scope: !3711)
!3718 = !DILocation(line: 264, column: 7, scope: !450)
!3719 = !DILocation(line: 268, column: 5, scope: !3711)
!3720 = !DILocation(line: 0, scope: !3534, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 269, column: 8, scope: !450)
!3722 = !DILocation(line: 0, scope: !3542, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 70, column: 25, scope: !3534, inlinedAt: !3721)
!3724 = !DILocation(line: 2059, column: 24, scope: !3542, inlinedAt: !3723)
!3725 = !DILocation(line: 2059, column: 10, scope: !3542, inlinedAt: !3723)
!3726 = !DILocation(line: 0, scope: !3468, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 70, column: 10, scope: !3534, inlinedAt: !3721)
!3728 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3727)
!3729 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3727)
!3730 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3727)
!3731 = !DILocation(line: 270, column: 7, scope: !450)
!3732 = !DILocation(line: 271, column: 3, scope: !450)
!3733 = distinct !DISubprogram(name: "xzalloc", scope: !435, file: !435, line: 279, type: !3488, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3734)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "s", arg: 1, scope: !3733, file: !435, line: 279, type: !64)
!3736 = !DILocation(line: 0, scope: !3733)
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3738, file: !435, line: 294, type: !64)
!3738 = distinct !DISubprogram(name: "xcalloc", scope: !435, file: !435, line: 294, type: !3602, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3739)
!3739 = !{!3737, !3740}
!3740 = !DILocalVariable(name: "s", arg: 2, scope: !3738, file: !435, line: 294, type: !64)
!3741 = !DILocation(line: 0, scope: !3738, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 281, column: 10, scope: !3733)
!3743 = !DILocation(line: 296, column: 25, scope: !3738, inlinedAt: !3742)
!3744 = !DILocation(line: 0, scope: !3468, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 296, column: 10, scope: !3738, inlinedAt: !3742)
!3746 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3745)
!3747 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3745)
!3748 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3745)
!3749 = !DILocation(line: 281, column: 3, scope: !3733)
!3750 = !DILocation(line: 0, scope: !3738)
!3751 = !DILocation(line: 296, column: 25, scope: !3738)
!3752 = !DILocation(line: 0, scope: !3468, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 296, column: 10, scope: !3738)
!3754 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3753)
!3755 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3753)
!3756 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3753)
!3757 = !DILocation(line: 296, column: 3, scope: !3738)
!3758 = distinct !DISubprogram(name: "xizalloc", scope: !435, file: !435, line: 285, type: !3501, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3759)
!3759 = !{!3760}
!3760 = !DILocalVariable(name: "s", arg: 1, scope: !3758, file: !435, line: 285, type: !454)
!3761 = !DILocation(line: 0, scope: !3758)
!3762 = !DILocalVariable(name: "n", arg: 1, scope: !3763, file: !435, line: 300, type: !454)
!3763 = distinct !DISubprogram(name: "xicalloc", scope: !435, file: !435, line: 300, type: !3618, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3764)
!3764 = !{!3762, !3765}
!3765 = !DILocalVariable(name: "s", arg: 2, scope: !3763, file: !435, line: 300, type: !454)
!3766 = !DILocation(line: 0, scope: !3763, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 287, column: 10, scope: !3758)
!3768 = !DILocalVariable(name: "n", arg: 1, scope: !3769, file: !3508, line: 77, type: !454)
!3769 = distinct !DISubprogram(name: "icalloc", scope: !3508, file: !3508, line: 77, type: !3618, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3770)
!3770 = !{!3768, !3771}
!3771 = !DILocalVariable(name: "s", arg: 2, scope: !3769, file: !3508, line: 77, type: !454)
!3772 = !DILocation(line: 0, scope: !3769, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 302, column: 25, scope: !3763, inlinedAt: !3767)
!3774 = !DILocation(line: 91, column: 10, scope: !3769, inlinedAt: !3773)
!3775 = !DILocation(line: 0, scope: !3468, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 302, column: 10, scope: !3763, inlinedAt: !3767)
!3777 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3776)
!3778 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3776)
!3779 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3776)
!3780 = !DILocation(line: 287, column: 3, scope: !3758)
!3781 = !DILocation(line: 0, scope: !3763)
!3782 = !DILocation(line: 0, scope: !3769, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 302, column: 25, scope: !3763)
!3784 = !DILocation(line: 91, column: 10, scope: !3769, inlinedAt: !3783)
!3785 = !DILocation(line: 0, scope: !3468, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 302, column: 10, scope: !3763)
!3787 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3786)
!3788 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3786)
!3789 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3786)
!3790 = !DILocation(line: 302, column: 3, scope: !3763)
!3791 = distinct !DISubprogram(name: "xmemdup", scope: !435, file: !435, line: 310, type: !3792, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!56, !52, !64}
!3794 = !{!3795, !3796}
!3795 = !DILocalVariable(name: "p", arg: 1, scope: !3791, file: !435, line: 310, type: !52)
!3796 = !DILocalVariable(name: "s", arg: 2, scope: !3791, file: !435, line: 310, type: !64)
!3797 = !DILocation(line: 0, scope: !3791)
!3798 = !DILocation(line: 0, scope: !3487, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 312, column: 18, scope: !3791)
!3800 = !DILocation(line: 49, column: 25, scope: !3487, inlinedAt: !3799)
!3801 = !DILocation(line: 0, scope: !3468, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 49, column: 10, scope: !3487, inlinedAt: !3799)
!3803 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3802)
!3804 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3802)
!3805 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3802)
!3806 = !DILocalVariable(name: "__dest", arg: 1, scope: !3807, file: !1963, line: 26, type: !3810)
!3807 = distinct !DISubprogram(name: "memcpy", scope: !1963, file: !1963, line: 26, type: !3808, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3811)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!56, !3810, !718, !64}
!3810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!3811 = !{!3806, !3812, !3813}
!3812 = !DILocalVariable(name: "__src", arg: 2, scope: !3807, file: !1963, line: 26, type: !718)
!3813 = !DILocalVariable(name: "__len", arg: 3, scope: !3807, file: !1963, line: 26, type: !64)
!3814 = !DILocation(line: 0, scope: !3807, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 312, column: 10, scope: !3791)
!3816 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3815)
!3817 = !DILocation(line: 312, column: 3, scope: !3791)
!3818 = distinct !DISubprogram(name: "ximemdup", scope: !435, file: !435, line: 316, type: !3819, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!56, !52, !454}
!3821 = !{!3822, !3823}
!3822 = !DILocalVariable(name: "p", arg: 1, scope: !3818, file: !435, line: 316, type: !52)
!3823 = !DILocalVariable(name: "s", arg: 2, scope: !3818, file: !435, line: 316, type: !454)
!3824 = !DILocation(line: 0, scope: !3818)
!3825 = !DILocation(line: 0, scope: !3500, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 318, column: 18, scope: !3818)
!3827 = !DILocation(line: 0, scope: !3507, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 55, column: 25, scope: !3500, inlinedAt: !3826)
!3829 = !DILocation(line: 57, column: 26, scope: !3507, inlinedAt: !3828)
!3830 = !DILocation(line: 0, scope: !3468, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 55, column: 10, scope: !3500, inlinedAt: !3826)
!3832 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3831)
!3833 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3831)
!3834 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3831)
!3835 = !DILocation(line: 0, scope: !3807, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 318, column: 10, scope: !3818)
!3837 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3836)
!3838 = !DILocation(line: 318, column: 3, scope: !3818)
!3839 = distinct !DISubprogram(name: "ximemdup0", scope: !435, file: !435, line: 325, type: !3840, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!54, !52, !454}
!3842 = !{!3843, !3844, !3845}
!3843 = !DILocalVariable(name: "p", arg: 1, scope: !3839, file: !435, line: 325, type: !52)
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3839, file: !435, line: 325, type: !454)
!3845 = !DILocalVariable(name: "result", scope: !3839, file: !435, line: 327, type: !54)
!3846 = !DILocation(line: 0, scope: !3839)
!3847 = !DILocation(line: 327, column: 30, scope: !3839)
!3848 = !DILocation(line: 0, scope: !3500, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 327, column: 18, scope: !3839)
!3850 = !DILocation(line: 0, scope: !3507, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 55, column: 25, scope: !3500, inlinedAt: !3849)
!3852 = !DILocation(line: 57, column: 26, scope: !3507, inlinedAt: !3851)
!3853 = !DILocation(line: 0, scope: !3468, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 55, column: 10, scope: !3500, inlinedAt: !3849)
!3855 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3854)
!3856 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3854)
!3857 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3854)
!3858 = !DILocation(line: 328, column: 3, scope: !3839)
!3859 = !DILocation(line: 328, column: 13, scope: !3839)
!3860 = !DILocation(line: 0, scope: !3807, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 329, column: 10, scope: !3839)
!3862 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3861)
!3863 = !DILocation(line: 329, column: 3, scope: !3839)
!3864 = distinct !DISubprogram(name: "xstrdup", scope: !435, file: !435, line: 335, type: !713, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3865)
!3865 = !{!3866}
!3866 = !DILocalVariable(name: "string", arg: 1, scope: !3864, file: !435, line: 335, type: !67)
!3867 = !DILocation(line: 0, scope: !3864)
!3868 = !DILocation(line: 337, column: 27, scope: !3864)
!3869 = !DILocation(line: 337, column: 43, scope: !3864)
!3870 = !DILocation(line: 0, scope: !3791, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 337, column: 10, scope: !3864)
!3872 = !DILocation(line: 0, scope: !3487, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 312, column: 18, scope: !3791, inlinedAt: !3871)
!3874 = !DILocation(line: 49, column: 25, scope: !3487, inlinedAt: !3873)
!3875 = !DILocation(line: 0, scope: !3468, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 49, column: 10, scope: !3487, inlinedAt: !3873)
!3877 = !DILocation(line: 39, column: 8, scope: !3475, inlinedAt: !3876)
!3878 = !DILocation(line: 39, column: 7, scope: !3468, inlinedAt: !3876)
!3879 = !DILocation(line: 40, column: 5, scope: !3475, inlinedAt: !3876)
!3880 = !DILocation(line: 0, scope: !3807, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 312, column: 10, scope: !3791, inlinedAt: !3871)
!3882 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3881)
!3883 = !DILocation(line: 337, column: 3, scope: !3864)
!3884 = distinct !DISubprogram(name: "xalloc_die", scope: !469, file: !469, line: 32, type: !205, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3885)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "__errstatus", scope: !3887, file: !469, line: 34, type: !801)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !469, line: 34, column: 3)
!3888 = !DILocation(line: 34, column: 3, scope: !3887)
!3889 = !DILocation(line: 0, scope: !3887)
!3890 = !DILocation(line: 40, column: 3, scope: !3884)
!3891 = distinct !DISubprogram(name: "close_stream", scope: !471, file: !471, line: 55, type: !3892, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !3928)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!62, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3896, file: !107, line: 51, baseType: !62, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3896, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3896, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3896, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3896, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3896, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3896, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3896, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3896, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3896, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3896, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3896, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3896, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3896, file: !107, line: 70, baseType: !3912, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3896, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3896, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3896, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3896, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3896, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3896, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3896, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3896, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3896, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3896, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3896, file: !107, line: 93, baseType: !3912, size: 64, offset: 1344)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3896, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3896, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3896, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3896, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3928 = !{!3929, !3930, !3932, !3933}
!3929 = !DILocalVariable(name: "stream", arg: 1, scope: !3891, file: !471, line: 55, type: !3894)
!3930 = !DILocalVariable(name: "some_pending", scope: !3891, file: !471, line: 57, type: !3931)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!3932 = !DILocalVariable(name: "prev_fail", scope: !3891, file: !471, line: 58, type: !3931)
!3933 = !DILocalVariable(name: "fclose_fail", scope: !3891, file: !471, line: 59, type: !3931)
!3934 = !DILocation(line: 0, scope: !3891)
!3935 = !DILocation(line: 57, column: 30, scope: !3891)
!3936 = !DILocalVariable(name: "__stream", arg: 1, scope: !3937, file: !1367, line: 135, type: !3894)
!3937 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1367, file: !1367, line: 135, type: !3892, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !3938)
!3938 = !{!3936}
!3939 = !DILocation(line: 0, scope: !3937, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 58, column: 27, scope: !3891)
!3941 = !DILocation(line: 137, column: 10, scope: !3937, inlinedAt: !3940)
!3942 = !{!1410, !602, i64 0}
!3943 = !DILocation(line: 58, column: 43, scope: !3891)
!3944 = !DILocation(line: 59, column: 29, scope: !3891)
!3945 = !DILocation(line: 59, column: 45, scope: !3891)
!3946 = !DILocation(line: 69, column: 17, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3891, file: !471, line: 69, column: 7)
!3948 = !DILocation(line: 57, column: 50, scope: !3891)
!3949 = !DILocation(line: 69, column: 33, scope: !3947)
!3950 = !DILocation(line: 69, column: 53, scope: !3947)
!3951 = !DILocation(line: 69, column: 59, scope: !3947)
!3952 = !DILocation(line: 69, column: 7, scope: !3891)
!3953 = !DILocation(line: 71, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3947, file: !471, line: 70, column: 5)
!3955 = !DILocation(line: 72, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3954, file: !471, line: 71, column: 11)
!3957 = !DILocation(line: 72, column: 15, scope: !3956)
!3958 = !DILocation(line: 77, column: 1, scope: !3891)
!3959 = distinct !DISubprogram(name: "rpl_fclose", scope: !473, file: !473, line: 58, type: !3960, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3996)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!62, !3962}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3964, file: !107, line: 51, baseType: !62, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3964, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3964, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3964, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3964, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3964, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3964, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3964, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3964, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3964, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3964, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3964, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3964, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3964, file: !107, line: 70, baseType: !3980, size: 64, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3964, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3964, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3964, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3964, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3964, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3964, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3964, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3964, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3964, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3964, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3964, file: !107, line: 93, baseType: !3980, size: 64, offset: 1344)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3964, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3964, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3964, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3964, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3996 = !{!3997, !3998, !3999, !4000}
!3997 = !DILocalVariable(name: "fp", arg: 1, scope: !3959, file: !473, line: 58, type: !3962)
!3998 = !DILocalVariable(name: "saved_errno", scope: !3959, file: !473, line: 60, type: !62)
!3999 = !DILocalVariable(name: "fd", scope: !3959, file: !473, line: 63, type: !62)
!4000 = !DILocalVariable(name: "result", scope: !3959, file: !473, line: 74, type: !62)
!4001 = !DILocation(line: 0, scope: !3959)
!4002 = !DILocation(line: 63, column: 12, scope: !3959)
!4003 = !DILocation(line: 64, column: 10, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3959, file: !473, line: 64, column: 7)
!4005 = !DILocation(line: 64, column: 7, scope: !3959)
!4006 = !DILocation(line: 65, column: 12, scope: !4004)
!4007 = !DILocation(line: 65, column: 5, scope: !4004)
!4008 = !DILocation(line: 70, column: 9, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3959, file: !473, line: 70, column: 7)
!4010 = !DILocation(line: 70, column: 23, scope: !4009)
!4011 = !DILocation(line: 70, column: 33, scope: !4009)
!4012 = !DILocation(line: 70, column: 26, scope: !4009)
!4013 = !DILocation(line: 70, column: 59, scope: !4009)
!4014 = !DILocation(line: 71, column: 7, scope: !4009)
!4015 = !DILocation(line: 71, column: 10, scope: !4009)
!4016 = !DILocation(line: 70, column: 7, scope: !3959)
!4017 = !DILocation(line: 100, column: 12, scope: !3959)
!4018 = !DILocation(line: 105, column: 7, scope: !3959)
!4019 = !DILocation(line: 72, column: 19, scope: !4009)
!4020 = !DILocation(line: 105, column: 19, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3959, file: !473, line: 105, column: 7)
!4022 = !DILocation(line: 107, column: 13, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4021, file: !473, line: 106, column: 5)
!4024 = !DILocation(line: 109, column: 5, scope: !4023)
!4025 = !DILocation(line: 112, column: 1, scope: !3959)
!4026 = !DISubprogram(name: "fclose", scope: !226, file: !226, line: 178, type: !3960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4027 = !DISubprogram(name: "lseek", scope: !1035, file: !1035, line: 339, type: !4028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!129, !62, !129, !62}
!4030 = distinct !DISubprogram(name: "rpl_fflush", scope: !475, file: !475, line: 130, type: !4031, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4067)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!62, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4035, file: !107, line: 51, baseType: !62, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4035, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4035, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4035, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4035, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4035, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4035, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4035, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4035, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4035, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4035, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4035, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4035, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4035, file: !107, line: 70, baseType: !4051, size: 64, offset: 832)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4035, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4035, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4035, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4035, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4035, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4035, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4035, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4035, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4035, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4035, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4035, file: !107, line: 93, baseType: !4051, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4035, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4035, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4035, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4035, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4067 = !{!4068}
!4068 = !DILocalVariable(name: "stream", arg: 1, scope: !4030, file: !475, line: 130, type: !4033)
!4069 = !DILocation(line: 0, scope: !4030)
!4070 = !DILocation(line: 151, column: 14, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4030, file: !475, line: 151, column: 7)
!4072 = !DILocation(line: 151, column: 22, scope: !4071)
!4073 = !DILocation(line: 151, column: 27, scope: !4071)
!4074 = !DILocation(line: 151, column: 7, scope: !4030)
!4075 = !DILocation(line: 152, column: 12, scope: !4071)
!4076 = !DILocation(line: 152, column: 5, scope: !4071)
!4077 = !DILocalVariable(name: "fp", arg: 1, scope: !4078, file: !475, line: 42, type: !4033)
!4078 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !475, file: !475, line: 42, type: !4079, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !4033}
!4081 = !{!4077}
!4082 = !DILocation(line: 0, scope: !4078, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 157, column: 3, scope: !4030)
!4084 = !DILocation(line: 44, column: 12, scope: !4085, inlinedAt: !4083)
!4085 = distinct !DILexicalBlock(scope: !4078, file: !475, line: 44, column: 7)
!4086 = !DILocation(line: 44, column: 19, scope: !4085, inlinedAt: !4083)
!4087 = !DILocation(line: 44, column: 7, scope: !4078, inlinedAt: !4083)
!4088 = !DILocation(line: 46, column: 5, scope: !4085, inlinedAt: !4083)
!4089 = !DILocation(line: 159, column: 10, scope: !4030)
!4090 = !DILocation(line: 159, column: 3, scope: !4030)
!4091 = !DILocation(line: 236, column: 1, scope: !4030)
!4092 = !DISubprogram(name: "fflush", scope: !226, file: !226, line: 230, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4093 = distinct !DISubprogram(name: "rpl_fseeko", scope: !477, file: !477, line: 28, type: !4094, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4130)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!62, !4096, !1763, !62}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4098, file: !107, line: 51, baseType: !62, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4098, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4098, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4098, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4098, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4098, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4098, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4098, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4098, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4098, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4098, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4098, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4098, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4098, file: !107, line: 70, baseType: !4114, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4098, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4098, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4098, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4098, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4098, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4098, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4098, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4098, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4098, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4098, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4098, file: !107, line: 93, baseType: !4114, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4098, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4098, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4098, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4098, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "fp", arg: 1, scope: !4093, file: !477, line: 28, type: !4096)
!4132 = !DILocalVariable(name: "offset", arg: 2, scope: !4093, file: !477, line: 28, type: !1763)
!4133 = !DILocalVariable(name: "whence", arg: 3, scope: !4093, file: !477, line: 28, type: !62)
!4134 = !DILocalVariable(name: "pos", scope: !4135, file: !477, line: 123, type: !1763)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !477, line: 119, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4093, file: !477, line: 55, column: 7)
!4137 = !DILocation(line: 0, scope: !4093)
!4138 = !DILocation(line: 55, column: 12, scope: !4136)
!4139 = !{!1410, !511, i64 16}
!4140 = !DILocation(line: 55, column: 33, scope: !4136)
!4141 = !{!1410, !511, i64 8}
!4142 = !DILocation(line: 55, column: 25, scope: !4136)
!4143 = !DILocation(line: 56, column: 7, scope: !4136)
!4144 = !DILocation(line: 56, column: 15, scope: !4136)
!4145 = !DILocation(line: 56, column: 37, scope: !4136)
!4146 = !{!1410, !511, i64 32}
!4147 = !DILocation(line: 56, column: 29, scope: !4136)
!4148 = !DILocation(line: 57, column: 7, scope: !4136)
!4149 = !DILocation(line: 57, column: 15, scope: !4136)
!4150 = !{!1410, !511, i64 72}
!4151 = !DILocation(line: 57, column: 29, scope: !4136)
!4152 = !DILocation(line: 55, column: 7, scope: !4093)
!4153 = !DILocation(line: 123, column: 26, scope: !4135)
!4154 = !DILocation(line: 123, column: 19, scope: !4135)
!4155 = !DILocation(line: 0, scope: !4135)
!4156 = !DILocation(line: 124, column: 15, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4135, file: !477, line: 124, column: 11)
!4158 = !DILocation(line: 124, column: 11, scope: !4135)
!4159 = !DILocation(line: 135, column: 12, scope: !4135)
!4160 = !DILocation(line: 135, column: 19, scope: !4135)
!4161 = !DILocation(line: 136, column: 12, scope: !4135)
!4162 = !DILocation(line: 136, column: 20, scope: !4135)
!4163 = !{!1410, !1168, i64 144}
!4164 = !DILocation(line: 167, column: 7, scope: !4135)
!4165 = !DILocation(line: 169, column: 10, scope: !4093)
!4166 = !DILocation(line: 169, column: 3, scope: !4093)
!4167 = !DILocation(line: 170, column: 1, scope: !4093)
!4168 = !DISubprogram(name: "fseeko", scope: !226, file: !226, line: 736, type: !4169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!62, !4096, !129, !62}
!4171 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !383, file: !383, line: 100, type: !4172, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4175)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!64, !1981, !67, !64, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4175 = !{!4176, !4177, !4178, !4179, !4180}
!4176 = !DILocalVariable(name: "pwc", arg: 1, scope: !4171, file: !383, line: 100, type: !1981)
!4177 = !DILocalVariable(name: "s", arg: 2, scope: !4171, file: !383, line: 100, type: !67)
!4178 = !DILocalVariable(name: "n", arg: 3, scope: !4171, file: !383, line: 100, type: !64)
!4179 = !DILocalVariable(name: "ps", arg: 4, scope: !4171, file: !383, line: 100, type: !4174)
!4180 = !DILocalVariable(name: "ret", scope: !4171, file: !383, line: 130, type: !64)
!4181 = !DILocation(line: 0, scope: !4171)
!4182 = !DILocation(line: 105, column: 9, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4171, file: !383, line: 105, column: 7)
!4184 = !DILocation(line: 105, column: 7, scope: !4171)
!4185 = !DILocation(line: 117, column: 10, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4171, file: !383, line: 117, column: 7)
!4187 = !DILocation(line: 117, column: 7, scope: !4171)
!4188 = !DILocation(line: 130, column: 16, scope: !4171)
!4189 = !DILocation(line: 135, column: 11, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4171, file: !383, line: 135, column: 7)
!4191 = !DILocation(line: 135, column: 25, scope: !4190)
!4192 = !DILocation(line: 135, column: 30, scope: !4190)
!4193 = !DILocation(line: 135, column: 7, scope: !4171)
!4194 = !DILocalVariable(name: "ps", arg: 1, scope: !4195, file: !1954, line: 1135, type: !4174)
!4195 = distinct !DISubprogram(name: "mbszero", scope: !1954, file: !1954, line: 1135, type: !4196, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !4174}
!4198 = !{!4194}
!4199 = !DILocation(line: 0, scope: !4195, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 137, column: 5, scope: !4190)
!4201 = !DILocalVariable(name: "__dest", arg: 1, scope: !4202, file: !1963, line: 57, type: !56)
!4202 = distinct !DISubprogram(name: "memset", scope: !1963, file: !1963, line: 57, type: !1964, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4203)
!4203 = !{!4201, !4204, !4205}
!4204 = !DILocalVariable(name: "__ch", arg: 2, scope: !4202, file: !1963, line: 57, type: !62)
!4205 = !DILocalVariable(name: "__len", arg: 3, scope: !4202, file: !1963, line: 57, type: !64)
!4206 = !DILocation(line: 0, scope: !4202, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 1137, column: 3, scope: !4195, inlinedAt: !4200)
!4208 = !DILocation(line: 59, column: 10, scope: !4202, inlinedAt: !4207)
!4209 = !DILocation(line: 137, column: 5, scope: !4190)
!4210 = !DILocation(line: 138, column: 11, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4171, file: !383, line: 138, column: 7)
!4212 = !DILocation(line: 138, column: 7, scope: !4171)
!4213 = !DILocation(line: 139, column: 5, scope: !4211)
!4214 = !DILocation(line: 143, column: 26, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4171, file: !383, line: 143, column: 7)
!4216 = !DILocation(line: 143, column: 41, scope: !4215)
!4217 = !DILocation(line: 143, column: 7, scope: !4171)
!4218 = !DILocation(line: 145, column: 15, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !383, line: 145, column: 11)
!4220 = distinct !DILexicalBlock(scope: !4215, file: !383, line: 144, column: 5)
!4221 = !DILocation(line: 145, column: 11, scope: !4220)
!4222 = !DILocation(line: 146, column: 32, scope: !4219)
!4223 = !DILocation(line: 146, column: 16, scope: !4219)
!4224 = !DILocation(line: 146, column: 14, scope: !4219)
!4225 = !DILocation(line: 146, column: 9, scope: !4219)
!4226 = !DILocation(line: 286, column: 1, scope: !4171)
!4227 = !DISubprogram(name: "mbsinit", scope: !4228, file: !4228, line: 293, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4228 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!62, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!4233 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !479, file: !479, line: 27, type: !3452, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4234)
!4234 = !{!4235, !4236, !4237, !4238}
!4235 = !DILocalVariable(name: "ptr", arg: 1, scope: !4233, file: !479, line: 27, type: !56)
!4236 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4233, file: !479, line: 27, type: !64)
!4237 = !DILocalVariable(name: "size", arg: 3, scope: !4233, file: !479, line: 27, type: !64)
!4238 = !DILocalVariable(name: "nbytes", scope: !4233, file: !479, line: 29, type: !64)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocation(line: 30, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4233, file: !479, line: 30, column: 7)
!4242 = !DILocalVariable(name: "ptr", arg: 1, scope: !4243, file: !3543, line: 2057, type: !56)
!4243 = distinct !DISubprogram(name: "rpl_realloc", scope: !3543, file: !3543, line: 2057, type: !3535, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4244)
!4244 = !{!4242, !4245}
!4245 = !DILocalVariable(name: "size", arg: 2, scope: !4243, file: !3543, line: 2057, type: !64)
!4246 = !DILocation(line: 0, scope: !4243, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 37, column: 10, scope: !4233)
!4248 = !DILocation(line: 2059, column: 24, scope: !4243, inlinedAt: !4247)
!4249 = !DILocation(line: 2059, column: 10, scope: !4243, inlinedAt: !4247)
!4250 = !DILocation(line: 37, column: 3, scope: !4233)
!4251 = !DILocation(line: 32, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4241, file: !479, line: 31, column: 5)
!4253 = !DILocation(line: 32, column: 13, scope: !4252)
!4254 = !DILocation(line: 33, column: 7, scope: !4252)
!4255 = !DILocation(line: 38, column: 1, scope: !4233)
!4256 = distinct !DISubprogram(name: "dup_safer", scope: !482, file: !482, line: 31, type: !1036, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4257)
!4257 = !{!4258}
!4258 = !DILocalVariable(name: "fd", arg: 1, scope: !4256, file: !482, line: 31, type: !62)
!4259 = !DILocation(line: 0, scope: !4256)
!4260 = !DILocation(line: 33, column: 10, scope: !4256)
!4261 = !DILocation(line: 33, column: 3, scope: !4256)
!4262 = distinct !DISubprogram(name: "rpl_fcntl", scope: !399, file: !399, line: 202, type: !1695, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !4263)
!4263 = !{!4264, !4265, !4266, !4277, !4278, !4281, !4283, !4287}
!4264 = !DILocalVariable(name: "fd", arg: 1, scope: !4262, file: !399, line: 202, type: !62)
!4265 = !DILocalVariable(name: "action", arg: 2, scope: !4262, file: !399, line: 202, type: !62)
!4266 = !DILocalVariable(name: "arg", scope: !4262, file: !399, line: 208, type: !4267)
!4267 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !228, line: 14, baseType: !4268)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4269, baseType: !4270)
!4269 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4270, file: !4269, line: 208, baseType: !56, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4270, file: !4269, line: 208, baseType: !56, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4270, file: !4269, line: 208, baseType: !56, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4270, file: !4269, line: 208, baseType: !62, size: 32, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4270, file: !4269, line: 208, baseType: !62, size: 32, offset: 224)
!4277 = !DILocalVariable(name: "result", scope: !4262, file: !399, line: 211, type: !62)
!4278 = !DILocalVariable(name: "target", scope: !4279, file: !399, line: 216, type: !62)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !399, line: 215, column: 7)
!4280 = distinct !DILexicalBlock(scope: !4262, file: !399, line: 213, column: 5)
!4281 = !DILocalVariable(name: "target", scope: !4282, file: !399, line: 223, type: !62)
!4282 = distinct !DILexicalBlock(scope: !4280, file: !399, line: 222, column: 7)
!4283 = !DILocalVariable(name: "x", scope: !4284, file: !399, line: 418, type: !62)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !399, line: 417, column: 13)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !399, line: 261, column: 11)
!4286 = distinct !DILexicalBlock(scope: !4280, file: !399, line: 258, column: 7)
!4287 = !DILocalVariable(name: "p", scope: !4288, file: !399, line: 426, type: !56)
!4288 = distinct !DILexicalBlock(scope: !4285, file: !399, line: 425, column: 13)
!4289 = !DILocation(line: 0, scope: !4262)
!4290 = !DILocation(line: 208, column: 3, scope: !4262)
!4291 = !DILocation(line: 208, column: 11, scope: !4262)
!4292 = !DILocation(line: 209, column: 3, scope: !4262)
!4293 = !DILocation(line: 212, column: 3, scope: !4262)
!4294 = !DILocation(line: 216, column: 22, scope: !4279)
!4295 = !DILocation(line: 0, scope: !4279)
!4296 = !DILocalVariable(name: "fd", arg: 1, scope: !4297, file: !399, line: 444, type: !62)
!4297 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !399, file: !399, line: 444, type: !400, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !4298)
!4298 = !{!4296, !4299, !4300}
!4299 = !DILocalVariable(name: "target", arg: 2, scope: !4297, file: !399, line: 444, type: !62)
!4300 = !DILocalVariable(name: "result", scope: !4297, file: !399, line: 446, type: !62)
!4301 = !DILocation(line: 0, scope: !4297, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 217, column: 18, scope: !4279)
!4303 = !DILocation(line: 479, column: 12, scope: !4297, inlinedAt: !4302)
!4304 = !DILocation(line: 223, column: 22, scope: !4282)
!4305 = !DILocation(line: 0, scope: !4282)
!4306 = !DILocation(line: 0, scope: !398, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 224, column: 18, scope: !4282)
!4308 = !DILocation(line: 507, column: 12, scope: !4309, inlinedAt: !4307)
!4309 = distinct !DILexicalBlock(scope: !398, file: !399, line: 507, column: 7)
!4310 = !DILocation(line: 507, column: 9, scope: !4309, inlinedAt: !4307)
!4311 = !DILocation(line: 507, column: 7, scope: !398, inlinedAt: !4307)
!4312 = !DILocation(line: 509, column: 16, scope: !4313, inlinedAt: !4307)
!4313 = distinct !DILexicalBlock(scope: !4309, file: !399, line: 508, column: 5)
!4314 = !DILocation(line: 510, column: 13, scope: !4315, inlinedAt: !4307)
!4315 = distinct !DILexicalBlock(scope: !4313, file: !399, line: 510, column: 11)
!4316 = !DILocation(line: 510, column: 23, scope: !4315, inlinedAt: !4307)
!4317 = !DILocation(line: 510, column: 26, scope: !4315, inlinedAt: !4307)
!4318 = !DILocation(line: 510, column: 32, scope: !4315, inlinedAt: !4307)
!4319 = !DILocation(line: 510, column: 11, scope: !4313, inlinedAt: !4307)
!4320 = !DILocation(line: 512, column: 30, scope: !4321, inlinedAt: !4307)
!4321 = distinct !DILexicalBlock(scope: !4315, file: !399, line: 511, column: 9)
!4322 = !DILocation(line: 528, column: 19, scope: !410, inlinedAt: !4307)
!4323 = !DILocation(line: 0, scope: !4297, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 520, column: 20, scope: !4325, inlinedAt: !4307)
!4325 = distinct !DILexicalBlock(scope: !4315, file: !399, line: 519, column: 9)
!4326 = !DILocation(line: 479, column: 12, scope: !4297, inlinedAt: !4324)
!4327 = !DILocation(line: 521, column: 22, scope: !4328, inlinedAt: !4307)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !399, line: 521, column: 15)
!4329 = !DILocation(line: 521, column: 15, scope: !4325, inlinedAt: !4307)
!4330 = !DILocation(line: 522, column: 32, scope: !4328, inlinedAt: !4307)
!4331 = !DILocation(line: 522, column: 13, scope: !4328, inlinedAt: !4307)
!4332 = !DILocation(line: 0, scope: !4297, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 527, column: 14, scope: !4309, inlinedAt: !4307)
!4334 = !DILocation(line: 479, column: 12, scope: !4297, inlinedAt: !4333)
!4335 = !DILocation(line: 0, scope: !4309, inlinedAt: !4307)
!4336 = !DILocation(line: 528, column: 9, scope: !410, inlinedAt: !4307)
!4337 = !DILocation(line: 530, column: 19, scope: !409, inlinedAt: !4307)
!4338 = !DILocation(line: 0, scope: !409, inlinedAt: !4307)
!4339 = !DILocation(line: 531, column: 17, scope: !413, inlinedAt: !4307)
!4340 = !DILocation(line: 531, column: 21, scope: !413, inlinedAt: !4307)
!4341 = !DILocation(line: 531, column: 54, scope: !413, inlinedAt: !4307)
!4342 = !DILocation(line: 531, column: 24, scope: !413, inlinedAt: !4307)
!4343 = !DILocation(line: 531, column: 68, scope: !413, inlinedAt: !4307)
!4344 = !DILocation(line: 531, column: 11, scope: !409, inlinedAt: !4307)
!4345 = !DILocation(line: 533, column: 29, scope: !412, inlinedAt: !4307)
!4346 = !DILocation(line: 0, scope: !412, inlinedAt: !4307)
!4347 = !DILocation(line: 534, column: 11, scope: !412, inlinedAt: !4307)
!4348 = !DILocation(line: 535, column: 17, scope: !412, inlinedAt: !4307)
!4349 = !DILocation(line: 537, column: 9, scope: !412, inlinedAt: !4307)
!4350 = !DILocation(line: 329, column: 22, scope: !4285)
!4351 = !DILocation(line: 330, column: 13, scope: !4285)
!4352 = !DILocation(line: 418, column: 23, scope: !4284)
!4353 = !DILocation(line: 0, scope: !4284)
!4354 = !DILocation(line: 419, column: 24, scope: !4284)
!4355 = !DILocation(line: 421, column: 13, scope: !4285)
!4356 = !DILocation(line: 426, column: 25, scope: !4288)
!4357 = !DILocation(line: 0, scope: !4288)
!4358 = !DILocation(line: 427, column: 24, scope: !4288)
!4359 = !DILocation(line: 429, column: 13, scope: !4285)
!4360 = !DILocation(line: 0, scope: !4280)
!4361 = !DILocation(line: 438, column: 3, scope: !4262)
!4362 = !DILocation(line: 441, column: 1, scope: !4262)
!4363 = !DILocation(line: 440, column: 3, scope: !4262)
!4364 = distinct !DISubprogram(name: "hard_locale", scope: !484, file: !484, line: 28, type: !1118, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4365)
!4365 = !{!4366, !4367}
!4366 = !DILocalVariable(name: "category", arg: 1, scope: !4364, file: !484, line: 28, type: !62)
!4367 = !DILocalVariable(name: "locale", scope: !4364, file: !484, line: 30, type: !4368)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2056, elements: !4369)
!4369 = !{!4370}
!4370 = !DISubrange(count: 257)
!4371 = !DILocation(line: 0, scope: !4364)
!4372 = !DILocation(line: 30, column: 3, scope: !4364)
!4373 = !DILocation(line: 30, column: 8, scope: !4364)
!4374 = !DILocation(line: 32, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4364, file: !484, line: 32, column: 7)
!4376 = !DILocation(line: 32, column: 7, scope: !4364)
!4377 = !DILocalVariable(name: "__s1", arg: 1, scope: !4378, file: !551, line: 1359, type: !67)
!4378 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4379)
!4379 = !{!4377, !4380}
!4380 = !DILocalVariable(name: "__s2", arg: 2, scope: !4378, file: !551, line: 1359, type: !67)
!4381 = !DILocation(line: 0, scope: !4378, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 35, column: 9, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4364, file: !484, line: 35, column: 7)
!4384 = !DILocation(line: 1361, column: 11, scope: !4378, inlinedAt: !4382)
!4385 = !DILocation(line: 1361, column: 10, scope: !4378, inlinedAt: !4382)
!4386 = !DILocation(line: 35, column: 29, scope: !4383)
!4387 = !DILocation(line: 0, scope: !4378, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 35, column: 32, scope: !4383)
!4389 = !DILocation(line: 1361, column: 11, scope: !4378, inlinedAt: !4388)
!4390 = !DILocation(line: 1361, column: 10, scope: !4378, inlinedAt: !4388)
!4391 = !DILocation(line: 35, column: 7, scope: !4364)
!4392 = !DILocation(line: 46, column: 3, scope: !4364)
!4393 = !DILocation(line: 47, column: 1, scope: !4364)
!4394 = distinct !DISubprogram(name: "setlocale_null_r", scope: !486, file: !486, line: 154, type: !4395, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!62, !62, !54, !64}
!4397 = !{!4398, !4399, !4400}
!4398 = !DILocalVariable(name: "category", arg: 1, scope: !4394, file: !486, line: 154, type: !62)
!4399 = !DILocalVariable(name: "buf", arg: 2, scope: !4394, file: !486, line: 154, type: !54)
!4400 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4394, file: !486, line: 154, type: !64)
!4401 = !DILocation(line: 0, scope: !4394)
!4402 = !DILocation(line: 159, column: 10, scope: !4394)
!4403 = !DILocation(line: 159, column: 3, scope: !4394)
!4404 = distinct !DISubprogram(name: "setlocale_null", scope: !486, file: !486, line: 186, type: !4405, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!67, !62}
!4407 = !{!4408}
!4408 = !DILocalVariable(name: "category", arg: 1, scope: !4404, file: !486, line: 186, type: !62)
!4409 = !DILocation(line: 0, scope: !4404)
!4410 = !DILocation(line: 189, column: 10, scope: !4404)
!4411 = !DILocation(line: 189, column: 3, scope: !4404)
!4412 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !488, file: !488, line: 35, type: !4405, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4413)
!4413 = !{!4414, !4415}
!4414 = !DILocalVariable(name: "category", arg: 1, scope: !4412, file: !488, line: 35, type: !62)
!4415 = !DILocalVariable(name: "result", scope: !4412, file: !488, line: 37, type: !67)
!4416 = !DILocation(line: 0, scope: !4412)
!4417 = !DILocation(line: 37, column: 24, scope: !4412)
!4418 = !DILocation(line: 62, column: 3, scope: !4412)
!4419 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !488, file: !488, line: 66, type: !4395, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425}
!4421 = !DILocalVariable(name: "category", arg: 1, scope: !4419, file: !488, line: 66, type: !62)
!4422 = !DILocalVariable(name: "buf", arg: 2, scope: !4419, file: !488, line: 66, type: !54)
!4423 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4419, file: !488, line: 66, type: !64)
!4424 = !DILocalVariable(name: "result", scope: !4419, file: !488, line: 111, type: !67)
!4425 = !DILocalVariable(name: "length", scope: !4426, file: !488, line: 125, type: !64)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !488, line: 124, column: 5)
!4427 = distinct !DILexicalBlock(scope: !4419, file: !488, line: 113, column: 7)
!4428 = !DILocation(line: 0, scope: !4419)
!4429 = !DILocation(line: 0, scope: !4412, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 111, column: 24, scope: !4419)
!4431 = !DILocation(line: 37, column: 24, scope: !4412, inlinedAt: !4430)
!4432 = !DILocation(line: 113, column: 14, scope: !4427)
!4433 = !DILocation(line: 113, column: 7, scope: !4419)
!4434 = !DILocation(line: 116, column: 19, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4436, file: !488, line: 116, column: 11)
!4436 = distinct !DILexicalBlock(scope: !4427, file: !488, line: 114, column: 5)
!4437 = !DILocation(line: 116, column: 11, scope: !4436)
!4438 = !DILocation(line: 120, column: 16, scope: !4435)
!4439 = !DILocation(line: 120, column: 9, scope: !4435)
!4440 = !DILocation(line: 125, column: 23, scope: !4426)
!4441 = !DILocation(line: 0, scope: !4426)
!4442 = !DILocation(line: 126, column: 18, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4426, file: !488, line: 126, column: 11)
!4444 = !DILocation(line: 126, column: 11, scope: !4426)
!4445 = !DILocation(line: 128, column: 39, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !488, line: 127, column: 9)
!4447 = !DILocalVariable(name: "__dest", arg: 1, scope: !4448, file: !1963, line: 26, type: !3810)
!4448 = distinct !DISubprogram(name: "memcpy", scope: !1963, file: !1963, line: 26, type: !3808, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4449)
!4449 = !{!4447, !4450, !4451}
!4450 = !DILocalVariable(name: "__src", arg: 2, scope: !4448, file: !1963, line: 26, type: !718)
!4451 = !DILocalVariable(name: "__len", arg: 3, scope: !4448, file: !1963, line: 26, type: !64)
!4452 = !DILocation(line: 0, scope: !4448, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 128, column: 11, scope: !4446)
!4454 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4453)
!4455 = !DILocation(line: 129, column: 11, scope: !4446)
!4456 = !DILocation(line: 133, column: 23, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !488, line: 133, column: 15)
!4458 = distinct !DILexicalBlock(scope: !4443, file: !488, line: 132, column: 9)
!4459 = !DILocation(line: 133, column: 15, scope: !4458)
!4460 = !DILocation(line: 138, column: 44, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !488, line: 134, column: 13)
!4462 = !DILocation(line: 0, scope: !4448, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 138, column: 15, scope: !4461)
!4464 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4463)
!4465 = !DILocation(line: 139, column: 15, scope: !4461)
!4466 = !DILocation(line: 139, column: 32, scope: !4461)
!4467 = !DILocation(line: 140, column: 13, scope: !4461)
!4468 = !DILocation(line: 0, scope: !4427)
!4469 = !DILocation(line: 145, column: 1, scope: !4419)
